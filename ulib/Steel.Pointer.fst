(*
   Copyright 2008-2019 Microsoft Research

   Licensed under the Apache License, Version 2.0 (the "License");
   you may not use this file except in compliance with the License.
   You may obtain a copy of the License at

       http://www.apache.org/licenses/LICENSE-2.0

   Unless required by applicable law or agreed to in writing, software
   distributed under the License is distributed on an "AS IS" BASIS,
   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
   See the License for the specific language governing permissions and
   limitations under the License.
*)
module Steel.Pointer

module P = LowStar.Permissions
module A = Steel.Array
module HST = FStar.HyperStack.ST

include Steel.Pointer.Views

open Steel.RST

#set-options "--max_fuel 0 --max_ifuel 0"

(**** Unscoped allocation and deallocation of pointer resources *)

val array_to_pointer (#a: Type) (p: pointer a) : RST unit
  (A.array_resource p)
  (fun _ -> ptr_resource p)
  (fun _ -> True)
  (fun h0 _ h1 ->
   get_val p h1 == Seq.index (A.as_rseq p h0) 0 /\
   get_perm p h1 == A.get_rperm p h0
  )

let array_to_pointer #a p =
  cast_to_refined_view (A.array_resource p)  (fun (av: A.varray #a p) ->
    { ptr_x = Seq.index av.A.s 0; ptr_p = av.A.p }
  )

val pointer_to_array (#a: Type) (p: pointer a) : RST unit
  (ptr_resource p)
  (fun _ -> A.array_resource p)
  (fun _ -> True)
  (fun h0 _ h1 ->
   get_val p h0 == Seq.index (A.as_rseq p h1) 0 /\
   get_perm p h0 == A.get_rperm p h1
  )

#set-options "--print_effect_args"

let vptr_to_varray (#a: Type) (p: pointer a) : vptr a -> Tot (A.varray p) = fun av ->
   { A.s = Seq.init 1 (fun _ -> av.ptr_x); A.p = av.ptr_p }

let bijective_resource_refinement (#a: Type) (p: pointer a)
  : Lemma (A.array_resource p == refine_view (ptr_resource p) (vptr_to_varray p))
  [SMTPat (refine_view (ptr_resource p) (vptr_to_varray p))]
=
  let old_res = A.array_resource p in
  let new_res = refine_view (ptr_resource p) (vptr_to_varray p) in
  assert(old_res.t == new_res.t);
  assert(old_res.view.fp == new_res.view.fp);
  assert(old_res.view.inv == new_res.view.inv);
  // That will require functional extensionality
  assume(old_res.view.sel == new_res.view.sel)

val pointer_to_array_ (#a: Type) (p: pointer a) : RST unit
  (ptr_resource p)
  (fun _ -> refine_view (ptr_resource p) (vptr_to_varray p))
  (fun _ -> True)
  (fun h0 _ h1 -> True)

let ptr_alloc #a init =
  let ptr : A.array a = A.alloc init 1ul in
  assume(A.vlength ptr == 1);
  let ptr : pointer a = ptr in
  admit();
  array_to_pointer ptr;
  admit();
  ptr

let ptr_free #a ptr =
  reveal_ptr();
  reveal_rst_inv ();
  reveal_modifies ();
  reveal_empty_resource ();
  A.free ptr

(**** Reading and writing using a pointer resource *)


let ptr_read #a ptr =
  reveal_ptr();
  A.index ptr 0ul

let ptr_write #a ptr x =
  (**) reveal_ptr();
  (**) reveal_rst_inv ();
  (**) reveal_modifies ();
  A.upd ptr 0ul x;
  (**) let h1 = HST.get () in
  (**) A.live_array_used_in ptr h1


let ptr_share #a ptr =
  (**) reveal_ptr();
  (**) reveal_rst_inv ();
  (**) reveal_modifies ();
  (**) reveal_star ();
  let ptr1 = A.share ptr in
  (**) let h1 = HST.get () in
  (**) A.live_array_used_in ptr h1;
  ptr1

let ptr_merge #a ptr1 ptr2 =
  (**) reveal_ptr();
  (**) reveal_rst_inv ();
  (**) reveal_modifies ();
  (**) reveal_star ();
  A.gather ptr1 ptr2;
  (**) let h1 = HST.get () in
  (**) A.live_array_used_in ptr1 h1
