#light "off"
module FStar.Interactive.Lsp

open FStar
open FStar.All
open FStar.Errors
open FStar.Util
open FStar.JsonHelper
open FStar.Universal
open FStar.Range

module U = FStar.Util
module QH = FStar.QueryHelper
module PH = FStar.PushHelper
module PI = FStar.Parser.ParseIt
module TcEnv = FStar.TypeChecker.Env

(* Request *)

// nothrow
let unpack_lsp_query (r : list<(string * json)>) : lsp_query =
  let qid = try_assoc "id" r |> U.map_option js_str_int in // noexcept

  // If we make it this far, exceptions will come with qid info.
  // Wrap in `try` because all `js_*` functions and `assoc` throw
  try
    let method = assoc "method" r |> js_str in
    { query_id = qid;
      q = match method with
          | "initialize" -> Initialize (arg "processId" r |> js_int,
                                        arg "rootUri" r |> js_str)
          | "initialized" -> Initialized
          | "shutdown" -> Shutdown
          | "exit" -> Exit
          | "$/cancelRequest" -> Cancel (arg "id" r |> js_str_int)
          | "workspace/didChangeWorkspaceFolders" -> FolderChange
                                                     (arg "event" r |> js_wsch_event)
          | "workspace/didChangeConfiguration" -> ChangeConfig
          | "workspace/didChangeWatchedFiles" -> ChangeWatch
          | "workspace/symbol" -> Symbol (arg "query" r |> js_str)
          | "workspace/executeCommand" -> ExecCommand
                                          (arg "command" r |> js_str)
          | "textDocument/didOpen" -> DidOpen (arg "textDocument" r |> js_txdoc_item)
          | "textDocument/didChange" -> DidChange (js_txdoc_id r,
                                                   arg "contentChanges" r |> js_contentch)
          | "textDocument/willSave" -> WillSave (js_txdoc_id r)
          | "textDocument/willSaveWaitUntil" -> WillSaveWait (js_txdoc_id r)
          | "textDocument/didSave" -> DidSave (js_txdoc_id r, arg "text" r |> js_str)
          | "textDocument/didClose" -> DidClose (js_txdoc_id r)
          | "textDocument/completion" -> Completion (js_txdoc_pos r,
                                                     arg "context" r |> js_compl_context)
          | "completionItem/resolve" -> Resolve
          | "textDocument/hover" -> Hover (js_txdoc_pos r)
          | "textDocument/signatureHelp" -> SignatureHelp (js_txdoc_pos r)
          | "textDocument/declaration" -> Declaration (js_txdoc_pos r)
          | "textDocument/definition" -> Definition (js_txdoc_pos r)
          | "textDocument/typeDefinition" -> TypeDefinition (js_txdoc_pos r)
          | "textDocument/implementation" -> Implementation (js_txdoc_pos r)
          | "textDocument/references" -> References
          | "textDocument/documentHighlight" -> DocumentHighlight (js_txdoc_pos r)
          | "textDocument/documentSymbol" -> DocumentSymbol
          | "textDocument/codeAction" -> CodeAction
          | "textDocument/codeLens" -> CodeLens
          | "codeLens/resolve" -> CodeLensResolve
          | "textDocument/documentLink" -> DocumentLink
          | "documentLink/resolve" -> DocumentLinkResolve
          | "textDocument/documentColor" -> DocumentColor
          | "textDocument/colorPresentation" -> ColorPresentation
          | "textDocument/formatting" -> Formatting
          | "textDocument/rangeFormatting" -> RangeFormatting
          | "textDocument/onTypeFormatting" -> TypeFormatting
          | "textDocument/rename" -> Rename
          | "textDocument/prepareRename" -> PrepareRename (js_txdoc_pos r)
          | "textDocument/foldingRange" -> FoldingRange
          | m -> BadProtocolMsg (U.format1 "Unknown method '%s'" m) }
  with
  | MissingKey msg -> { query_id = qid; q = BadProtocolMsg msg }
  | UnexpectedJsonType (expected, got) -> wrap_jsfail qid expected got

let deserialize_lsp_query js_query : lsp_query =
  try
    unpack_lsp_query (js_query |> js_assoc)
  with
  // This is the only excpetion that js_assoc is allowed to throw
  | UnexpectedJsonType (expected, got) -> wrap_jsfail None expected got

let parse_lsp_query query_str : lsp_query =
  U.print1_error ">>> %s\n" query_str;
  match U.json_of_string query_str with
  | None -> { query_id = None; q = BadProtocolMsg "Json parsing failed" }
  | Some request -> deserialize_lsp_query request

(* Repl and response *)

let repl_state_init (fname: string) : repl_state =
  let intial_range = Range.mk_range fname (Range.mk_pos 1 0) (Range.mk_pos 1 0) in
  let env = init_env FStar.Parser.Dep.empty_deps in
  let env = TcEnv.set_range env intial_range in
  { repl_line = 1; repl_column = 0; repl_fname = fname;
    repl_curmod = None; repl_env = env; repl_deps_stack = [];
    repl_stdin = open_stdin (); repl_names = CompletionTable.empty }

type either_gst_exit = either<grepl_state, int> // grepl_state is independent of exit_code

let run_query (gst: grepl_state) (q: lquery) : optresponse * either_gst_exit =
  match q with
  | Initialize (pid, rootUri) -> (Some (Inl js_servcap), Inl gst)
  | Initialized -> (None, Inl gst)
  | Shutdown -> Some (Inl JsonNull), Inl gst
  | Exit -> (None, Inr 0)
  | Cancel id -> (None, Inl gst)
  | FolderChange evt -> Some (Inl JsonNull), Inl gst
  | ChangeConfig -> Some (Inl JsonNull), Inl gst
  | ChangeWatch -> (None, Inl gst)
  | Symbol sym -> Some (Inl JsonNull), Inl gst
  | ExecCommand cmd -> Some (Inl JsonNull), Inl gst
  | DidOpen { fname = p; langId = _; version = _; text = t } ->
    (match U.psmap_try_find gst.grepl_repls p with
     | Some _ -> None, Inl gst
     | None ->
       PI.add_vfs_entry p t;
       let st' = PH.full_lax t (repl_state_init p) in
       let repls = U.psmap_add gst.grepl_repls p st' in
       None, Inl ({ gst with grepl_repls = repls }))
  | DidChange (txid, content) -> PI.add_vfs_entry txid content; (None, Inl gst)
  | WillSave txid -> (None, Inl gst)
  | WillSaveWait txid -> Some (Inl JsonNull), Inl gst
  | DidSave (txid, content) -> PI.add_vfs_entry txid content; (None, Inl gst)
  | DidClose txid -> (None, Inl gst)
  | Completion (txpos, ctx) ->
    (match U.psmap_try_find gst.grepl_repls txpos.path with
     | Some st -> Some (QH.complookup st txpos), Inl gst
     | None -> Some (Inl JsonNull), Inl gst)
  | Resolve -> Some (Inl JsonNull), Inl gst
  | Hover txpos ->
    (match U.psmap_try_find gst.grepl_repls txpos.path with
     | Some st -> Some (QH.hoverlookup st.repl_env txpos), Inl gst
     | None -> Some (Inl JsonNull), Inl gst)
  | SignatureHelp txpos -> Some (Inl JsonNull), Inl gst
  | Declaration txpos -> Some (Inl JsonNull), Inl gst
  | Definition txpos ->
    (match U.psmap_try_find gst.grepl_repls txpos.path with
     | Some st -> Some (QH.deflookup st.repl_env txpos), Inl gst
     | None -> Some (Inl JsonNull), Inl gst)
  | TypeDefinition txpos -> Some (Inl JsonNull), Inl gst
  | Implementation txpos -> Some (Inl JsonNull), Inl gst
  | References -> Some (Inl JsonNull), Inl gst
  | DocumentHighlight txpos -> Some (Inl JsonNull), Inl gst
  | DocumentSymbol -> Some (Inl JsonNull), Inl gst
  | CodeAction -> Some (Inl JsonNull), Inl gst
  | CodeLens -> Some (Inl JsonNull), Inl gst
  | CodeLensResolve -> Some (Inl JsonNull), Inl gst
  | DocumentLink -> Some (Inl JsonNull), Inl gst
  | DocumentLinkResolve -> Some (Inl JsonNull), Inl gst
  | DocumentColor -> Some (Inl JsonNull), Inl gst
  | ColorPresentation -> Some (Inl JsonNull), Inl gst
  | Formatting -> Some (Inl JsonNull), Inl gst
  | RangeFormatting -> Some (Inl JsonNull), Inl gst
  | TypeFormatting -> Some (Inl JsonNull), Inl gst
  | Rename -> Some (Inl JsonNull), Inl gst
  | PrepareRename txpos -> Some (Inl JsonNull), Inl gst
  | FoldingRange -> Some (Inl JsonNull), Inl gst
  | BadProtocolMsg msg -> (Some (Inr (js_resperr MethodNotFound msg)), Inl gst)

// Raises exceptions, but all of them are caught
let rec parse_header_len (stream: stream_reader) (len: int): int =
  // Non-blocking read
  match U.read_line stream with
  | Some s ->
    if U.starts_with s "Content-Length: " then
      parse_header_len stream (U.int_of_string (U.substring_from s 16))
    else if U.starts_with s "Content-Type: " then
      parse_header_len stream len
    else if s = "" then
      len
    else
      raise MalformedHeader
  | None -> raise InputExhausted

let rec read_lsp_query (stream: stream_reader) : lsp_query =
  try
    let n = parse_header_len stream 0 in
    match U.nread stream n with
    | Some s -> parse_lsp_query s
    | None -> wrap_content_szerr (U.format1 "Could not read %s bytes" (U.string_of_int n))
  with
  // At no cost should the server go down
  | MalformedHeader -> U.print_error "[E] Malformed Content Header\n"; read_lsp_query stream
  | InputExhausted -> read_lsp_query stream

let rec go (gst: grepl_state) : int =
  let query = read_lsp_query gst.grepl_stdin in
  let r, state_opt = run_query gst query.q in
  (match r with
   | Some response -> (let response' = json_of_response query.query_id response in
                       U.print1_error "<<< %s\n" (U.string_of_json response');
                       write_jsonrpc response')
   | None -> ()); // Don't respond
  match state_opt with
  | Inl gst' -> go gst'
  | Inr exitcode -> exitcode

let start_server () : unit = exit (go ({ grepl_repls = U.psmap_empty ();
                                         grepl_stdin = open_stdin () }))