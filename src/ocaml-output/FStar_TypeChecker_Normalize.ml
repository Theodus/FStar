open Prims
type step =
  | Beta 
  | Iota 
  | Zeta 
  | Exclude of step 
  | Weak 
  | HNF 
  | Primops 
  | Eager_unfolding 
  | Inlining 
  | DoNotUnfoldPureLets 
  | UnfoldUntil of FStar_Syntax_Syntax.delta_depth 
  | UnfoldOnly of FStar_Ident.lid Prims.list 
  | UnfoldAttr of FStar_Syntax_Syntax.attribute 
  | UnfoldTac 
  | PureSubtermsWithinComputations 
  | Simplify 
  | EraseUniverses 
  | AllowUnboundUniverses 
  | Reify 
  | CompressUvars 
  | NoFullNorm 
  | CheckNoUvars 
  | Unmeta 
  | Unascribe [@@deriving show]
let (uu___is_Beta : step -> Prims.bool) =
  fun projectee  -> match projectee with | Beta  -> true | uu____22 -> false 
let (uu___is_Iota : step -> Prims.bool) =
  fun projectee  -> match projectee with | Iota  -> true | uu____26 -> false 
let (uu___is_Zeta : step -> Prims.bool) =
  fun projectee  -> match projectee with | Zeta  -> true | uu____30 -> false 
let (uu___is_Exclude : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Exclude _0 -> true | uu____35 -> false
  
let (__proj__Exclude__item___0 : step -> step) =
  fun projectee  -> match projectee with | Exclude _0 -> _0 
let (uu___is_Weak : step -> Prims.bool) =
  fun projectee  -> match projectee with | Weak  -> true | uu____46 -> false 
let (uu___is_HNF : step -> Prims.bool) =
  fun projectee  -> match projectee with | HNF  -> true | uu____50 -> false 
let (uu___is_Primops : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Primops  -> true | uu____54 -> false
  
let (uu___is_Eager_unfolding : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Eager_unfolding  -> true | uu____58 -> false
  
let (uu___is_Inlining : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Inlining  -> true | uu____62 -> false
  
let (uu___is_DoNotUnfoldPureLets : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | DoNotUnfoldPureLets  -> true | uu____66 -> false
  
let (uu___is_UnfoldUntil : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldUntil _0 -> true | uu____71 -> false
  
let (__proj__UnfoldUntil__item___0 : step -> FStar_Syntax_Syntax.delta_depth)
  = fun projectee  -> match projectee with | UnfoldUntil _0 -> _0 
let (uu___is_UnfoldOnly : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldOnly _0 -> true | uu____85 -> false
  
let (__proj__UnfoldOnly__item___0 : step -> FStar_Ident.lid Prims.list) =
  fun projectee  -> match projectee with | UnfoldOnly _0 -> _0 
let (uu___is_UnfoldAttr : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldAttr _0 -> true | uu____103 -> false
  
let (__proj__UnfoldAttr__item___0 : step -> FStar_Syntax_Syntax.attribute) =
  fun projectee  -> match projectee with | UnfoldAttr _0 -> _0 
let (uu___is_UnfoldTac : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnfoldTac  -> true | uu____114 -> false
  
let (uu___is_PureSubtermsWithinComputations : step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | PureSubtermsWithinComputations  -> true
    | uu____118 -> false
  
let (uu___is_Simplify : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Simplify  -> true | uu____122 -> false
  
let (uu___is_EraseUniverses : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | EraseUniverses  -> true | uu____126 -> false
  
let (uu___is_AllowUnboundUniverses : step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | AllowUnboundUniverses  -> true
    | uu____130 -> false
  
let (uu___is_Reify : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Reify  -> true | uu____134 -> false
  
let (uu___is_CompressUvars : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | CompressUvars  -> true | uu____138 -> false
  
let (uu___is_NoFullNorm : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | NoFullNorm  -> true | uu____142 -> false
  
let (uu___is_CheckNoUvars : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | CheckNoUvars  -> true | uu____146 -> false
  
let (uu___is_Unmeta : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unmeta  -> true | uu____150 -> false
  
let (uu___is_Unascribe : step -> Prims.bool) =
  fun projectee  ->
    match projectee with | Unascribe  -> true | uu____154 -> false
  
type steps = step Prims.list[@@deriving show]
let cases :
  'Auu____162 'Auu____163 .
    ('Auu____162 -> 'Auu____163) ->
      'Auu____163 ->
        'Auu____162 FStar_Pervasives_Native.option -> 'Auu____163
  =
  fun f  ->
    fun d  ->
      fun uu___76_180  ->
        match uu___76_180 with
        | FStar_Pervasives_Native.Some x -> f x
        | FStar_Pervasives_Native.None  -> d
  
type fsteps =
  {
  beta: Prims.bool ;
  iota: Prims.bool ;
  zeta: Prims.bool ;
  weak: Prims.bool ;
  hnf: Prims.bool ;
  primops: Prims.bool ;
  do_not_unfold_pure_lets: Prims.bool ;
  unfold_until:
    FStar_Syntax_Syntax.delta_depth FStar_Pervasives_Native.option ;
  unfold_only: FStar_Ident.lid Prims.list FStar_Pervasives_Native.option ;
  unfold_attr:
    FStar_Syntax_Syntax.attribute Prims.list FStar_Pervasives_Native.option ;
  unfold_tac: Prims.bool ;
  pure_subterms_within_computations: Prims.bool ;
  simplify: Prims.bool ;
  erase_universes: Prims.bool ;
  allow_unbound_universes: Prims.bool ;
  reify_: Prims.bool ;
  compress_uvars: Prims.bool ;
  no_full_norm: Prims.bool ;
  check_no_uvars: Prims.bool ;
  unmeta: Prims.bool ;
  unascribe: Prims.bool ;
  in_full_norm_request: Prims.bool }[@@deriving show]
let (__proj__Mkfsteps__item__beta : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__beta
  
let (__proj__Mkfsteps__item__iota : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__iota
  
let (__proj__Mkfsteps__item__zeta : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__zeta
  
let (__proj__Mkfsteps__item__weak : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__weak
  
let (__proj__Mkfsteps__item__hnf : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__hnf
  
let (__proj__Mkfsteps__item__primops : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__primops
  
let (__proj__Mkfsteps__item__do_not_unfold_pure_lets : fsteps -> Prims.bool)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__do_not_unfold_pure_lets
  
let (__proj__Mkfsteps__item__unfold_until :
  fsteps -> FStar_Syntax_Syntax.delta_depth FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__unfold_until
  
let (__proj__Mkfsteps__item__unfold_only :
  fsteps -> FStar_Ident.lid Prims.list FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__unfold_only
  
let (__proj__Mkfsteps__item__unfold_attr :
  fsteps ->
    FStar_Syntax_Syntax.attribute Prims.list FStar_Pervasives_Native.option)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__unfold_attr
  
let (__proj__Mkfsteps__item__unfold_tac : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__unfold_tac
  
let (__proj__Mkfsteps__item__pure_subterms_within_computations :
  fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__pure_subterms_within_computations
  
let (__proj__Mkfsteps__item__simplify : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__simplify
  
let (__proj__Mkfsteps__item__erase_universes : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__erase_universes
  
let (__proj__Mkfsteps__item__allow_unbound_universes : fsteps -> Prims.bool)
  =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__allow_unbound_universes
  
let (__proj__Mkfsteps__item__reify_ : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__reify_
  
let (__proj__Mkfsteps__item__compress_uvars : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__compress_uvars
  
let (__proj__Mkfsteps__item__no_full_norm : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__no_full_norm
  
let (__proj__Mkfsteps__item__check_no_uvars : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__check_no_uvars
  
let (__proj__Mkfsteps__item__unmeta : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__unmeta
  
let (__proj__Mkfsteps__item__unascribe : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__unascribe
  
let (__proj__Mkfsteps__item__in_full_norm_request : fsteps -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { beta = __fname__beta; iota = __fname__iota; zeta = __fname__zeta;
        weak = __fname__weak; hnf = __fname__hnf; primops = __fname__primops;
        do_not_unfold_pure_lets = __fname__do_not_unfold_pure_lets;
        unfold_until = __fname__unfold_until;
        unfold_only = __fname__unfold_only;
        unfold_attr = __fname__unfold_attr; unfold_tac = __fname__unfold_tac;
        pure_subterms_within_computations =
          __fname__pure_subterms_within_computations;
        simplify = __fname__simplify;
        erase_universes = __fname__erase_universes;
        allow_unbound_universes = __fname__allow_unbound_universes;
        reify_ = __fname__reify_; compress_uvars = __fname__compress_uvars;
        no_full_norm = __fname__no_full_norm;
        check_no_uvars = __fname__check_no_uvars; unmeta = __fname__unmeta;
        unascribe = __fname__unascribe;
        in_full_norm_request = __fname__in_full_norm_request;_} ->
        __fname__in_full_norm_request
  
let (default_steps : fsteps) =
  {
    beta = true;
    iota = true;
    zeta = true;
    weak = false;
    hnf = false;
    primops = false;
    do_not_unfold_pure_lets = false;
    unfold_until = FStar_Pervasives_Native.None;
    unfold_only = FStar_Pervasives_Native.None;
    unfold_attr = FStar_Pervasives_Native.None;
    unfold_tac = false;
    pure_subterms_within_computations = false;
    simplify = false;
    erase_universes = false;
    allow_unbound_universes = false;
    reify_ = false;
    compress_uvars = false;
    no_full_norm = false;
    check_no_uvars = false;
    unmeta = false;
    unascribe = false;
    in_full_norm_request = false
  } 
let (fstep_add_one : step -> fsteps -> fsteps) =
  fun s  ->
    fun fs  ->
      let add_opt x uu___77_1098 =
        match uu___77_1098 with
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.Some [x]
        | FStar_Pervasives_Native.Some xs ->
            FStar_Pervasives_Native.Some (x :: xs)
         in
      match s with
      | Beta  ->
          let uu___94_1118 = fs  in
          {
            beta = true;
            iota = (uu___94_1118.iota);
            zeta = (uu___94_1118.zeta);
            weak = (uu___94_1118.weak);
            hnf = (uu___94_1118.hnf);
            primops = (uu___94_1118.primops);
            do_not_unfold_pure_lets = (uu___94_1118.do_not_unfold_pure_lets);
            unfold_until = (uu___94_1118.unfold_until);
            unfold_only = (uu___94_1118.unfold_only);
            unfold_attr = (uu___94_1118.unfold_attr);
            unfold_tac = (uu___94_1118.unfold_tac);
            pure_subterms_within_computations =
              (uu___94_1118.pure_subterms_within_computations);
            simplify = (uu___94_1118.simplify);
            erase_universes = (uu___94_1118.erase_universes);
            allow_unbound_universes = (uu___94_1118.allow_unbound_universes);
            reify_ = (uu___94_1118.reify_);
            compress_uvars = (uu___94_1118.compress_uvars);
            no_full_norm = (uu___94_1118.no_full_norm);
            check_no_uvars = (uu___94_1118.check_no_uvars);
            unmeta = (uu___94_1118.unmeta);
            unascribe = (uu___94_1118.unascribe);
            in_full_norm_request = (uu___94_1118.in_full_norm_request)
          }
      | Iota  ->
          let uu___95_1119 = fs  in
          {
            beta = (uu___95_1119.beta);
            iota = true;
            zeta = (uu___95_1119.zeta);
            weak = (uu___95_1119.weak);
            hnf = (uu___95_1119.hnf);
            primops = (uu___95_1119.primops);
            do_not_unfold_pure_lets = (uu___95_1119.do_not_unfold_pure_lets);
            unfold_until = (uu___95_1119.unfold_until);
            unfold_only = (uu___95_1119.unfold_only);
            unfold_attr = (uu___95_1119.unfold_attr);
            unfold_tac = (uu___95_1119.unfold_tac);
            pure_subterms_within_computations =
              (uu___95_1119.pure_subterms_within_computations);
            simplify = (uu___95_1119.simplify);
            erase_universes = (uu___95_1119.erase_universes);
            allow_unbound_universes = (uu___95_1119.allow_unbound_universes);
            reify_ = (uu___95_1119.reify_);
            compress_uvars = (uu___95_1119.compress_uvars);
            no_full_norm = (uu___95_1119.no_full_norm);
            check_no_uvars = (uu___95_1119.check_no_uvars);
            unmeta = (uu___95_1119.unmeta);
            unascribe = (uu___95_1119.unascribe);
            in_full_norm_request = (uu___95_1119.in_full_norm_request)
          }
      | Zeta  ->
          let uu___96_1120 = fs  in
          {
            beta = (uu___96_1120.beta);
            iota = (uu___96_1120.iota);
            zeta = true;
            weak = (uu___96_1120.weak);
            hnf = (uu___96_1120.hnf);
            primops = (uu___96_1120.primops);
            do_not_unfold_pure_lets = (uu___96_1120.do_not_unfold_pure_lets);
            unfold_until = (uu___96_1120.unfold_until);
            unfold_only = (uu___96_1120.unfold_only);
            unfold_attr = (uu___96_1120.unfold_attr);
            unfold_tac = (uu___96_1120.unfold_tac);
            pure_subterms_within_computations =
              (uu___96_1120.pure_subterms_within_computations);
            simplify = (uu___96_1120.simplify);
            erase_universes = (uu___96_1120.erase_universes);
            allow_unbound_universes = (uu___96_1120.allow_unbound_universes);
            reify_ = (uu___96_1120.reify_);
            compress_uvars = (uu___96_1120.compress_uvars);
            no_full_norm = (uu___96_1120.no_full_norm);
            check_no_uvars = (uu___96_1120.check_no_uvars);
            unmeta = (uu___96_1120.unmeta);
            unascribe = (uu___96_1120.unascribe);
            in_full_norm_request = (uu___96_1120.in_full_norm_request)
          }
      | Exclude (Beta ) ->
          let uu___97_1121 = fs  in
          {
            beta = false;
            iota = (uu___97_1121.iota);
            zeta = (uu___97_1121.zeta);
            weak = (uu___97_1121.weak);
            hnf = (uu___97_1121.hnf);
            primops = (uu___97_1121.primops);
            do_not_unfold_pure_lets = (uu___97_1121.do_not_unfold_pure_lets);
            unfold_until = (uu___97_1121.unfold_until);
            unfold_only = (uu___97_1121.unfold_only);
            unfold_attr = (uu___97_1121.unfold_attr);
            unfold_tac = (uu___97_1121.unfold_tac);
            pure_subterms_within_computations =
              (uu___97_1121.pure_subterms_within_computations);
            simplify = (uu___97_1121.simplify);
            erase_universes = (uu___97_1121.erase_universes);
            allow_unbound_universes = (uu___97_1121.allow_unbound_universes);
            reify_ = (uu___97_1121.reify_);
            compress_uvars = (uu___97_1121.compress_uvars);
            no_full_norm = (uu___97_1121.no_full_norm);
            check_no_uvars = (uu___97_1121.check_no_uvars);
            unmeta = (uu___97_1121.unmeta);
            unascribe = (uu___97_1121.unascribe);
            in_full_norm_request = (uu___97_1121.in_full_norm_request)
          }
      | Exclude (Iota ) ->
          let uu___98_1122 = fs  in
          {
            beta = (uu___98_1122.beta);
            iota = false;
            zeta = (uu___98_1122.zeta);
            weak = (uu___98_1122.weak);
            hnf = (uu___98_1122.hnf);
            primops = (uu___98_1122.primops);
            do_not_unfold_pure_lets = (uu___98_1122.do_not_unfold_pure_lets);
            unfold_until = (uu___98_1122.unfold_until);
            unfold_only = (uu___98_1122.unfold_only);
            unfold_attr = (uu___98_1122.unfold_attr);
            unfold_tac = (uu___98_1122.unfold_tac);
            pure_subterms_within_computations =
              (uu___98_1122.pure_subterms_within_computations);
            simplify = (uu___98_1122.simplify);
            erase_universes = (uu___98_1122.erase_universes);
            allow_unbound_universes = (uu___98_1122.allow_unbound_universes);
            reify_ = (uu___98_1122.reify_);
            compress_uvars = (uu___98_1122.compress_uvars);
            no_full_norm = (uu___98_1122.no_full_norm);
            check_no_uvars = (uu___98_1122.check_no_uvars);
            unmeta = (uu___98_1122.unmeta);
            unascribe = (uu___98_1122.unascribe);
            in_full_norm_request = (uu___98_1122.in_full_norm_request)
          }
      | Exclude (Zeta ) ->
          let uu___99_1123 = fs  in
          {
            beta = (uu___99_1123.beta);
            iota = (uu___99_1123.iota);
            zeta = false;
            weak = (uu___99_1123.weak);
            hnf = (uu___99_1123.hnf);
            primops = (uu___99_1123.primops);
            do_not_unfold_pure_lets = (uu___99_1123.do_not_unfold_pure_lets);
            unfold_until = (uu___99_1123.unfold_until);
            unfold_only = (uu___99_1123.unfold_only);
            unfold_attr = (uu___99_1123.unfold_attr);
            unfold_tac = (uu___99_1123.unfold_tac);
            pure_subterms_within_computations =
              (uu___99_1123.pure_subterms_within_computations);
            simplify = (uu___99_1123.simplify);
            erase_universes = (uu___99_1123.erase_universes);
            allow_unbound_universes = (uu___99_1123.allow_unbound_universes);
            reify_ = (uu___99_1123.reify_);
            compress_uvars = (uu___99_1123.compress_uvars);
            no_full_norm = (uu___99_1123.no_full_norm);
            check_no_uvars = (uu___99_1123.check_no_uvars);
            unmeta = (uu___99_1123.unmeta);
            unascribe = (uu___99_1123.unascribe);
            in_full_norm_request = (uu___99_1123.in_full_norm_request)
          }
      | Exclude uu____1124 -> failwith "Bad exclude"
      | Weak  ->
          let uu___100_1125 = fs  in
          {
            beta = (uu___100_1125.beta);
            iota = (uu___100_1125.iota);
            zeta = (uu___100_1125.zeta);
            weak = true;
            hnf = (uu___100_1125.hnf);
            primops = (uu___100_1125.primops);
            do_not_unfold_pure_lets = (uu___100_1125.do_not_unfold_pure_lets);
            unfold_until = (uu___100_1125.unfold_until);
            unfold_only = (uu___100_1125.unfold_only);
            unfold_attr = (uu___100_1125.unfold_attr);
            unfold_tac = (uu___100_1125.unfold_tac);
            pure_subterms_within_computations =
              (uu___100_1125.pure_subterms_within_computations);
            simplify = (uu___100_1125.simplify);
            erase_universes = (uu___100_1125.erase_universes);
            allow_unbound_universes = (uu___100_1125.allow_unbound_universes);
            reify_ = (uu___100_1125.reify_);
            compress_uvars = (uu___100_1125.compress_uvars);
            no_full_norm = (uu___100_1125.no_full_norm);
            check_no_uvars = (uu___100_1125.check_no_uvars);
            unmeta = (uu___100_1125.unmeta);
            unascribe = (uu___100_1125.unascribe);
            in_full_norm_request = (uu___100_1125.in_full_norm_request)
          }
      | HNF  ->
          let uu___101_1126 = fs  in
          {
            beta = (uu___101_1126.beta);
            iota = (uu___101_1126.iota);
            zeta = (uu___101_1126.zeta);
            weak = (uu___101_1126.weak);
            hnf = true;
            primops = (uu___101_1126.primops);
            do_not_unfold_pure_lets = (uu___101_1126.do_not_unfold_pure_lets);
            unfold_until = (uu___101_1126.unfold_until);
            unfold_only = (uu___101_1126.unfold_only);
            unfold_attr = (uu___101_1126.unfold_attr);
            unfold_tac = (uu___101_1126.unfold_tac);
            pure_subterms_within_computations =
              (uu___101_1126.pure_subterms_within_computations);
            simplify = (uu___101_1126.simplify);
            erase_universes = (uu___101_1126.erase_universes);
            allow_unbound_universes = (uu___101_1126.allow_unbound_universes);
            reify_ = (uu___101_1126.reify_);
            compress_uvars = (uu___101_1126.compress_uvars);
            no_full_norm = (uu___101_1126.no_full_norm);
            check_no_uvars = (uu___101_1126.check_no_uvars);
            unmeta = (uu___101_1126.unmeta);
            unascribe = (uu___101_1126.unascribe);
            in_full_norm_request = (uu___101_1126.in_full_norm_request)
          }
      | Primops  ->
          let uu___102_1127 = fs  in
          {
            beta = (uu___102_1127.beta);
            iota = (uu___102_1127.iota);
            zeta = (uu___102_1127.zeta);
            weak = (uu___102_1127.weak);
            hnf = (uu___102_1127.hnf);
            primops = true;
            do_not_unfold_pure_lets = (uu___102_1127.do_not_unfold_pure_lets);
            unfold_until = (uu___102_1127.unfold_until);
            unfold_only = (uu___102_1127.unfold_only);
            unfold_attr = (uu___102_1127.unfold_attr);
            unfold_tac = (uu___102_1127.unfold_tac);
            pure_subterms_within_computations =
              (uu___102_1127.pure_subterms_within_computations);
            simplify = (uu___102_1127.simplify);
            erase_universes = (uu___102_1127.erase_universes);
            allow_unbound_universes = (uu___102_1127.allow_unbound_universes);
            reify_ = (uu___102_1127.reify_);
            compress_uvars = (uu___102_1127.compress_uvars);
            no_full_norm = (uu___102_1127.no_full_norm);
            check_no_uvars = (uu___102_1127.check_no_uvars);
            unmeta = (uu___102_1127.unmeta);
            unascribe = (uu___102_1127.unascribe);
            in_full_norm_request = (uu___102_1127.in_full_norm_request)
          }
      | Eager_unfolding  -> fs
      | Inlining  -> fs
      | DoNotUnfoldPureLets  ->
          let uu___103_1128 = fs  in
          {
            beta = (uu___103_1128.beta);
            iota = (uu___103_1128.iota);
            zeta = (uu___103_1128.zeta);
            weak = (uu___103_1128.weak);
            hnf = (uu___103_1128.hnf);
            primops = (uu___103_1128.primops);
            do_not_unfold_pure_lets = true;
            unfold_until = (uu___103_1128.unfold_until);
            unfold_only = (uu___103_1128.unfold_only);
            unfold_attr = (uu___103_1128.unfold_attr);
            unfold_tac = (uu___103_1128.unfold_tac);
            pure_subterms_within_computations =
              (uu___103_1128.pure_subterms_within_computations);
            simplify = (uu___103_1128.simplify);
            erase_universes = (uu___103_1128.erase_universes);
            allow_unbound_universes = (uu___103_1128.allow_unbound_universes);
            reify_ = (uu___103_1128.reify_);
            compress_uvars = (uu___103_1128.compress_uvars);
            no_full_norm = (uu___103_1128.no_full_norm);
            check_no_uvars = (uu___103_1128.check_no_uvars);
            unmeta = (uu___103_1128.unmeta);
            unascribe = (uu___103_1128.unascribe);
            in_full_norm_request = (uu___103_1128.in_full_norm_request)
          }
      | UnfoldUntil d ->
          let uu___104_1130 = fs  in
          {
            beta = (uu___104_1130.beta);
            iota = (uu___104_1130.iota);
            zeta = (uu___104_1130.zeta);
            weak = (uu___104_1130.weak);
            hnf = (uu___104_1130.hnf);
            primops = (uu___104_1130.primops);
            do_not_unfold_pure_lets = (uu___104_1130.do_not_unfold_pure_lets);
            unfold_until = (FStar_Pervasives_Native.Some d);
            unfold_only = (uu___104_1130.unfold_only);
            unfold_attr = (uu___104_1130.unfold_attr);
            unfold_tac = (uu___104_1130.unfold_tac);
            pure_subterms_within_computations =
              (uu___104_1130.pure_subterms_within_computations);
            simplify = (uu___104_1130.simplify);
            erase_universes = (uu___104_1130.erase_universes);
            allow_unbound_universes = (uu___104_1130.allow_unbound_universes);
            reify_ = (uu___104_1130.reify_);
            compress_uvars = (uu___104_1130.compress_uvars);
            no_full_norm = (uu___104_1130.no_full_norm);
            check_no_uvars = (uu___104_1130.check_no_uvars);
            unmeta = (uu___104_1130.unmeta);
            unascribe = (uu___104_1130.unascribe);
            in_full_norm_request = (uu___104_1130.in_full_norm_request)
          }
      | UnfoldOnly lids ->
          let uu___105_1134 = fs  in
          {
            beta = (uu___105_1134.beta);
            iota = (uu___105_1134.iota);
            zeta = (uu___105_1134.zeta);
            weak = (uu___105_1134.weak);
            hnf = (uu___105_1134.hnf);
            primops = (uu___105_1134.primops);
            do_not_unfold_pure_lets = (uu___105_1134.do_not_unfold_pure_lets);
            unfold_until = (uu___105_1134.unfold_until);
            unfold_only = (FStar_Pervasives_Native.Some lids);
            unfold_attr = (uu___105_1134.unfold_attr);
            unfold_tac = (uu___105_1134.unfold_tac);
            pure_subterms_within_computations =
              (uu___105_1134.pure_subterms_within_computations);
            simplify = (uu___105_1134.simplify);
            erase_universes = (uu___105_1134.erase_universes);
            allow_unbound_universes = (uu___105_1134.allow_unbound_universes);
            reify_ = (uu___105_1134.reify_);
            compress_uvars = (uu___105_1134.compress_uvars);
            no_full_norm = (uu___105_1134.no_full_norm);
            check_no_uvars = (uu___105_1134.check_no_uvars);
            unmeta = (uu___105_1134.unmeta);
            unascribe = (uu___105_1134.unascribe);
            in_full_norm_request = (uu___105_1134.in_full_norm_request)
          }
      | UnfoldAttr attr ->
          let uu___106_1138 = fs  in
          {
            beta = (uu___106_1138.beta);
            iota = (uu___106_1138.iota);
            zeta = (uu___106_1138.zeta);
            weak = (uu___106_1138.weak);
            hnf = (uu___106_1138.hnf);
            primops = (uu___106_1138.primops);
            do_not_unfold_pure_lets = (uu___106_1138.do_not_unfold_pure_lets);
            unfold_until = (uu___106_1138.unfold_until);
            unfold_only = (uu___106_1138.unfold_only);
            unfold_attr = (add_opt attr fs.unfold_attr);
            unfold_tac = (uu___106_1138.unfold_tac);
            pure_subterms_within_computations =
              (uu___106_1138.pure_subterms_within_computations);
            simplify = (uu___106_1138.simplify);
            erase_universes = (uu___106_1138.erase_universes);
            allow_unbound_universes = (uu___106_1138.allow_unbound_universes);
            reify_ = (uu___106_1138.reify_);
            compress_uvars = (uu___106_1138.compress_uvars);
            no_full_norm = (uu___106_1138.no_full_norm);
            check_no_uvars = (uu___106_1138.check_no_uvars);
            unmeta = (uu___106_1138.unmeta);
            unascribe = (uu___106_1138.unascribe);
            in_full_norm_request = (uu___106_1138.in_full_norm_request)
          }
      | UnfoldTac  ->
          let uu___107_1139 = fs  in
          {
            beta = (uu___107_1139.beta);
            iota = (uu___107_1139.iota);
            zeta = (uu___107_1139.zeta);
            weak = (uu___107_1139.weak);
            hnf = (uu___107_1139.hnf);
            primops = (uu___107_1139.primops);
            do_not_unfold_pure_lets = (uu___107_1139.do_not_unfold_pure_lets);
            unfold_until = (uu___107_1139.unfold_until);
            unfold_only = (uu___107_1139.unfold_only);
            unfold_attr = (uu___107_1139.unfold_attr);
            unfold_tac = true;
            pure_subterms_within_computations =
              (uu___107_1139.pure_subterms_within_computations);
            simplify = (uu___107_1139.simplify);
            erase_universes = (uu___107_1139.erase_universes);
            allow_unbound_universes = (uu___107_1139.allow_unbound_universes);
            reify_ = (uu___107_1139.reify_);
            compress_uvars = (uu___107_1139.compress_uvars);
            no_full_norm = (uu___107_1139.no_full_norm);
            check_no_uvars = (uu___107_1139.check_no_uvars);
            unmeta = (uu___107_1139.unmeta);
            unascribe = (uu___107_1139.unascribe);
            in_full_norm_request = (uu___107_1139.in_full_norm_request)
          }
      | PureSubtermsWithinComputations  ->
          let uu___108_1140 = fs  in
          {
            beta = (uu___108_1140.beta);
            iota = (uu___108_1140.iota);
            zeta = (uu___108_1140.zeta);
            weak = (uu___108_1140.weak);
            hnf = (uu___108_1140.hnf);
            primops = (uu___108_1140.primops);
            do_not_unfold_pure_lets = (uu___108_1140.do_not_unfold_pure_lets);
            unfold_until = (uu___108_1140.unfold_until);
            unfold_only = (uu___108_1140.unfold_only);
            unfold_attr = (uu___108_1140.unfold_attr);
            unfold_tac = (uu___108_1140.unfold_tac);
            pure_subterms_within_computations = true;
            simplify = (uu___108_1140.simplify);
            erase_universes = (uu___108_1140.erase_universes);
            allow_unbound_universes = (uu___108_1140.allow_unbound_universes);
            reify_ = (uu___108_1140.reify_);
            compress_uvars = (uu___108_1140.compress_uvars);
            no_full_norm = (uu___108_1140.no_full_norm);
            check_no_uvars = (uu___108_1140.check_no_uvars);
            unmeta = (uu___108_1140.unmeta);
            unascribe = (uu___108_1140.unascribe);
            in_full_norm_request = (uu___108_1140.in_full_norm_request)
          }
      | Simplify  ->
          let uu___109_1141 = fs  in
          {
            beta = (uu___109_1141.beta);
            iota = (uu___109_1141.iota);
            zeta = (uu___109_1141.zeta);
            weak = (uu___109_1141.weak);
            hnf = (uu___109_1141.hnf);
            primops = (uu___109_1141.primops);
            do_not_unfold_pure_lets = (uu___109_1141.do_not_unfold_pure_lets);
            unfold_until = (uu___109_1141.unfold_until);
            unfold_only = (uu___109_1141.unfold_only);
            unfold_attr = (uu___109_1141.unfold_attr);
            unfold_tac = (uu___109_1141.unfold_tac);
            pure_subterms_within_computations =
              (uu___109_1141.pure_subterms_within_computations);
            simplify = true;
            erase_universes = (uu___109_1141.erase_universes);
            allow_unbound_universes = (uu___109_1141.allow_unbound_universes);
            reify_ = (uu___109_1141.reify_);
            compress_uvars = (uu___109_1141.compress_uvars);
            no_full_norm = (uu___109_1141.no_full_norm);
            check_no_uvars = (uu___109_1141.check_no_uvars);
            unmeta = (uu___109_1141.unmeta);
            unascribe = (uu___109_1141.unascribe);
            in_full_norm_request = (uu___109_1141.in_full_norm_request)
          }
      | EraseUniverses  ->
          let uu___110_1142 = fs  in
          {
            beta = (uu___110_1142.beta);
            iota = (uu___110_1142.iota);
            zeta = (uu___110_1142.zeta);
            weak = (uu___110_1142.weak);
            hnf = (uu___110_1142.hnf);
            primops = (uu___110_1142.primops);
            do_not_unfold_pure_lets = (uu___110_1142.do_not_unfold_pure_lets);
            unfold_until = (uu___110_1142.unfold_until);
            unfold_only = (uu___110_1142.unfold_only);
            unfold_attr = (uu___110_1142.unfold_attr);
            unfold_tac = (uu___110_1142.unfold_tac);
            pure_subterms_within_computations =
              (uu___110_1142.pure_subterms_within_computations);
            simplify = (uu___110_1142.simplify);
            erase_universes = true;
            allow_unbound_universes = (uu___110_1142.allow_unbound_universes);
            reify_ = (uu___110_1142.reify_);
            compress_uvars = (uu___110_1142.compress_uvars);
            no_full_norm = (uu___110_1142.no_full_norm);
            check_no_uvars = (uu___110_1142.check_no_uvars);
            unmeta = (uu___110_1142.unmeta);
            unascribe = (uu___110_1142.unascribe);
            in_full_norm_request = (uu___110_1142.in_full_norm_request)
          }
      | AllowUnboundUniverses  ->
          let uu___111_1143 = fs  in
          {
            beta = (uu___111_1143.beta);
            iota = (uu___111_1143.iota);
            zeta = (uu___111_1143.zeta);
            weak = (uu___111_1143.weak);
            hnf = (uu___111_1143.hnf);
            primops = (uu___111_1143.primops);
            do_not_unfold_pure_lets = (uu___111_1143.do_not_unfold_pure_lets);
            unfold_until = (uu___111_1143.unfold_until);
            unfold_only = (uu___111_1143.unfold_only);
            unfold_attr = (uu___111_1143.unfold_attr);
            unfold_tac = (uu___111_1143.unfold_tac);
            pure_subterms_within_computations =
              (uu___111_1143.pure_subterms_within_computations);
            simplify = (uu___111_1143.simplify);
            erase_universes = (uu___111_1143.erase_universes);
            allow_unbound_universes = true;
            reify_ = (uu___111_1143.reify_);
            compress_uvars = (uu___111_1143.compress_uvars);
            no_full_norm = (uu___111_1143.no_full_norm);
            check_no_uvars = (uu___111_1143.check_no_uvars);
            unmeta = (uu___111_1143.unmeta);
            unascribe = (uu___111_1143.unascribe);
            in_full_norm_request = (uu___111_1143.in_full_norm_request)
          }
      | Reify  ->
          let uu___112_1144 = fs  in
          {
            beta = (uu___112_1144.beta);
            iota = (uu___112_1144.iota);
            zeta = (uu___112_1144.zeta);
            weak = (uu___112_1144.weak);
            hnf = (uu___112_1144.hnf);
            primops = (uu___112_1144.primops);
            do_not_unfold_pure_lets = (uu___112_1144.do_not_unfold_pure_lets);
            unfold_until = (uu___112_1144.unfold_until);
            unfold_only = (uu___112_1144.unfold_only);
            unfold_attr = (uu___112_1144.unfold_attr);
            unfold_tac = (uu___112_1144.unfold_tac);
            pure_subterms_within_computations =
              (uu___112_1144.pure_subterms_within_computations);
            simplify = (uu___112_1144.simplify);
            erase_universes = (uu___112_1144.erase_universes);
            allow_unbound_universes = (uu___112_1144.allow_unbound_universes);
            reify_ = true;
            compress_uvars = (uu___112_1144.compress_uvars);
            no_full_norm = (uu___112_1144.no_full_norm);
            check_no_uvars = (uu___112_1144.check_no_uvars);
            unmeta = (uu___112_1144.unmeta);
            unascribe = (uu___112_1144.unascribe);
            in_full_norm_request = (uu___112_1144.in_full_norm_request)
          }
      | CompressUvars  ->
          let uu___113_1145 = fs  in
          {
            beta = (uu___113_1145.beta);
            iota = (uu___113_1145.iota);
            zeta = (uu___113_1145.zeta);
            weak = (uu___113_1145.weak);
            hnf = (uu___113_1145.hnf);
            primops = (uu___113_1145.primops);
            do_not_unfold_pure_lets = (uu___113_1145.do_not_unfold_pure_lets);
            unfold_until = (uu___113_1145.unfold_until);
            unfold_only = (uu___113_1145.unfold_only);
            unfold_attr = (uu___113_1145.unfold_attr);
            unfold_tac = (uu___113_1145.unfold_tac);
            pure_subterms_within_computations =
              (uu___113_1145.pure_subterms_within_computations);
            simplify = (uu___113_1145.simplify);
            erase_universes = (uu___113_1145.erase_universes);
            allow_unbound_universes = (uu___113_1145.allow_unbound_universes);
            reify_ = (uu___113_1145.reify_);
            compress_uvars = true;
            no_full_norm = (uu___113_1145.no_full_norm);
            check_no_uvars = (uu___113_1145.check_no_uvars);
            unmeta = (uu___113_1145.unmeta);
            unascribe = (uu___113_1145.unascribe);
            in_full_norm_request = (uu___113_1145.in_full_norm_request)
          }
      | NoFullNorm  ->
          let uu___114_1146 = fs  in
          {
            beta = (uu___114_1146.beta);
            iota = (uu___114_1146.iota);
            zeta = (uu___114_1146.zeta);
            weak = (uu___114_1146.weak);
            hnf = (uu___114_1146.hnf);
            primops = (uu___114_1146.primops);
            do_not_unfold_pure_lets = (uu___114_1146.do_not_unfold_pure_lets);
            unfold_until = (uu___114_1146.unfold_until);
            unfold_only = (uu___114_1146.unfold_only);
            unfold_attr = (uu___114_1146.unfold_attr);
            unfold_tac = (uu___114_1146.unfold_tac);
            pure_subterms_within_computations =
              (uu___114_1146.pure_subterms_within_computations);
            simplify = (uu___114_1146.simplify);
            erase_universes = (uu___114_1146.erase_universes);
            allow_unbound_universes = (uu___114_1146.allow_unbound_universes);
            reify_ = (uu___114_1146.reify_);
            compress_uvars = (uu___114_1146.compress_uvars);
            no_full_norm = true;
            check_no_uvars = (uu___114_1146.check_no_uvars);
            unmeta = (uu___114_1146.unmeta);
            unascribe = (uu___114_1146.unascribe);
            in_full_norm_request = (uu___114_1146.in_full_norm_request)
          }
      | CheckNoUvars  ->
          let uu___115_1147 = fs  in
          {
            beta = (uu___115_1147.beta);
            iota = (uu___115_1147.iota);
            zeta = (uu___115_1147.zeta);
            weak = (uu___115_1147.weak);
            hnf = (uu___115_1147.hnf);
            primops = (uu___115_1147.primops);
            do_not_unfold_pure_lets = (uu___115_1147.do_not_unfold_pure_lets);
            unfold_until = (uu___115_1147.unfold_until);
            unfold_only = (uu___115_1147.unfold_only);
            unfold_attr = (uu___115_1147.unfold_attr);
            unfold_tac = (uu___115_1147.unfold_tac);
            pure_subterms_within_computations =
              (uu___115_1147.pure_subterms_within_computations);
            simplify = (uu___115_1147.simplify);
            erase_universes = (uu___115_1147.erase_universes);
            allow_unbound_universes = (uu___115_1147.allow_unbound_universes);
            reify_ = (uu___115_1147.reify_);
            compress_uvars = (uu___115_1147.compress_uvars);
            no_full_norm = (uu___115_1147.no_full_norm);
            check_no_uvars = true;
            unmeta = (uu___115_1147.unmeta);
            unascribe = (uu___115_1147.unascribe);
            in_full_norm_request = (uu___115_1147.in_full_norm_request)
          }
      | Unmeta  ->
          let uu___116_1148 = fs  in
          {
            beta = (uu___116_1148.beta);
            iota = (uu___116_1148.iota);
            zeta = (uu___116_1148.zeta);
            weak = (uu___116_1148.weak);
            hnf = (uu___116_1148.hnf);
            primops = (uu___116_1148.primops);
            do_not_unfold_pure_lets = (uu___116_1148.do_not_unfold_pure_lets);
            unfold_until = (uu___116_1148.unfold_until);
            unfold_only = (uu___116_1148.unfold_only);
            unfold_attr = (uu___116_1148.unfold_attr);
            unfold_tac = (uu___116_1148.unfold_tac);
            pure_subterms_within_computations =
              (uu___116_1148.pure_subterms_within_computations);
            simplify = (uu___116_1148.simplify);
            erase_universes = (uu___116_1148.erase_universes);
            allow_unbound_universes = (uu___116_1148.allow_unbound_universes);
            reify_ = (uu___116_1148.reify_);
            compress_uvars = (uu___116_1148.compress_uvars);
            no_full_norm = (uu___116_1148.no_full_norm);
            check_no_uvars = (uu___116_1148.check_no_uvars);
            unmeta = true;
            unascribe = (uu___116_1148.unascribe);
            in_full_norm_request = (uu___116_1148.in_full_norm_request)
          }
      | Unascribe  ->
          let uu___117_1149 = fs  in
          {
            beta = (uu___117_1149.beta);
            iota = (uu___117_1149.iota);
            zeta = (uu___117_1149.zeta);
            weak = (uu___117_1149.weak);
            hnf = (uu___117_1149.hnf);
            primops = (uu___117_1149.primops);
            do_not_unfold_pure_lets = (uu___117_1149.do_not_unfold_pure_lets);
            unfold_until = (uu___117_1149.unfold_until);
            unfold_only = (uu___117_1149.unfold_only);
            unfold_attr = (uu___117_1149.unfold_attr);
            unfold_tac = (uu___117_1149.unfold_tac);
            pure_subterms_within_computations =
              (uu___117_1149.pure_subterms_within_computations);
            simplify = (uu___117_1149.simplify);
            erase_universes = (uu___117_1149.erase_universes);
            allow_unbound_universes = (uu___117_1149.allow_unbound_universes);
            reify_ = (uu___117_1149.reify_);
            compress_uvars = (uu___117_1149.compress_uvars);
            no_full_norm = (uu___117_1149.no_full_norm);
            check_no_uvars = (uu___117_1149.check_no_uvars);
            unmeta = (uu___117_1149.unmeta);
            unascribe = true;
            in_full_norm_request = (uu___117_1149.in_full_norm_request)
          }
  
let rec (to_fsteps : step Prims.list -> fsteps) =
  fun s  -> FStar_List.fold_right fstep_add_one s default_steps 
type psc =
  {
  psc_range: FStar_Range.range ;
  psc_subst: Prims.unit -> FStar_Syntax_Syntax.subst_t }[@@deriving show]
let (__proj__Mkpsc__item__psc_range : psc -> FStar_Range.range) =
  fun projectee  ->
    match projectee with
    | { psc_range = __fname__psc_range; psc_subst = __fname__psc_subst;_} ->
        __fname__psc_range
  
let (__proj__Mkpsc__item__psc_subst :
  psc -> Prims.unit -> FStar_Syntax_Syntax.subst_t) =
  fun projectee  ->
    match projectee with
    | { psc_range = __fname__psc_range; psc_subst = __fname__psc_subst;_} ->
        __fname__psc_subst
  
let (null_psc : psc) =
  { psc_range = FStar_Range.dummyRange; psc_subst = (fun uu____1188  -> []) } 
let (psc_range : psc -> FStar_Range.range) = fun psc  -> psc.psc_range 
let (psc_subst : psc -> FStar_Syntax_Syntax.subst_t) =
  fun psc  -> psc.psc_subst () 
type primitive_step =
  {
  name: FStar_Ident.lid ;
  arity: Prims.int ;
  auto_reflect: Prims.int FStar_Pervasives_Native.option ;
  strong_reduction_ok: Prims.bool ;
  requires_binder_substitution: Prims.bool ;
  interpretation:
    psc ->
      FStar_Syntax_Syntax.args ->
        FStar_Syntax_Syntax.term FStar_Pervasives_Native.option
    }[@@deriving show]
let (__proj__Mkprimitive_step__item__name :
  primitive_step -> FStar_Ident.lid) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} -> __fname__name
  
let (__proj__Mkprimitive_step__item__arity : primitive_step -> Prims.int) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} -> __fname__arity
  
let (__proj__Mkprimitive_step__item__auto_reflect :
  primitive_step -> Prims.int FStar_Pervasives_Native.option) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} -> __fname__auto_reflect
  
let (__proj__Mkprimitive_step__item__strong_reduction_ok :
  primitive_step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} ->
        __fname__strong_reduction_ok
  
let (__proj__Mkprimitive_step__item__requires_binder_substitution :
  primitive_step -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} ->
        __fname__requires_binder_substitution
  
let (__proj__Mkprimitive_step__item__interpretation :
  primitive_step ->
    psc ->
      FStar_Syntax_Syntax.args ->
        FStar_Syntax_Syntax.term FStar_Pervasives_Native.option)
  =
  fun projectee  ->
    match projectee with
    | { name = __fname__name; arity = __fname__arity;
        auto_reflect = __fname__auto_reflect;
        strong_reduction_ok = __fname__strong_reduction_ok;
        requires_binder_substitution = __fname__requires_binder_substitution;
        interpretation = __fname__interpretation;_} ->
        __fname__interpretation
  
type closure =
  | Clos of
  ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
     FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term,
  ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
     FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term)
    FStar_Pervasives_Native.tuple2 FStar_Syntax_Syntax.memo,Prims.bool)
  FStar_Pervasives_Native.tuple4 
  | Univ of FStar_Syntax_Syntax.universe 
  | Dummy [@@deriving show]
let (uu___is_Clos : closure -> Prims.bool) =
  fun projectee  ->
    match projectee with | Clos _0 -> true | uu____1431 -> false
  
let (__proj__Clos__item___0 :
  closure ->
    ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
       FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term,
      ((FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
         FStar_Pervasives_Native.tuple2 Prims.list,FStar_Syntax_Syntax.term)
        FStar_Pervasives_Native.tuple2 FStar_Syntax_Syntax.memo,Prims.bool)
      FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | Clos _0 -> _0 
let (uu___is_Univ : closure -> Prims.bool) =
  fun projectee  ->
    match projectee with | Univ _0 -> true | uu____1533 -> false
  
let (__proj__Univ__item___0 : closure -> FStar_Syntax_Syntax.universe) =
  fun projectee  -> match projectee with | Univ _0 -> _0 
let (uu___is_Dummy : closure -> Prims.bool) =
  fun projectee  ->
    match projectee with | Dummy  -> true | uu____1544 -> false
  
type env =
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2 Prims.list[@@deriving show]
let (dummy :
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2)
  = (FStar_Pervasives_Native.None, Dummy) 
type debug_switches =
  {
  gen: Prims.bool ;
  primop: Prims.bool ;
  b380: Prims.bool ;
  norm_delayed: Prims.bool ;
  print_normalized: Prims.bool }[@@deriving show]
let (__proj__Mkdebug_switches__item__gen : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop; b380 = __fname__b380;
        norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__gen
  
let (__proj__Mkdebug_switches__item__primop : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop; b380 = __fname__b380;
        norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__primop
  
let (__proj__Mkdebug_switches__item__b380 : debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop; b380 = __fname__b380;
        norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} -> __fname__b380
  
let (__proj__Mkdebug_switches__item__norm_delayed :
  debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop; b380 = __fname__b380;
        norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} ->
        __fname__norm_delayed
  
let (__proj__Mkdebug_switches__item__print_normalized :
  debug_switches -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { gen = __fname__gen; primop = __fname__primop; b380 = __fname__b380;
        norm_delayed = __fname__norm_delayed;
        print_normalized = __fname__print_normalized;_} ->
        __fname__print_normalized
  
type cfg =
  {
  steps: fsteps ;
  tcenv: FStar_TypeChecker_Env.env ;
  debug: debug_switches ;
  delta_level: FStar_TypeChecker_Env.delta_level Prims.list ;
  primitive_steps: primitive_step FStar_Util.psmap ;
  strong: Prims.bool ;
  memoize_lazy: Prims.bool ;
  normalize_pure_lets: Prims.bool }[@@deriving show]
let (__proj__Mkcfg__item__steps : cfg -> fsteps) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__steps
  
let (__proj__Mkcfg__item__tcenv : cfg -> FStar_TypeChecker_Env.env) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__tcenv
  
let (__proj__Mkcfg__item__debug : cfg -> debug_switches) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__debug
  
let (__proj__Mkcfg__item__delta_level :
  cfg -> FStar_TypeChecker_Env.delta_level Prims.list) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__delta_level
  
let (__proj__Mkcfg__item__primitive_steps :
  cfg -> primitive_step FStar_Util.psmap) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__primitive_steps
  
let (__proj__Mkcfg__item__strong : cfg -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__strong
  
let (__proj__Mkcfg__item__memoize_lazy : cfg -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__memoize_lazy
  
let (__proj__Mkcfg__item__normalize_pure_lets : cfg -> Prims.bool) =
  fun projectee  ->
    match projectee with
    | { steps = __fname__steps; tcenv = __fname__tcenv;
        debug = __fname__debug; delta_level = __fname__delta_level;
        primitive_steps = __fname__primitive_steps; strong = __fname__strong;
        memoize_lazy = __fname__memoize_lazy;
        normalize_pure_lets = __fname__normalize_pure_lets;_} ->
        __fname__normalize_pure_lets
  
let (add_steps :
  primitive_step FStar_Util.psmap ->
    primitive_step Prims.list -> primitive_step FStar_Util.psmap)
  =
  fun m  ->
    fun l  ->
      FStar_List.fold_right
        (fun p  ->
           fun m1  ->
             let uu____1812 = FStar_Ident.text_of_lid p.name  in
             FStar_Util.psmap_add m1 uu____1812 p) l m
  
let (prim_from_list :
  primitive_step Prims.list -> primitive_step FStar_Util.psmap) =
  fun l  ->
    let uu____1824 = FStar_Util.psmap_empty ()  in add_steps uu____1824 l
  
let (find_prim_step :
  cfg ->
    FStar_Syntax_Syntax.fv -> primitive_step FStar_Pervasives_Native.option)
  =
  fun cfg  ->
    fun fv  ->
      let uu____1835 =
        FStar_Ident.text_of_lid
          (fv.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
         in
      FStar_Util.psmap_try_find cfg.primitive_steps uu____1835
  
type branches =
  (FStar_Syntax_Syntax.pat,FStar_Syntax_Syntax.term
                             FStar_Pervasives_Native.option,FStar_Syntax_Syntax.term)
    FStar_Pervasives_Native.tuple3 Prims.list[@@deriving show]
type stack_elt =
  | Arg of (closure,FStar_Syntax_Syntax.aqual,FStar_Range.range)
  FStar_Pervasives_Native.tuple3 
  | UnivArgs of (FStar_Syntax_Syntax.universe Prims.list,FStar_Range.range)
  FStar_Pervasives_Native.tuple2 
  | MemoLazy of (env,FStar_Syntax_Syntax.term) FStar_Pervasives_Native.tuple2
  FStar_Syntax_Syntax.memo 
  | Match of (env,branches,cfg,FStar_Range.range)
  FStar_Pervasives_Native.tuple4 
  | Abs of
  (env,FStar_Syntax_Syntax.binders,env,FStar_Syntax_Syntax.residual_comp
                                         FStar_Pervasives_Native.option,
  FStar_Range.range) FStar_Pervasives_Native.tuple5 
  | App of
  (env,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.aqual,FStar_Range.range)
  FStar_Pervasives_Native.tuple4 
  | Meta of (env,FStar_Syntax_Syntax.metadata,FStar_Range.range)
  FStar_Pervasives_Native.tuple3 
  | Let of
  (env,FStar_Syntax_Syntax.binders,FStar_Syntax_Syntax.letbinding,FStar_Range.range)
  FStar_Pervasives_Native.tuple4 
  | Cfg of cfg 
  | Debug of (FStar_Syntax_Syntax.term,FStar_Util.time)
  FStar_Pervasives_Native.tuple2 [@@deriving show]
let (uu___is_Arg : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Arg _0 -> true | uu____1981 -> false
  
let (__proj__Arg__item___0 :
  stack_elt ->
    (closure,FStar_Syntax_Syntax.aqual,FStar_Range.range)
      FStar_Pervasives_Native.tuple3)
  = fun projectee  -> match projectee with | Arg _0 -> _0 
let (uu___is_UnivArgs : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | UnivArgs _0 -> true | uu____2017 -> false
  
let (__proj__UnivArgs__item___0 :
  stack_elt ->
    (FStar_Syntax_Syntax.universe Prims.list,FStar_Range.range)
      FStar_Pervasives_Native.tuple2)
  = fun projectee  -> match projectee with | UnivArgs _0 -> _0 
let (uu___is_MemoLazy : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | MemoLazy _0 -> true | uu____2053 -> false
  
let (__proj__MemoLazy__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.term) FStar_Pervasives_Native.tuple2
      FStar_Syntax_Syntax.memo)
  = fun projectee  -> match projectee with | MemoLazy _0 -> _0 
let (uu___is_Match : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Match _0 -> true | uu____2124 -> false
  
let (__proj__Match__item___0 :
  stack_elt ->
    (env,branches,cfg,FStar_Range.range) FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | Match _0 -> _0 
let (uu___is_Abs : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Abs _0 -> true | uu____2172 -> false
  
let (__proj__Abs__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.binders,env,FStar_Syntax_Syntax.residual_comp
                                           FStar_Pervasives_Native.option,
      FStar_Range.range) FStar_Pervasives_Native.tuple5)
  = fun projectee  -> match projectee with | Abs _0 -> _0 
let (uu___is_App : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | App _0 -> true | uu____2228 -> false
  
let (__proj__App__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.term,FStar_Syntax_Syntax.aqual,FStar_Range.range)
      FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | App _0 -> _0 
let (uu___is_Meta : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Meta _0 -> true | uu____2270 -> false
  
let (__proj__Meta__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.metadata,FStar_Range.range)
      FStar_Pervasives_Native.tuple3)
  = fun projectee  -> match projectee with | Meta _0 -> _0 
let (uu___is_Let : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Let _0 -> true | uu____2308 -> false
  
let (__proj__Let__item___0 :
  stack_elt ->
    (env,FStar_Syntax_Syntax.binders,FStar_Syntax_Syntax.letbinding,FStar_Range.range)
      FStar_Pervasives_Native.tuple4)
  = fun projectee  -> match projectee with | Let _0 -> _0 
let (uu___is_Cfg : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Cfg _0 -> true | uu____2344 -> false
  
let (__proj__Cfg__item___0 : stack_elt -> cfg) =
  fun projectee  -> match projectee with | Cfg _0 -> _0 
let (uu___is_Debug : stack_elt -> Prims.bool) =
  fun projectee  ->
    match projectee with | Debug _0 -> true | uu____2360 -> false
  
let (__proj__Debug__item___0 :
  stack_elt ->
    (FStar_Syntax_Syntax.term,FStar_Util.time) FStar_Pervasives_Native.tuple2)
  = fun projectee  -> match projectee with | Debug _0 -> _0 
type stack = stack_elt Prims.list[@@deriving show]
let (head_of : FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) =
  fun t  ->
    let uu____2385 = FStar_Syntax_Util.head_and_args' t  in
    match uu____2385 with | (hd1,uu____2399) -> hd1
  
let mk :
  'Auu____2419 .
    'Auu____2419 ->
      FStar_Range.range -> 'Auu____2419 FStar_Syntax_Syntax.syntax
  =
  fun t  -> fun r  -> FStar_Syntax_Syntax.mk t FStar_Pervasives_Native.None r 
let set_memo : 'a . cfg -> 'a FStar_Syntax_Syntax.memo -> 'a -> Prims.unit =
  fun cfg  ->
    fun r  ->
      fun t  ->
        if cfg.memoize_lazy
        then
          let uu____2473 = FStar_ST.op_Bang r  in
          match uu____2473 with
          | FStar_Pervasives_Native.Some uu____2521 ->
              failwith "Unexpected set_memo: thunk already evaluated"
          | FStar_Pervasives_Native.None  ->
              FStar_ST.op_Colon_Equals r (FStar_Pervasives_Native.Some t)
        else ()
  
let rec (env_to_string :
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2 Prims.list -> Prims.string)
  =
  fun env  ->
    let uu____2589 =
      FStar_List.map
        (fun uu____2603  ->
           match uu____2603 with
           | (bopt,c) ->
               let uu____2616 =
                 match bopt with
                 | FStar_Pervasives_Native.None  -> "."
                 | FStar_Pervasives_Native.Some x ->
                     FStar_Syntax_Print.binder_to_string x
                  in
               let uu____2618 = closure_to_string c  in
               FStar_Util.format2 "(%s, %s)" uu____2616 uu____2618) env
       in
    FStar_All.pipe_right uu____2589 (FStar_String.concat "; ")

and (closure_to_string : closure -> Prims.string) =
  fun uu___78_2621  ->
    match uu___78_2621 with
    | Clos (env,t,uu____2624,uu____2625) ->
        let uu____2670 =
          FStar_All.pipe_right (FStar_List.length env)
            FStar_Util.string_of_int
           in
        let uu____2677 = FStar_Syntax_Print.term_to_string t  in
        FStar_Util.format2 "(env=%s elts; %s)" uu____2670 uu____2677
    | Univ uu____2678 -> "Univ"
    | Dummy  -> "dummy"

let (stack_elt_to_string : stack_elt -> Prims.string) =
  fun uu___79_2681  ->
    match uu___79_2681 with
    | Arg (c,uu____2683,uu____2684) ->
        let uu____2685 = closure_to_string c  in
        FStar_Util.format1 "Closure %s" uu____2685
    | MemoLazy uu____2686 -> "MemoLazy"
    | Abs (uu____2693,bs,uu____2695,uu____2696,uu____2697) ->
        let uu____2702 =
          FStar_All.pipe_left FStar_Util.string_of_int (FStar_List.length bs)
           in
        FStar_Util.format1 "Abs %s" uu____2702
    | UnivArgs uu____2707 -> "UnivArgs"
    | Match uu____2714 -> "Match"
    | App (uu____2723,t,uu____2725,uu____2726) ->
        let uu____2727 = FStar_Syntax_Print.term_to_string t  in
        FStar_Util.format1 "App %s" uu____2727
    | Meta (uu____2728,m,uu____2730) -> "Meta"
    | Let uu____2731 -> "Let"
    | Cfg uu____2740 -> "Cfg"
    | Debug (t,uu____2742) ->
        let uu____2743 = FStar_Syntax_Print.term_to_string t  in
        FStar_Util.format1 "Debug %s" uu____2743
  
let (stack_to_string : stack_elt Prims.list -> Prims.string) =
  fun s  ->
    let uu____2751 = FStar_List.map stack_elt_to_string s  in
    FStar_All.pipe_right uu____2751 (FStar_String.concat "; ")
  
let (log : cfg -> (Prims.unit -> Prims.unit) -> Prims.unit) =
  fun cfg  -> fun f  -> if (cfg.debug).gen then f () else () 
let (log_primops : cfg -> (Prims.unit -> Prims.unit) -> Prims.unit) =
  fun cfg  -> fun f  -> if (cfg.debug).primop then f () else () 
let is_empty : 'Auu____2782 . 'Auu____2782 Prims.list -> Prims.bool =
  fun uu___80_2788  ->
    match uu___80_2788 with | [] -> true | uu____2791 -> false
  
let (lookup_bvar :
  (FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option,closure)
    FStar_Pervasives_Native.tuple2 Prims.list ->
    FStar_Syntax_Syntax.bv -> closure)
  =
  fun env  ->
    fun x  ->
      try
        let uu____2819 = FStar_List.nth env x.FStar_Syntax_Syntax.index  in
        FStar_Pervasives_Native.snd uu____2819
      with
      | uu____2838 ->
          let uu____2839 =
            let uu____2840 = FStar_Syntax_Print.db_to_string x  in
            let uu____2841 = env_to_string env  in
            FStar_Util.format2 "Failed to find %s\nEnv is %s\n" uu____2840
              uu____2841
             in
          failwith uu____2839
  
let (downgrade_ghost_effect_name :
  FStar_Ident.lident -> FStar_Ident.lident FStar_Pervasives_Native.option) =
  fun l  ->
    let uu____2847 =
      FStar_Ident.lid_equals l FStar_Parser_Const.effect_Ghost_lid  in
    if uu____2847
    then FStar_Pervasives_Native.Some FStar_Parser_Const.effect_Pure_lid
    else
      (let uu____2851 =
         FStar_Ident.lid_equals l FStar_Parser_Const.effect_GTot_lid  in
       if uu____2851
       then FStar_Pervasives_Native.Some FStar_Parser_Const.effect_Tot_lid
       else
         (let uu____2855 =
            FStar_Ident.lid_equals l FStar_Parser_Const.effect_GHOST_lid  in
          if uu____2855
          then
            FStar_Pervasives_Native.Some FStar_Parser_Const.effect_PURE_lid
          else FStar_Pervasives_Native.None))
  
let (norm_universe :
  cfg -> env -> FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.universe)
  =
  fun cfg  ->
    fun env  ->
      fun u  ->
        let norm_univs us =
          let us1 = FStar_Util.sort_with FStar_Syntax_Util.compare_univs us
             in
          let uu____2881 =
            FStar_List.fold_left
              (fun uu____2907  ->
                 fun u1  ->
                   match uu____2907 with
                   | (cur_kernel,cur_max,out) ->
                       let uu____2932 = FStar_Syntax_Util.univ_kernel u1  in
                       (match uu____2932 with
                        | (k_u,n1) ->
                            let uu____2947 =
                              FStar_Syntax_Util.eq_univs cur_kernel k_u  in
                            if uu____2947
                            then (cur_kernel, u1, out)
                            else (k_u, u1, (cur_max :: out))))
              (FStar_Syntax_Syntax.U_zero, FStar_Syntax_Syntax.U_zero, [])
              us1
             in
          match uu____2881 with
          | (uu____2965,u1,out) -> FStar_List.rev (u1 :: out)  in
        let rec aux u1 =
          let u2 = FStar_Syntax_Subst.compress_univ u1  in
          match u2 with
          | FStar_Syntax_Syntax.U_bvar x ->
              (try
                 let uu____2990 =
                   let uu____2991 = FStar_List.nth env x  in
                   FStar_Pervasives_Native.snd uu____2991  in
                 match uu____2990 with
                 | Univ u3 -> aux u3
                 | Dummy  -> [u2]
                 | uu____3009 ->
                     failwith "Impossible: universe variable bound to a term"
               with
               | uu____3017 ->
                   if (cfg.steps).allow_unbound_universes
                   then [FStar_Syntax_Syntax.U_unknown]
                   else failwith "Universe variable not found")
          | FStar_Syntax_Syntax.U_unif uu____3023 when
              (cfg.steps).check_no_uvars -> [FStar_Syntax_Syntax.U_zero]
          | FStar_Syntax_Syntax.U_zero  -> [u2]
          | FStar_Syntax_Syntax.U_unif uu____3032 -> [u2]
          | FStar_Syntax_Syntax.U_name uu____3041 -> [u2]
          | FStar_Syntax_Syntax.U_unknown  -> [u2]
          | FStar_Syntax_Syntax.U_max [] -> [FStar_Syntax_Syntax.U_zero]
          | FStar_Syntax_Syntax.U_max us ->
              let us1 =
                let uu____3048 = FStar_List.collect aux us  in
                FStar_All.pipe_right uu____3048 norm_univs  in
              (match us1 with
               | u_k::hd1::rest ->
                   let rest1 = hd1 :: rest  in
                   let uu____3065 = FStar_Syntax_Util.univ_kernel u_k  in
                   (match uu____3065 with
                    | (FStar_Syntax_Syntax.U_zero ,n1) ->
                        let uu____3073 =
                          FStar_All.pipe_right rest1
                            (FStar_List.for_all
                               (fun u3  ->
                                  let uu____3081 =
                                    FStar_Syntax_Util.univ_kernel u3  in
                                  match uu____3081 with
                                  | (uu____3086,m) -> n1 <= m))
                           in
                        if uu____3073 then rest1 else us1
                    | uu____3091 -> us1)
               | uu____3096 -> us1)
          | FStar_Syntax_Syntax.U_succ u3 ->
              let uu____3100 = aux u3  in
              FStar_List.map (fun _0_40  -> FStar_Syntax_Syntax.U_succ _0_40)
                uu____3100
           in
        if (cfg.steps).erase_universes
        then FStar_Syntax_Syntax.U_unknown
        else
          (let uu____3104 = aux u  in
           match uu____3104 with
           | [] -> FStar_Syntax_Syntax.U_zero
           | (FStar_Syntax_Syntax.U_zero )::[] -> FStar_Syntax_Syntax.U_zero
           | (FStar_Syntax_Syntax.U_zero )::u1::[] -> u1
           | (FStar_Syntax_Syntax.U_zero )::us ->
               FStar_Syntax_Syntax.U_max us
           | u1::[] -> u1
           | us -> FStar_Syntax_Syntax.U_max us)
  
let rec (inline_closure_env :
  cfg ->
    env ->
      stack_elt Prims.list ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          log cfg
            (fun uu____3208  ->
               let uu____3209 = FStar_Syntax_Print.tag_of_term t  in
               let uu____3210 = env_to_string env  in
               let uu____3211 = FStar_Syntax_Print.term_to_string t  in
               FStar_Util.print3 "\n>>> %s (env=%s) Closure_as_term %s\n"
                 uu____3209 uu____3210 uu____3211);
          (match env with
           | [] when
               FStar_All.pipe_left Prims.op_Negation
                 (cfg.steps).compress_uvars
               -> rebuild_closure cfg env stack t
           | uu____3220 ->
               (match t.FStar_Syntax_Syntax.n with
                | FStar_Syntax_Syntax.Tm_delayed uu____3223 ->
                    let uu____3248 = FStar_Syntax_Subst.compress t  in
                    inline_closure_env cfg env stack uu____3248
                | FStar_Syntax_Syntax.Tm_unknown  ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_constant uu____3249 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_name uu____3250 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_lazy uu____3251 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_fvar uu____3252 ->
                    rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_uvar uu____3253 ->
                    if (cfg.steps).check_no_uvars
                    then
                      let t1 = FStar_Syntax_Subst.compress t  in
                      (match t1.FStar_Syntax_Syntax.n with
                       | FStar_Syntax_Syntax.Tm_uvar uu____3275 ->
                           let uu____3292 =
                             let uu____3293 =
                               FStar_Range.string_of_range
                                 t1.FStar_Syntax_Syntax.pos
                                in
                             let uu____3294 =
                               FStar_Syntax_Print.term_to_string t1  in
                             FStar_Util.format2
                               "(%s): CheckNoUvars: Unexpected unification variable remains: %s"
                               uu____3293 uu____3294
                              in
                           failwith uu____3292
                       | uu____3297 -> inline_closure_env cfg env stack t1)
                    else rebuild_closure cfg env stack t
                | FStar_Syntax_Syntax.Tm_type u ->
                    let t1 =
                      let uu____3303 =
                        let uu____3304 = norm_universe cfg env u  in
                        FStar_Syntax_Syntax.Tm_type uu____3304  in
                      mk uu____3303 t.FStar_Syntax_Syntax.pos  in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_uinst (t',us) ->
                    let t1 =
                      let uu____3312 =
                        FStar_List.map (norm_universe cfg env) us  in
                      FStar_Syntax_Syntax.mk_Tm_uinst t' uu____3312  in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_bvar x ->
                    let uu____3314 = lookup_bvar env x  in
                    (match uu____3314 with
                     | Univ uu____3317 ->
                         failwith
                           "Impossible: term variable is bound to a universe"
                     | Dummy  ->
                         let x1 =
                           let uu___122_3321 = x  in
                           {
                             FStar_Syntax_Syntax.ppname =
                               (uu___122_3321.FStar_Syntax_Syntax.ppname);
                             FStar_Syntax_Syntax.index =
                               (uu___122_3321.FStar_Syntax_Syntax.index);
                             FStar_Syntax_Syntax.sort =
                               FStar_Syntax_Syntax.tun
                           }  in
                         let t1 =
                           mk (FStar_Syntax_Syntax.Tm_bvar x1)
                             t.FStar_Syntax_Syntax.pos
                            in
                         rebuild_closure cfg env stack t1
                     | Clos (env1,t0,uu____3327,uu____3328) ->
                         inline_closure_env cfg env1 stack t0)
                | FStar_Syntax_Syntax.Tm_app (head1,args) ->
                    let stack1 =
                      FStar_All.pipe_right stack
                        (FStar_List.fold_right
                           (fun uu____3413  ->
                              fun stack1  ->
                                match uu____3413 with
                                | (a,aq) ->
                                    let uu____3425 =
                                      let uu____3426 =
                                        let uu____3433 =
                                          let uu____3434 =
                                            let uu____3465 =
                                              FStar_Util.mk_ref
                                                FStar_Pervasives_Native.None
                                               in
                                            (env, a, uu____3465, false)  in
                                          Clos uu____3434  in
                                        (uu____3433, aq,
                                          (t.FStar_Syntax_Syntax.pos))
                                         in
                                      Arg uu____3426  in
                                    uu____3425 :: stack1) args)
                       in
                    inline_closure_env cfg env stack1 head1
                | FStar_Syntax_Syntax.Tm_abs (bs,body,lopt) ->
                    let env' =
                      FStar_All.pipe_right env
                        (FStar_List.fold_right
                           (fun _b  ->
                              fun env1  ->
                                (FStar_Pervasives_Native.None, Dummy) :: env1)
                           bs)
                       in
                    let stack1 =
                      (Abs (env, bs, env', lopt, (t.FStar_Syntax_Syntax.pos)))
                      :: stack  in
                    inline_closure_env cfg env' stack1 body
                | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
                    let uu____3659 = close_binders cfg env bs  in
                    (match uu____3659 with
                     | (bs1,env') ->
                         let c1 = close_comp cfg env' c  in
                         let t1 =
                           mk (FStar_Syntax_Syntax.Tm_arrow (bs1, c1))
                             t.FStar_Syntax_Syntax.pos
                            in
                         rebuild_closure cfg env stack t1)
                | FStar_Syntax_Syntax.Tm_refine (x,phi) ->
                    let uu____3706 =
                      let uu____3717 =
                        let uu____3724 = FStar_Syntax_Syntax.mk_binder x  in
                        [uu____3724]  in
                      close_binders cfg env uu____3717  in
                    (match uu____3706 with
                     | (x1,env1) ->
                         let phi1 = non_tail_inline_closure_env cfg env1 phi
                            in
                         let t1 =
                           let uu____3747 =
                             let uu____3748 =
                               let uu____3755 =
                                 let uu____3756 = FStar_List.hd x1  in
                                 FStar_All.pipe_right uu____3756
                                   FStar_Pervasives_Native.fst
                                  in
                               (uu____3755, phi1)  in
                             FStar_Syntax_Syntax.Tm_refine uu____3748  in
                           mk uu____3747 t.FStar_Syntax_Syntax.pos  in
                         rebuild_closure cfg env1 stack t1)
                | FStar_Syntax_Syntax.Tm_ascribed (t1,(annot,tacopt),lopt) ->
                    let annot1 =
                      match annot with
                      | FStar_Util.Inl t2 ->
                          let uu____3847 =
                            non_tail_inline_closure_env cfg env t2  in
                          FStar_Util.Inl uu____3847
                      | FStar_Util.Inr c ->
                          let uu____3861 = close_comp cfg env c  in
                          FStar_Util.Inr uu____3861
                       in
                    let tacopt1 =
                      FStar_Util.map_opt tacopt
                        (non_tail_inline_closure_env cfg env)
                       in
                    let t2 =
                      let uu____3880 =
                        let uu____3881 =
                          let uu____3908 =
                            non_tail_inline_closure_env cfg env t1  in
                          (uu____3908, (annot1, tacopt1), lopt)  in
                        FStar_Syntax_Syntax.Tm_ascribed uu____3881  in
                      mk uu____3880 t.FStar_Syntax_Syntax.pos  in
                    rebuild_closure cfg env stack t2
                | FStar_Syntax_Syntax.Tm_quoted (t',qi) ->
                    let t1 =
                      match qi.FStar_Syntax_Syntax.qkind with
                      | FStar_Syntax_Syntax.Quote_dynamic  ->
                          let uu____3954 =
                            let uu____3955 =
                              let uu____3962 =
                                non_tail_inline_closure_env cfg env t'  in
                              (uu____3962, qi)  in
                            FStar_Syntax_Syntax.Tm_quoted uu____3955  in
                          mk uu____3954 t.FStar_Syntax_Syntax.pos
                      | FStar_Syntax_Syntax.Quote_static  ->
                          let qi1 =
                            FStar_Syntax_Syntax.on_antiquoted
                              (non_tail_inline_closure_env cfg env) qi
                             in
                          mk (FStar_Syntax_Syntax.Tm_quoted (t', qi1))
                            t.FStar_Syntax_Syntax.pos
                       in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_meta (t',m) ->
                    let stack1 = (Meta (env, m, (t.FStar_Syntax_Syntax.pos)))
                      :: stack  in
                    inline_closure_env cfg env stack1 t'
                | FStar_Syntax_Syntax.Tm_let ((false ,lb::[]),body) ->
                    let env0 = env  in
                    let env1 =
                      FStar_List.fold_left
                        (fun env1  -> fun uu____4014  -> dummy :: env1) env
                        lb.FStar_Syntax_Syntax.lbunivs
                       in
                    let typ =
                      non_tail_inline_closure_env cfg env1
                        lb.FStar_Syntax_Syntax.lbtyp
                       in
                    let def =
                      non_tail_inline_closure_env cfg env1
                        lb.FStar_Syntax_Syntax.lbdef
                       in
                    let uu____4035 =
                      let uu____4046 = FStar_Syntax_Syntax.is_top_level [lb]
                         in
                      if uu____4046
                      then ((lb.FStar_Syntax_Syntax.lbname), body)
                      else
                        (let x =
                           FStar_Util.left lb.FStar_Syntax_Syntax.lbname  in
                         let uu____4065 =
                           non_tail_inline_closure_env cfg (dummy :: env0)
                             body
                            in
                         ((FStar_Util.Inl
                             (let uu___123_4081 = x  in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___123_4081.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (uu___123_4081.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = typ
                              })), uu____4065))
                       in
                    (match uu____4035 with
                     | (nm,body1) ->
                         let lb1 =
                           let uu___124_4099 = lb  in
                           {
                             FStar_Syntax_Syntax.lbname = nm;
                             FStar_Syntax_Syntax.lbunivs =
                               (uu___124_4099.FStar_Syntax_Syntax.lbunivs);
                             FStar_Syntax_Syntax.lbtyp = typ;
                             FStar_Syntax_Syntax.lbeff =
                               (uu___124_4099.FStar_Syntax_Syntax.lbeff);
                             FStar_Syntax_Syntax.lbdef = def;
                             FStar_Syntax_Syntax.lbattrs =
                               (uu___124_4099.FStar_Syntax_Syntax.lbattrs);
                             FStar_Syntax_Syntax.lbpos =
                               (uu___124_4099.FStar_Syntax_Syntax.lbpos)
                           }  in
                         let t1 =
                           mk
                             (FStar_Syntax_Syntax.Tm_let
                                ((false, [lb1]), body1))
                             t.FStar_Syntax_Syntax.pos
                            in
                         rebuild_closure cfg env1 stack t1)
                | FStar_Syntax_Syntax.Tm_let ((uu____4113,lbs),body) ->
                    let norm_one_lb env1 lb =
                      let env_univs =
                        FStar_List.fold_right
                          (fun uu____4172  -> fun env2  -> dummy :: env2)
                          lb.FStar_Syntax_Syntax.lbunivs env1
                         in
                      let env2 =
                        let uu____4197 = FStar_Syntax_Syntax.is_top_level lbs
                           in
                        if uu____4197
                        then env_univs
                        else
                          FStar_List.fold_right
                            (fun uu____4217  -> fun env2  -> dummy :: env2)
                            lbs env_univs
                         in
                      let ty =
                        non_tail_inline_closure_env cfg env_univs
                          lb.FStar_Syntax_Syntax.lbtyp
                         in
                      let nm =
                        let uu____4241 = FStar_Syntax_Syntax.is_top_level lbs
                           in
                        if uu____4241
                        then lb.FStar_Syntax_Syntax.lbname
                        else
                          (let x =
                             FStar_Util.left lb.FStar_Syntax_Syntax.lbname
                              in
                           FStar_Util.Inl
                             (let uu___125_4249 = x  in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___125_4249.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (uu___125_4249.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = ty
                              }))
                         in
                      let uu___126_4250 = lb  in
                      let uu____4251 =
                        non_tail_inline_closure_env cfg env2
                          lb.FStar_Syntax_Syntax.lbdef
                         in
                      {
                        FStar_Syntax_Syntax.lbname = nm;
                        FStar_Syntax_Syntax.lbunivs =
                          (uu___126_4250.FStar_Syntax_Syntax.lbunivs);
                        FStar_Syntax_Syntax.lbtyp = ty;
                        FStar_Syntax_Syntax.lbeff =
                          (uu___126_4250.FStar_Syntax_Syntax.lbeff);
                        FStar_Syntax_Syntax.lbdef = uu____4251;
                        FStar_Syntax_Syntax.lbattrs =
                          (uu___126_4250.FStar_Syntax_Syntax.lbattrs);
                        FStar_Syntax_Syntax.lbpos =
                          (uu___126_4250.FStar_Syntax_Syntax.lbpos)
                      }  in
                    let lbs1 =
                      FStar_All.pipe_right lbs
                        (FStar_List.map (norm_one_lb env))
                       in
                    let body1 =
                      let body_env =
                        FStar_List.fold_right
                          (fun uu____4283  -> fun env1  -> dummy :: env1)
                          lbs1 env
                         in
                      non_tail_inline_closure_env cfg body_env body  in
                    let t1 =
                      mk (FStar_Syntax_Syntax.Tm_let ((true, lbs1), body1))
                        t.FStar_Syntax_Syntax.pos
                       in
                    rebuild_closure cfg env stack t1
                | FStar_Syntax_Syntax.Tm_match (head1,branches) ->
                    let stack1 =
                      (Match
                         (env, branches, cfg, (t.FStar_Syntax_Syntax.pos)))
                      :: stack  in
                    inline_closure_env cfg env stack1 head1))

and (non_tail_inline_closure_env :
  cfg ->
    env ->
      FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  = fun cfg  -> fun env  -> fun t  -> inline_closure_env cfg env [] t

and (rebuild_closure :
  cfg ->
    env ->
      stack_elt Prims.list ->
        FStar_Syntax_Syntax.term ->
          FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          log cfg
            (fun uu____4386  ->
               let uu____4387 = FStar_Syntax_Print.tag_of_term t  in
               let uu____4388 = env_to_string env  in
               let uu____4389 = stack_to_string stack  in
               let uu____4390 = FStar_Syntax_Print.term_to_string t  in
               FStar_Util.print4
                 "\n>>> %s (env=%s, stack=%s) Rebuild closure_as_term %s\n"
                 uu____4387 uu____4388 uu____4389 uu____4390);
          (match stack with
           | [] -> t
           | (Arg (Clos (env_arg,tm,uu____4395,uu____4396),aq,r))::stack1 ->
               let stack2 = (App (env, t, aq, r)) :: stack1  in
               inline_closure_env cfg env_arg stack2 tm
           | (App (env1,head1,aq,r))::stack1 ->
               let t1 =
                 FStar_Syntax_Syntax.extend_app head1 (t, aq)
                   FStar_Pervasives_Native.None r
                  in
               rebuild_closure cfg env1 stack1 t1
           | (Abs (env',bs,env'',lopt,r))::stack1 ->
               let uu____4471 = close_binders cfg env' bs  in
               (match uu____4471 with
                | (bs1,uu____4485) ->
                    let lopt1 = close_lcomp_opt cfg env'' lopt  in
                    let uu____4501 =
                      let uu___127_4502 = FStar_Syntax_Util.abs bs1 t lopt1
                         in
                      {
                        FStar_Syntax_Syntax.n =
                          (uu___127_4502.FStar_Syntax_Syntax.n);
                        FStar_Syntax_Syntax.pos = r;
                        FStar_Syntax_Syntax.vars =
                          (uu___127_4502.FStar_Syntax_Syntax.vars)
                      }  in
                    rebuild_closure cfg env stack1 uu____4501)
           | (Match (env1,branches,cfg1,r))::stack1 ->
               let close_one_branch env2 uu____4544 =
                 match uu____4544 with
                 | (pat,w_opt,tm) ->
                     let rec norm_pat env3 p =
                       match p.FStar_Syntax_Syntax.v with
                       | FStar_Syntax_Syntax.Pat_constant uu____4615 ->
                           (p, env3)
                       | FStar_Syntax_Syntax.Pat_cons (fv,pats) ->
                           let uu____4636 =
                             FStar_All.pipe_right pats
                               (FStar_List.fold_left
                                  (fun uu____4696  ->
                                     fun uu____4697  ->
                                       match (uu____4696, uu____4697) with
                                       | ((pats1,env4),(p1,b)) ->
                                           let uu____4788 = norm_pat env4 p1
                                              in
                                           (match uu____4788 with
                                            | (p2,env5) ->
                                                (((p2, b) :: pats1), env5)))
                                  ([], env3))
                              in
                           (match uu____4636 with
                            | (pats1,env4) ->
                                ((let uu___128_4870 = p  in
                                  {
                                    FStar_Syntax_Syntax.v =
                                      (FStar_Syntax_Syntax.Pat_cons
                                         (fv, (FStar_List.rev pats1)));
                                    FStar_Syntax_Syntax.p =
                                      (uu___128_4870.FStar_Syntax_Syntax.p)
                                  }), env4))
                       | FStar_Syntax_Syntax.Pat_var x ->
                           let x1 =
                             let uu___129_4889 = x  in
                             let uu____4890 =
                               non_tail_inline_closure_env cfg1 env3
                                 x.FStar_Syntax_Syntax.sort
                                in
                             {
                               FStar_Syntax_Syntax.ppname =
                                 (uu___129_4889.FStar_Syntax_Syntax.ppname);
                               FStar_Syntax_Syntax.index =
                                 (uu___129_4889.FStar_Syntax_Syntax.index);
                               FStar_Syntax_Syntax.sort = uu____4890
                             }  in
                           ((let uu___130_4904 = p  in
                             {
                               FStar_Syntax_Syntax.v =
                                 (FStar_Syntax_Syntax.Pat_var x1);
                               FStar_Syntax_Syntax.p =
                                 (uu___130_4904.FStar_Syntax_Syntax.p)
                             }), (dummy :: env3))
                       | FStar_Syntax_Syntax.Pat_wild x ->
                           let x1 =
                             let uu___131_4915 = x  in
                             let uu____4916 =
                               non_tail_inline_closure_env cfg1 env3
                                 x.FStar_Syntax_Syntax.sort
                                in
                             {
                               FStar_Syntax_Syntax.ppname =
                                 (uu___131_4915.FStar_Syntax_Syntax.ppname);
                               FStar_Syntax_Syntax.index =
                                 (uu___131_4915.FStar_Syntax_Syntax.index);
                               FStar_Syntax_Syntax.sort = uu____4916
                             }  in
                           ((let uu___132_4930 = p  in
                             {
                               FStar_Syntax_Syntax.v =
                                 (FStar_Syntax_Syntax.Pat_wild x1);
                               FStar_Syntax_Syntax.p =
                                 (uu___132_4930.FStar_Syntax_Syntax.p)
                             }), (dummy :: env3))
                       | FStar_Syntax_Syntax.Pat_dot_term (x,t1) ->
                           let x1 =
                             let uu___133_4946 = x  in
                             let uu____4947 =
                               non_tail_inline_closure_env cfg1 env3
                                 x.FStar_Syntax_Syntax.sort
                                in
                             {
                               FStar_Syntax_Syntax.ppname =
                                 (uu___133_4946.FStar_Syntax_Syntax.ppname);
                               FStar_Syntax_Syntax.index =
                                 (uu___133_4946.FStar_Syntax_Syntax.index);
                               FStar_Syntax_Syntax.sort = uu____4947
                             }  in
                           let t2 = non_tail_inline_closure_env cfg1 env3 t1
                              in
                           ((let uu___134_4956 = p  in
                             {
                               FStar_Syntax_Syntax.v =
                                 (FStar_Syntax_Syntax.Pat_dot_term (x1, t2));
                               FStar_Syntax_Syntax.p =
                                 (uu___134_4956.FStar_Syntax_Syntax.p)
                             }), env3)
                        in
                     let uu____4961 = norm_pat env2 pat  in
                     (match uu____4961 with
                      | (pat1,env3) ->
                          let w_opt1 =
                            match w_opt with
                            | FStar_Pervasives_Native.None  ->
                                FStar_Pervasives_Native.None
                            | FStar_Pervasives_Native.Some w ->
                                let uu____5006 =
                                  non_tail_inline_closure_env cfg1 env3 w  in
                                FStar_Pervasives_Native.Some uu____5006
                             in
                          let tm1 = non_tail_inline_closure_env cfg1 env3 tm
                             in
                          (pat1, w_opt1, tm1))
                  in
               let t1 =
                 let uu____5025 =
                   let uu____5026 =
                     let uu____5049 =
                       FStar_All.pipe_right branches
                         (FStar_List.map (close_one_branch env1))
                        in
                     (t, uu____5049)  in
                   FStar_Syntax_Syntax.Tm_match uu____5026  in
                 mk uu____5025 t.FStar_Syntax_Syntax.pos  in
               rebuild_closure cfg1 env1 stack1 t1
           | (Meta (env_m,m,r))::stack1 ->
               let m1 =
                 match m with
                 | FStar_Syntax_Syntax.Meta_pattern args ->
                     let uu____5144 =
                       FStar_All.pipe_right args
                         (FStar_List.map
                            (fun args1  ->
                               FStar_All.pipe_right args1
                                 (FStar_List.map
                                    (fun uu____5233  ->
                                       match uu____5233 with
                                       | (a,q) ->
                                           let uu____5252 =
                                             non_tail_inline_closure_env cfg
                                               env_m a
                                              in
                                           (uu____5252, q)))))
                        in
                     FStar_Syntax_Syntax.Meta_pattern uu____5144
                 | FStar_Syntax_Syntax.Meta_monadic (m1,tbody) ->
                     let uu____5263 =
                       let uu____5270 =
                         non_tail_inline_closure_env cfg env_m tbody  in
                       (m1, uu____5270)  in
                     FStar_Syntax_Syntax.Meta_monadic uu____5263
                 | FStar_Syntax_Syntax.Meta_monadic_lift (m1,m2,tbody) ->
                     let uu____5282 =
                       let uu____5291 =
                         non_tail_inline_closure_env cfg env_m tbody  in
                       (m1, m2, uu____5291)  in
                     FStar_Syntax_Syntax.Meta_monadic_lift uu____5282
                 | uu____5296 -> m  in
               let t1 = mk (FStar_Syntax_Syntax.Tm_meta (t, m1)) r  in
               rebuild_closure cfg env stack1 t1
           | uu____5300 -> failwith "Impossible: unexpected stack element")

and (close_binders :
  cfg ->
    env ->
      (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        ((FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
           FStar_Pervasives_Native.tuple2 Prims.list,env)
          FStar_Pervasives_Native.tuple2)
  =
  fun cfg  ->
    fun env  ->
      fun bs  ->
        let uu____5314 =
          FStar_All.pipe_right bs
            (FStar_List.fold_left
               (fun uu____5363  ->
                  fun uu____5364  ->
                    match (uu____5363, uu____5364) with
                    | ((env1,out),(b,imp)) ->
                        let b1 =
                          let uu___135_5434 = b  in
                          let uu____5435 =
                            inline_closure_env cfg env1 []
                              b.FStar_Syntax_Syntax.sort
                             in
                          {
                            FStar_Syntax_Syntax.ppname =
                              (uu___135_5434.FStar_Syntax_Syntax.ppname);
                            FStar_Syntax_Syntax.index =
                              (uu___135_5434.FStar_Syntax_Syntax.index);
                            FStar_Syntax_Syntax.sort = uu____5435
                          }  in
                        let env2 = dummy :: env1  in
                        (env2, ((b1, imp) :: out))) (env, []))
           in
        match uu____5314 with | (env1,bs1) -> ((FStar_List.rev bs1), env1)

and (close_comp :
  cfg ->
    env ->
      FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax ->
        FStar_Syntax_Syntax.comp' FStar_Syntax_Syntax.syntax)
  =
  fun cfg  ->
    fun env  ->
      fun c  ->
        match env with
        | [] when
            FStar_All.pipe_left Prims.op_Negation (cfg.steps).compress_uvars
            -> c
        | uu____5528 ->
            (match c.FStar_Syntax_Syntax.n with
             | FStar_Syntax_Syntax.Total (t,uopt) ->
                 let uu____5541 = inline_closure_env cfg env [] t  in
                 let uu____5542 =
                   FStar_Option.map (norm_universe cfg env) uopt  in
                 FStar_Syntax_Syntax.mk_Total' uu____5541 uu____5542
             | FStar_Syntax_Syntax.GTotal (t,uopt) ->
                 let uu____5555 = inline_closure_env cfg env [] t  in
                 let uu____5556 =
                   FStar_Option.map (norm_universe cfg env) uopt  in
                 FStar_Syntax_Syntax.mk_GTotal' uu____5555 uu____5556
             | FStar_Syntax_Syntax.Comp c1 ->
                 let rt =
                   inline_closure_env cfg env []
                     c1.FStar_Syntax_Syntax.result_typ
                    in
                 let args =
                   FStar_All.pipe_right c1.FStar_Syntax_Syntax.effect_args
                     (FStar_List.map
                        (fun uu____5602  ->
                           match uu____5602 with
                           | (a,q) ->
                               let uu____5615 =
                                 inline_closure_env cfg env [] a  in
                               (uu____5615, q)))
                    in
                 let flags1 =
                   FStar_All.pipe_right c1.FStar_Syntax_Syntax.flags
                     (FStar_List.map
                        (fun uu___81_5630  ->
                           match uu___81_5630 with
                           | FStar_Syntax_Syntax.DECREASES t ->
                               let uu____5634 =
                                 inline_closure_env cfg env [] t  in
                               FStar_Syntax_Syntax.DECREASES uu____5634
                           | f -> f))
                    in
                 let uu____5638 =
                   let uu___136_5639 = c1  in
                   let uu____5640 =
                     FStar_List.map (norm_universe cfg env)
                       c1.FStar_Syntax_Syntax.comp_univs
                      in
                   {
                     FStar_Syntax_Syntax.comp_univs = uu____5640;
                     FStar_Syntax_Syntax.effect_name =
                       (uu___136_5639.FStar_Syntax_Syntax.effect_name);
                     FStar_Syntax_Syntax.result_typ = rt;
                     FStar_Syntax_Syntax.effect_args = args;
                     FStar_Syntax_Syntax.flags = flags1
                   }  in
                 FStar_Syntax_Syntax.mk_Comp uu____5638)

and (filter_out_lcomp_cflags :
  FStar_Syntax_Syntax.cflags Prims.list ->
    FStar_Syntax_Syntax.cflags Prims.list)
  =
  fun flags1  ->
    FStar_All.pipe_right flags1
      (FStar_List.filter
         (fun uu___82_5650  ->
            match uu___82_5650 with
            | FStar_Syntax_Syntax.DECREASES uu____5651 -> false
            | uu____5654 -> true))

and (close_lcomp_opt :
  cfg ->
    env ->
      FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option ->
        FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option)
  =
  fun cfg  ->
    fun env  ->
      fun lopt  ->
        match lopt with
        | FStar_Pervasives_Native.Some rc ->
            let flags1 =
              FStar_All.pipe_right rc.FStar_Syntax_Syntax.residual_flags
                (FStar_List.filter
                   (fun uu___83_5672  ->
                      match uu___83_5672 with
                      | FStar_Syntax_Syntax.DECREASES uu____5673 -> false
                      | uu____5676 -> true))
               in
            let rc1 =
              let uu___137_5678 = rc  in
              let uu____5679 =
                FStar_Util.map_opt rc.FStar_Syntax_Syntax.residual_typ
                  (inline_closure_env cfg env [])
                 in
              {
                FStar_Syntax_Syntax.residual_effect =
                  (uu___137_5678.FStar_Syntax_Syntax.residual_effect);
                FStar_Syntax_Syntax.residual_typ = uu____5679;
                FStar_Syntax_Syntax.residual_flags = flags1
              }  in
            FStar_Pervasives_Native.Some rc1
        | uu____5688 -> lopt

let (closure_as_term :
  cfg -> env -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) =
  fun cfg  -> fun env  -> fun t  -> non_tail_inline_closure_env cfg env t 
let (built_in_primitive_steps : primitive_step FStar_Util.psmap) =
  let arg_as_int a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_int)
     in
  let arg_as_bool a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_bool)
     in
  let arg_as_char a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_char)
     in
  let arg_as_string a =
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a)
      (FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_string)
     in
  let arg_as_list a e a =
    let uu____5779 =
      let uu____5786 = FStar_Syntax_Embeddings.e_list e  in
      FStar_Syntax_Embeddings.try_unembed uu____5786  in
    FStar_All.pipe_right (FStar_Pervasives_Native.fst a) uu____5779  in
  let arg_as_bounded_int uu____5810 =
    match uu____5810 with
    | (a,uu____5822) ->
        let uu____5829 =
          let uu____5830 = FStar_Syntax_Subst.compress a  in
          uu____5830.FStar_Syntax_Syntax.n  in
        (match uu____5829 with
         | FStar_Syntax_Syntax.Tm_app
             ({ FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar fv1;
                FStar_Syntax_Syntax.pos = uu____5840;
                FStar_Syntax_Syntax.vars = uu____5841;_},({
                                                            FStar_Syntax_Syntax.n
                                                              =
                                                              FStar_Syntax_Syntax.Tm_constant
                                                              (FStar_Const.Const_int
                                                              (i,FStar_Pervasives_Native.None
                                                               ));
                                                            FStar_Syntax_Syntax.pos
                                                              = uu____5843;
                                                            FStar_Syntax_Syntax.vars
                                                              = uu____5844;_},uu____5845)::[])
             when
             let uu____5884 =
               FStar_Ident.text_of_lid
                 (fv1.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                in
             FStar_Util.ends_with uu____5884 "int_to_t" ->
             let uu____5885 =
               let uu____5890 = FStar_BigInt.big_int_of_string i  in
               (fv1, uu____5890)  in
             FStar_Pervasives_Native.Some uu____5885
         | uu____5895 -> FStar_Pervasives_Native.None)
     in
  let lift_unary a b f aopts =
    match aopts with
    | (FStar_Pervasives_Native.Some a)::[] ->
        let uu____5935 = f a  in FStar_Pervasives_Native.Some uu____5935
    | uu____5936 -> FStar_Pervasives_Native.None  in
  let lift_binary a b f aopts =
    match aopts with
    | (FStar_Pervasives_Native.Some a0)::(FStar_Pervasives_Native.Some
        a1)::[] ->
        let uu____5984 = f a0 a1  in FStar_Pervasives_Native.Some uu____5984
    | uu____5985 -> FStar_Pervasives_Native.None  in
  let unary_op a394 a395 a396 a397 a398 =
    (Obj.magic
       (fun a  ->
          fun as_a  ->
            fun f  ->
              fun res  ->
                fun args  ->
                  let uu____6027 = FStar_List.map as_a args  in
                  lift_unary () ()
                    (fun a393  -> (Obj.magic (f res.psc_range)) a393)
                    uu____6027)) a394 a395 a396 a397 a398
     in
  let binary_op a401 a402 a403 a404 a405 =
    (Obj.magic
       (fun a  ->
          fun as_a  ->
            fun f  ->
              fun res  ->
                fun args  ->
                  let uu____6076 = FStar_List.map as_a args  in
                  lift_binary () ()
                    (fun a399  ->
                       fun a400  -> (Obj.magic (f res.psc_range)) a399 a400)
                    uu____6076)) a401 a402 a403 a404 a405
     in
  let as_primitive_step is_strong uu____6103 =
    match uu____6103 with
    | (l,arity,f) ->
        {
          name = l;
          arity;
          auto_reflect = FStar_Pervasives_Native.None;
          strong_reduction_ok = is_strong;
          requires_binder_substitution = false;
          interpretation = f
        }
     in
  let unary_int_op f =
    unary_op () (fun a406  -> (Obj.magic arg_as_int) a406)
      (fun a407  ->
         fun a408  ->
           (Obj.magic
              (fun r  ->
                 fun x  ->
                   let uu____6151 = f x  in
                   FStar_Syntax_Embeddings.embed
                     FStar_Syntax_Embeddings.e_int r uu____6151)) a407 a408)
     in
  let binary_int_op f =
    binary_op () (fun a409  -> (Obj.magic arg_as_int) a409)
      (fun a410  ->
         fun a411  ->
           fun a412  ->
             (Obj.magic
                (fun r  ->
                   fun x  ->
                     fun y  ->
                       let uu____6179 = f x y  in
                       FStar_Syntax_Embeddings.embed
                         FStar_Syntax_Embeddings.e_int r uu____6179)) a410
               a411 a412)
     in
  let unary_bool_op f =
    unary_op () (fun a413  -> (Obj.magic arg_as_bool) a413)
      (fun a414  ->
         fun a415  ->
           (Obj.magic
              (fun r  ->
                 fun x  ->
                   let uu____6200 = f x  in
                   FStar_Syntax_Embeddings.embed
                     FStar_Syntax_Embeddings.e_bool r uu____6200)) a414 a415)
     in
  let binary_bool_op f =
    binary_op () (fun a416  -> (Obj.magic arg_as_bool) a416)
      (fun a417  ->
         fun a418  ->
           fun a419  ->
             (Obj.magic
                (fun r  ->
                   fun x  ->
                     fun y  ->
                       let uu____6228 = f x y  in
                       FStar_Syntax_Embeddings.embed
                         FStar_Syntax_Embeddings.e_bool r uu____6228)) a417
               a418 a419)
     in
  let binary_string_op f =
    binary_op () (fun a420  -> (Obj.magic arg_as_string) a420)
      (fun a421  ->
         fun a422  ->
           fun a423  ->
             (Obj.magic
                (fun r  ->
                   fun x  ->
                     fun y  ->
                       let uu____6256 = f x y  in
                       FStar_Syntax_Embeddings.embed
                         FStar_Syntax_Embeddings.e_string r uu____6256)) a421
               a422 a423)
     in
  let mixed_binary_op a b c as_a as_b embed_c f res args =
    match args with
    | a::b::[] ->
        let uu____6364 =
          let uu____6373 = as_a a  in
          let uu____6376 = as_b b  in (uu____6373, uu____6376)  in
        (match uu____6364 with
         | (FStar_Pervasives_Native.Some a1,FStar_Pervasives_Native.Some b1)
             ->
             let uu____6391 =
               let uu____6392 = f res.psc_range a1 b1  in
               embed_c res.psc_range uu____6392  in
             FStar_Pervasives_Native.Some uu____6391
         | uu____6393 -> FStar_Pervasives_Native.None)
    | uu____6402 -> FStar_Pervasives_Native.None  in
  let list_of_string' rng s =
    let name l =
      let uu____6416 =
        let uu____6417 =
          FStar_Syntax_Syntax.lid_as_fv l FStar_Syntax_Syntax.Delta_constant
            FStar_Pervasives_Native.None
           in
        FStar_Syntax_Syntax.Tm_fvar uu____6417  in
      mk uu____6416 rng  in
    let char_t = name FStar_Parser_Const.char_lid  in
    let charterm c =
      mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_char c)) rng  in
    let uu____6427 =
      let uu____6430 = FStar_String.list_of_string s  in
      FStar_List.map charterm uu____6430  in
    FStar_All.pipe_left (FStar_Syntax_Util.mk_list char_t rng) uu____6427  in
  let string_of_list' rng l =
    let s = FStar_String.string_of_list l  in FStar_Syntax_Util.exp_string s
     in
  let string_compare' rng s1 s2 =
    let r = FStar_String.compare s1 s2  in
    let uu____6462 =
      let uu____6463 = FStar_Util.string_of_int r  in
      FStar_BigInt.big_int_of_string uu____6463  in
    FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_int rng
      uu____6462
     in
  let string_concat' psc args =
    match args with
    | a1::a2::[] ->
        let uu____6481 = arg_as_string a1  in
        (match uu____6481 with
         | FStar_Pervasives_Native.Some s1 ->
             let uu____6487 =
               Obj.magic
                 (arg_as_list () (Obj.magic FStar_Syntax_Embeddings.e_string)
                    a2)
                in
             (match uu____6487 with
              | FStar_Pervasives_Native.Some s2 ->
                  let r = FStar_String.concat s1 s2  in
                  let uu____6500 =
                    FStar_Syntax_Embeddings.embed
                      FStar_Syntax_Embeddings.e_string psc.psc_range r
                     in
                  FStar_Pervasives_Native.Some uu____6500
              | uu____6501 -> FStar_Pervasives_Native.None)
         | uu____6506 -> FStar_Pervasives_Native.None)
    | uu____6509 -> FStar_Pervasives_Native.None  in
  let string_of_int1 rng i =
    let uu____6519 = FStar_BigInt.string_of_big_int i  in
    FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_string rng
      uu____6519
     in
  let string_of_bool1 rng b =
    FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_string rng
      (if b then "true" else "false")
     in
  let mk_range1 psc args =
    match args with
    | fn::from_line::from_col::to_line::to_col::[] ->
        let uu____6548 =
          let uu____6569 = arg_as_string fn  in
          let uu____6572 = arg_as_int from_line  in
          let uu____6575 = arg_as_int from_col  in
          let uu____6578 = arg_as_int to_line  in
          let uu____6581 = arg_as_int to_col  in
          (uu____6569, uu____6572, uu____6575, uu____6578, uu____6581)  in
        (match uu____6548 with
         | (FStar_Pervasives_Native.Some fn1,FStar_Pervasives_Native.Some
            from_l,FStar_Pervasives_Native.Some
            from_c,FStar_Pervasives_Native.Some
            to_l,FStar_Pervasives_Native.Some to_c) ->
             let r =
               let uu____6612 =
                 let uu____6613 = FStar_BigInt.to_int_fs from_l  in
                 let uu____6614 = FStar_BigInt.to_int_fs from_c  in
                 FStar_Range.mk_pos uu____6613 uu____6614  in
               let uu____6615 =
                 let uu____6616 = FStar_BigInt.to_int_fs to_l  in
                 let uu____6617 = FStar_BigInt.to_int_fs to_c  in
                 FStar_Range.mk_pos uu____6616 uu____6617  in
               FStar_Range.mk_range fn1 uu____6612 uu____6615  in
             let uu____6618 =
               FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_range
                 psc.psc_range r
                in
             FStar_Pervasives_Native.Some uu____6618
         | uu____6619 -> FStar_Pervasives_Native.None)
    | uu____6640 -> FStar_Pervasives_Native.None  in
  let decidable_eq neg psc args =
    let r = psc.psc_range  in
    let tru =
      mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_bool true)) r
       in
    let fal =
      mk (FStar_Syntax_Syntax.Tm_constant (FStar_Const.Const_bool false)) r
       in
    match args with
    | (_typ,uu____6667)::(a1,uu____6669)::(a2,uu____6671)::[] ->
        let uu____6708 = FStar_Syntax_Util.eq_tm a1 a2  in
        (match uu____6708 with
         | FStar_Syntax_Util.Equal  ->
             FStar_Pervasives_Native.Some (if neg then fal else tru)
         | FStar_Syntax_Util.NotEqual  ->
             FStar_Pervasives_Native.Some (if neg then tru else fal)
         | uu____6721 -> FStar_Pervasives_Native.None)
    | uu____6722 -> failwith "Unexpected number of arguments"  in
  let prims_to_fstar_range_step psc args =
    match args with
    | (a1,uu____6749)::[] ->
        let uu____6758 =
          FStar_Syntax_Embeddings.try_unembed FStar_Syntax_Embeddings.e_range
            a1
           in
        (match uu____6758 with
         | FStar_Pervasives_Native.Some r ->
             let uu____6764 =
               FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_range
                 psc.psc_range r
                in
             FStar_Pervasives_Native.Some uu____6764
         | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None)
    | uu____6765 -> failwith "Unexpected number of arguments"  in
  let basic_ops =
    let uu____6789 =
      let uu____6804 =
        let uu____6819 =
          let uu____6834 =
            let uu____6849 =
              let uu____6864 =
                let uu____6879 =
                  let uu____6894 =
                    let uu____6909 =
                      let uu____6924 =
                        let uu____6939 =
                          let uu____6954 =
                            let uu____6969 =
                              let uu____6984 =
                                let uu____6999 =
                                  let uu____7014 =
                                    let uu____7029 =
                                      let uu____7044 =
                                        let uu____7059 =
                                          let uu____7074 =
                                            let uu____7089 =
                                              let uu____7104 =
                                                let uu____7117 =
                                                  FStar_Parser_Const.p2l
                                                    ["FStar";
                                                    "String";
                                                    "list_of_string"]
                                                   in
                                                (uu____7117,
                                                  (Prims.parse_int "1"),
                                                  (unary_op ()
                                                     (fun a424  ->
                                                        (Obj.magic
                                                           arg_as_string)
                                                          a424)
                                                     (fun a425  ->
                                                        fun a426  ->
                                                          (Obj.magic
                                                             list_of_string')
                                                            a425 a426)))
                                                 in
                                              let uu____7124 =
                                                let uu____7139 =
                                                  let uu____7152 =
                                                    FStar_Parser_Const.p2l
                                                      ["FStar";
                                                      "String";
                                                      "string_of_list"]
                                                     in
                                                  (uu____7152,
                                                    (Prims.parse_int "1"),
                                                    (unary_op ()
                                                       (fun a427  ->
                                                          (Obj.magic
                                                             (arg_as_list ()
                                                                (Obj.magic
                                                                   FStar_Syntax_Embeddings.e_char)))
                                                            a427)
                                                       (fun a428  ->
                                                          fun a429  ->
                                                            (Obj.magic
                                                               string_of_list')
                                                              a428 a429)))
                                                   in
                                                let uu____7159 =
                                                  let uu____7174 =
                                                    let uu____7189 =
                                                      FStar_Parser_Const.p2l
                                                        ["FStar";
                                                        "String";
                                                        "concat"]
                                                       in
                                                    (uu____7189,
                                                      (Prims.parse_int "2"),
                                                      string_concat')
                                                     in
                                                  let uu____7198 =
                                                    let uu____7215 =
                                                      let uu____7230 =
                                                        FStar_Parser_Const.p2l
                                                          ["Prims";
                                                          "mk_range"]
                                                         in
                                                      (uu____7230,
                                                        (Prims.parse_int "5"),
                                                        mk_range1)
                                                       in
                                                    [uu____7215]  in
                                                  uu____7174 :: uu____7198
                                                   in
                                                uu____7139 :: uu____7159  in
                                              uu____7104 :: uu____7124  in
                                            (FStar_Parser_Const.op_notEq,
                                              (Prims.parse_int "3"),
                                              (decidable_eq true)) ::
                                              uu____7089
                                             in
                                          (FStar_Parser_Const.op_Eq,
                                            (Prims.parse_int "3"),
                                            (decidable_eq false)) ::
                                            uu____7074
                                           in
                                        (FStar_Parser_Const.string_compare,
                                          (Prims.parse_int "2"),
                                          (binary_op ()
                                             (fun a430  ->
                                                (Obj.magic arg_as_string)
                                                  a430)
                                             (fun a431  ->
                                                fun a432  ->
                                                  fun a433  ->
                                                    (Obj.magic
                                                       string_compare') a431
                                                      a432 a433)))
                                          :: uu____7059
                                         in
                                      (FStar_Parser_Const.string_of_bool_lid,
                                        (Prims.parse_int "1"),
                                        (unary_op ()
                                           (fun a434  ->
                                              (Obj.magic arg_as_bool) a434)
                                           (fun a435  ->
                                              fun a436  ->
                                                (Obj.magic string_of_bool1)
                                                  a435 a436)))
                                        :: uu____7044
                                       in
                                    (FStar_Parser_Const.string_of_int_lid,
                                      (Prims.parse_int "1"),
                                      (unary_op ()
                                         (fun a437  ->
                                            (Obj.magic arg_as_int) a437)
                                         (fun a438  ->
                                            fun a439  ->
                                              (Obj.magic string_of_int1) a438
                                                a439)))
                                      :: uu____7029
                                     in
                                  (FStar_Parser_Const.str_make_lid,
                                    (Prims.parse_int "2"),
                                    (mixed_binary_op () () ()
                                       (fun a440  ->
                                          (Obj.magic arg_as_int) a440)
                                       (fun a441  ->
                                          (Obj.magic arg_as_char) a441)
                                       (fun a442  ->
                                          fun a443  ->
                                            (Obj.magic
                                               (FStar_Syntax_Embeddings.embed
                                                  FStar_Syntax_Embeddings.e_string))
                                              a442 a443)
                                       (fun a444  ->
                                          fun a445  ->
                                            fun a446  ->
                                              (Obj.magic
                                                 (fun r  ->
                                                    fun x  ->
                                                      fun y  ->
                                                        let uu____7421 =
                                                          FStar_BigInt.to_int_fs
                                                            x
                                                           in
                                                        FStar_String.make
                                                          uu____7421 y)) a444
                                                a445 a446)))
                                    :: uu____7014
                                   in
                                (FStar_Parser_Const.strcat_lid',
                                  (Prims.parse_int "2"),
                                  (binary_string_op
                                     (fun x  -> fun y  -> Prims.strcat x y)))
                                  :: uu____6999
                                 in
                              (FStar_Parser_Const.strcat_lid,
                                (Prims.parse_int "2"),
                                (binary_string_op
                                   (fun x  -> fun y  -> Prims.strcat x y)))
                                :: uu____6984
                               in
                            (FStar_Parser_Const.op_Or, (Prims.parse_int "2"),
                              (binary_bool_op (fun x  -> fun y  -> x || y)))
                              :: uu____6969
                             in
                          (FStar_Parser_Const.op_And, (Prims.parse_int "2"),
                            (binary_bool_op (fun x  -> fun y  -> x && y))) ::
                            uu____6954
                           in
                        (FStar_Parser_Const.op_Negation,
                          (Prims.parse_int "1"),
                          (unary_bool_op (fun x  -> Prims.op_Negation x))) ::
                          uu____6939
                         in
                      (FStar_Parser_Const.op_Modulus, (Prims.parse_int "2"),
                        (binary_int_op
                           (fun x  -> fun y  -> FStar_BigInt.mod_big_int x y)))
                        :: uu____6924
                       in
                    (FStar_Parser_Const.op_GTE, (Prims.parse_int "2"),
                      (binary_op ()
                         (fun a447  -> (Obj.magic arg_as_int) a447)
                         (fun a448  ->
                            fun a449  ->
                              fun a450  ->
                                (Obj.magic
                                   (fun r  ->
                                      fun x  ->
                                        fun y  ->
                                          let uu____7588 =
                                            FStar_BigInt.ge_big_int x y  in
                                          FStar_Syntax_Embeddings.embed
                                            FStar_Syntax_Embeddings.e_bool r
                                            uu____7588)) a448 a449 a450)))
                      :: uu____6909
                     in
                  (FStar_Parser_Const.op_GT, (Prims.parse_int "2"),
                    (binary_op () (fun a451  -> (Obj.magic arg_as_int) a451)
                       (fun a452  ->
                          fun a453  ->
                            fun a454  ->
                              (Obj.magic
                                 (fun r  ->
                                    fun x  ->
                                      fun y  ->
                                        let uu____7614 =
                                          FStar_BigInt.gt_big_int x y  in
                                        FStar_Syntax_Embeddings.embed
                                          FStar_Syntax_Embeddings.e_bool r
                                          uu____7614)) a452 a453 a454)))
                    :: uu____6894
                   in
                (FStar_Parser_Const.op_LTE, (Prims.parse_int "2"),
                  (binary_op () (fun a455  -> (Obj.magic arg_as_int) a455)
                     (fun a456  ->
                        fun a457  ->
                          fun a458  ->
                            (Obj.magic
                               (fun r  ->
                                  fun x  ->
                                    fun y  ->
                                      let uu____7640 =
                                        FStar_BigInt.le_big_int x y  in
                                      FStar_Syntax_Embeddings.embed
                                        FStar_Syntax_Embeddings.e_bool r
                                        uu____7640)) a456 a457 a458)))
                  :: uu____6879
                 in
              (FStar_Parser_Const.op_LT, (Prims.parse_int "2"),
                (binary_op () (fun a459  -> (Obj.magic arg_as_int) a459)
                   (fun a460  ->
                      fun a461  ->
                        fun a462  ->
                          (Obj.magic
                             (fun r  ->
                                fun x  ->
                                  fun y  ->
                                    let uu____7666 =
                                      FStar_BigInt.lt_big_int x y  in
                                    FStar_Syntax_Embeddings.embed
                                      FStar_Syntax_Embeddings.e_bool r
                                      uu____7666)) a460 a461 a462)))
                :: uu____6864
               in
            (FStar_Parser_Const.op_Division, (Prims.parse_int "2"),
              (binary_int_op
                 (fun x  -> fun y  -> FStar_BigInt.div_big_int x y)))
              :: uu____6849
             in
          (FStar_Parser_Const.op_Multiply, (Prims.parse_int "2"),
            (binary_int_op
               (fun x  -> fun y  -> FStar_BigInt.mult_big_int x y)))
            :: uu____6834
           in
        (FStar_Parser_Const.op_Subtraction, (Prims.parse_int "2"),
          (binary_int_op (fun x  -> fun y  -> FStar_BigInt.sub_big_int x y)))
          :: uu____6819
         in
      (FStar_Parser_Const.op_Addition, (Prims.parse_int "2"),
        (binary_int_op (fun x  -> fun y  -> FStar_BigInt.add_big_int x y)))
        :: uu____6804
       in
    (FStar_Parser_Const.op_Minus, (Prims.parse_int "1"),
      (unary_int_op (fun x  -> FStar_BigInt.minus_big_int x))) :: uu____6789
     in
  let weak_ops =
    let uu____7805 =
      let uu____7824 =
        FStar_Parser_Const.p2l ["FStar"; "Range"; "prims_to_fstar_range"]  in
      (uu____7824, (Prims.parse_int "1"), prims_to_fstar_range_step)  in
    [uu____7805]  in
  let bounded_arith_ops =
    let bounded_signed_int_types = ["Int8"; "Int16"; "Int32"; "Int64"]  in
    let bounded_unsigned_int_types =
      ["UInt8"; "UInt16"; "UInt32"; "UInt64"; "UInt128"]  in
    let int_as_bounded r int_to_t1 n1 =
      let c =
        FStar_Syntax_Embeddings.embed FStar_Syntax_Embeddings.e_int r n1  in
      let int_to_t2 = FStar_Syntax_Syntax.fv_to_tm int_to_t1  in
      let uu____7908 =
        let uu____7909 =
          let uu____7910 = FStar_Syntax_Syntax.as_arg c  in [uu____7910]  in
        FStar_Syntax_Syntax.mk_Tm_app int_to_t2 uu____7909  in
      uu____7908 FStar_Pervasives_Native.None r  in
    let add_sub_mul_v =
      FStar_All.pipe_right
        (FStar_List.append bounded_signed_int_types
           bounded_unsigned_int_types)
        (FStar_List.collect
           (fun m  ->
              let uu____7960 =
                let uu____7973 = FStar_Parser_Const.p2l ["FStar"; m; "add"]
                   in
                (uu____7973, (Prims.parse_int "2"),
                  (binary_op ()
                     (fun a463  -> (Obj.magic arg_as_bounded_int) a463)
                     (fun a464  ->
                        fun a465  ->
                          fun a466  ->
                            (Obj.magic
                               (fun r  ->
                                  fun uu____7989  ->
                                    fun uu____7990  ->
                                      match (uu____7989, uu____7990) with
                                      | ((int_to_t1,x),(uu____8009,y)) ->
                                          let uu____8019 =
                                            FStar_BigInt.add_big_int x y  in
                                          int_as_bounded r int_to_t1
                                            uu____8019)) a464 a465 a466)))
                 in
              let uu____8020 =
                let uu____8035 =
                  let uu____8048 = FStar_Parser_Const.p2l ["FStar"; m; "sub"]
                     in
                  (uu____8048, (Prims.parse_int "2"),
                    (binary_op ()
                       (fun a467  -> (Obj.magic arg_as_bounded_int) a467)
                       (fun a468  ->
                          fun a469  ->
                            fun a470  ->
                              (Obj.magic
                                 (fun r  ->
                                    fun uu____8064  ->
                                      fun uu____8065  ->
                                        match (uu____8064, uu____8065) with
                                        | ((int_to_t1,x),(uu____8084,y)) ->
                                            let uu____8094 =
                                              FStar_BigInt.sub_big_int x y
                                               in
                                            int_as_bounded r int_to_t1
                                              uu____8094)) a468 a469 a470)))
                   in
                let uu____8095 =
                  let uu____8110 =
                    let uu____8123 =
                      FStar_Parser_Const.p2l ["FStar"; m; "mul"]  in
                    (uu____8123, (Prims.parse_int "2"),
                      (binary_op ()
                         (fun a471  -> (Obj.magic arg_as_bounded_int) a471)
                         (fun a472  ->
                            fun a473  ->
                              fun a474  ->
                                (Obj.magic
                                   (fun r  ->
                                      fun uu____8139  ->
                                        fun uu____8140  ->
                                          match (uu____8139, uu____8140) with
                                          | ((int_to_t1,x),(uu____8159,y)) ->
                                              let uu____8169 =
                                                FStar_BigInt.mult_big_int x y
                                                 in
                                              int_as_bounded r int_to_t1
                                                uu____8169)) a472 a473 a474)))
                     in
                  let uu____8170 =
                    let uu____8185 =
                      let uu____8198 =
                        FStar_Parser_Const.p2l ["FStar"; m; "v"]  in
                      (uu____8198, (Prims.parse_int "1"),
                        (unary_op ()
                           (fun a475  -> (Obj.magic arg_as_bounded_int) a475)
                           (fun a476  ->
                              fun a477  ->
                                (Obj.magic
                                   (fun r  ->
                                      fun uu____8210  ->
                                        match uu____8210 with
                                        | (int_to_t1,x) ->
                                            FStar_Syntax_Embeddings.embed
                                              FStar_Syntax_Embeddings.e_int r
                                              x)) a476 a477)))
                       in
                    [uu____8185]  in
                  uu____8110 :: uu____8170  in
                uu____8035 :: uu____8095  in
              uu____7960 :: uu____8020))
       in
    let div_mod_unsigned =
      FStar_All.pipe_right bounded_unsigned_int_types
        (FStar_List.collect
           (fun m  ->
              let uu____8324 =
                let uu____8337 = FStar_Parser_Const.p2l ["FStar"; m; "div"]
                   in
                (uu____8337, (Prims.parse_int "2"),
                  (binary_op ()
                     (fun a478  -> (Obj.magic arg_as_bounded_int) a478)
                     (fun a479  ->
                        fun a480  ->
                          fun a481  ->
                            (Obj.magic
                               (fun r  ->
                                  fun uu____8353  ->
                                    fun uu____8354  ->
                                      match (uu____8353, uu____8354) with
                                      | ((int_to_t1,x),(uu____8373,y)) ->
                                          let uu____8383 =
                                            FStar_BigInt.div_big_int x y  in
                                          int_as_bounded r int_to_t1
                                            uu____8383)) a479 a480 a481)))
                 in
              let uu____8384 =
                let uu____8399 =
                  let uu____8412 = FStar_Parser_Const.p2l ["FStar"; m; "rem"]
                     in
                  (uu____8412, (Prims.parse_int "2"),
                    (binary_op ()
                       (fun a482  -> (Obj.magic arg_as_bounded_int) a482)
                       (fun a483  ->
                          fun a484  ->
                            fun a485  ->
                              (Obj.magic
                                 (fun r  ->
                                    fun uu____8428  ->
                                      fun uu____8429  ->
                                        match (uu____8428, uu____8429) with
                                        | ((int_to_t1,x),(uu____8448,y)) ->
                                            let uu____8458 =
                                              FStar_BigInt.mod_big_int x y
                                               in
                                            int_as_bounded r int_to_t1
                                              uu____8458)) a483 a484 a485)))
                   in
                [uu____8399]  in
              uu____8324 :: uu____8384))
       in
    FStar_List.append add_sub_mul_v div_mod_unsigned  in
  let strong_steps =
    FStar_List.map (as_primitive_step true)
      (FStar_List.append basic_ops bounded_arith_ops)
     in
  let weak_steps = FStar_List.map (as_primitive_step false) weak_ops  in
  FStar_All.pipe_left prim_from_list
    (FStar_List.append strong_steps weak_steps)
  
let (equality_ops : primitive_step FStar_Util.psmap) =
  let interp_prop psc args =
    let r = psc.psc_range  in
    match args with
    | (_typ,uu____8570)::(a1,uu____8572)::(a2,uu____8574)::[] ->
        let uu____8611 = FStar_Syntax_Util.eq_tm a1 a2  in
        (match uu____8611 with
         | FStar_Syntax_Util.Equal  ->
             FStar_Pervasives_Native.Some
               (let uu___138_8617 = FStar_Syntax_Util.t_true  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___138_8617.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___138_8617.FStar_Syntax_Syntax.vars)
                })
         | FStar_Syntax_Util.NotEqual  ->
             FStar_Pervasives_Native.Some
               (let uu___139_8621 = FStar_Syntax_Util.t_false  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___139_8621.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___139_8621.FStar_Syntax_Syntax.vars)
                })
         | uu____8622 -> FStar_Pervasives_Native.None)
    | (_typ,uu____8624)::uu____8625::(a1,uu____8627)::(a2,uu____8629)::[] ->
        let uu____8678 = FStar_Syntax_Util.eq_tm a1 a2  in
        (match uu____8678 with
         | FStar_Syntax_Util.Equal  ->
             FStar_Pervasives_Native.Some
               (let uu___138_8684 = FStar_Syntax_Util.t_true  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___138_8684.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___138_8684.FStar_Syntax_Syntax.vars)
                })
         | FStar_Syntax_Util.NotEqual  ->
             FStar_Pervasives_Native.Some
               (let uu___139_8688 = FStar_Syntax_Util.t_false  in
                {
                  FStar_Syntax_Syntax.n =
                    (uu___139_8688.FStar_Syntax_Syntax.n);
                  FStar_Syntax_Syntax.pos = r;
                  FStar_Syntax_Syntax.vars =
                    (uu___139_8688.FStar_Syntax_Syntax.vars)
                })
         | uu____8689 -> FStar_Pervasives_Native.None)
    | uu____8690 -> failwith "Unexpected number of arguments"  in
  let propositional_equality =
    {
      name = FStar_Parser_Const.eq2_lid;
      arity = (Prims.parse_int "3");
      auto_reflect = FStar_Pervasives_Native.None;
      strong_reduction_ok = true;
      requires_binder_substitution = false;
      interpretation = interp_prop
    }  in
  let hetero_propositional_equality =
    {
      name = FStar_Parser_Const.eq3_lid;
      arity = (Prims.parse_int "4");
      auto_reflect = FStar_Pervasives_Native.None;
      strong_reduction_ok = true;
      requires_binder_substitution = false;
      interpretation = interp_prop
    }  in
  prim_from_list [propositional_equality; hetero_propositional_equality] 
let (unembed_binder_knot :
  FStar_Syntax_Syntax.binder FStar_Syntax_Embeddings.embedding
    FStar_Pervasives_Native.option FStar_ST.ref)
  = FStar_Util.mk_ref FStar_Pervasives_Native.None 
let (unembed_binder :
  FStar_Syntax_Syntax.term ->
    FStar_Syntax_Syntax.binder FStar_Pervasives_Native.option)
  =
  fun t  ->
    let uu____8742 = FStar_ST.op_Bang unembed_binder_knot  in
    match uu____8742 with
    | FStar_Pervasives_Native.Some e -> FStar_Syntax_Embeddings.unembed e t
    | FStar_Pervasives_Native.None  ->
        (FStar_Errors.log_issue t.FStar_Syntax_Syntax.pos
           (FStar_Errors.Warning_UnembedBinderKnot,
             "unembed_binder_knot is unset!");
         FStar_Pervasives_Native.None)
  
let mk_psc_subst :
  'Auu____8787 .
    cfg ->
      ((FStar_Syntax_Syntax.bv,'Auu____8787) FStar_Pervasives_Native.tuple2
         FStar_Pervasives_Native.option,closure)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        FStar_Syntax_Syntax.subst_elt Prims.list
  =
  fun cfg  ->
    fun env  ->
      FStar_List.fold_right
        (fun uu____8847  ->
           fun subst1  ->
             match uu____8847 with
             | (binder_opt,closure) ->
                 (match (binder_opt, closure) with
                  | (FStar_Pervasives_Native.Some b,Clos
                     (env1,term,uu____8888,uu____8889)) ->
                      let uu____8948 = b  in
                      (match uu____8948 with
                       | (bv,uu____8956) ->
                           let uu____8957 =
                             let uu____8958 =
                               FStar_Syntax_Util.is_constructed_typ
                                 bv.FStar_Syntax_Syntax.sort
                                 FStar_Parser_Const.binder_lid
                                in
                             Prims.op_Negation uu____8958  in
                           if uu____8957
                           then subst1
                           else
                             (let term1 = closure_as_term cfg env1 term  in
                              let uu____8963 = unembed_binder term1  in
                              match uu____8963 with
                              | FStar_Pervasives_Native.None  -> subst1
                              | FStar_Pervasives_Native.Some x ->
                                  let b1 =
                                    let uu____8970 =
                                      let uu___140_8971 = bv  in
                                      let uu____8972 =
                                        FStar_Syntax_Subst.subst subst1
                                          (FStar_Pervasives_Native.fst x).FStar_Syntax_Syntax.sort
                                         in
                                      {
                                        FStar_Syntax_Syntax.ppname =
                                          (uu___140_8971.FStar_Syntax_Syntax.ppname);
                                        FStar_Syntax_Syntax.index =
                                          (uu___140_8971.FStar_Syntax_Syntax.index);
                                        FStar_Syntax_Syntax.sort = uu____8972
                                      }  in
                                    FStar_Syntax_Syntax.freshen_bv uu____8970
                                     in
                                  let b_for_x =
                                    let uu____8976 =
                                      let uu____8983 =
                                        FStar_Syntax_Syntax.bv_to_name b1  in
                                      ((FStar_Pervasives_Native.fst x),
                                        uu____8983)
                                       in
                                    FStar_Syntax_Syntax.NT uu____8976  in
                                  let subst2 =
                                    FStar_List.filter
                                      (fun uu___84_8993  ->
                                         match uu___84_8993 with
                                         | FStar_Syntax_Syntax.NT
                                             (uu____8994,{
                                                           FStar_Syntax_Syntax.n
                                                             =
                                                             FStar_Syntax_Syntax.Tm_name
                                                             b';
                                                           FStar_Syntax_Syntax.pos
                                                             = uu____8996;
                                                           FStar_Syntax_Syntax.vars
                                                             = uu____8997;_})
                                             ->
                                             let uu____9002 =
                                               FStar_Ident.ident_equals
                                                 b1.FStar_Syntax_Syntax.ppname
                                                 b'.FStar_Syntax_Syntax.ppname
                                                in
                                             Prims.op_Negation uu____9002
                                         | uu____9003 -> true) subst1
                                     in
                                  b_for_x :: subst2))
                  | uu____9004 -> subst1)) env []
  
let reduce_primops :
  'Auu____9021 'Auu____9022 .
    cfg ->
      ((FStar_Syntax_Syntax.bv,'Auu____9021) FStar_Pervasives_Native.tuple2
         FStar_Pervasives_Native.option,closure)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        'Auu____9022 -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun tm  ->
          if Prims.op_Negation (cfg.steps).primops
          then tm
          else
            (let uu____9064 = FStar_Syntax_Util.head_and_args tm  in
             match uu____9064 with
             | (head1,args) ->
                 let uu____9101 =
                   let uu____9102 = FStar_Syntax_Util.un_uinst head1  in
                   uu____9102.FStar_Syntax_Syntax.n  in
                 (match uu____9101 with
                  | FStar_Syntax_Syntax.Tm_fvar fv ->
                      let uu____9106 = find_prim_step cfg fv  in
                      (match uu____9106 with
                       | FStar_Pervasives_Native.Some prim_step when
                           prim_step.strong_reduction_ok ||
                             (Prims.op_Negation cfg.strong)
                           ->
                           let l = FStar_List.length args  in
                           if l < prim_step.arity
                           then
                             (log_primops cfg
                                (fun uu____9128  ->
                                   let uu____9129 =
                                     FStar_Syntax_Print.lid_to_string
                                       prim_step.name
                                      in
                                   let uu____9130 =
                                     FStar_Util.string_of_int l  in
                                   let uu____9137 =
                                     FStar_Util.string_of_int prim_step.arity
                                      in
                                   FStar_Util.print3
                                     "primop: found partially applied %s (%s/%s args)\n"
                                     uu____9129 uu____9130 uu____9137);
                              tm)
                           else
                             (let uu____9139 =
                                if l = prim_step.arity
                                then (args, [])
                                else FStar_List.splitAt prim_step.arity args
                                 in
                              match uu____9139 with
                              | (args_1,args_2) ->
                                  (log_primops cfg
                                     (fun uu____9250  ->
                                        let uu____9251 =
                                          FStar_Syntax_Print.term_to_string
                                            tm
                                           in
                                        FStar_Util.print1
                                          "primop: trying to reduce <%s>\n"
                                          uu____9251);
                                   (let psc =
                                      {
                                        psc_range =
                                          (head1.FStar_Syntax_Syntax.pos);
                                        psc_subst =
                                          (fun uu____9254  ->
                                             if
                                               prim_step.requires_binder_substitution
                                             then mk_psc_subst cfg env
                                             else [])
                                      }  in
                                    let uu____9256 =
                                      prim_step.interpretation psc args_1  in
                                    match uu____9256 with
                                    | FStar_Pervasives_Native.None  ->
                                        (log_primops cfg
                                           (fun uu____9262  ->
                                              let uu____9263 =
                                                FStar_Syntax_Print.term_to_string
                                                  tm
                                                 in
                                              FStar_Util.print1
                                                "primop: <%s> did not reduce\n"
                                                uu____9263);
                                         tm)
                                    | FStar_Pervasives_Native.Some reduced ->
                                        (log_primops cfg
                                           (fun uu____9269  ->
                                              let uu____9270 =
                                                FStar_Syntax_Print.term_to_string
                                                  tm
                                                 in
                                              let uu____9271 =
                                                FStar_Syntax_Print.term_to_string
                                                  reduced
                                                 in
                                              FStar_Util.print2
                                                "primop: <%s> reduced to <%s>\n"
                                                uu____9270 uu____9271);
                                         FStar_Syntax_Util.mk_app reduced
                                           args_2))))
                       | FStar_Pervasives_Native.Some uu____9272 ->
                           (log_primops cfg
                              (fun uu____9276  ->
                                 let uu____9277 =
                                   FStar_Syntax_Print.term_to_string tm  in
                                 FStar_Util.print1
                                   "primop: not reducing <%s> since we're doing strong reduction\n"
                                   uu____9277);
                            tm)
                       | FStar_Pervasives_Native.None  -> tm)
                  | FStar_Syntax_Syntax.Tm_constant
                      (FStar_Const.Const_range_of ) when
                      Prims.op_Negation cfg.strong ->
                      (log_primops cfg
                         (fun uu____9281  ->
                            let uu____9282 =
                              FStar_Syntax_Print.term_to_string tm  in
                            FStar_Util.print1 "primop: reducing <%s>\n"
                              uu____9282);
                       (match args with
                        | (a1,uu____9284)::[] ->
                            FStar_Syntax_Embeddings.embed
                              FStar_Syntax_Embeddings.e_range
                              tm.FStar_Syntax_Syntax.pos
                              a1.FStar_Syntax_Syntax.pos
                        | uu____9301 -> tm))
                  | FStar_Syntax_Syntax.Tm_constant
                      (FStar_Const.Const_set_range_of ) when
                      Prims.op_Negation cfg.strong ->
                      (log_primops cfg
                         (fun uu____9313  ->
                            let uu____9314 =
                              FStar_Syntax_Print.term_to_string tm  in
                            FStar_Util.print1 "primop: reducing <%s>\n"
                              uu____9314);
                       (match args with
                        | (t,uu____9316)::(r,uu____9318)::[] ->
                            let uu____9345 =
                              FStar_Syntax_Embeddings.unembed
                                FStar_Syntax_Embeddings.e_range r
                               in
                            (match uu____9345 with
                             | FStar_Pervasives_Native.Some rng ->
                                 let uu___141_9349 = t  in
                                 {
                                   FStar_Syntax_Syntax.n =
                                     (uu___141_9349.FStar_Syntax_Syntax.n);
                                   FStar_Syntax_Syntax.pos = rng;
                                   FStar_Syntax_Syntax.vars =
                                     (uu___141_9349.FStar_Syntax_Syntax.vars)
                                 }
                             | FStar_Pervasives_Native.None  -> tm)
                        | uu____9352 -> tm))
                  | uu____9361 -> tm))
  
let reduce_equality :
  'Auu____9366 'Auu____9367 .
    cfg ->
      ((FStar_Syntax_Syntax.bv,'Auu____9366) FStar_Pervasives_Native.tuple2
         FStar_Pervasives_Native.option,closure)
        FStar_Pervasives_Native.tuple2 Prims.list ->
        'Auu____9367 -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term
  =
  fun cfg  ->
    fun tm  ->
      reduce_primops
        (let uu___142_9405 = cfg  in
         {
           steps =
             (let uu___143_9408 = default_steps  in
              {
                beta = (uu___143_9408.beta);
                iota = (uu___143_9408.iota);
                zeta = (uu___143_9408.zeta);
                weak = (uu___143_9408.weak);
                hnf = (uu___143_9408.hnf);
                primops = true;
                do_not_unfold_pure_lets =
                  (uu___143_9408.do_not_unfold_pure_lets);
                unfold_until = (uu___143_9408.unfold_until);
                unfold_only = (uu___143_9408.unfold_only);
                unfold_attr = (uu___143_9408.unfold_attr);
                unfold_tac = (uu___143_9408.unfold_tac);
                pure_subterms_within_computations =
                  (uu___143_9408.pure_subterms_within_computations);
                simplify = (uu___143_9408.simplify);
                erase_universes = (uu___143_9408.erase_universes);
                allow_unbound_universes =
                  (uu___143_9408.allow_unbound_universes);
                reify_ = (uu___143_9408.reify_);
                compress_uvars = (uu___143_9408.compress_uvars);
                no_full_norm = (uu___143_9408.no_full_norm);
                check_no_uvars = (uu___143_9408.check_no_uvars);
                unmeta = (uu___143_9408.unmeta);
                unascribe = (uu___143_9408.unascribe);
                in_full_norm_request = (uu___143_9408.in_full_norm_request)
              });
           tcenv = (uu___142_9405.tcenv);
           debug = (uu___142_9405.debug);
           delta_level = (uu___142_9405.delta_level);
           primitive_steps = equality_ops;
           strong = (uu___142_9405.strong);
           memoize_lazy = (uu___142_9405.memoize_lazy);
           normalize_pure_lets = (uu___142_9405.normalize_pure_lets)
         }) tm
  
let is_norm_request :
  'Auu____9412 .
    FStar_Syntax_Syntax.term -> 'Auu____9412 Prims.list -> Prims.bool
  =
  fun hd1  ->
    fun args  ->
      let uu____9425 =
        let uu____9432 =
          let uu____9433 = FStar_Syntax_Util.un_uinst hd1  in
          uu____9433.FStar_Syntax_Syntax.n  in
        (uu____9432, args)  in
      match uu____9425 with
      | (FStar_Syntax_Syntax.Tm_fvar fv,uu____9439::uu____9440::[]) ->
          FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.normalize_term
      | (FStar_Syntax_Syntax.Tm_fvar fv,uu____9444::[]) ->
          FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.normalize
      | (FStar_Syntax_Syntax.Tm_fvar fv,steps::uu____9449::uu____9450::[]) ->
          FStar_Syntax_Syntax.fv_eq_lid fv FStar_Parser_Const.norm
      | uu____9453 -> false
  
let (tr_norm_step : FStar_Syntax_Embeddings.norm_step -> step Prims.list) =
  fun uu___85_9464  ->
    match uu___85_9464 with
    | FStar_Syntax_Embeddings.Zeta  -> [Zeta]
    | FStar_Syntax_Embeddings.Iota  -> [Iota]
    | FStar_Syntax_Embeddings.Delta  ->
        [UnfoldUntil FStar_Syntax_Syntax.Delta_constant]
    | FStar_Syntax_Embeddings.Simpl  -> [Simplify]
    | FStar_Syntax_Embeddings.Weak  -> [Weak]
    | FStar_Syntax_Embeddings.HNF  -> [HNF]
    | FStar_Syntax_Embeddings.Primops  -> [Primops]
    | FStar_Syntax_Embeddings.UnfoldOnly names1 ->
        let uu____9470 =
          let uu____9473 =
            let uu____9474 = FStar_List.map FStar_Ident.lid_of_str names1  in
            UnfoldOnly uu____9474  in
          [uu____9473]  in
        (UnfoldUntil FStar_Syntax_Syntax.Delta_constant) :: uu____9470
    | FStar_Syntax_Embeddings.UnfoldAttr t ->
        [UnfoldUntil FStar_Syntax_Syntax.Delta_constant; UnfoldAttr t]
  
let (tr_norm_steps :
  FStar_Syntax_Embeddings.norm_step Prims.list -> step Prims.list) =
  fun s  -> FStar_List.concatMap tr_norm_step s 
let get_norm_request :
  'Auu____9490 .
    (FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) ->
      (FStar_Syntax_Syntax.term,'Auu____9490) FStar_Pervasives_Native.tuple2
        Prims.list ->
        (step Prims.list,FStar_Syntax_Syntax.term)
          FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option
  =
  fun full_norm  ->
    fun args  ->
      let parse_steps s =
        let uu____9532 =
          let uu____9537 =
            FStar_Syntax_Embeddings.e_list
              FStar_Syntax_Embeddings.e_norm_step
             in
          FStar_Syntax_Embeddings.try_unembed uu____9537 s  in
        match uu____9532 with
        | FStar_Pervasives_Native.Some steps ->
            let uu____9553 = tr_norm_steps steps  in
            FStar_Pervasives_Native.Some uu____9553
        | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None  in
      match args with
      | uu____9570::(tm,uu____9572)::[] ->
          let s =
            [Beta;
            Zeta;
            Iota;
            Primops;
            UnfoldUntil FStar_Syntax_Syntax.Delta_constant;
            Reify]  in
          FStar_Pervasives_Native.Some (s, tm)
      | (tm,uu____9601)::[] ->
          let s =
            [Beta;
            Zeta;
            Iota;
            Primops;
            UnfoldUntil FStar_Syntax_Syntax.Delta_constant;
            Reify]  in
          FStar_Pervasives_Native.Some (s, tm)
      | (steps,uu____9622)::uu____9623::(tm,uu____9625)::[] ->
          let add_exclude s z =
            if FStar_List.contains z s then s else (Exclude z) :: s  in
          let uu____9662 =
            let uu____9667 = full_norm steps  in parse_steps uu____9667  in
          (match uu____9662 with
           | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
           | FStar_Pervasives_Native.Some s ->
               let s1 = Beta :: s  in
               let s2 = add_exclude s1 Zeta  in
               let s3 = add_exclude s2 Iota  in
               FStar_Pervasives_Native.Some (s3, tm))
      | uu____9706 -> FStar_Pervasives_Native.None
  
let (is_reify_head : stack_elt Prims.list -> Prims.bool) =
  fun uu___86_9723  ->
    match uu___86_9723 with
    | (App
        (uu____9726,{
                      FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_constant
                        (FStar_Const.Const_reify );
                      FStar_Syntax_Syntax.pos = uu____9727;
                      FStar_Syntax_Syntax.vars = uu____9728;_},uu____9729,uu____9730))::uu____9731
        -> true
    | uu____9738 -> false
  
let firstn :
  'Auu____9744 .
    Prims.int ->
      'Auu____9744 Prims.list ->
        ('Auu____9744 Prims.list,'Auu____9744 Prims.list)
          FStar_Pervasives_Native.tuple2
  =
  fun k  ->
    fun l  ->
      if (FStar_List.length l) < k then (l, []) else FStar_Util.first_N k l
  
let (should_reify : cfg -> stack_elt Prims.list -> Prims.bool) =
  fun cfg  ->
    fun stack  ->
      match stack with
      | (App
          (uu____9780,{
                        FStar_Syntax_Syntax.n =
                          FStar_Syntax_Syntax.Tm_constant
                          (FStar_Const.Const_reify );
                        FStar_Syntax_Syntax.pos = uu____9781;
                        FStar_Syntax_Syntax.vars = uu____9782;_},uu____9783,uu____9784))::uu____9785
          -> (cfg.steps).reify_
      | uu____9792 -> false
  
let rec (norm :
  cfg -> env -> stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          let t1 =
            if (cfg.debug).norm_delayed
            then
              (match t.FStar_Syntax_Syntax.n with
               | FStar_Syntax_Syntax.Tm_delayed uu____9976 ->
                   let uu____10001 = FStar_Syntax_Print.term_to_string t  in
                   FStar_Util.print1 "NORM delayed: %s\n" uu____10001
               | uu____10002 -> ())
            else ();
            FStar_Syntax_Subst.compress t  in
          log cfg
            (fun uu____10010  ->
               let uu____10011 = FStar_Syntax_Print.tag_of_term t1  in
               let uu____10012 = FStar_Syntax_Print.term_to_string t1  in
               let uu____10013 =
                 FStar_Util.string_of_int (FStar_List.length env)  in
               let uu____10020 =
                 let uu____10021 =
                   let uu____10024 = firstn (Prims.parse_int "4") stack  in
                   FStar_All.pipe_left FStar_Pervasives_Native.fst
                     uu____10024
                    in
                 stack_to_string uu____10021  in
               FStar_Util.print4
                 ">>> %s\nNorm %s with with %s env elements top of the stack %s \n"
                 uu____10011 uu____10012 uu____10013 uu____10020);
          (match t1.FStar_Syntax_Syntax.n with
           | FStar_Syntax_Syntax.Tm_unknown  -> rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_constant uu____10047 ->
               rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_name uu____10048 ->
               rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_lazy uu____10049 ->
               rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_fvar
               { FStar_Syntax_Syntax.fv_name = uu____10050;
                 FStar_Syntax_Syntax.fv_delta =
                   FStar_Syntax_Syntax.Delta_constant ;
                 FStar_Syntax_Syntax.fv_qual = uu____10051;_}
               -> rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_fvar
               { FStar_Syntax_Syntax.fv_name = uu____10054;
                 FStar_Syntax_Syntax.fv_delta = uu____10055;
                 FStar_Syntax_Syntax.fv_qual = FStar_Pervasives_Native.Some
                   (FStar_Syntax_Syntax.Data_ctor );_}
               -> rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_fvar
               { FStar_Syntax_Syntax.fv_name = uu____10056;
                 FStar_Syntax_Syntax.fv_delta = uu____10057;
                 FStar_Syntax_Syntax.fv_qual = FStar_Pervasives_Native.Some
                   (FStar_Syntax_Syntax.Record_ctor uu____10058);_}
               -> rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_quoted uu____10065 ->
               rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_app (hd1,args) when
               ((Prims.op_Negation (cfg.steps).no_full_norm) &&
                  (is_norm_request hd1 args))
                 &&
                 (let uu____10101 =
                    FStar_Ident.lid_equals
                      (cfg.tcenv).FStar_TypeChecker_Env.curmodule
                      FStar_Parser_Const.prims_lid
                     in
                  Prims.op_Negation uu____10101)
               ->
               let cfg' =
                 let uu___144_10103 = cfg  in
                 {
                   steps =
                     (let uu___145_10106 = cfg.steps  in
                      {
                        beta = (uu___145_10106.beta);
                        iota = (uu___145_10106.iota);
                        zeta = (uu___145_10106.zeta);
                        weak = (uu___145_10106.weak);
                        hnf = (uu___145_10106.hnf);
                        primops = (uu___145_10106.primops);
                        do_not_unfold_pure_lets = false;
                        unfold_until = (uu___145_10106.unfold_until);
                        unfold_only = FStar_Pervasives_Native.None;
                        unfold_attr = (uu___145_10106.unfold_attr);
                        unfold_tac = (uu___145_10106.unfold_tac);
                        pure_subterms_within_computations =
                          (uu___145_10106.pure_subterms_within_computations);
                        simplify = (uu___145_10106.simplify);
                        erase_universes = (uu___145_10106.erase_universes);
                        allow_unbound_universes =
                          (uu___145_10106.allow_unbound_universes);
                        reify_ = (uu___145_10106.reify_);
                        compress_uvars = (uu___145_10106.compress_uvars);
                        no_full_norm = (uu___145_10106.no_full_norm);
                        check_no_uvars = (uu___145_10106.check_no_uvars);
                        unmeta = (uu___145_10106.unmeta);
                        unascribe = (uu___145_10106.unascribe);
                        in_full_norm_request =
                          (uu___145_10106.in_full_norm_request)
                      });
                   tcenv = (uu___144_10103.tcenv);
                   debug = (uu___144_10103.debug);
                   delta_level =
                     [FStar_TypeChecker_Env.Unfold
                        FStar_Syntax_Syntax.Delta_constant];
                   primitive_steps = (uu___144_10103.primitive_steps);
                   strong = (uu___144_10103.strong);
                   memoize_lazy = (uu___144_10103.memoize_lazy);
                   normalize_pure_lets = true
                 }  in
               let uu____10109 = get_norm_request (norm cfg' env []) args  in
               (match uu____10109 with
                | FStar_Pervasives_Native.None  ->
                    let stack1 =
                      FStar_All.pipe_right stack
                        (FStar_List.fold_right
                           (fun uu____10140  ->
                              fun stack1  ->
                                match uu____10140 with
                                | (a,aq) ->
                                    let uu____10152 =
                                      let uu____10153 =
                                        let uu____10160 =
                                          let uu____10161 =
                                            let uu____10192 =
                                              FStar_Util.mk_ref
                                                FStar_Pervasives_Native.None
                                               in
                                            (env, a, uu____10192, false)  in
                                          Clos uu____10161  in
                                        (uu____10160, aq,
                                          (t1.FStar_Syntax_Syntax.pos))
                                         in
                                      Arg uu____10153  in
                                    uu____10152 :: stack1) args)
                       in
                    (log cfg
                       (fun uu____10276  ->
                          let uu____10277 =
                            FStar_All.pipe_left FStar_Util.string_of_int
                              (FStar_List.length args)
                             in
                          FStar_Util.print1 "\tPushed %s arguments\n"
                            uu____10277);
                     norm cfg env stack1 hd1)
                | FStar_Pervasives_Native.Some (s,tm) ->
                    let delta_level =
                      let uu____10299 =
                        FStar_All.pipe_right s
                          (FStar_Util.for_some
                             (fun uu___87_10304  ->
                                match uu___87_10304 with
                                | UnfoldUntil uu____10305 -> true
                                | UnfoldOnly uu____10306 -> true
                                | uu____10309 -> false))
                         in
                      if uu____10299
                      then
                        [FStar_TypeChecker_Env.Unfold
                           FStar_Syntax_Syntax.Delta_constant]
                      else [FStar_TypeChecker_Env.NoDelta]  in
                    let cfg'1 =
                      let uu___146_10314 = cfg  in
                      let uu____10315 =
                        let uu___147_10316 = to_fsteps s  in
                        {
                          beta = (uu___147_10316.beta);
                          iota = (uu___147_10316.iota);
                          zeta = (uu___147_10316.zeta);
                          weak = (uu___147_10316.weak);
                          hnf = (uu___147_10316.hnf);
                          primops = (uu___147_10316.primops);
                          do_not_unfold_pure_lets =
                            (uu___147_10316.do_not_unfold_pure_lets);
                          unfold_until = (uu___147_10316.unfold_until);
                          unfold_only = (uu___147_10316.unfold_only);
                          unfold_attr = (uu___147_10316.unfold_attr);
                          unfold_tac = (uu___147_10316.unfold_tac);
                          pure_subterms_within_computations =
                            (uu___147_10316.pure_subterms_within_computations);
                          simplify = (uu___147_10316.simplify);
                          erase_universes = (uu___147_10316.erase_universes);
                          allow_unbound_universes =
                            (uu___147_10316.allow_unbound_universes);
                          reify_ = (uu___147_10316.reify_);
                          compress_uvars = (uu___147_10316.compress_uvars);
                          no_full_norm = (uu___147_10316.no_full_norm);
                          check_no_uvars = (uu___147_10316.check_no_uvars);
                          unmeta = (uu___147_10316.unmeta);
                          unascribe = (uu___147_10316.unascribe);
                          in_full_norm_request = true
                        }  in
                      {
                        steps = uu____10315;
                        tcenv = (uu___146_10314.tcenv);
                        debug = (uu___146_10314.debug);
                        delta_level;
                        primitive_steps = (uu___146_10314.primitive_steps);
                        strong = (uu___146_10314.strong);
                        memoize_lazy = (uu___146_10314.memoize_lazy);
                        normalize_pure_lets = true
                      }  in
                    let stack' =
                      let tail1 = (Cfg cfg) :: stack  in
                      if (cfg.debug).print_normalized
                      then
                        let uu____10325 =
                          let uu____10326 =
                            let uu____10331 = FStar_Util.now ()  in
                            (t1, uu____10331)  in
                          Debug uu____10326  in
                        uu____10325 :: tail1
                      else tail1  in
                    norm cfg'1 env stack' tm)
           | FStar_Syntax_Syntax.Tm_type u ->
               let u1 = norm_universe cfg env u  in
               let uu____10335 =
                 mk (FStar_Syntax_Syntax.Tm_type u1)
                   t1.FStar_Syntax_Syntax.pos
                  in
               rebuild cfg env stack uu____10335
           | FStar_Syntax_Syntax.Tm_uinst (t',us) ->
               if (cfg.steps).erase_universes
               then norm cfg env stack t'
               else
                 (let us1 =
                    let uu____10344 =
                      let uu____10351 =
                        FStar_List.map (norm_universe cfg env) us  in
                      (uu____10351, (t1.FStar_Syntax_Syntax.pos))  in
                    UnivArgs uu____10344  in
                  let stack1 = us1 :: stack  in norm cfg env stack1 t')
           | FStar_Syntax_Syntax.Tm_fvar fv ->
               let qninfo =
                 let uu____10361 = FStar_Syntax_Syntax.lid_of_fv fv  in
                 FStar_TypeChecker_Env.lookup_qname cfg.tcenv uu____10361  in
               let uu____10362 =
                 FStar_TypeChecker_Env.qninfo_is_action qninfo  in
               if uu____10362
               then
                 let b = should_reify cfg stack  in
                 (log cfg
                    (fun uu____10368  ->
                       let uu____10369 = FStar_Syntax_Print.term_to_string t1
                          in
                       let uu____10370 = FStar_Util.string_of_bool b  in
                       FStar_Util.print2
                         ">>> For DM4F action %s, should_reify = %s\n"
                         uu____10369 uu____10370);
                  if b
                  then
                    (let uu____10371 = FStar_List.tl stack  in
                     do_unfold_fv cfg env uu____10371 t1 qninfo fv)
                  else rebuild cfg env stack t1)
               else
                 (let should_delta =
                    (let uu____10379 = find_prim_step cfg fv  in
                     FStar_Option.isNone uu____10379) &&
                      (FStar_All.pipe_right cfg.delta_level
                         (FStar_Util.for_some
                            (fun uu___88_10385  ->
                               match uu___88_10385 with
                               | FStar_TypeChecker_Env.UnfoldTac  -> false
                               | FStar_TypeChecker_Env.NoDelta  -> false
                               | FStar_TypeChecker_Env.Inlining  -> true
                               | FStar_TypeChecker_Env.Eager_unfolding_only 
                                   -> true
                               | FStar_TypeChecker_Env.Unfold l ->
                                   FStar_TypeChecker_Common.delta_depth_greater_than
                                     fv.FStar_Syntax_Syntax.fv_delta l)))
                     in
                  let should_delta1 =
                    should_delta &&
                      (let attrs =
                         FStar_TypeChecker_Env.attrs_of_qninfo qninfo  in
                       ((Prims.op_Negation (cfg.steps).unfold_tac) ||
                          (let uu____10395 =
                             cases
                               (FStar_Util.for_some
                                  (FStar_Syntax_Util.attr_eq
                                     FStar_Syntax_Util.tac_opaque_attr))
                               false attrs
                              in
                           Prims.op_Negation uu____10395))
                         &&
                         ((match (cfg.steps).unfold_only with
                           | FStar_Pervasives_Native.None  -> true
                           | FStar_Pervasives_Native.Some lids ->
                               FStar_Util.for_some
                                 (FStar_Syntax_Syntax.fv_eq_lid fv) lids)
                            ||
                            (match (attrs, ((cfg.steps).unfold_attr)) with
                             | (FStar_Pervasives_Native.None
                                ,FStar_Pervasives_Native.Some uu____10414) ->
                                 false
                             | (FStar_Pervasives_Native.Some
                                ats,FStar_Pervasives_Native.Some ats') ->
                                 FStar_Util.for_some
                                   (fun at  ->
                                      FStar_Util.for_some
                                        (FStar_Syntax_Util.attr_eq at) ats')
                                   ats
                             | (uu____10449,uu____10450) -> false)))
                     in
                  log cfg
                    (fun uu____10472  ->
                       let uu____10473 = FStar_Syntax_Print.term_to_string t1
                          in
                       let uu____10474 =
                         FStar_Range.string_of_range
                           t1.FStar_Syntax_Syntax.pos
                          in
                       let uu____10475 =
                         FStar_Util.string_of_bool should_delta1  in
                       FStar_Util.print3
                         ">>> For %s (%s), should_delta = %s\n" uu____10473
                         uu____10474 uu____10475);
                  if should_delta1
                  then do_unfold_fv cfg env stack t1 qninfo fv
                  else rebuild cfg env stack t1)
           | FStar_Syntax_Syntax.Tm_bvar x ->
               let uu____10478 = lookup_bvar env x  in
               (match uu____10478 with
                | Univ uu____10479 ->
                    failwith
                      "Impossible: term variable is bound to a universe"
                | Dummy  -> failwith "Term variable not found"
                | Clos (env1,t0,r,fix) ->
                    if (Prims.op_Negation fix) || (cfg.steps).zeta
                    then
                      let uu____10528 = FStar_ST.op_Bang r  in
                      (match uu____10528 with
                       | FStar_Pervasives_Native.Some (env2,t') ->
                           (log cfg
                              (fun uu____10646  ->
                                 let uu____10647 =
                                   FStar_Syntax_Print.term_to_string t1  in
                                 let uu____10648 =
                                   FStar_Syntax_Print.term_to_string t'  in
                                 FStar_Util.print2
                                   "Lazy hit: %s cached to %s\n" uu____10647
                                   uu____10648);
                            (let uu____10649 =
                               let uu____10650 =
                                 FStar_Syntax_Subst.compress t'  in
                               uu____10650.FStar_Syntax_Syntax.n  in
                             match uu____10649 with
                             | FStar_Syntax_Syntax.Tm_abs uu____10653 ->
                                 norm cfg env2 stack t'
                             | uu____10670 -> rebuild cfg env2 stack t'))
                       | FStar_Pervasives_Native.None  ->
                           norm cfg env1 ((MemoLazy r) :: stack) t0)
                    else norm cfg env1 stack t0)
           | FStar_Syntax_Syntax.Tm_abs (bs,body,lopt) ->
               (match stack with
                | (UnivArgs uu____10740)::uu____10741 ->
                    failwith
                      "Ill-typed term: universes cannot be applied to term abstraction"
                | (Match uu____10750)::uu____10751 ->
                    failwith
                      "Ill-typed term: cannot pattern match an abstraction"
                | (Arg (c,uu____10763,uu____10764))::stack_rest ->
                    (match c with
                     | Univ uu____10768 ->
                         norm cfg ((FStar_Pervasives_Native.None, c) :: env)
                           stack_rest t1
                     | uu____10777 ->
                         (match bs with
                          | [] -> failwith "Impossible"
                          | b::[] ->
                              (log cfg
                                 (fun uu____10798  ->
                                    let uu____10799 = closure_to_string c  in
                                    FStar_Util.print1 "\tShifted %s\n"
                                      uu____10799);
                               norm cfg
                                 (((FStar_Pervasives_Native.Some b), c) ::
                                 env) stack_rest body)
                          | b::tl1 ->
                              (log cfg
                                 (fun uu____10839  ->
                                    let uu____10840 = closure_to_string c  in
                                    FStar_Util.print1 "\tShifted %s\n"
                                      uu____10840);
                               (let body1 =
                                  mk
                                    (FStar_Syntax_Syntax.Tm_abs
                                       (tl1, body, lopt))
                                    t1.FStar_Syntax_Syntax.pos
                                   in
                                norm cfg
                                  (((FStar_Pervasives_Native.Some b), c) ::
                                  env) stack_rest body1))))
                | (Cfg cfg1)::stack1 -> norm cfg1 env stack1 t1
                | (MemoLazy r)::stack1 ->
                    (set_memo cfg r (env, t1);
                     log cfg
                       (fun uu____10918  ->
                          let uu____10919 =
                            FStar_Syntax_Print.term_to_string t1  in
                          FStar_Util.print1 "\tSet memo %s\n" uu____10919);
                     norm cfg env stack1 t1)
                | (Debug uu____10920)::uu____10921 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___148_10931 = cfg.steps  in
                             {
                               beta = (uu___148_10931.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___148_10931.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___148_10931.unfold_until);
                               unfold_only = (uu___148_10931.unfold_only);
                               unfold_attr = (uu___148_10931.unfold_attr);
                               unfold_tac = (uu___148_10931.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___148_10931.erase_universes);
                               allow_unbound_universes =
                                 (uu___148_10931.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___148_10931.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___148_10931.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___148_10931.in_full_norm_request)
                             }  in
                           let cfg' =
                             let uu___149_10933 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___149_10933.tcenv);
                               debug = (uu___149_10933.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___149_10933.primitive_steps);
                               strong = (uu___149_10933.strong);
                               memoize_lazy = (uu___149_10933.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___149_10933.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____10935 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____10935 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____10977  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____11014 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____11014)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___150_11019 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___150_11019.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___150_11019.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____11020 -> lopt  in
                           (log cfg
                              (fun uu____11026  ->
                                 let uu____11027 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____11027);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___151_11036 = cfg  in
                               {
                                 steps = (uu___151_11036.steps);
                                 tcenv = (uu___151_11036.tcenv);
                                 debug = (uu___151_11036.debug);
                                 delta_level = (uu___151_11036.delta_level);
                                 primitive_steps =
                                   (uu___151_11036.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___151_11036.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___151_11036.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Meta uu____11047)::uu____11048 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___148_11060 = cfg.steps  in
                             {
                               beta = (uu___148_11060.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___148_11060.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___148_11060.unfold_until);
                               unfold_only = (uu___148_11060.unfold_only);
                               unfold_attr = (uu___148_11060.unfold_attr);
                               unfold_tac = (uu___148_11060.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___148_11060.erase_universes);
                               allow_unbound_universes =
                                 (uu___148_11060.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___148_11060.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___148_11060.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___148_11060.in_full_norm_request)
                             }  in
                           let cfg' =
                             let uu___149_11062 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___149_11062.tcenv);
                               debug = (uu___149_11062.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___149_11062.primitive_steps);
                               strong = (uu___149_11062.strong);
                               memoize_lazy = (uu___149_11062.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___149_11062.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____11064 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____11064 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____11106  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____11143 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____11143)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___150_11148 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___150_11148.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___150_11148.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____11149 -> lopt  in
                           (log cfg
                              (fun uu____11155  ->
                                 let uu____11156 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____11156);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___151_11165 = cfg  in
                               {
                                 steps = (uu___151_11165.steps);
                                 tcenv = (uu___151_11165.tcenv);
                                 debug = (uu___151_11165.debug);
                                 delta_level = (uu___151_11165.delta_level);
                                 primitive_steps =
                                   (uu___151_11165.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___151_11165.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___151_11165.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Let uu____11176)::uu____11177 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___148_11191 = cfg.steps  in
                             {
                               beta = (uu___148_11191.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___148_11191.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___148_11191.unfold_until);
                               unfold_only = (uu___148_11191.unfold_only);
                               unfold_attr = (uu___148_11191.unfold_attr);
                               unfold_tac = (uu___148_11191.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___148_11191.erase_universes);
                               allow_unbound_universes =
                                 (uu___148_11191.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___148_11191.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___148_11191.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___148_11191.in_full_norm_request)
                             }  in
                           let cfg' =
                             let uu___149_11193 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___149_11193.tcenv);
                               debug = (uu___149_11193.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___149_11193.primitive_steps);
                               strong = (uu___149_11193.strong);
                               memoize_lazy = (uu___149_11193.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___149_11193.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____11195 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____11195 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____11237  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____11274 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____11274)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___150_11279 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___150_11279.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___150_11279.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____11280 -> lopt  in
                           (log cfg
                              (fun uu____11286  ->
                                 let uu____11287 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____11287);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___151_11296 = cfg  in
                               {
                                 steps = (uu___151_11296.steps);
                                 tcenv = (uu___151_11296.tcenv);
                                 debug = (uu___151_11296.debug);
                                 delta_level = (uu___151_11296.delta_level);
                                 primitive_steps =
                                   (uu___151_11296.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___151_11296.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___151_11296.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (App uu____11307)::uu____11308 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___148_11322 = cfg.steps  in
                             {
                               beta = (uu___148_11322.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___148_11322.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___148_11322.unfold_until);
                               unfold_only = (uu___148_11322.unfold_only);
                               unfold_attr = (uu___148_11322.unfold_attr);
                               unfold_tac = (uu___148_11322.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___148_11322.erase_universes);
                               allow_unbound_universes =
                                 (uu___148_11322.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___148_11322.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___148_11322.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___148_11322.in_full_norm_request)
                             }  in
                           let cfg' =
                             let uu___149_11324 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___149_11324.tcenv);
                               debug = (uu___149_11324.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___149_11324.primitive_steps);
                               strong = (uu___149_11324.strong);
                               memoize_lazy = (uu___149_11324.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___149_11324.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____11326 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____11326 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____11368  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____11405 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____11405)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___150_11410 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___150_11410.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___150_11410.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____11411 -> lopt  in
                           (log cfg
                              (fun uu____11417  ->
                                 let uu____11418 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____11418);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___151_11427 = cfg  in
                               {
                                 steps = (uu___151_11427.steps);
                                 tcenv = (uu___151_11427.tcenv);
                                 debug = (uu___151_11427.debug);
                                 delta_level = (uu___151_11427.delta_level);
                                 primitive_steps =
                                   (uu___151_11427.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___151_11427.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___151_11427.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | (Abs uu____11438)::uu____11439 ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___148_11457 = cfg.steps  in
                             {
                               beta = (uu___148_11457.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___148_11457.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___148_11457.unfold_until);
                               unfold_only = (uu___148_11457.unfold_only);
                               unfold_attr = (uu___148_11457.unfold_attr);
                               unfold_tac = (uu___148_11457.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___148_11457.erase_universes);
                               allow_unbound_universes =
                                 (uu___148_11457.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___148_11457.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___148_11457.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___148_11457.in_full_norm_request)
                             }  in
                           let cfg' =
                             let uu___149_11459 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___149_11459.tcenv);
                               debug = (uu___149_11459.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___149_11459.primitive_steps);
                               strong = (uu___149_11459.strong);
                               memoize_lazy = (uu___149_11459.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___149_11459.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____11461 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____11461 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____11503  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____11540 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____11540)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___150_11545 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___150_11545.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___150_11545.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____11546 -> lopt  in
                           (log cfg
                              (fun uu____11552  ->
                                 let uu____11553 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____11553);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___151_11562 = cfg  in
                               {
                                 steps = (uu___151_11562.steps);
                                 tcenv = (uu___151_11562.tcenv);
                                 debug = (uu___151_11562.debug);
                                 delta_level = (uu___151_11562.delta_level);
                                 primitive_steps =
                                   (uu___151_11562.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___151_11562.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___151_11562.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1)))
                | [] ->
                    if (cfg.steps).weak
                    then
                      let t2 =
                        if (cfg.steps).in_full_norm_request
                        then closure_as_term cfg env t1
                        else
                          (let steps' =
                             let uu___148_11576 = cfg.steps  in
                             {
                               beta = (uu___148_11576.beta);
                               iota = false;
                               zeta = false;
                               weak = false;
                               hnf = (uu___148_11576.hnf);
                               primops = false;
                               do_not_unfold_pure_lets = true;
                               unfold_until = (uu___148_11576.unfold_until);
                               unfold_only = (uu___148_11576.unfold_only);
                               unfold_attr = (uu___148_11576.unfold_attr);
                               unfold_tac = (uu___148_11576.unfold_tac);
                               pure_subterms_within_computations = false;
                               simplify = false;
                               erase_universes =
                                 (uu___148_11576.erase_universes);
                               allow_unbound_universes =
                                 (uu___148_11576.allow_unbound_universes);
                               reify_ = false;
                               compress_uvars =
                                 (uu___148_11576.compress_uvars);
                               no_full_norm = true;
                               check_no_uvars =
                                 (uu___148_11576.check_no_uvars);
                               unmeta = false;
                               unascribe = false;
                               in_full_norm_request =
                                 (uu___148_11576.in_full_norm_request)
                             }  in
                           let cfg' =
                             let uu___149_11578 = cfg  in
                             {
                               steps = steps';
                               tcenv = (uu___149_11578.tcenv);
                               debug = (uu___149_11578.debug);
                               delta_level = [FStar_TypeChecker_Env.NoDelta];
                               primitive_steps =
                                 (uu___149_11578.primitive_steps);
                               strong = (uu___149_11578.strong);
                               memoize_lazy = (uu___149_11578.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___149_11578.normalize_pure_lets)
                             }  in
                           norm cfg' env [] t1)
                         in
                      rebuild cfg env stack t2
                    else
                      (let uu____11580 =
                         FStar_Syntax_Subst.open_term' bs body  in
                       match uu____11580 with
                       | (bs1,body1,opening) ->
                           let env' =
                             FStar_All.pipe_right bs1
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____11622  -> dummy :: env1) env)
                              in
                           let lopt1 =
                             match lopt with
                             | FStar_Pervasives_Native.Some rc ->
                                 let rct =
                                   if (cfg.steps).check_no_uvars
                                   then
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (fun t2  ->
                                          let uu____11659 =
                                            FStar_Syntax_Subst.subst opening
                                              t2
                                             in
                                          norm cfg env' [] uu____11659)
                                   else
                                     FStar_Util.map_opt
                                       rc.FStar_Syntax_Syntax.residual_typ
                                       (FStar_Syntax_Subst.subst opening)
                                    in
                                 FStar_Pervasives_Native.Some
                                   (let uu___150_11664 = rc  in
                                    {
                                      FStar_Syntax_Syntax.residual_effect =
                                        (uu___150_11664.FStar_Syntax_Syntax.residual_effect);
                                      FStar_Syntax_Syntax.residual_typ = rct;
                                      FStar_Syntax_Syntax.residual_flags =
                                        (uu___150_11664.FStar_Syntax_Syntax.residual_flags)
                                    })
                             | uu____11665 -> lopt  in
                           (log cfg
                              (fun uu____11671  ->
                                 let uu____11672 =
                                   FStar_All.pipe_left
                                     FStar_Util.string_of_int
                                     (FStar_List.length bs1)
                                    in
                                 FStar_Util.print1 "\tShifted %s dummies\n"
                                   uu____11672);
                            (let stack1 = (Cfg cfg) :: stack  in
                             let cfg1 =
                               let uu___151_11681 = cfg  in
                               {
                                 steps = (uu___151_11681.steps);
                                 tcenv = (uu___151_11681.tcenv);
                                 debug = (uu___151_11681.debug);
                                 delta_level = (uu___151_11681.delta_level);
                                 primitive_steps =
                                   (uu___151_11681.primitive_steps);
                                 strong = true;
                                 memoize_lazy = (uu___151_11681.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___151_11681.normalize_pure_lets)
                               }  in
                             norm cfg1 env'
                               ((Abs
                                   (env, bs1, env', lopt1,
                                     (t1.FStar_Syntax_Syntax.pos))) ::
                               stack1) body1))))
           | FStar_Syntax_Syntax.Tm_app (head1,args) ->
               let stack1 =
                 FStar_All.pipe_right stack
                   (FStar_List.fold_right
                      (fun uu____11730  ->
                         fun stack1  ->
                           match uu____11730 with
                           | (a,aq) ->
                               let uu____11742 =
                                 let uu____11743 =
                                   let uu____11750 =
                                     let uu____11751 =
                                       let uu____11782 =
                                         FStar_Util.mk_ref
                                           FStar_Pervasives_Native.None
                                          in
                                       (env, a, uu____11782, false)  in
                                     Clos uu____11751  in
                                   (uu____11750, aq,
                                     (t1.FStar_Syntax_Syntax.pos))
                                    in
                                 Arg uu____11743  in
                               uu____11742 :: stack1) args)
                  in
               (log cfg
                  (fun uu____11866  ->
                     let uu____11867 =
                       FStar_All.pipe_left FStar_Util.string_of_int
                         (FStar_List.length args)
                        in
                     FStar_Util.print1 "\tPushed %s arguments\n" uu____11867);
                norm cfg env stack1 head1)
           | FStar_Syntax_Syntax.Tm_refine (x,f) ->
               if (cfg.steps).weak
               then
                 (match (env, stack) with
                  | ([],[]) ->
                      let t_x = norm cfg env [] x.FStar_Syntax_Syntax.sort
                         in
                      let t2 =
                        mk
                          (FStar_Syntax_Syntax.Tm_refine
                             ((let uu___152_11903 = x  in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (uu___152_11903.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (uu___152_11903.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = t_x
                               }), f)) t1.FStar_Syntax_Syntax.pos
                         in
                      rebuild cfg env stack t2
                  | uu____11904 ->
                      let uu____11909 = closure_as_term cfg env t1  in
                      rebuild cfg env stack uu____11909)
               else
                 (let t_x = norm cfg env [] x.FStar_Syntax_Syntax.sort  in
                  let uu____11912 =
                    FStar_Syntax_Subst.open_term
                      [(x, FStar_Pervasives_Native.None)] f
                     in
                  match uu____11912 with
                  | (closing,f1) ->
                      let f2 = norm cfg (dummy :: env) [] f1  in
                      let t2 =
                        let uu____11943 =
                          let uu____11944 =
                            let uu____11951 =
                              FStar_Syntax_Subst.close closing f2  in
                            ((let uu___153_11953 = x  in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___153_11953.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index =
                                  (uu___153_11953.FStar_Syntax_Syntax.index);
                                FStar_Syntax_Syntax.sort = t_x
                              }), uu____11951)
                             in
                          FStar_Syntax_Syntax.Tm_refine uu____11944  in
                        mk uu____11943 t1.FStar_Syntax_Syntax.pos  in
                      rebuild cfg env stack t2)
           | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
               if (cfg.steps).weak
               then
                 let uu____11972 = closure_as_term cfg env t1  in
                 rebuild cfg env stack uu____11972
               else
                 (let uu____11974 = FStar_Syntax_Subst.open_comp bs c  in
                  match uu____11974 with
                  | (bs1,c1) ->
                      let c2 =
                        let uu____11982 =
                          FStar_All.pipe_right bs1
                            (FStar_List.fold_left
                               (fun env1  ->
                                  fun uu____12006  -> dummy :: env1) env)
                           in
                        norm_comp cfg uu____11982 c1  in
                      let t2 =
                        let uu____12028 = norm_binders cfg env bs1  in
                        FStar_Syntax_Util.arrow uu____12028 c2  in
                      rebuild cfg env stack t2)
           | FStar_Syntax_Syntax.Tm_ascribed (t11,(tc,tacopt),l) when
               (cfg.steps).unascribe -> norm cfg env stack t11
           | FStar_Syntax_Syntax.Tm_ascribed (t11,(tc,tacopt),l) ->
               (match stack with
                | (Match uu____12139)::uu____12140 ->
                    (log cfg
                       (fun uu____12153  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | (Arg uu____12154)::uu____12155 ->
                    (log cfg
                       (fun uu____12166  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | (App
                    (uu____12167,{
                                   FStar_Syntax_Syntax.n =
                                     FStar_Syntax_Syntax.Tm_constant
                                     (FStar_Const.Const_reify );
                                   FStar_Syntax_Syntax.pos = uu____12168;
                                   FStar_Syntax_Syntax.vars = uu____12169;_},uu____12170,uu____12171))::uu____12172
                    ->
                    (log cfg
                       (fun uu____12181  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | (MemoLazy uu____12182)::uu____12183 ->
                    (log cfg
                       (fun uu____12194  ->
                          FStar_Util.print_string
                            "+++ Dropping ascription \n");
                     norm cfg env stack t11)
                | uu____12195 ->
                    (log cfg
                       (fun uu____12198  ->
                          FStar_Util.print_string "+++ Keeping ascription \n");
                     (let t12 = norm cfg env [] t11  in
                      log cfg
                        (fun uu____12202  ->
                           FStar_Util.print_string
                             "+++ Normalizing ascription \n");
                      (let tc1 =
                         match tc with
                         | FStar_Util.Inl t2 ->
                             let uu____12219 = norm cfg env [] t2  in
                             FStar_Util.Inl uu____12219
                         | FStar_Util.Inr c ->
                             let uu____12227 = norm_comp cfg env c  in
                             FStar_Util.Inr uu____12227
                          in
                       let tacopt1 =
                         FStar_Util.map_opt tacopt (norm cfg env [])  in
                       match stack with
                       | (Cfg cfg1)::stack1 ->
                           let t2 =
                             let uu____12240 =
                               let uu____12241 =
                                 let uu____12268 =
                                   FStar_Syntax_Util.unascribe t12  in
                                 (uu____12268, (tc1, tacopt1), l)  in
                               FStar_Syntax_Syntax.Tm_ascribed uu____12241
                                in
                             mk uu____12240 t1.FStar_Syntax_Syntax.pos  in
                           norm cfg1 env stack1 t2
                       | uu____12287 ->
                           let uu____12288 =
                             let uu____12289 =
                               let uu____12290 =
                                 let uu____12317 =
                                   FStar_Syntax_Util.unascribe t12  in
                                 (uu____12317, (tc1, tacopt1), l)  in
                               FStar_Syntax_Syntax.Tm_ascribed uu____12290
                                in
                             mk uu____12289 t1.FStar_Syntax_Syntax.pos  in
                           rebuild cfg env stack uu____12288))))
           | FStar_Syntax_Syntax.Tm_match (head1,branches) ->
               let stack1 =
                 (Match (env, branches, cfg, (t1.FStar_Syntax_Syntax.pos)))
                 :: stack  in
               let cfg1 =
                 if (cfg.steps).iota
                 then
                   let uu___154_12394 = cfg  in
                   {
                     steps =
                       (let uu___155_12397 = cfg.steps  in
                        {
                          beta = (uu___155_12397.beta);
                          iota = (uu___155_12397.iota);
                          zeta = (uu___155_12397.zeta);
                          weak = true;
                          hnf = (uu___155_12397.hnf);
                          primops = (uu___155_12397.primops);
                          do_not_unfold_pure_lets =
                            (uu___155_12397.do_not_unfold_pure_lets);
                          unfold_until = (uu___155_12397.unfold_until);
                          unfold_only = (uu___155_12397.unfold_only);
                          unfold_attr = (uu___155_12397.unfold_attr);
                          unfold_tac = (uu___155_12397.unfold_tac);
                          pure_subterms_within_computations =
                            (uu___155_12397.pure_subterms_within_computations);
                          simplify = (uu___155_12397.simplify);
                          erase_universes = (uu___155_12397.erase_universes);
                          allow_unbound_universes =
                            (uu___155_12397.allow_unbound_universes);
                          reify_ = (uu___155_12397.reify_);
                          compress_uvars = (uu___155_12397.compress_uvars);
                          no_full_norm = (uu___155_12397.no_full_norm);
                          check_no_uvars = (uu___155_12397.check_no_uvars);
                          unmeta = (uu___155_12397.unmeta);
                          unascribe = (uu___155_12397.unascribe);
                          in_full_norm_request =
                            (uu___155_12397.in_full_norm_request)
                        });
                     tcenv = (uu___154_12394.tcenv);
                     debug = (uu___154_12394.debug);
                     delta_level = (uu___154_12394.delta_level);
                     primitive_steps = (uu___154_12394.primitive_steps);
                     strong = (uu___154_12394.strong);
                     memoize_lazy = (uu___154_12394.memoize_lazy);
                     normalize_pure_lets =
                       (uu___154_12394.normalize_pure_lets)
                   }
                 else cfg  in
               norm cfg1 env stack1 head1
           | FStar_Syntax_Syntax.Tm_let ((b,lbs),lbody) when
               (FStar_Syntax_Syntax.is_top_level lbs) &&
                 (cfg.steps).compress_uvars
               ->
               let lbs1 =
                 FStar_All.pipe_right lbs
                   (FStar_List.map
                      (fun lb  ->
                         let uu____12433 =
                           FStar_Syntax_Subst.univ_var_opening
                             lb.FStar_Syntax_Syntax.lbunivs
                            in
                         match uu____12433 with
                         | (openings,lbunivs) ->
                             let cfg1 =
                               let uu___156_12453 = cfg  in
                               let uu____12454 =
                                 FStar_TypeChecker_Env.push_univ_vars
                                   cfg.tcenv lbunivs
                                  in
                               {
                                 steps = (uu___156_12453.steps);
                                 tcenv = uu____12454;
                                 debug = (uu___156_12453.debug);
                                 delta_level = (uu___156_12453.delta_level);
                                 primitive_steps =
                                   (uu___156_12453.primitive_steps);
                                 strong = (uu___156_12453.strong);
                                 memoize_lazy = (uu___156_12453.memoize_lazy);
                                 normalize_pure_lets =
                                   (uu___156_12453.normalize_pure_lets)
                               }  in
                             let norm1 t2 =
                               let uu____12459 =
                                 let uu____12460 =
                                   FStar_Syntax_Subst.subst openings t2  in
                                 norm cfg1 env [] uu____12460  in
                               FStar_Syntax_Subst.close_univ_vars lbunivs
                                 uu____12459
                                in
                             let lbtyp = norm1 lb.FStar_Syntax_Syntax.lbtyp
                                in
                             let lbdef = norm1 lb.FStar_Syntax_Syntax.lbdef
                                in
                             let uu___157_12463 = lb  in
                             {
                               FStar_Syntax_Syntax.lbname =
                                 (uu___157_12463.FStar_Syntax_Syntax.lbname);
                               FStar_Syntax_Syntax.lbunivs = lbunivs;
                               FStar_Syntax_Syntax.lbtyp = lbtyp;
                               FStar_Syntax_Syntax.lbeff =
                                 (uu___157_12463.FStar_Syntax_Syntax.lbeff);
                               FStar_Syntax_Syntax.lbdef = lbdef;
                               FStar_Syntax_Syntax.lbattrs =
                                 (uu___157_12463.FStar_Syntax_Syntax.lbattrs);
                               FStar_Syntax_Syntax.lbpos =
                                 (uu___157_12463.FStar_Syntax_Syntax.lbpos)
                             }))
                  in
               let uu____12464 =
                 mk (FStar_Syntax_Syntax.Tm_let ((b, lbs1), lbody))
                   t1.FStar_Syntax_Syntax.pos
                  in
               rebuild cfg env stack uu____12464
           | FStar_Syntax_Syntax.Tm_let
               ((uu____12475,{
                               FStar_Syntax_Syntax.lbname = FStar_Util.Inr
                                 uu____12476;
                               FStar_Syntax_Syntax.lbunivs = uu____12477;
                               FStar_Syntax_Syntax.lbtyp = uu____12478;
                               FStar_Syntax_Syntax.lbeff = uu____12479;
                               FStar_Syntax_Syntax.lbdef = uu____12480;
                               FStar_Syntax_Syntax.lbattrs = uu____12481;
                               FStar_Syntax_Syntax.lbpos = uu____12482;_}::uu____12483),uu____12484)
               -> rebuild cfg env stack t1
           | FStar_Syntax_Syntax.Tm_let ((false ,lb::[]),body) ->
               let n1 =
                 FStar_TypeChecker_Env.norm_eff_name cfg.tcenv
                   lb.FStar_Syntax_Syntax.lbeff
                  in
               let uu____12524 =
                 (Prims.op_Negation (cfg.steps).do_not_unfold_pure_lets) &&
                   ((((cfg.steps).pure_subterms_within_computations &&
                        (FStar_Syntax_Util.has_attribute
                           lb.FStar_Syntax_Syntax.lbattrs
                           FStar_Parser_Const.inline_let_attr))
                       ||
                       ((FStar_Syntax_Util.is_pure_effect n1) &&
                          (cfg.normalize_pure_lets ||
                             (FStar_Syntax_Util.has_attribute
                                lb.FStar_Syntax_Syntax.lbattrs
                                FStar_Parser_Const.inline_let_attr))))
                      ||
                      ((FStar_Syntax_Util.is_ghost_effect n1) &&
                         (Prims.op_Negation
                            (cfg.steps).pure_subterms_within_computations)))
                  in
               if uu____12524
               then
                 let binder =
                   let uu____12526 =
                     FStar_Util.left lb.FStar_Syntax_Syntax.lbname  in
                   FStar_Syntax_Syntax.mk_binder uu____12526  in
                 let env1 =
                   let uu____12536 =
                     let uu____12543 =
                       let uu____12544 =
                         let uu____12575 =
                           FStar_Util.mk_ref FStar_Pervasives_Native.None  in
                         (env, (lb.FStar_Syntax_Syntax.lbdef), uu____12575,
                           false)
                          in
                       Clos uu____12544  in
                     ((FStar_Pervasives_Native.Some binder), uu____12543)  in
                   uu____12536 :: env  in
                 (log cfg
                    (fun uu____12668  ->
                       FStar_Util.print_string "+++ Reducing Tm_let\n");
                  norm cfg env1 stack body)
               else
                 if (cfg.steps).weak
                 then
                   (log cfg
                      (fun uu____12672  ->
                         FStar_Util.print_string "+++ Not touching Tm_let\n");
                    (let uu____12673 = closure_as_term cfg env t1  in
                     rebuild cfg env stack uu____12673))
                 else
                   (let uu____12675 =
                      let uu____12680 =
                        let uu____12681 =
                          let uu____12682 =
                            FStar_All.pipe_right
                              lb.FStar_Syntax_Syntax.lbname FStar_Util.left
                             in
                          FStar_All.pipe_right uu____12682
                            FStar_Syntax_Syntax.mk_binder
                           in
                        [uu____12681]  in
                      FStar_Syntax_Subst.open_term uu____12680 body  in
                    match uu____12675 with
                    | (bs,body1) ->
                        (log cfg
                           (fun uu____12691  ->
                              FStar_Util.print_string
                                "+++ Normalizing Tm_let -- type");
                         (let ty =
                            norm cfg env [] lb.FStar_Syntax_Syntax.lbtyp  in
                          let lbname =
                            let x =
                              let uu____12699 = FStar_List.hd bs  in
                              FStar_Pervasives_Native.fst uu____12699  in
                            FStar_Util.Inl
                              (let uu___158_12709 = x  in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (uu___158_12709.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (uu___158_12709.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = ty
                               })
                             in
                          log cfg
                            (fun uu____12712  ->
                               FStar_Util.print_string
                                 "+++ Normalizing Tm_let -- definiens\n");
                          (let lb1 =
                             let uu___159_12714 = lb  in
                             let uu____12715 =
                               norm cfg env [] lb.FStar_Syntax_Syntax.lbdef
                                in
                             {
                               FStar_Syntax_Syntax.lbname = lbname;
                               FStar_Syntax_Syntax.lbunivs =
                                 (uu___159_12714.FStar_Syntax_Syntax.lbunivs);
                               FStar_Syntax_Syntax.lbtyp = ty;
                               FStar_Syntax_Syntax.lbeff =
                                 (uu___159_12714.FStar_Syntax_Syntax.lbeff);
                               FStar_Syntax_Syntax.lbdef = uu____12715;
                               FStar_Syntax_Syntax.lbattrs =
                                 (uu___159_12714.FStar_Syntax_Syntax.lbattrs);
                               FStar_Syntax_Syntax.lbpos =
                                 (uu___159_12714.FStar_Syntax_Syntax.lbpos)
                             }  in
                           let env' =
                             FStar_All.pipe_right bs
                               (FStar_List.fold_left
                                  (fun env1  ->
                                     fun uu____12750  -> dummy :: env1) env)
                              in
                           let stack1 = (Cfg cfg) :: stack  in
                           let cfg1 =
                             let uu___160_12773 = cfg  in
                             {
                               steps = (uu___160_12773.steps);
                               tcenv = (uu___160_12773.tcenv);
                               debug = (uu___160_12773.debug);
                               delta_level = (uu___160_12773.delta_level);
                               primitive_steps =
                                 (uu___160_12773.primitive_steps);
                               strong = true;
                               memoize_lazy = (uu___160_12773.memoize_lazy);
                               normalize_pure_lets =
                                 (uu___160_12773.normalize_pure_lets)
                             }  in
                           log cfg1
                             (fun uu____12776  ->
                                FStar_Util.print_string
                                  "+++ Normalizing Tm_let -- body\n");
                           norm cfg1 env'
                             ((Let
                                 (env, bs, lb1, (t1.FStar_Syntax_Syntax.pos)))
                             :: stack1) body1))))
           | FStar_Syntax_Syntax.Tm_let ((true ,lbs),body) when
               (cfg.steps).compress_uvars ||
                 ((Prims.op_Negation (cfg.steps).zeta) &&
                    (cfg.steps).pure_subterms_within_computations)
               ->
               let uu____12793 = FStar_Syntax_Subst.open_let_rec lbs body  in
               (match uu____12793 with
                | (lbs1,body1) ->
                    let lbs2 =
                      FStar_List.map
                        (fun lb  ->
                           let ty =
                             norm cfg env [] lb.FStar_Syntax_Syntax.lbtyp  in
                           let lbname =
                             let uu____12829 =
                               let uu___161_12830 =
                                 FStar_Util.left
                                   lb.FStar_Syntax_Syntax.lbname
                                  in
                               {
                                 FStar_Syntax_Syntax.ppname =
                                   (uu___161_12830.FStar_Syntax_Syntax.ppname);
                                 FStar_Syntax_Syntax.index =
                                   (uu___161_12830.FStar_Syntax_Syntax.index);
                                 FStar_Syntax_Syntax.sort = ty
                               }  in
                             FStar_Util.Inl uu____12829  in
                           let uu____12831 =
                             FStar_Syntax_Util.abs_formals
                               lb.FStar_Syntax_Syntax.lbdef
                              in
                           match uu____12831 with
                           | (xs,def_body,lopt) ->
                               let xs1 = norm_binders cfg env xs  in
                               let env1 =
                                 let uu____12857 =
                                   FStar_List.map (fun uu____12873  -> dummy)
                                     lbs1
                                    in
                                 let uu____12874 =
                                   let uu____12883 =
                                     FStar_List.map
                                       (fun uu____12903  -> dummy) xs1
                                      in
                                   FStar_List.append uu____12883 env  in
                                 FStar_List.append uu____12857 uu____12874
                                  in
                               let def_body1 = norm cfg env1 [] def_body  in
                               let lopt1 =
                                 match lopt with
                                 | FStar_Pervasives_Native.Some rc ->
                                     let uu____12927 =
                                       let uu___162_12928 = rc  in
                                       let uu____12929 =
                                         FStar_Util.map_opt
                                           rc.FStar_Syntax_Syntax.residual_typ
                                           (norm cfg env1 [])
                                          in
                                       {
                                         FStar_Syntax_Syntax.residual_effect
                                           =
                                           (uu___162_12928.FStar_Syntax_Syntax.residual_effect);
                                         FStar_Syntax_Syntax.residual_typ =
                                           uu____12929;
                                         FStar_Syntax_Syntax.residual_flags =
                                           (uu___162_12928.FStar_Syntax_Syntax.residual_flags)
                                       }  in
                                     FStar_Pervasives_Native.Some uu____12927
                                 | uu____12936 -> lopt  in
                               let def =
                                 FStar_Syntax_Util.abs xs1 def_body1 lopt1
                                  in
                               let uu___163_12940 = lb  in
                               {
                                 FStar_Syntax_Syntax.lbname = lbname;
                                 FStar_Syntax_Syntax.lbunivs =
                                   (uu___163_12940.FStar_Syntax_Syntax.lbunivs);
                                 FStar_Syntax_Syntax.lbtyp = ty;
                                 FStar_Syntax_Syntax.lbeff =
                                   (uu___163_12940.FStar_Syntax_Syntax.lbeff);
                                 FStar_Syntax_Syntax.lbdef = def;
                                 FStar_Syntax_Syntax.lbattrs =
                                   (uu___163_12940.FStar_Syntax_Syntax.lbattrs);
                                 FStar_Syntax_Syntax.lbpos =
                                   (uu___163_12940.FStar_Syntax_Syntax.lbpos)
                               }) lbs1
                       in
                    let env' =
                      let uu____12950 =
                        FStar_List.map (fun uu____12966  -> dummy) lbs2  in
                      FStar_List.append uu____12950 env  in
                    let body2 = norm cfg env' [] body1  in
                    let uu____12974 =
                      FStar_Syntax_Subst.close_let_rec lbs2 body2  in
                    (match uu____12974 with
                     | (lbs3,body3) ->
                         let t2 =
                           let uu___164_12990 = t1  in
                           {
                             FStar_Syntax_Syntax.n =
                               (FStar_Syntax_Syntax.Tm_let
                                  ((true, lbs3), body3));
                             FStar_Syntax_Syntax.pos =
                               (uu___164_12990.FStar_Syntax_Syntax.pos);
                             FStar_Syntax_Syntax.vars =
                               (uu___164_12990.FStar_Syntax_Syntax.vars)
                           }  in
                         rebuild cfg env stack t2))
           | FStar_Syntax_Syntax.Tm_let (lbs,body) when
               Prims.op_Negation (cfg.steps).zeta ->
               let uu____13017 = closure_as_term cfg env t1  in
               rebuild cfg env stack uu____13017
           | FStar_Syntax_Syntax.Tm_let (lbs,body) ->
               let uu____13036 =
                 FStar_List.fold_right
                   (fun lb  ->
                      fun uu____13112  ->
                        match uu____13112 with
                        | (rec_env,memos,i) ->
                            let bv =
                              let uu___165_13233 =
                                FStar_Util.left lb.FStar_Syntax_Syntax.lbname
                                 in
                              {
                                FStar_Syntax_Syntax.ppname =
                                  (uu___165_13233.FStar_Syntax_Syntax.ppname);
                                FStar_Syntax_Syntax.index = i;
                                FStar_Syntax_Syntax.sort =
                                  (uu___165_13233.FStar_Syntax_Syntax.sort)
                              }  in
                            let f_i = FStar_Syntax_Syntax.bv_to_tm bv  in
                            let fix_f_i =
                              mk (FStar_Syntax_Syntax.Tm_let (lbs, f_i))
                                t1.FStar_Syntax_Syntax.pos
                               in
                            let memo =
                              FStar_Util.mk_ref FStar_Pervasives_Native.None
                               in
                            let rec_env1 =
                              (FStar_Pervasives_Native.None,
                                (Clos (env, fix_f_i, memo, true)))
                              :: rec_env  in
                            (rec_env1, (memo :: memos),
                              (i + (Prims.parse_int "1"))))
                   (FStar_Pervasives_Native.snd lbs)
                   (env, [], (Prims.parse_int "0"))
                  in
               (match uu____13036 with
                | (rec_env,memos,uu____13446) ->
                    let uu____13499 =
                      FStar_List.map2
                        (fun lb  ->
                           fun memo  ->
                             FStar_ST.op_Colon_Equals memo
                               (FStar_Pervasives_Native.Some
                                  (rec_env, (lb.FStar_Syntax_Syntax.lbdef))))
                        (FStar_Pervasives_Native.snd lbs) memos
                       in
                    let body_env =
                      FStar_List.fold_right
                        (fun lb  ->
                           fun env1  ->
                             let uu____13810 =
                               let uu____13817 =
                                 let uu____13818 =
                                   let uu____13849 =
                                     FStar_Util.mk_ref
                                       FStar_Pervasives_Native.None
                                      in
                                   (rec_env, (lb.FStar_Syntax_Syntax.lbdef),
                                     uu____13849, false)
                                    in
                                 Clos uu____13818  in
                               (FStar_Pervasives_Native.None, uu____13817)
                                in
                             uu____13810 :: env1)
                        (FStar_Pervasives_Native.snd lbs) env
                       in
                    norm cfg body_env stack body)
           | FStar_Syntax_Syntax.Tm_meta (head1,m) ->
               (log cfg
                  (fun uu____13959  ->
                     let uu____13960 =
                       FStar_Syntax_Print.metadata_to_string m  in
                     FStar_Util.print1 ">> metadata = %s\n" uu____13960);
                (match m with
                 | FStar_Syntax_Syntax.Meta_monadic (m1,t2) ->
                     reduce_impure_comp cfg env stack head1
                       (FStar_Util.Inl m1) t2
                 | FStar_Syntax_Syntax.Meta_monadic_lift (m1,m',t2) ->
                     reduce_impure_comp cfg env stack head1
                       (FStar_Util.Inr (m1, m')) t2
                 | uu____13982 ->
                     if (cfg.steps).unmeta
                     then norm cfg env stack head1
                     else
                       (match stack with
                        | uu____13984::uu____13985 ->
                            (match m with
                             | FStar_Syntax_Syntax.Meta_labeled
                                 (l,r,uu____13990) ->
                                 norm cfg env ((Meta (env, m, r)) :: stack)
                                   head1
                             | FStar_Syntax_Syntax.Meta_pattern args ->
                                 let args1 = norm_pattern_args cfg env args
                                    in
                                 norm cfg env
                                   ((Meta
                                       (env,
                                         (FStar_Syntax_Syntax.Meta_pattern
                                            args1),
                                         (t1.FStar_Syntax_Syntax.pos))) ::
                                   stack) head1
                             | uu____14013 -> norm cfg env stack head1)
                        | [] ->
                            let head2 = norm cfg env [] head1  in
                            let m1 =
                              match m with
                              | FStar_Syntax_Syntax.Meta_pattern args ->
                                  let uu____14027 =
                                    norm_pattern_args cfg env args  in
                                  FStar_Syntax_Syntax.Meta_pattern
                                    uu____14027
                              | uu____14038 -> m  in
                            let t2 =
                              mk (FStar_Syntax_Syntax.Tm_meta (head2, m1))
                                t1.FStar_Syntax_Syntax.pos
                               in
                            rebuild cfg env stack t2)))
           | FStar_Syntax_Syntax.Tm_delayed uu____14042 ->
               let t2 = FStar_Syntax_Subst.compress t1  in
               norm cfg env stack t2
           | FStar_Syntax_Syntax.Tm_uvar uu____14068 ->
               let t2 = FStar_Syntax_Subst.compress t1  in
               (match t2.FStar_Syntax_Syntax.n with
                | FStar_Syntax_Syntax.Tm_uvar uu____14086 ->
                    if (cfg.steps).check_no_uvars
                    then
                      let uu____14103 =
                        let uu____14104 =
                          FStar_Range.string_of_range
                            t2.FStar_Syntax_Syntax.pos
                           in
                        let uu____14105 =
                          FStar_Syntax_Print.term_to_string t2  in
                        FStar_Util.format2
                          "(%s) CheckNoUvars: Unexpected unification variable remains: %s"
                          uu____14104 uu____14105
                         in
                      failwith uu____14103
                    else rebuild cfg env stack t2
                | uu____14107 -> norm cfg env stack t2))

and (do_unfold_fv :
  cfg ->
    env ->
      stack_elt Prims.list ->
        FStar_Syntax_Syntax.term ->
          FStar_TypeChecker_Env.qninfo ->
            FStar_Syntax_Syntax.fv -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t0  ->
          fun qninfo  ->
            fun f  ->
              let r_env =
                let uu____14117 = FStar_Syntax_Syntax.range_of_fv f  in
                FStar_TypeChecker_Env.set_range cfg.tcenv uu____14117  in
              let uu____14118 =
                FStar_TypeChecker_Env.lookup_definition_qninfo
                  cfg.delta_level
                  (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                  qninfo
                 in
              match uu____14118 with
              | FStar_Pervasives_Native.None  ->
                  (log cfg
                     (fun uu____14131  ->
                        FStar_Util.print "Tm_fvar case 2\n" []);
                   rebuild cfg env stack t0)
              | FStar_Pervasives_Native.Some (us,t) ->
                  (match qninfo with
                   | FStar_Pervasives_Native.Some
                       (FStar_Util.Inr
                        ({
                           FStar_Syntax_Syntax.sigel =
                             FStar_Syntax_Syntax.Sig_let
                             ((true ,uu____14138),uu____14139);
                           FStar_Syntax_Syntax.sigrng = uu____14140;
                           FStar_Syntax_Syntax.sigquals = uu____14141;
                           FStar_Syntax_Syntax.sigmeta = uu____14142;
                           FStar_Syntax_Syntax.sigattrs = uu____14143;_},uu____14144),uu____14145)
                       when Prims.op_Negation (cfg.steps).zeta ->
                       rebuild cfg env stack t0
                   | uu____14210 ->
                       (log cfg
                          (fun uu____14215  ->
                             let uu____14216 =
                               FStar_Syntax_Print.term_to_string t0  in
                             let uu____14217 =
                               FStar_Syntax_Print.term_to_string t  in
                             FStar_Util.print2 ">>> Unfolded %s to %s\n"
                               uu____14216 uu____14217);
                        (let t1 =
                           if
                             ((cfg.steps).unfold_until =
                                (FStar_Pervasives_Native.Some
                                   FStar_Syntax_Syntax.Delta_constant))
                               && (Prims.op_Negation (cfg.steps).unfold_tac)
                           then t
                           else
                             (let uu____14222 =
                                FStar_Ident.range_of_lid
                                  (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                                 in
                              FStar_Syntax_Subst.set_use_range uu____14222 t)
                            in
                         let n1 = FStar_List.length us  in
                         if n1 > (Prims.parse_int "0")
                         then
                           match stack with
                           | (UnivArgs (us',uu____14231))::stack1 ->
                               let env1 =
                                 FStar_All.pipe_right us'
                                   (FStar_List.fold_left
                                      (fun env1  ->
                                         fun u  ->
                                           (FStar_Pervasives_Native.None,
                                             (Univ u))
                                           :: env1) env)
                                  in
                               norm cfg env1 stack1 t1
                           | uu____14286 when
                               (cfg.steps).erase_universes ||
                                 (cfg.steps).allow_unbound_universes
                               -> norm cfg env stack t1
                           | uu____14289 ->
                               let uu____14292 =
                                 let uu____14293 =
                                   FStar_Syntax_Print.lid_to_string
                                     (f.FStar_Syntax_Syntax.fv_name).FStar_Syntax_Syntax.v
                                    in
                                 FStar_Util.format1
                                   "Impossible: missing universe instantiation on %s"
                                   uu____14293
                                  in
                               failwith uu____14292
                         else norm cfg env stack t1)))

and (reduce_impure_comp :
  cfg ->
    env ->
      stack ->
        FStar_Syntax_Syntax.term ->
          (FStar_Syntax_Syntax.monad_name,(FStar_Syntax_Syntax.monad_name,
                                            FStar_Syntax_Syntax.monad_name)
                                            FStar_Pervasives_Native.tuple2)
            FStar_Util.either ->
            FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun head1  ->
          fun m  ->
            fun t  ->
              let t1 = norm cfg env [] t  in
              let stack1 = (Cfg cfg) :: stack  in
              let cfg1 =
                if (cfg.steps).pure_subterms_within_computations
                then
                  let new_steps =
                    [PureSubtermsWithinComputations;
                    Primops;
                    AllowUnboundUniverses;
                    EraseUniverses;
                    Exclude Zeta;
                    Inlining]  in
                  let uu___166_14317 = cfg  in
                  let uu____14318 =
                    FStar_List.fold_right fstep_add_one new_steps cfg.steps
                     in
                  {
                    steps = uu____14318;
                    tcenv = (uu___166_14317.tcenv);
                    debug = (uu___166_14317.debug);
                    delta_level =
                      [FStar_TypeChecker_Env.Inlining;
                      FStar_TypeChecker_Env.Eager_unfolding_only];
                    primitive_steps = (uu___166_14317.primitive_steps);
                    strong = (uu___166_14317.strong);
                    memoize_lazy = (uu___166_14317.memoize_lazy);
                    normalize_pure_lets =
                      (uu___166_14317.normalize_pure_lets)
                  }
                else
                  (let uu___167_14320 = cfg  in
                   {
                     steps =
                       (let uu___168_14323 = cfg.steps  in
                        {
                          beta = (uu___168_14323.beta);
                          iota = (uu___168_14323.iota);
                          zeta = false;
                          weak = (uu___168_14323.weak);
                          hnf = (uu___168_14323.hnf);
                          primops = (uu___168_14323.primops);
                          do_not_unfold_pure_lets =
                            (uu___168_14323.do_not_unfold_pure_lets);
                          unfold_until = (uu___168_14323.unfold_until);
                          unfold_only = (uu___168_14323.unfold_only);
                          unfold_attr = (uu___168_14323.unfold_attr);
                          unfold_tac = (uu___168_14323.unfold_tac);
                          pure_subterms_within_computations =
                            (uu___168_14323.pure_subterms_within_computations);
                          simplify = (uu___168_14323.simplify);
                          erase_universes = (uu___168_14323.erase_universes);
                          allow_unbound_universes =
                            (uu___168_14323.allow_unbound_universes);
                          reify_ = (uu___168_14323.reify_);
                          compress_uvars = (uu___168_14323.compress_uvars);
                          no_full_norm = (uu___168_14323.no_full_norm);
                          check_no_uvars = (uu___168_14323.check_no_uvars);
                          unmeta = (uu___168_14323.unmeta);
                          unascribe = (uu___168_14323.unascribe);
                          in_full_norm_request =
                            (uu___168_14323.in_full_norm_request)
                        });
                     tcenv = (uu___167_14320.tcenv);
                     debug = (uu___167_14320.debug);
                     delta_level = (uu___167_14320.delta_level);
                     primitive_steps = (uu___167_14320.primitive_steps);
                     strong = (uu___167_14320.strong);
                     memoize_lazy = (uu___167_14320.memoize_lazy);
                     normalize_pure_lets =
                       (uu___167_14320.normalize_pure_lets)
                   })
                 in
              let metadata =
                match m with
                | FStar_Util.Inl m1 ->
                    FStar_Syntax_Syntax.Meta_monadic (m1, t1)
                | FStar_Util.Inr (m1,m') ->
                    FStar_Syntax_Syntax.Meta_monadic_lift (m1, m', t1)
                 in
              norm cfg1 env
                ((Meta (env, metadata, (head1.FStar_Syntax_Syntax.pos))) ::
                stack1) head1

and (do_reify_monadic :
  (Prims.unit -> FStar_Syntax_Syntax.term) ->
    cfg ->
      env ->
        stack_elt Prims.list ->
          FStar_Syntax_Syntax.term ->
            FStar_Syntax_Syntax.monad_name ->
              FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  =
  fun fallback  ->
    fun cfg  ->
      fun env  ->
        fun stack  ->
          fun head1  ->
            fun m  ->
              fun t  ->
                let head0 = head1  in
                let head2 = FStar_Syntax_Util.unascribe head1  in
                log cfg
                  (fun uu____14353  ->
                     let uu____14354 = FStar_Syntax_Print.tag_of_term head2
                        in
                     let uu____14355 =
                       FStar_Syntax_Print.term_to_string head2  in
                     FStar_Util.print2 "Reifying: (%s) %s\n" uu____14354
                       uu____14355);
                (let head3 = FStar_Syntax_Util.unmeta_safe head2  in
                 let uu____14357 =
                   let uu____14358 = FStar_Syntax_Subst.compress head3  in
                   uu____14358.FStar_Syntax_Syntax.n  in
                 match uu____14357 with
                 | FStar_Syntax_Syntax.Tm_let ((false ,lb::[]),body) ->
                     let ed =
                       let uu____14376 =
                         FStar_TypeChecker_Env.norm_eff_name cfg.tcenv m  in
                       FStar_TypeChecker_Env.get_effect_decl cfg.tcenv
                         uu____14376
                        in
                     let uu____14377 = ed.FStar_Syntax_Syntax.bind_repr  in
                     (match uu____14377 with
                      | (uu____14378,bind_repr) ->
                          (match lb.FStar_Syntax_Syntax.lbname with
                           | FStar_Util.Inr uu____14384 ->
                               failwith
                                 "Cannot reify a top-level let binding"
                           | FStar_Util.Inl x ->
                               let is_return e =
                                 let uu____14392 =
                                   let uu____14393 =
                                     FStar_Syntax_Subst.compress e  in
                                   uu____14393.FStar_Syntax_Syntax.n  in
                                 match uu____14392 with
                                 | FStar_Syntax_Syntax.Tm_meta
                                     (e1,FStar_Syntax_Syntax.Meta_monadic
                                      (uu____14399,uu____14400))
                                     ->
                                     let uu____14409 =
                                       let uu____14410 =
                                         FStar_Syntax_Subst.compress e1  in
                                       uu____14410.FStar_Syntax_Syntax.n  in
                                     (match uu____14409 with
                                      | FStar_Syntax_Syntax.Tm_meta
                                          (e2,FStar_Syntax_Syntax.Meta_monadic_lift
                                           (uu____14416,msrc,uu____14418))
                                          when
                                          FStar_Syntax_Util.is_pure_effect
                                            msrc
                                          ->
                                          let uu____14427 =
                                            FStar_Syntax_Subst.compress e2
                                             in
                                          FStar_Pervasives_Native.Some
                                            uu____14427
                                      | uu____14428 ->
                                          FStar_Pervasives_Native.None)
                                 | uu____14429 ->
                                     FStar_Pervasives_Native.None
                                  in
                               let uu____14430 =
                                 is_return lb.FStar_Syntax_Syntax.lbdef  in
                               (match uu____14430 with
                                | FStar_Pervasives_Native.Some e ->
                                    let lb1 =
                                      let uu___169_14435 = lb  in
                                      {
                                        FStar_Syntax_Syntax.lbname =
                                          (uu___169_14435.FStar_Syntax_Syntax.lbname);
                                        FStar_Syntax_Syntax.lbunivs =
                                          (uu___169_14435.FStar_Syntax_Syntax.lbunivs);
                                        FStar_Syntax_Syntax.lbtyp =
                                          (uu___169_14435.FStar_Syntax_Syntax.lbtyp);
                                        FStar_Syntax_Syntax.lbeff =
                                          FStar_Parser_Const.effect_PURE_lid;
                                        FStar_Syntax_Syntax.lbdef = e;
                                        FStar_Syntax_Syntax.lbattrs =
                                          (uu___169_14435.FStar_Syntax_Syntax.lbattrs);
                                        FStar_Syntax_Syntax.lbpos =
                                          (uu___169_14435.FStar_Syntax_Syntax.lbpos)
                                      }  in
                                    let uu____14436 = FStar_List.tl stack  in
                                    let uu____14437 =
                                      let uu____14438 =
                                        let uu____14441 =
                                          let uu____14442 =
                                            let uu____14455 =
                                              FStar_Syntax_Util.mk_reify body
                                               in
                                            ((false, [lb1]), uu____14455)  in
                                          FStar_Syntax_Syntax.Tm_let
                                            uu____14442
                                           in
                                        FStar_Syntax_Syntax.mk uu____14441
                                         in
                                      uu____14438
                                        FStar_Pervasives_Native.None
                                        head3.FStar_Syntax_Syntax.pos
                                       in
                                    norm cfg env uu____14436 uu____14437
                                | FStar_Pervasives_Native.None  ->
                                    let uu____14471 =
                                      let uu____14472 = is_return body  in
                                      match uu____14472 with
                                      | FStar_Pervasives_Native.Some
                                          {
                                            FStar_Syntax_Syntax.n =
                                              FStar_Syntax_Syntax.Tm_bvar y;
                                            FStar_Syntax_Syntax.pos =
                                              uu____14476;
                                            FStar_Syntax_Syntax.vars =
                                              uu____14477;_}
                                          -> FStar_Syntax_Syntax.bv_eq x y
                                      | uu____14482 -> false  in
                                    if uu____14471
                                    then
                                      norm cfg env stack
                                        lb.FStar_Syntax_Syntax.lbdef
                                    else
                                      (let rng =
                                         head3.FStar_Syntax_Syntax.pos  in
                                       let head4 =
                                         FStar_All.pipe_left
                                           FStar_Syntax_Util.mk_reify
                                           lb.FStar_Syntax_Syntax.lbdef
                                          in
                                       let body1 =
                                         FStar_All.pipe_left
                                           FStar_Syntax_Util.mk_reify body
                                          in
                                       let body_rc =
                                         {
                                           FStar_Syntax_Syntax.residual_effect
                                             = m;
                                           FStar_Syntax_Syntax.residual_typ =
                                             (FStar_Pervasives_Native.Some t);
                                           FStar_Syntax_Syntax.residual_flags
                                             = []
                                         }  in
                                       let body2 =
                                         let uu____14505 =
                                           let uu____14508 =
                                             let uu____14509 =
                                               let uu____14526 =
                                                 let uu____14529 =
                                                   FStar_Syntax_Syntax.mk_binder
                                                     x
                                                    in
                                                 [uu____14529]  in
                                               (uu____14526, body1,
                                                 (FStar_Pervasives_Native.Some
                                                    body_rc))
                                                in
                                             FStar_Syntax_Syntax.Tm_abs
                                               uu____14509
                                              in
                                           FStar_Syntax_Syntax.mk uu____14508
                                            in
                                         uu____14505
                                           FStar_Pervasives_Native.None
                                           body1.FStar_Syntax_Syntax.pos
                                          in
                                       let close1 = closure_as_term cfg env
                                          in
                                       let bind_inst =
                                         let uu____14545 =
                                           let uu____14546 =
                                             FStar_Syntax_Subst.compress
                                               bind_repr
                                              in
                                           uu____14546.FStar_Syntax_Syntax.n
                                            in
                                         match uu____14545 with
                                         | FStar_Syntax_Syntax.Tm_uinst
                                             (bind1,uu____14552::uu____14553::[])
                                             ->
                                             let uu____14560 =
                                               let uu____14563 =
                                                 let uu____14564 =
                                                   let uu____14571 =
                                                     let uu____14574 =
                                                       let uu____14575 =
                                                         close1
                                                           lb.FStar_Syntax_Syntax.lbtyp
                                                          in
                                                       (cfg.tcenv).FStar_TypeChecker_Env.universe_of
                                                         cfg.tcenv
                                                         uu____14575
                                                        in
                                                     let uu____14576 =
                                                       let uu____14579 =
                                                         let uu____14580 =
                                                           close1 t  in
                                                         (cfg.tcenv).FStar_TypeChecker_Env.universe_of
                                                           cfg.tcenv
                                                           uu____14580
                                                          in
                                                       [uu____14579]  in
                                                     uu____14574 ::
                                                       uu____14576
                                                      in
                                                   (bind1, uu____14571)  in
                                                 FStar_Syntax_Syntax.Tm_uinst
                                                   uu____14564
                                                  in
                                               FStar_Syntax_Syntax.mk
                                                 uu____14563
                                                in
                                             uu____14560
                                               FStar_Pervasives_Native.None
                                               rng
                                         | uu____14588 ->
                                             failwith
                                               "NIY : Reification of indexed effects"
                                          in
                                       let maybe_range_arg =
                                         let uu____14594 =
                                           FStar_Util.for_some
                                             (FStar_Syntax_Util.attr_eq
                                                FStar_Syntax_Util.dm4f_bind_range_attr)
                                             ed.FStar_Syntax_Syntax.eff_attrs
                                            in
                                         if uu____14594
                                         then
                                           let uu____14597 =
                                             let uu____14598 =
                                               FStar_Syntax_Embeddings.embed
                                                 FStar_Syntax_Embeddings.e_range
                                                 lb.FStar_Syntax_Syntax.lbpos
                                                 lb.FStar_Syntax_Syntax.lbpos
                                                in
                                             FStar_Syntax_Syntax.as_arg
                                               uu____14598
                                              in
                                           let uu____14599 =
                                             let uu____14602 =
                                               let uu____14603 =
                                                 FStar_Syntax_Embeddings.embed
                                                   FStar_Syntax_Embeddings.e_range
                                                   body2.FStar_Syntax_Syntax.pos
                                                   body2.FStar_Syntax_Syntax.pos
                                                  in
                                               FStar_Syntax_Syntax.as_arg
                                                 uu____14603
                                                in
                                             [uu____14602]  in
                                           uu____14597 :: uu____14599
                                         else []  in
                                       let reified =
                                         let uu____14608 =
                                           let uu____14611 =
                                             let uu____14612 =
                                               let uu____14627 =
                                                 let uu____14630 =
                                                   let uu____14633 =
                                                     FStar_Syntax_Syntax.as_arg
                                                       lb.FStar_Syntax_Syntax.lbtyp
                                                      in
                                                   let uu____14634 =
                                                     let uu____14637 =
                                                       FStar_Syntax_Syntax.as_arg
                                                         t
                                                        in
                                                     [uu____14637]  in
                                                   uu____14633 :: uu____14634
                                                    in
                                                 let uu____14638 =
                                                   let uu____14641 =
                                                     let uu____14644 =
                                                       FStar_Syntax_Syntax.as_arg
                                                         FStar_Syntax_Syntax.tun
                                                        in
                                                     let uu____14645 =
                                                       let uu____14648 =
                                                         FStar_Syntax_Syntax.as_arg
                                                           head4
                                                          in
                                                       let uu____14649 =
                                                         let uu____14652 =
                                                           FStar_Syntax_Syntax.as_arg
                                                             FStar_Syntax_Syntax.tun
                                                            in
                                                         let uu____14653 =
                                                           let uu____14656 =
                                                             FStar_Syntax_Syntax.as_arg
                                                               body2
                                                              in
                                                           [uu____14656]  in
                                                         uu____14652 ::
                                                           uu____14653
                                                          in
                                                       uu____14648 ::
                                                         uu____14649
                                                        in
                                                     uu____14644 ::
                                                       uu____14645
                                                      in
                                                   FStar_List.append
                                                     maybe_range_arg
                                                     uu____14641
                                                    in
                                                 FStar_List.append
                                                   uu____14630 uu____14638
                                                  in
                                               (bind_inst, uu____14627)  in
                                             FStar_Syntax_Syntax.Tm_app
                                               uu____14612
                                              in
                                           FStar_Syntax_Syntax.mk uu____14611
                                            in
                                         uu____14608
                                           FStar_Pervasives_Native.None rng
                                          in
                                       log cfg
                                         (fun uu____14668  ->
                                            let uu____14669 =
                                              FStar_Syntax_Print.term_to_string
                                                head0
                                               in
                                            let uu____14670 =
                                              FStar_Syntax_Print.term_to_string
                                                reified
                                               in
                                            FStar_Util.print2
                                              "Reified (1) <%s> to %s\n"
                                              uu____14669 uu____14670);
                                       (let uu____14671 = FStar_List.tl stack
                                           in
                                        norm cfg env uu____14671 reified)))))
                 | FStar_Syntax_Syntax.Tm_app (head_app,args) ->
                     let ed =
                       let uu____14695 =
                         FStar_TypeChecker_Env.norm_eff_name cfg.tcenv m  in
                       FStar_TypeChecker_Env.get_effect_decl cfg.tcenv
                         uu____14695
                        in
                     let uu____14696 = ed.FStar_Syntax_Syntax.bind_repr  in
                     (match uu____14696 with
                      | (uu____14697,bind_repr) ->
                          let maybe_unfold_action head4 =
                            let maybe_extract_fv t1 =
                              let t2 =
                                let uu____14732 =
                                  let uu____14733 =
                                    FStar_Syntax_Subst.compress t1  in
                                  uu____14733.FStar_Syntax_Syntax.n  in
                                match uu____14732 with
                                | FStar_Syntax_Syntax.Tm_uinst
                                    (t2,uu____14739) -> t2
                                | uu____14744 -> head4  in
                              let uu____14745 =
                                let uu____14746 =
                                  FStar_Syntax_Subst.compress t2  in
                                uu____14746.FStar_Syntax_Syntax.n  in
                              match uu____14745 with
                              | FStar_Syntax_Syntax.Tm_fvar x ->
                                  FStar_Pervasives_Native.Some x
                              | uu____14752 -> FStar_Pervasives_Native.None
                               in
                            let uu____14753 = maybe_extract_fv head4  in
                            match uu____14753 with
                            | FStar_Pervasives_Native.Some x when
                                let uu____14763 =
                                  FStar_Syntax_Syntax.lid_of_fv x  in
                                FStar_TypeChecker_Env.is_action cfg.tcenv
                                  uu____14763
                                ->
                                let head5 = norm cfg env [] head4  in
                                let action_unfolded =
                                  let uu____14768 = maybe_extract_fv head5
                                     in
                                  match uu____14768 with
                                  | FStar_Pervasives_Native.Some uu____14773
                                      -> FStar_Pervasives_Native.Some true
                                  | uu____14774 ->
                                      FStar_Pervasives_Native.Some false
                                   in
                                (head5, action_unfolded)
                            | uu____14779 ->
                                (head4, FStar_Pervasives_Native.None)
                             in
                          ((let is_arg_impure uu____14794 =
                              match uu____14794 with
                              | (e,q) ->
                                  let uu____14801 =
                                    let uu____14802 =
                                      FStar_Syntax_Subst.compress e  in
                                    uu____14802.FStar_Syntax_Syntax.n  in
                                  (match uu____14801 with
                                   | FStar_Syntax_Syntax.Tm_meta
                                       (e0,FStar_Syntax_Syntax.Meta_monadic_lift
                                        (m1,m2,t'))
                                       ->
                                       let uu____14817 =
                                         FStar_Syntax_Util.is_pure_effect m1
                                          in
                                       Prims.op_Negation uu____14817
                                   | uu____14818 -> false)
                               in
                            let uu____14819 =
                              let uu____14820 =
                                let uu____14827 =
                                  FStar_Syntax_Syntax.as_arg head_app  in
                                uu____14827 :: args  in
                              FStar_Util.for_some is_arg_impure uu____14820
                               in
                            if uu____14819
                            then
                              let uu____14832 =
                                let uu____14833 =
                                  FStar_Syntax_Print.term_to_string head3  in
                                FStar_Util.format1
                                  "Incompability between typechecker and normalizer; this monadic application contains impure terms %s\n"
                                  uu____14833
                                 in
                              failwith uu____14832
                            else ());
                           (let uu____14835 = maybe_unfold_action head_app
                               in
                            match uu____14835 with
                            | (head_app1,found_action) ->
                                let mk1 tm =
                                  FStar_Syntax_Syntax.mk tm
                                    FStar_Pervasives_Native.None
                                    head3.FStar_Syntax_Syntax.pos
                                   in
                                let body =
                                  mk1
                                    (FStar_Syntax_Syntax.Tm_app
                                       (head_app1, args))
                                   in
                                let body1 =
                                  match found_action with
                                  | FStar_Pervasives_Native.None  ->
                                      FStar_Syntax_Util.mk_reify body
                                  | FStar_Pervasives_Native.Some (false ) ->
                                      mk1
                                        (FStar_Syntax_Syntax.Tm_meta
                                           (body,
                                             (FStar_Syntax_Syntax.Meta_monadic
                                                (m, t))))
                                  | FStar_Pervasives_Native.Some (true ) ->
                                      body
                                   in
                                (log cfg
                                   (fun uu____14876  ->
                                      let uu____14877 =
                                        FStar_Syntax_Print.term_to_string
                                          head0
                                         in
                                      let uu____14878 =
                                        FStar_Syntax_Print.term_to_string
                                          body1
                                         in
                                      FStar_Util.print2
                                        "Reified (2) <%s> to %s\n"
                                        uu____14877 uu____14878);
                                 (let uu____14879 = FStar_List.tl stack  in
                                  norm cfg env uu____14879 body1)))))
                 | FStar_Syntax_Syntax.Tm_meta
                     (e,FStar_Syntax_Syntax.Meta_monadic uu____14881) ->
                     do_reify_monadic fallback cfg env stack e m t
                 | FStar_Syntax_Syntax.Tm_meta
                     (e,FStar_Syntax_Syntax.Meta_monadic_lift (msrc,mtgt,t'))
                     ->
                     let lifted =
                       let uu____14905 = closure_as_term cfg env t'  in
                       reify_lift cfg e msrc mtgt uu____14905  in
                     (log cfg
                        (fun uu____14909  ->
                           let uu____14910 =
                             FStar_Syntax_Print.term_to_string lifted  in
                           FStar_Util.print1 "Reified lift to (2): %s\n"
                             uu____14910);
                      (let uu____14911 = FStar_List.tl stack  in
                       norm cfg env uu____14911 lifted))
                 | FStar_Syntax_Syntax.Tm_match (e,branches) ->
                     let branches1 =
                       FStar_All.pipe_right branches
                         (FStar_List.map
                            (fun uu____15032  ->
                               match uu____15032 with
                               | (pat,wopt,tm) ->
                                   let uu____15080 =
                                     FStar_Syntax_Util.mk_reify tm  in
                                   (pat, wopt, uu____15080)))
                        in
                     let tm =
                       mk (FStar_Syntax_Syntax.Tm_match (e, branches1))
                         head3.FStar_Syntax_Syntax.pos
                        in
                     let uu____15112 = FStar_List.tl stack  in
                     norm cfg env uu____15112 tm
                 | uu____15113 -> fallback ())

and (reify_lift :
  cfg ->
    FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax ->
      FStar_Syntax_Syntax.monad_name ->
        FStar_Syntax_Syntax.monad_name ->
          FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun e  ->
      fun msrc  ->
        fun mtgt  ->
          fun t  ->
            let env = cfg.tcenv  in
            log cfg
              (fun uu____15127  ->
                 let uu____15128 = FStar_Ident.string_of_lid msrc  in
                 let uu____15129 = FStar_Ident.string_of_lid mtgt  in
                 let uu____15130 = FStar_Syntax_Print.term_to_string e  in
                 FStar_Util.print3 "Reifying lift %s -> %s: %s\n" uu____15128
                   uu____15129 uu____15130);
            (let uu____15131 =
               (FStar_Syntax_Util.is_pure_effect msrc) ||
                 (FStar_Syntax_Util.is_div_effect msrc)
                in
             if uu____15131
             then
               let ed =
                 let uu____15133 =
                   FStar_TypeChecker_Env.norm_eff_name cfg.tcenv mtgt  in
                 FStar_TypeChecker_Env.get_effect_decl env uu____15133  in
               let uu____15134 = ed.FStar_Syntax_Syntax.return_repr  in
               match uu____15134 with
               | (uu____15135,return_repr) ->
                   let return_inst =
                     let uu____15144 =
                       let uu____15145 =
                         FStar_Syntax_Subst.compress return_repr  in
                       uu____15145.FStar_Syntax_Syntax.n  in
                     match uu____15144 with
                     | FStar_Syntax_Syntax.Tm_uinst
                         (return_tm,uu____15151::[]) ->
                         let uu____15158 =
                           let uu____15161 =
                             let uu____15162 =
                               let uu____15169 =
                                 let uu____15172 =
                                   env.FStar_TypeChecker_Env.universe_of env
                                     t
                                    in
                                 [uu____15172]  in
                               (return_tm, uu____15169)  in
                             FStar_Syntax_Syntax.Tm_uinst uu____15162  in
                           FStar_Syntax_Syntax.mk uu____15161  in
                         uu____15158 FStar_Pervasives_Native.None
                           e.FStar_Syntax_Syntax.pos
                     | uu____15180 ->
                         failwith "NIY : Reification of indexed effects"
                      in
                   let uu____15183 =
                     let uu____15186 =
                       let uu____15187 =
                         let uu____15202 =
                           let uu____15205 = FStar_Syntax_Syntax.as_arg t  in
                           let uu____15206 =
                             let uu____15209 = FStar_Syntax_Syntax.as_arg e
                                in
                             [uu____15209]  in
                           uu____15205 :: uu____15206  in
                         (return_inst, uu____15202)  in
                       FStar_Syntax_Syntax.Tm_app uu____15187  in
                     FStar_Syntax_Syntax.mk uu____15186  in
                   uu____15183 FStar_Pervasives_Native.None
                     e.FStar_Syntax_Syntax.pos
             else
               (let uu____15218 =
                  FStar_TypeChecker_Env.monad_leq env msrc mtgt  in
                match uu____15218 with
                | FStar_Pervasives_Native.None  ->
                    let uu____15221 =
                      let uu____15222 = FStar_Ident.text_of_lid msrc  in
                      let uu____15223 = FStar_Ident.text_of_lid mtgt  in
                      FStar_Util.format2
                        "Impossible : trying to reify a lift between unrelated effects (%s and %s)"
                        uu____15222 uu____15223
                       in
                    failwith uu____15221
                | FStar_Pervasives_Native.Some
                    { FStar_TypeChecker_Env.msource = uu____15224;
                      FStar_TypeChecker_Env.mtarget = uu____15225;
                      FStar_TypeChecker_Env.mlift =
                        { FStar_TypeChecker_Env.mlift_wp = uu____15226;
                          FStar_TypeChecker_Env.mlift_term =
                            FStar_Pervasives_Native.None ;_};_}
                    ->
                    let uu____15241 =
                      let uu____15242 = FStar_Ident.text_of_lid msrc  in
                      let uu____15243 = FStar_Ident.text_of_lid mtgt  in
                      FStar_Util.format2
                        "Impossible : trying to reify a non-reifiable lift (from %s to %s)"
                        uu____15242 uu____15243
                       in
                    failwith uu____15241
                | FStar_Pervasives_Native.Some
                    { FStar_TypeChecker_Env.msource = uu____15244;
                      FStar_TypeChecker_Env.mtarget = uu____15245;
                      FStar_TypeChecker_Env.mlift =
                        { FStar_TypeChecker_Env.mlift_wp = uu____15246;
                          FStar_TypeChecker_Env.mlift_term =
                            FStar_Pervasives_Native.Some lift;_};_}
                    ->
                    let uu____15270 =
                      env.FStar_TypeChecker_Env.universe_of env t  in
                    let uu____15271 = FStar_Syntax_Util.mk_reify e  in
                    lift uu____15270 t FStar_Syntax_Syntax.tun uu____15271))

and (norm_pattern_args :
  cfg ->
    env ->
      (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
        FStar_Pervasives_Native.tuple2 Prims.list Prims.list ->
        (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
          FStar_Pervasives_Native.tuple2 Prims.list Prims.list)
  =
  fun cfg  ->
    fun env  ->
      fun args  ->
        FStar_All.pipe_right args
          (FStar_List.map
             (FStar_List.map
                (fun uu____15327  ->
                   match uu____15327 with
                   | (a,imp) ->
                       let uu____15338 = norm cfg env [] a  in
                       (uu____15338, imp))))

and (norm_comp :
  cfg -> env -> FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp) =
  fun cfg  ->
    fun env  ->
      fun comp  ->
        match comp.FStar_Syntax_Syntax.n with
        | FStar_Syntax_Syntax.Total (t,uopt) ->
            let uu___170_15352 = comp  in
            let uu____15353 =
              let uu____15354 =
                let uu____15363 = norm cfg env [] t  in
                let uu____15364 =
                  FStar_Option.map (norm_universe cfg env) uopt  in
                (uu____15363, uu____15364)  in
              FStar_Syntax_Syntax.Total uu____15354  in
            {
              FStar_Syntax_Syntax.n = uu____15353;
              FStar_Syntax_Syntax.pos =
                (uu___170_15352.FStar_Syntax_Syntax.pos);
              FStar_Syntax_Syntax.vars =
                (uu___170_15352.FStar_Syntax_Syntax.vars)
            }
        | FStar_Syntax_Syntax.GTotal (t,uopt) ->
            let uu___171_15379 = comp  in
            let uu____15380 =
              let uu____15381 =
                let uu____15390 = norm cfg env [] t  in
                let uu____15391 =
                  FStar_Option.map (norm_universe cfg env) uopt  in
                (uu____15390, uu____15391)  in
              FStar_Syntax_Syntax.GTotal uu____15381  in
            {
              FStar_Syntax_Syntax.n = uu____15380;
              FStar_Syntax_Syntax.pos =
                (uu___171_15379.FStar_Syntax_Syntax.pos);
              FStar_Syntax_Syntax.vars =
                (uu___171_15379.FStar_Syntax_Syntax.vars)
            }
        | FStar_Syntax_Syntax.Comp ct ->
            let norm_args args =
              FStar_All.pipe_right args
                (FStar_List.map
                   (fun uu____15443  ->
                      match uu____15443 with
                      | (a,i) ->
                          let uu____15454 = norm cfg env [] a  in
                          (uu____15454, i)))
               in
            let flags1 =
              FStar_All.pipe_right ct.FStar_Syntax_Syntax.flags
                (FStar_List.map
                   (fun uu___89_15465  ->
                      match uu___89_15465 with
                      | FStar_Syntax_Syntax.DECREASES t ->
                          let uu____15469 = norm cfg env [] t  in
                          FStar_Syntax_Syntax.DECREASES uu____15469
                      | f -> f))
               in
            let uu___172_15473 = comp  in
            let uu____15474 =
              let uu____15475 =
                let uu___173_15476 = ct  in
                let uu____15477 =
                  FStar_List.map (norm_universe cfg env)
                    ct.FStar_Syntax_Syntax.comp_univs
                   in
                let uu____15478 =
                  norm cfg env [] ct.FStar_Syntax_Syntax.result_typ  in
                let uu____15481 =
                  norm_args ct.FStar_Syntax_Syntax.effect_args  in
                {
                  FStar_Syntax_Syntax.comp_univs = uu____15477;
                  FStar_Syntax_Syntax.effect_name =
                    (uu___173_15476.FStar_Syntax_Syntax.effect_name);
                  FStar_Syntax_Syntax.result_typ = uu____15478;
                  FStar_Syntax_Syntax.effect_args = uu____15481;
                  FStar_Syntax_Syntax.flags = flags1
                }  in
              FStar_Syntax_Syntax.Comp uu____15475  in
            {
              FStar_Syntax_Syntax.n = uu____15474;
              FStar_Syntax_Syntax.pos =
                (uu___172_15473.FStar_Syntax_Syntax.pos);
              FStar_Syntax_Syntax.vars =
                (uu___172_15473.FStar_Syntax_Syntax.vars)
            }

and (norm_binder :
  cfg -> env -> FStar_Syntax_Syntax.binder -> FStar_Syntax_Syntax.binder) =
  fun cfg  ->
    fun env  ->
      fun uu____15492  ->
        match uu____15492 with
        | (x,imp) ->
            let uu____15495 =
              let uu___174_15496 = x  in
              let uu____15497 = norm cfg env [] x.FStar_Syntax_Syntax.sort
                 in
              {
                FStar_Syntax_Syntax.ppname =
                  (uu___174_15496.FStar_Syntax_Syntax.ppname);
                FStar_Syntax_Syntax.index =
                  (uu___174_15496.FStar_Syntax_Syntax.index);
                FStar_Syntax_Syntax.sort = uu____15497
              }  in
            (uu____15495, imp)

and (norm_binders :
  cfg -> env -> FStar_Syntax_Syntax.binders -> FStar_Syntax_Syntax.binders) =
  fun cfg  ->
    fun env  ->
      fun bs  ->
        let uu____15503 =
          FStar_List.fold_left
            (fun uu____15521  ->
               fun b  ->
                 match uu____15521 with
                 | (nbs',env1) ->
                     let b1 = norm_binder cfg env1 b  in
                     ((b1 :: nbs'), (dummy :: env1))) ([], env) bs
           in
        match uu____15503 with | (nbs,uu____15561) -> FStar_List.rev nbs

and (norm_lcomp_opt :
  cfg ->
    env ->
      FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option ->
        FStar_Syntax_Syntax.residual_comp FStar_Pervasives_Native.option)
  =
  fun cfg  ->
    fun env  ->
      fun lopt  ->
        match lopt with
        | FStar_Pervasives_Native.Some rc ->
            let flags1 =
              filter_out_lcomp_cflags rc.FStar_Syntax_Syntax.residual_flags
               in
            let uu____15577 =
              let uu___175_15578 = rc  in
              let uu____15579 =
                FStar_Util.map_opt rc.FStar_Syntax_Syntax.residual_typ
                  (norm cfg env [])
                 in
              {
                FStar_Syntax_Syntax.residual_effect =
                  (uu___175_15578.FStar_Syntax_Syntax.residual_effect);
                FStar_Syntax_Syntax.residual_typ = uu____15579;
                FStar_Syntax_Syntax.residual_flags =
                  (uu___175_15578.FStar_Syntax_Syntax.residual_flags)
              }  in
            FStar_Pervasives_Native.Some uu____15577
        | uu____15586 -> lopt

and (maybe_simplify :
  cfg ->
    ((FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
       FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option,
      closure) FStar_Pervasives_Native.tuple2 Prims.list ->
      stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun tm  ->
          let tm' = maybe_simplify_aux cfg env stack tm  in
          if (cfg.debug).b380
          then
            (let uu____15607 = FStar_Syntax_Print.term_to_string tm  in
             let uu____15608 = FStar_Syntax_Print.term_to_string tm'  in
             FStar_Util.print3 "%sSimplified\n\t%s to\n\t%s\n"
               (if (cfg.steps).simplify then "" else "NOT ") uu____15607
               uu____15608)
          else ();
          tm'

and (maybe_simplify_aux :
  cfg ->
    ((FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
       FStar_Pervasives_Native.tuple2 FStar_Pervasives_Native.option,
      closure) FStar_Pervasives_Native.tuple2 Prims.list ->
      stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun tm  ->
          let tm1 = reduce_primops cfg env stack tm  in
          let uu____15628 =
            FStar_All.pipe_left Prims.op_Negation (cfg.steps).simplify  in
          if uu____15628
          then tm1
          else
            (let w t =
               let uu___176_15640 = t  in
               {
                 FStar_Syntax_Syntax.n =
                   (uu___176_15640.FStar_Syntax_Syntax.n);
                 FStar_Syntax_Syntax.pos = (tm1.FStar_Syntax_Syntax.pos);
                 FStar_Syntax_Syntax.vars =
                   (uu___176_15640.FStar_Syntax_Syntax.vars)
               }  in
             let simp_t t =
               let uu____15649 =
                 let uu____15650 = FStar_Syntax_Util.unmeta t  in
                 uu____15650.FStar_Syntax_Syntax.n  in
               match uu____15649 with
               | FStar_Syntax_Syntax.Tm_fvar fv when
                   FStar_Syntax_Syntax.fv_eq_lid fv
                     FStar_Parser_Const.true_lid
                   -> FStar_Pervasives_Native.Some true
               | FStar_Syntax_Syntax.Tm_fvar fv when
                   FStar_Syntax_Syntax.fv_eq_lid fv
                     FStar_Parser_Const.false_lid
                   -> FStar_Pervasives_Native.Some false
               | uu____15657 -> FStar_Pervasives_Native.None  in
             let rec args_are_binders args bs =
               match (args, bs) with
               | ((t,uu____15702)::args1,(bv,uu____15705)::bs1) ->
                   let uu____15739 =
                     let uu____15740 = FStar_Syntax_Subst.compress t  in
                     uu____15740.FStar_Syntax_Syntax.n  in
                   (match uu____15739 with
                    | FStar_Syntax_Syntax.Tm_name bv' ->
                        (FStar_Syntax_Syntax.bv_eq bv bv') &&
                          (args_are_binders args1 bs1)
                    | uu____15744 -> false)
               | ([],[]) -> true
               | (uu____15765,uu____15766) -> false  in
             let is_applied bs t =
               let uu____15802 = FStar_Syntax_Util.head_and_args' t  in
               match uu____15802 with
               | (hd1,args) ->
                   let uu____15835 =
                     let uu____15836 = FStar_Syntax_Subst.compress hd1  in
                     uu____15836.FStar_Syntax_Syntax.n  in
                   (match uu____15835 with
                    | FStar_Syntax_Syntax.Tm_name bv when
                        args_are_binders args bs ->
                        FStar_Pervasives_Native.Some bv
                    | uu____15842 -> FStar_Pervasives_Native.None)
                in
             let is_applied_maybe_squashed bs t =
               let uu____15854 = FStar_Syntax_Util.is_squash t  in
               match uu____15854 with
               | FStar_Pervasives_Native.Some (uu____15865,t') ->
                   is_applied bs t'
               | uu____15877 ->
                   let uu____15886 = FStar_Syntax_Util.is_auto_squash t  in
                   (match uu____15886 with
                    | FStar_Pervasives_Native.Some (uu____15897,t') ->
                        is_applied bs t'
                    | uu____15909 -> is_applied bs t)
                in
             let is_quantified_const phi =
               let uu____15926 =
                 FStar_Syntax_Util.destruct_typ_as_formula phi  in
               match uu____15926 with
               | FStar_Pervasives_Native.Some (FStar_Syntax_Util.BaseConn
                   (lid,(p,uu____15933)::(q,uu____15935)::[])) when
                   FStar_Ident.lid_equals lid FStar_Parser_Const.imp_lid ->
                   let uu____15970 =
                     FStar_Syntax_Util.destruct_typ_as_formula p  in
                   (match uu____15970 with
                    | FStar_Pervasives_Native.None  ->
                        let uu____15975 =
                          let uu____15976 = FStar_Syntax_Subst.compress p  in
                          uu____15976.FStar_Syntax_Syntax.n  in
                        (match uu____15975 with
                         | FStar_Syntax_Syntax.Tm_bvar bv ->
                             let uu____15982 =
                               FStar_Syntax_Subst.subst
                                 [FStar_Syntax_Syntax.NT
                                    (bv, FStar_Syntax_Util.t_true)] q
                                in
                             FStar_Pervasives_Native.Some uu____15982
                         | uu____15983 -> FStar_Pervasives_Native.None)
                    | FStar_Pervasives_Native.Some
                        (FStar_Syntax_Util.BaseConn
                        (lid1,(p1,uu____15986)::[])) when
                        FStar_Ident.lid_equals lid1
                          FStar_Parser_Const.not_lid
                        ->
                        let uu____16011 =
                          let uu____16012 = FStar_Syntax_Subst.compress p1
                             in
                          uu____16012.FStar_Syntax_Syntax.n  in
                        (match uu____16011 with
                         | FStar_Syntax_Syntax.Tm_bvar bv ->
                             let uu____16018 =
                               FStar_Syntax_Subst.subst
                                 [FStar_Syntax_Syntax.NT
                                    (bv, FStar_Syntax_Util.t_false)] q
                                in
                             FStar_Pervasives_Native.Some uu____16018
                         | uu____16019 -> FStar_Pervasives_Native.None)
                    | FStar_Pervasives_Native.Some (FStar_Syntax_Util.QAll
                        (bs,pats,phi1)) ->
                        let uu____16023 =
                          FStar_Syntax_Util.destruct_typ_as_formula phi1  in
                        (match uu____16023 with
                         | FStar_Pervasives_Native.None  ->
                             let uu____16028 =
                               is_applied_maybe_squashed bs phi1  in
                             (match uu____16028 with
                              | FStar_Pervasives_Native.Some bv ->
                                  let ftrue =
                                    FStar_Syntax_Util.abs bs
                                      FStar_Syntax_Util.t_true
                                      (FStar_Pervasives_Native.Some
                                         (FStar_Syntax_Util.residual_tot
                                            FStar_Syntax_Util.ktype0))
                                     in
                                  let uu____16035 =
                                    FStar_Syntax_Subst.subst
                                      [FStar_Syntax_Syntax.NT (bv, ftrue)] q
                                     in
                                  FStar_Pervasives_Native.Some uu____16035
                              | FStar_Pervasives_Native.None  ->
                                  FStar_Pervasives_Native.None)
                         | FStar_Pervasives_Native.Some
                             (FStar_Syntax_Util.BaseConn
                             (lid1,(p1,uu____16038)::[])) when
                             FStar_Ident.lid_equals lid1
                               FStar_Parser_Const.not_lid
                             ->
                             let uu____16063 =
                               is_applied_maybe_squashed bs p1  in
                             (match uu____16063 with
                              | FStar_Pervasives_Native.Some bv ->
                                  let ffalse =
                                    FStar_Syntax_Util.abs bs
                                      FStar_Syntax_Util.t_false
                                      (FStar_Pervasives_Native.Some
                                         (FStar_Syntax_Util.residual_tot
                                            FStar_Syntax_Util.ktype0))
                                     in
                                  let uu____16070 =
                                    FStar_Syntax_Subst.subst
                                      [FStar_Syntax_Syntax.NT (bv, ffalse)] q
                                     in
                                  FStar_Pervasives_Native.Some uu____16070
                              | uu____16071 -> FStar_Pervasives_Native.None)
                         | uu____16074 -> FStar_Pervasives_Native.None)
                    | uu____16077 -> FStar_Pervasives_Native.None)
               | uu____16080 -> FStar_Pervasives_Native.None  in
             let is_const_match phi =
               let uu____16091 =
                 let uu____16092 = FStar_Syntax_Subst.compress phi  in
                 uu____16092.FStar_Syntax_Syntax.n  in
               match uu____16091 with
               | FStar_Syntax_Syntax.Tm_match (uu____16097,br::brs) ->
                   let uu____16164 = br  in
                   (match uu____16164 with
                    | (uu____16181,uu____16182,e) ->
                        let r =
                          let uu____16203 = simp_t e  in
                          match uu____16203 with
                          | FStar_Pervasives_Native.None  ->
                              FStar_Pervasives_Native.None
                          | FStar_Pervasives_Native.Some b ->
                              let uu____16209 =
                                FStar_List.for_all
                                  (fun uu____16227  ->
                                     match uu____16227 with
                                     | (uu____16240,uu____16241,e') ->
                                         let uu____16255 = simp_t e'  in
                                         uu____16255 =
                                           (FStar_Pervasives_Native.Some b))
                                  brs
                                 in
                              if uu____16209
                              then FStar_Pervasives_Native.Some b
                              else FStar_Pervasives_Native.None
                           in
                        r)
               | uu____16263 -> FStar_Pervasives_Native.None  in
             let maybe_auto_squash t =
               let uu____16268 = FStar_Syntax_Util.is_sub_singleton t  in
               if uu____16268
               then t
               else
                 FStar_Syntax_Util.mk_auto_squash FStar_Syntax_Syntax.U_zero
                   t
                in
             let squashed_head_un_auto_squash_args t =
               let maybe_un_auto_squash_arg uu____16289 =
                 match uu____16289 with
                 | (t1,q) ->
                     let uu____16302 = FStar_Syntax_Util.is_auto_squash t1
                        in
                     (match uu____16302 with
                      | FStar_Pervasives_Native.Some
                          (FStar_Syntax_Syntax.U_zero ,t2) -> (t2, q)
                      | uu____16330 -> (t1, q))
                  in
               let uu____16339 = FStar_Syntax_Util.head_and_args t  in
               match uu____16339 with
               | (head1,args) ->
                   let args1 = FStar_List.map maybe_un_auto_squash_arg args
                      in
                   FStar_Syntax_Syntax.mk_Tm_app head1 args1
                     FStar_Pervasives_Native.None t.FStar_Syntax_Syntax.pos
                in
             let rec clearly_inhabited ty =
               let uu____16401 =
                 let uu____16402 = FStar_Syntax_Util.unmeta ty  in
                 uu____16402.FStar_Syntax_Syntax.n  in
               match uu____16401 with
               | FStar_Syntax_Syntax.Tm_uinst (t,uu____16406) ->
                   clearly_inhabited t
               | FStar_Syntax_Syntax.Tm_arrow (uu____16411,c) ->
                   clearly_inhabited (FStar_Syntax_Util.comp_result c)
               | FStar_Syntax_Syntax.Tm_fvar fv ->
                   let l = FStar_Syntax_Syntax.lid_of_fv fv  in
                   (((FStar_Ident.lid_equals l FStar_Parser_Const.int_lid) ||
                       (FStar_Ident.lid_equals l FStar_Parser_Const.bool_lid))
                      ||
                      (FStar_Ident.lid_equals l FStar_Parser_Const.string_lid))
                     || (FStar_Ident.lid_equals l FStar_Parser_Const.exn_lid)
               | uu____16431 -> false  in
             let simplify1 arg =
               let uu____16454 = simp_t (FStar_Pervasives_Native.fst arg)  in
               (uu____16454, arg)  in
             let uu____16463 = is_quantified_const tm1  in
             match uu____16463 with
             | FStar_Pervasives_Native.Some tm2 ->
                 let uu____16467 = norm cfg env [] tm2  in
                 maybe_simplify_aux cfg env stack uu____16467
             | FStar_Pervasives_Native.None  ->
                 let uu____16468 =
                   let uu____16469 = FStar_Syntax_Subst.compress tm1  in
                   uu____16469.FStar_Syntax_Syntax.n  in
                 (match uu____16468 with
                  | FStar_Syntax_Syntax.Tm_app
                      ({
                         FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_uinst
                           ({
                              FStar_Syntax_Syntax.n =
                                FStar_Syntax_Syntax.Tm_fvar fv;
                              FStar_Syntax_Syntax.pos = uu____16473;
                              FStar_Syntax_Syntax.vars = uu____16474;_},uu____16475);
                         FStar_Syntax_Syntax.pos = uu____16476;
                         FStar_Syntax_Syntax.vars = uu____16477;_},args)
                      ->
                      let uu____16503 =
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.and_lid
                         in
                      if uu____16503
                      then
                        let uu____16504 =
                          FStar_All.pipe_right args
                            (FStar_List.map simplify1)
                           in
                        (match uu____16504 with
                         | (FStar_Pervasives_Native.Some (true ),uu____16551)::
                             (uu____16552,(arg,uu____16554))::[] ->
                             maybe_auto_squash arg
                         | (uu____16603,(arg,uu____16605))::(FStar_Pervasives_Native.Some
                                                             (true
                                                             ),uu____16606)::[]
                             -> maybe_auto_squash arg
                         | (FStar_Pervasives_Native.Some (false
                            ),uu____16655)::uu____16656::[] ->
                             w FStar_Syntax_Util.t_false
                         | uu____16707::(FStar_Pervasives_Native.Some (false
                                         ),uu____16708)::[]
                             -> w FStar_Syntax_Util.t_false
                         | uu____16759 ->
                             squashed_head_un_auto_squash_args tm1)
                      else
                        (let uu____16773 =
                           FStar_Syntax_Syntax.fv_eq_lid fv
                             FStar_Parser_Const.or_lid
                            in
                         if uu____16773
                         then
                           let uu____16774 =
                             FStar_All.pipe_right args
                               (FStar_List.map simplify1)
                              in
                           match uu____16774 with
                           | (FStar_Pervasives_Native.Some (true
                              ),uu____16821)::uu____16822::[] ->
                               w FStar_Syntax_Util.t_true
                           | uu____16873::(FStar_Pervasives_Native.Some (true
                                           ),uu____16874)::[]
                               -> w FStar_Syntax_Util.t_true
                           | (FStar_Pervasives_Native.Some (false
                              ),uu____16925)::(uu____16926,(arg,uu____16928))::[]
                               -> maybe_auto_squash arg
                           | (uu____16977,(arg,uu____16979))::(FStar_Pervasives_Native.Some
                                                               (false
                                                               ),uu____16980)::[]
                               -> maybe_auto_squash arg
                           | uu____17029 ->
                               squashed_head_un_auto_squash_args tm1
                         else
                           (let uu____17043 =
                              FStar_Syntax_Syntax.fv_eq_lid fv
                                FStar_Parser_Const.imp_lid
                               in
                            if uu____17043
                            then
                              let uu____17044 =
                                FStar_All.pipe_right args
                                  (FStar_List.map simplify1)
                                 in
                              match uu____17044 with
                              | uu____17091::(FStar_Pervasives_Native.Some
                                              (true ),uu____17092)::[]
                                  -> w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (false
                                 ),uu____17143)::uu____17144::[] ->
                                  w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (true
                                 ),uu____17195)::(uu____17196,(arg,uu____17198))::[]
                                  -> maybe_auto_squash arg
                              | (uu____17247,(p,uu____17249))::(uu____17250,
                                                                (q,uu____17252))::[]
                                  ->
                                  let uu____17299 =
                                    FStar_Syntax_Util.term_eq p q  in
                                  (if uu____17299
                                   then w FStar_Syntax_Util.t_true
                                   else squashed_head_un_auto_squash_args tm1)
                              | uu____17301 ->
                                  squashed_head_un_auto_squash_args tm1
                            else
                              (let uu____17315 =
                                 FStar_Syntax_Syntax.fv_eq_lid fv
                                   FStar_Parser_Const.iff_lid
                                  in
                               if uu____17315
                               then
                                 let uu____17316 =
                                   FStar_All.pipe_right args
                                     (FStar_List.map simplify1)
                                    in
                                 match uu____17316 with
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____17363)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____17364)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____17415)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____17416)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____17467)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____17468)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____17519)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____17520)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (uu____17571,(arg,uu____17573))::(FStar_Pervasives_Native.Some
                                                                    (true
                                                                    ),uu____17574)::[]
                                     -> maybe_auto_squash arg
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____17623)::(uu____17624,(arg,uu____17626))::[]
                                     -> maybe_auto_squash arg
                                 | (uu____17675,(arg,uu____17677))::(FStar_Pervasives_Native.Some
                                                                    (false
                                                                    ),uu____17678)::[]
                                     ->
                                     let uu____17727 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____17727
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____17728)::(uu____17729,(arg,uu____17731))::[]
                                     ->
                                     let uu____17780 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____17780
                                 | (uu____17781,(p,uu____17783))::(uu____17784,
                                                                   (q,uu____17786))::[]
                                     ->
                                     let uu____17833 =
                                       FStar_Syntax_Util.term_eq p q  in
                                     (if uu____17833
                                      then w FStar_Syntax_Util.t_true
                                      else
                                        squashed_head_un_auto_squash_args tm1)
                                 | uu____17835 ->
                                     squashed_head_un_auto_squash_args tm1
                               else
                                 (let uu____17849 =
                                    FStar_Syntax_Syntax.fv_eq_lid fv
                                      FStar_Parser_Const.not_lid
                                     in
                                  if uu____17849
                                  then
                                    let uu____17850 =
                                      FStar_All.pipe_right args
                                        (FStar_List.map simplify1)
                                       in
                                    match uu____17850 with
                                    | (FStar_Pervasives_Native.Some (true
                                       ),uu____17897)::[] ->
                                        w FStar_Syntax_Util.t_false
                                    | (FStar_Pervasives_Native.Some (false
                                       ),uu____17928)::[] ->
                                        w FStar_Syntax_Util.t_true
                                    | uu____17959 ->
                                        squashed_head_un_auto_squash_args tm1
                                  else
                                    (let uu____17973 =
                                       FStar_Syntax_Syntax.fv_eq_lid fv
                                         FStar_Parser_Const.forall_lid
                                        in
                                     if uu____17973
                                     then
                                       match args with
                                       | (t,uu____17975)::[] ->
                                           let uu____17992 =
                                             let uu____17993 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____17993.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____17992 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____17996::[],body,uu____17998)
                                                ->
                                                let uu____18025 = simp_t body
                                                   in
                                                (match uu____18025 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | uu____18028 -> tm1)
                                            | uu____18031 -> tm1)
                                       | (ty,FStar_Pervasives_Native.Some
                                          (FStar_Syntax_Syntax.Implicit
                                          uu____18033))::(t,uu____18035)::[]
                                           ->
                                           let uu____18074 =
                                             let uu____18075 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____18075.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____18074 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____18078::[],body,uu____18080)
                                                ->
                                                let uu____18107 = simp_t body
                                                   in
                                                (match uu____18107 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | FStar_Pervasives_Native.Some
                                                     (false ) when
                                                     clearly_inhabited ty ->
                                                     w
                                                       FStar_Syntax_Util.t_false
                                                 | uu____18110 -> tm1)
                                            | uu____18113 -> tm1)
                                       | uu____18114 -> tm1
                                     else
                                       (let uu____18124 =
                                          FStar_Syntax_Syntax.fv_eq_lid fv
                                            FStar_Parser_Const.exists_lid
                                           in
                                        if uu____18124
                                        then
                                          match args with
                                          | (t,uu____18126)::[] ->
                                              let uu____18143 =
                                                let uu____18144 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____18144.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____18143 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____18147::[],body,uu____18149)
                                                   ->
                                                   let uu____18176 =
                                                     simp_t body  in
                                                   (match uu____18176 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | uu____18179 -> tm1)
                                               | uu____18182 -> tm1)
                                          | (ty,FStar_Pervasives_Native.Some
                                             (FStar_Syntax_Syntax.Implicit
                                             uu____18184))::(t,uu____18186)::[]
                                              ->
                                              let uu____18225 =
                                                let uu____18226 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____18226.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____18225 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____18229::[],body,uu____18231)
                                                   ->
                                                   let uu____18258 =
                                                     simp_t body  in
                                                   (match uu____18258 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | FStar_Pervasives_Native.Some
                                                        (true ) when
                                                        clearly_inhabited ty
                                                        ->
                                                        w
                                                          FStar_Syntax_Util.t_true
                                                    | uu____18261 -> tm1)
                                               | uu____18264 -> tm1)
                                          | uu____18265 -> tm1
                                        else
                                          (let uu____18275 =
                                             FStar_Syntax_Syntax.fv_eq_lid fv
                                               FStar_Parser_Const.b2t_lid
                                              in
                                           if uu____18275
                                           then
                                             match args with
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (true ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____18276;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____18277;_},uu____18278)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_true
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (false ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____18295;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____18296;_},uu____18297)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_false
                                             | uu____18314 -> tm1
                                           else
                                             (let uu____18324 =
                                                FStar_Syntax_Util.is_auto_squash
                                                  tm1
                                                 in
                                              match uu____18324 with
                                              | FStar_Pervasives_Native.Some
                                                  (FStar_Syntax_Syntax.U_zero
                                                   ,t)
                                                  when
                                                  FStar_Syntax_Util.is_sub_singleton
                                                    t
                                                  -> t
                                              | uu____18344 ->
                                                  reduce_equality cfg env
                                                    stack tm1))))))))
                  | FStar_Syntax_Syntax.Tm_app
                      ({
                         FStar_Syntax_Syntax.n = FStar_Syntax_Syntax.Tm_fvar
                           fv;
                         FStar_Syntax_Syntax.pos = uu____18354;
                         FStar_Syntax_Syntax.vars = uu____18355;_},args)
                      ->
                      let uu____18377 =
                        FStar_Syntax_Syntax.fv_eq_lid fv
                          FStar_Parser_Const.and_lid
                         in
                      if uu____18377
                      then
                        let uu____18378 =
                          FStar_All.pipe_right args
                            (FStar_List.map simplify1)
                           in
                        (match uu____18378 with
                         | (FStar_Pervasives_Native.Some (true ),uu____18425)::
                             (uu____18426,(arg,uu____18428))::[] ->
                             maybe_auto_squash arg
                         | (uu____18477,(arg,uu____18479))::(FStar_Pervasives_Native.Some
                                                             (true
                                                             ),uu____18480)::[]
                             -> maybe_auto_squash arg
                         | (FStar_Pervasives_Native.Some (false
                            ),uu____18529)::uu____18530::[] ->
                             w FStar_Syntax_Util.t_false
                         | uu____18581::(FStar_Pervasives_Native.Some (false
                                         ),uu____18582)::[]
                             -> w FStar_Syntax_Util.t_false
                         | uu____18633 ->
                             squashed_head_un_auto_squash_args tm1)
                      else
                        (let uu____18647 =
                           FStar_Syntax_Syntax.fv_eq_lid fv
                             FStar_Parser_Const.or_lid
                            in
                         if uu____18647
                         then
                           let uu____18648 =
                             FStar_All.pipe_right args
                               (FStar_List.map simplify1)
                              in
                           match uu____18648 with
                           | (FStar_Pervasives_Native.Some (true
                              ),uu____18695)::uu____18696::[] ->
                               w FStar_Syntax_Util.t_true
                           | uu____18747::(FStar_Pervasives_Native.Some (true
                                           ),uu____18748)::[]
                               -> w FStar_Syntax_Util.t_true
                           | (FStar_Pervasives_Native.Some (false
                              ),uu____18799)::(uu____18800,(arg,uu____18802))::[]
                               -> maybe_auto_squash arg
                           | (uu____18851,(arg,uu____18853))::(FStar_Pervasives_Native.Some
                                                               (false
                                                               ),uu____18854)::[]
                               -> maybe_auto_squash arg
                           | uu____18903 ->
                               squashed_head_un_auto_squash_args tm1
                         else
                           (let uu____18917 =
                              FStar_Syntax_Syntax.fv_eq_lid fv
                                FStar_Parser_Const.imp_lid
                               in
                            if uu____18917
                            then
                              let uu____18918 =
                                FStar_All.pipe_right args
                                  (FStar_List.map simplify1)
                                 in
                              match uu____18918 with
                              | uu____18965::(FStar_Pervasives_Native.Some
                                              (true ),uu____18966)::[]
                                  -> w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (false
                                 ),uu____19017)::uu____19018::[] ->
                                  w FStar_Syntax_Util.t_true
                              | (FStar_Pervasives_Native.Some (true
                                 ),uu____19069)::(uu____19070,(arg,uu____19072))::[]
                                  -> maybe_auto_squash arg
                              | (uu____19121,(p,uu____19123))::(uu____19124,
                                                                (q,uu____19126))::[]
                                  ->
                                  let uu____19173 =
                                    FStar_Syntax_Util.term_eq p q  in
                                  (if uu____19173
                                   then w FStar_Syntax_Util.t_true
                                   else squashed_head_un_auto_squash_args tm1)
                              | uu____19175 ->
                                  squashed_head_un_auto_squash_args tm1
                            else
                              (let uu____19189 =
                                 FStar_Syntax_Syntax.fv_eq_lid fv
                                   FStar_Parser_Const.iff_lid
                                  in
                               if uu____19189
                               then
                                 let uu____19190 =
                                   FStar_All.pipe_right args
                                     (FStar_List.map simplify1)
                                    in
                                 match uu____19190 with
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____19237)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____19238)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____19289)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____19290)::[]
                                     -> w FStar_Syntax_Util.t_true
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____19341)::(FStar_Pervasives_Native.Some
                                                     (false ),uu____19342)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____19393)::(FStar_Pervasives_Native.Some
                                                     (true ),uu____19394)::[]
                                     -> w FStar_Syntax_Util.t_false
                                 | (uu____19445,(arg,uu____19447))::(FStar_Pervasives_Native.Some
                                                                    (true
                                                                    ),uu____19448)::[]
                                     -> maybe_auto_squash arg
                                 | (FStar_Pervasives_Native.Some (true
                                    ),uu____19497)::(uu____19498,(arg,uu____19500))::[]
                                     -> maybe_auto_squash arg
                                 | (uu____19549,(arg,uu____19551))::(FStar_Pervasives_Native.Some
                                                                    (false
                                                                    ),uu____19552)::[]
                                     ->
                                     let uu____19601 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____19601
                                 | (FStar_Pervasives_Native.Some (false
                                    ),uu____19602)::(uu____19603,(arg,uu____19605))::[]
                                     ->
                                     let uu____19654 =
                                       FStar_Syntax_Util.mk_neg arg  in
                                     maybe_auto_squash uu____19654
                                 | (uu____19655,(p,uu____19657))::(uu____19658,
                                                                   (q,uu____19660))::[]
                                     ->
                                     let uu____19707 =
                                       FStar_Syntax_Util.term_eq p q  in
                                     (if uu____19707
                                      then w FStar_Syntax_Util.t_true
                                      else
                                        squashed_head_un_auto_squash_args tm1)
                                 | uu____19709 ->
                                     squashed_head_un_auto_squash_args tm1
                               else
                                 (let uu____19723 =
                                    FStar_Syntax_Syntax.fv_eq_lid fv
                                      FStar_Parser_Const.not_lid
                                     in
                                  if uu____19723
                                  then
                                    let uu____19724 =
                                      FStar_All.pipe_right args
                                        (FStar_List.map simplify1)
                                       in
                                    match uu____19724 with
                                    | (FStar_Pervasives_Native.Some (true
                                       ),uu____19771)::[] ->
                                        w FStar_Syntax_Util.t_false
                                    | (FStar_Pervasives_Native.Some (false
                                       ),uu____19802)::[] ->
                                        w FStar_Syntax_Util.t_true
                                    | uu____19833 ->
                                        squashed_head_un_auto_squash_args tm1
                                  else
                                    (let uu____19847 =
                                       FStar_Syntax_Syntax.fv_eq_lid fv
                                         FStar_Parser_Const.forall_lid
                                        in
                                     if uu____19847
                                     then
                                       match args with
                                       | (t,uu____19849)::[] ->
                                           let uu____19866 =
                                             let uu____19867 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____19867.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____19866 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____19870::[],body,uu____19872)
                                                ->
                                                let uu____19899 = simp_t body
                                                   in
                                                (match uu____19899 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | uu____19902 -> tm1)
                                            | uu____19905 -> tm1)
                                       | (ty,FStar_Pervasives_Native.Some
                                          (FStar_Syntax_Syntax.Implicit
                                          uu____19907))::(t,uu____19909)::[]
                                           ->
                                           let uu____19948 =
                                             let uu____19949 =
                                               FStar_Syntax_Subst.compress t
                                                in
                                             uu____19949.FStar_Syntax_Syntax.n
                                              in
                                           (match uu____19948 with
                                            | FStar_Syntax_Syntax.Tm_abs
                                                (uu____19952::[],body,uu____19954)
                                                ->
                                                let uu____19981 = simp_t body
                                                   in
                                                (match uu____19981 with
                                                 | FStar_Pervasives_Native.Some
                                                     (true ) ->
                                                     w
                                                       FStar_Syntax_Util.t_true
                                                 | FStar_Pervasives_Native.Some
                                                     (false ) when
                                                     clearly_inhabited ty ->
                                                     w
                                                       FStar_Syntax_Util.t_false
                                                 | uu____19984 -> tm1)
                                            | uu____19987 -> tm1)
                                       | uu____19988 -> tm1
                                     else
                                       (let uu____19998 =
                                          FStar_Syntax_Syntax.fv_eq_lid fv
                                            FStar_Parser_Const.exists_lid
                                           in
                                        if uu____19998
                                        then
                                          match args with
                                          | (t,uu____20000)::[] ->
                                              let uu____20017 =
                                                let uu____20018 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____20018.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____20017 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____20021::[],body,uu____20023)
                                                   ->
                                                   let uu____20050 =
                                                     simp_t body  in
                                                   (match uu____20050 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | uu____20053 -> tm1)
                                               | uu____20056 -> tm1)
                                          | (ty,FStar_Pervasives_Native.Some
                                             (FStar_Syntax_Syntax.Implicit
                                             uu____20058))::(t,uu____20060)::[]
                                              ->
                                              let uu____20099 =
                                                let uu____20100 =
                                                  FStar_Syntax_Subst.compress
                                                    t
                                                   in
                                                uu____20100.FStar_Syntax_Syntax.n
                                                 in
                                              (match uu____20099 with
                                               | FStar_Syntax_Syntax.Tm_abs
                                                   (uu____20103::[],body,uu____20105)
                                                   ->
                                                   let uu____20132 =
                                                     simp_t body  in
                                                   (match uu____20132 with
                                                    | FStar_Pervasives_Native.Some
                                                        (false ) ->
                                                        w
                                                          FStar_Syntax_Util.t_false
                                                    | FStar_Pervasives_Native.Some
                                                        (true ) when
                                                        clearly_inhabited ty
                                                        ->
                                                        w
                                                          FStar_Syntax_Util.t_true
                                                    | uu____20135 -> tm1)
                                               | uu____20138 -> tm1)
                                          | uu____20139 -> tm1
                                        else
                                          (let uu____20149 =
                                             FStar_Syntax_Syntax.fv_eq_lid fv
                                               FStar_Parser_Const.b2t_lid
                                              in
                                           if uu____20149
                                           then
                                             match args with
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (true ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____20150;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____20151;_},uu____20152)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_true
                                             | ({
                                                  FStar_Syntax_Syntax.n =
                                                    FStar_Syntax_Syntax.Tm_constant
                                                    (FStar_Const.Const_bool
                                                    (false ));
                                                  FStar_Syntax_Syntax.pos =
                                                    uu____20169;
                                                  FStar_Syntax_Syntax.vars =
                                                    uu____20170;_},uu____20171)::[]
                                                 ->
                                                 w FStar_Syntax_Util.t_false
                                             | uu____20188 -> tm1
                                           else
                                             (let uu____20198 =
                                                FStar_Syntax_Util.is_auto_squash
                                                  tm1
                                                 in
                                              match uu____20198 with
                                              | FStar_Pervasives_Native.Some
                                                  (FStar_Syntax_Syntax.U_zero
                                                   ,t)
                                                  when
                                                  FStar_Syntax_Util.is_sub_singleton
                                                    t
                                                  -> t
                                              | uu____20218 ->
                                                  reduce_equality cfg env
                                                    stack tm1))))))))
                  | FStar_Syntax_Syntax.Tm_refine (bv,t) ->
                      let uu____20233 = simp_t t  in
                      (match uu____20233 with
                       | FStar_Pervasives_Native.Some (true ) ->
                           bv.FStar_Syntax_Syntax.sort
                       | FStar_Pervasives_Native.Some (false ) -> tm1
                       | FStar_Pervasives_Native.None  -> tm1)
                  | FStar_Syntax_Syntax.Tm_match uu____20236 ->
                      let uu____20259 = is_const_match tm1  in
                      (match uu____20259 with
                       | FStar_Pervasives_Native.Some (true ) ->
                           w FStar_Syntax_Util.t_true
                       | FStar_Pervasives_Native.Some (false ) ->
                           w FStar_Syntax_Util.t_false
                       | FStar_Pervasives_Native.None  -> tm1)
                  | uu____20262 -> tm1))

and (rebuild :
  cfg -> env -> stack -> FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun cfg  ->
    fun env  ->
      fun stack  ->
        fun t  ->
          log cfg
            (fun uu____20273  ->
               let uu____20274 = FStar_Syntax_Print.tag_of_term t  in
               let uu____20275 = FStar_Syntax_Print.term_to_string t  in
               let uu____20276 =
                 FStar_Util.string_of_int (FStar_List.length env)  in
               let uu____20283 =
                 let uu____20284 =
                   let uu____20287 = firstn (Prims.parse_int "4") stack  in
                   FStar_All.pipe_left FStar_Pervasives_Native.fst
                     uu____20287
                    in
                 stack_to_string uu____20284  in
               FStar_Util.print4
                 ">>> %s\nRebuild %s with %s env elements and top of the stack %s \n"
                 uu____20274 uu____20275 uu____20276 uu____20283);
          (let t1 = maybe_simplify cfg env stack t  in
           match stack with
           | [] -> t1
           | (Debug (tm,time_then))::stack1 ->
               (if (cfg.debug).print_normalized
                then
                  (let time_now = FStar_Util.now ()  in
                   let uu____20318 =
                     let uu____20319 =
                       let uu____20320 =
                         FStar_Util.time_diff time_then time_now  in
                       FStar_Pervasives_Native.snd uu____20320  in
                     FStar_Util.string_of_int uu____20319  in
                   let uu____20325 = FStar_Syntax_Print.term_to_string tm  in
                   let uu____20326 = FStar_Syntax_Print.term_to_string t1  in
                   FStar_Util.print3 "Normalized (%s ms) %s\n\tto %s\n"
                     uu____20318 uu____20325 uu____20326)
                else ();
                rebuild cfg env stack1 t1)
           | (Cfg cfg1)::stack1 -> rebuild cfg1 env stack1 t1
           | (Meta (uu____20332,m,r))::stack1 ->
               let t2 = mk (FStar_Syntax_Syntax.Tm_meta (t1, m)) r  in
               rebuild cfg env stack1 t2
           | (MemoLazy r)::stack1 ->
               (set_memo cfg r (env, t1);
                log cfg
                  (fun uu____20381  ->
                     let uu____20382 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1 "\tSet memo %s\n" uu____20382);
                rebuild cfg env stack1 t1)
           | (Let (env',bs,lb,r))::stack1 ->
               let body = FStar_Syntax_Subst.close bs t1  in
               let t2 =
                 FStar_Syntax_Syntax.mk
                   (FStar_Syntax_Syntax.Tm_let ((false, [lb]), body))
                   FStar_Pervasives_Native.None r
                  in
               rebuild cfg env' stack1 t2
           | (Abs (env',bs,env'',lopt,r))::stack1 ->
               let bs1 = norm_binders cfg env' bs  in
               let lopt1 = norm_lcomp_opt cfg env'' lopt  in
               let uu____20418 =
                 let uu___177_20419 = FStar_Syntax_Util.abs bs1 t1 lopt1  in
                 {
                   FStar_Syntax_Syntax.n =
                     (uu___177_20419.FStar_Syntax_Syntax.n);
                   FStar_Syntax_Syntax.pos = r;
                   FStar_Syntax_Syntax.vars =
                     (uu___177_20419.FStar_Syntax_Syntax.vars)
                 }  in
               rebuild cfg env stack1 uu____20418
           | (Arg (Univ uu____20420,uu____20421,uu____20422))::uu____20423 ->
               failwith "Impossible"
           | (Arg (Dummy ,uu____20426,uu____20427))::uu____20428 ->
               failwith "Impossible"
           | (UnivArgs (us,r))::stack1 ->
               let t2 = FStar_Syntax_Syntax.mk_Tm_uinst t1 us  in
               rebuild cfg env stack1 t2
           | (Arg (Clos (env_arg,tm,uu____20443,uu____20444),aq,r))::stack1
               when
               let uu____20494 = head_of t1  in
               FStar_Syntax_Util.is_fstar_tactics_by_tactic uu____20494 ->
               let t2 =
                 let uu____20498 =
                   let uu____20499 =
                     let uu____20500 = closure_as_term cfg env_arg tm  in
                     (uu____20500, aq)  in
                   FStar_Syntax_Syntax.extend_app t1 uu____20499  in
                 uu____20498 FStar_Pervasives_Native.None r  in
               rebuild cfg env stack1 t2
           | (Arg (Clos (env_arg,tm,m,uu____20506),aq,r))::stack1 ->
               (log cfg
                  (fun uu____20559  ->
                     let uu____20560 = FStar_Syntax_Print.term_to_string tm
                        in
                     FStar_Util.print1 "Rebuilding with arg %s\n" uu____20560);
                if Prims.op_Negation (cfg.steps).iota
                then
                  (if (cfg.steps).hnf
                   then
                     let arg = closure_as_term cfg env_arg tm  in
                     let t2 =
                       FStar_Syntax_Syntax.extend_app t1 (arg, aq)
                         FStar_Pervasives_Native.None r
                        in
                     rebuild cfg env_arg stack1 t2
                   else
                     (let stack2 = (App (env, t1, aq, r)) :: stack1  in
                      norm cfg env_arg stack2 tm))
                else
                  (let uu____20570 = FStar_ST.op_Bang m  in
                   match uu____20570 with
                   | FStar_Pervasives_Native.None  ->
                       if (cfg.steps).hnf
                       then
                         let arg = closure_as_term cfg env_arg tm  in
                         let t2 =
                           FStar_Syntax_Syntax.extend_app t1 (arg, aq)
                             FStar_Pervasives_Native.None r
                            in
                         rebuild cfg env_arg stack1 t2
                       else
                         (let stack2 = (MemoLazy m) :: (App (env, t1, aq, r))
                            :: stack1  in
                          norm cfg env_arg stack2 tm)
                   | FStar_Pervasives_Native.Some (uu____20707,a) ->
                       let t2 =
                         FStar_Syntax_Syntax.extend_app t1 (a, aq)
                           FStar_Pervasives_Native.None r
                          in
                       rebuild cfg env_arg stack1 t2))
           | (App (env1,head1,aq,r))::stack' when should_reify cfg stack ->
               let t0 = t1  in
               let fallback msg uu____20754 =
                 log cfg
                   (fun uu____20758  ->
                      let uu____20759 = FStar_Syntax_Print.term_to_string t1
                         in
                      FStar_Util.print2 "Not reifying%s: %s\n" msg
                        uu____20759);
                 (let t2 =
                    FStar_Syntax_Syntax.extend_app head1 (t1, aq)
                      FStar_Pervasives_Native.None r
                     in
                  rebuild cfg env1 stack' t2)
                  in
               let uu____20763 =
                 let uu____20764 = FStar_Syntax_Subst.compress t1  in
                 uu____20764.FStar_Syntax_Syntax.n  in
               (match uu____20763 with
                | FStar_Syntax_Syntax.Tm_meta
                    (t2,FStar_Syntax_Syntax.Meta_monadic (m,ty)) ->
                    do_reify_monadic (fallback " (1)") cfg env1 stack t2 m ty
                | FStar_Syntax_Syntax.Tm_meta
                    (t2,FStar_Syntax_Syntax.Meta_monadic_lift (msrc,mtgt,ty))
                    ->
                    let lifted =
                      let uu____20791 = closure_as_term cfg env1 ty  in
                      reify_lift cfg t2 msrc mtgt uu____20791  in
                    (log cfg
                       (fun uu____20795  ->
                          let uu____20796 =
                            FStar_Syntax_Print.term_to_string lifted  in
                          FStar_Util.print1 "Reified lift to (1): %s\n"
                            uu____20796);
                     (let uu____20797 = FStar_List.tl stack  in
                      norm cfg env1 uu____20797 lifted))
                | FStar_Syntax_Syntax.Tm_app
                    ({
                       FStar_Syntax_Syntax.n =
                         FStar_Syntax_Syntax.Tm_constant
                         (FStar_Const.Const_reflect uu____20798);
                       FStar_Syntax_Syntax.pos = uu____20799;
                       FStar_Syntax_Syntax.vars = uu____20800;_},(e,uu____20802)::[])
                    -> norm cfg env1 stack' e
                | FStar_Syntax_Syntax.Tm_app uu____20831 when
                    (cfg.steps).primops ->
                    let uu____20846 = FStar_Syntax_Util.head_and_args t1  in
                    (match uu____20846 with
                     | (hd1,args) ->
                         let uu____20883 =
                           let uu____20884 = FStar_Syntax_Util.un_uinst hd1
                              in
                           uu____20884.FStar_Syntax_Syntax.n  in
                         (match uu____20883 with
                          | FStar_Syntax_Syntax.Tm_fvar fv ->
                              let uu____20888 = find_prim_step cfg fv  in
                              (match uu____20888 with
                               | FStar_Pervasives_Native.Some
                                   { name = uu____20891; arity = uu____20892;
                                     auto_reflect =
                                       FStar_Pervasives_Native.Some n1;
                                     strong_reduction_ok = uu____20894;
                                     requires_binder_substitution =
                                       uu____20895;
                                     interpretation = uu____20896;_}
                                   when (FStar_List.length args) = n1 ->
                                   norm cfg env1 stack' t1
                               | uu____20909 -> fallback " (3)" ())
                          | uu____20912 -> fallback " (4)" ()))
                | uu____20913 -> fallback " (2)" ())
           | (App (env1,head1,aq,r))::stack1 ->
               let t2 =
                 FStar_Syntax_Syntax.extend_app head1 (t1, aq)
                   FStar_Pervasives_Native.None r
                  in
               rebuild cfg env1 stack1 t2
           | (Match (env1,branches,cfg1,r))::stack1 ->
               (log cfg1
                  (fun uu____20934  ->
                     let uu____20935 = FStar_Syntax_Print.term_to_string t1
                        in
                     FStar_Util.print1
                       "Rebuilding with match, scrutinee is %s ...\n"
                       uu____20935);
                (let scrutinee = t1  in
                 let norm_and_rebuild_match uu____20940 =
                   log cfg1
                     (fun uu____20945  ->
                        let uu____20946 =
                          FStar_Syntax_Print.term_to_string scrutinee  in
                        let uu____20947 =
                          let uu____20948 =
                            FStar_All.pipe_right branches
                              (FStar_List.map
                                 (fun uu____20965  ->
                                    match uu____20965 with
                                    | (p,uu____20975,uu____20976) ->
                                        FStar_Syntax_Print.pat_to_string p))
                             in
                          FStar_All.pipe_right uu____20948
                            (FStar_String.concat "\n\t")
                           in
                        FStar_Util.print2
                          "match is irreducible: scrutinee=%s\nbranches=%s\n"
                          uu____20946 uu____20947);
                   (let whnf = (cfg1.steps).weak || (cfg1.steps).hnf  in
                    let cfg_exclude_zeta =
                      let uu___178_20985 = cfg1  in
                      {
                        steps =
                          (let uu___179_20988 = cfg1.steps  in
                           {
                             beta = (uu___179_20988.beta);
                             iota = (uu___179_20988.iota);
                             zeta = false;
                             weak = (uu___179_20988.weak);
                             hnf = (uu___179_20988.hnf);
                             primops = (uu___179_20988.primops);
                             do_not_unfold_pure_lets =
                               (uu___179_20988.do_not_unfold_pure_lets);
                             unfold_until = (uu___179_20988.unfold_until);
                             unfold_only = (uu___179_20988.unfold_only);
                             unfold_attr = (uu___179_20988.unfold_attr);
                             unfold_tac = (uu___179_20988.unfold_tac);
                             pure_subterms_within_computations =
                               (uu___179_20988.pure_subterms_within_computations);
                             simplify = (uu___179_20988.simplify);
                             erase_universes =
                               (uu___179_20988.erase_universes);
                             allow_unbound_universes =
                               (uu___179_20988.allow_unbound_universes);
                             reify_ = (uu___179_20988.reify_);
                             compress_uvars = (uu___179_20988.compress_uvars);
                             no_full_norm = (uu___179_20988.no_full_norm);
                             check_no_uvars = (uu___179_20988.check_no_uvars);
                             unmeta = (uu___179_20988.unmeta);
                             unascribe = (uu___179_20988.unascribe);
                             in_full_norm_request =
                               (uu___179_20988.in_full_norm_request)
                           });
                        tcenv = (uu___178_20985.tcenv);
                        debug = (uu___178_20985.debug);
                        delta_level = (uu___178_20985.delta_level);
                        primitive_steps = (uu___178_20985.primitive_steps);
                        strong = true;
                        memoize_lazy = (uu___178_20985.memoize_lazy);
                        normalize_pure_lets =
                          (uu___178_20985.normalize_pure_lets)
                      }  in
                    let norm_or_whnf env2 t2 =
                      let uu____20996 =
                        whnf ||
                          ((FStar_Options.no_reduction_under_match ()) &&
                             (Prims.op_Negation
                                ((cfg1.steps).check_no_uvars ||
                                   (cfg1.steps).compress_uvars)))
                         in
                      if uu____20996
                      then closure_as_term cfg_exclude_zeta env2 t2
                      else norm cfg_exclude_zeta env2 [] t2  in
                    let rec norm_pat env2 p =
                      match p.FStar_Syntax_Syntax.v with
                      | FStar_Syntax_Syntax.Pat_constant uu____21021 ->
                          (p, env2)
                      | FStar_Syntax_Syntax.Pat_cons (fv,pats) ->
                          let uu____21042 =
                            FStar_All.pipe_right pats
                              (FStar_List.fold_left
                                 (fun uu____21102  ->
                                    fun uu____21103  ->
                                      match (uu____21102, uu____21103) with
                                      | ((pats1,env3),(p1,b)) ->
                                          let uu____21194 = norm_pat env3 p1
                                             in
                                          (match uu____21194 with
                                           | (p2,env4) ->
                                               (((p2, b) :: pats1), env4)))
                                 ([], env2))
                             in
                          (match uu____21042 with
                           | (pats1,env3) ->
                               ((let uu___180_21276 = p  in
                                 {
                                   FStar_Syntax_Syntax.v =
                                     (FStar_Syntax_Syntax.Pat_cons
                                        (fv, (FStar_List.rev pats1)));
                                   FStar_Syntax_Syntax.p =
                                     (uu___180_21276.FStar_Syntax_Syntax.p)
                                 }), env3))
                      | FStar_Syntax_Syntax.Pat_var x ->
                          let x1 =
                            let uu___181_21295 = x  in
                            let uu____21296 =
                              norm_or_whnf env2 x.FStar_Syntax_Syntax.sort
                               in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___181_21295.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___181_21295.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____21296
                            }  in
                          ((let uu___182_21310 = p  in
                            {
                              FStar_Syntax_Syntax.v =
                                (FStar_Syntax_Syntax.Pat_var x1);
                              FStar_Syntax_Syntax.p =
                                (uu___182_21310.FStar_Syntax_Syntax.p)
                            }), (dummy :: env2))
                      | FStar_Syntax_Syntax.Pat_wild x ->
                          let x1 =
                            let uu___183_21321 = x  in
                            let uu____21322 =
                              norm_or_whnf env2 x.FStar_Syntax_Syntax.sort
                               in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___183_21321.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___183_21321.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____21322
                            }  in
                          ((let uu___184_21336 = p  in
                            {
                              FStar_Syntax_Syntax.v =
                                (FStar_Syntax_Syntax.Pat_wild x1);
                              FStar_Syntax_Syntax.p =
                                (uu___184_21336.FStar_Syntax_Syntax.p)
                            }), (dummy :: env2))
                      | FStar_Syntax_Syntax.Pat_dot_term (x,t2) ->
                          let x1 =
                            let uu___185_21352 = x  in
                            let uu____21353 =
                              norm_or_whnf env2 x.FStar_Syntax_Syntax.sort
                               in
                            {
                              FStar_Syntax_Syntax.ppname =
                                (uu___185_21352.FStar_Syntax_Syntax.ppname);
                              FStar_Syntax_Syntax.index =
                                (uu___185_21352.FStar_Syntax_Syntax.index);
                              FStar_Syntax_Syntax.sort = uu____21353
                            }  in
                          let t3 = norm_or_whnf env2 t2  in
                          ((let uu___186_21360 = p  in
                            {
                              FStar_Syntax_Syntax.v =
                                (FStar_Syntax_Syntax.Pat_dot_term (x1, t3));
                              FStar_Syntax_Syntax.p =
                                (uu___186_21360.FStar_Syntax_Syntax.p)
                            }), env2)
                       in
                    let branches1 =
                      match env1 with
                      | [] when whnf -> branches
                      | uu____21370 ->
                          FStar_All.pipe_right branches
                            (FStar_List.map
                               (fun branch1  ->
                                  let uu____21384 =
                                    FStar_Syntax_Subst.open_branch branch1
                                     in
                                  match uu____21384 with
                                  | (p,wopt,e) ->
                                      let uu____21404 = norm_pat env1 p  in
                                      (match uu____21404 with
                                       | (p1,env2) ->
                                           let wopt1 =
                                             match wopt with
                                             | FStar_Pervasives_Native.None 
                                                 ->
                                                 FStar_Pervasives_Native.None
                                             | FStar_Pervasives_Native.Some w
                                                 ->
                                                 let uu____21429 =
                                                   norm_or_whnf env2 w  in
                                                 FStar_Pervasives_Native.Some
                                                   uu____21429
                                              in
                                           let e1 = norm_or_whnf env2 e  in
                                           FStar_Syntax_Util.branch
                                             (p1, wopt1, e1))))
                       in
                    let uu____21435 =
                      mk
                        (FStar_Syntax_Syntax.Tm_match (scrutinee, branches1))
                        r
                       in
                    rebuild cfg1 env1 stack1 uu____21435)
                    in
                 let rec is_cons head1 =
                   let uu____21440 =
                     let uu____21441 = FStar_Syntax_Subst.compress head1  in
                     uu____21441.FStar_Syntax_Syntax.n  in
                   match uu____21440 with
                   | FStar_Syntax_Syntax.Tm_uinst (h,uu____21445) ->
                       is_cons h
                   | FStar_Syntax_Syntax.Tm_constant uu____21450 -> true
                   | FStar_Syntax_Syntax.Tm_fvar
                       { FStar_Syntax_Syntax.fv_name = uu____21451;
                         FStar_Syntax_Syntax.fv_delta = uu____21452;
                         FStar_Syntax_Syntax.fv_qual =
                           FStar_Pervasives_Native.Some
                           (FStar_Syntax_Syntax.Data_ctor );_}
                       -> true
                   | FStar_Syntax_Syntax.Tm_fvar
                       { FStar_Syntax_Syntax.fv_name = uu____21453;
                         FStar_Syntax_Syntax.fv_delta = uu____21454;
                         FStar_Syntax_Syntax.fv_qual =
                           FStar_Pervasives_Native.Some
                           (FStar_Syntax_Syntax.Record_ctor uu____21455);_}
                       -> true
                   | uu____21462 -> false  in
                 let guard_when_clause wopt b rest =
                   match wopt with
                   | FStar_Pervasives_Native.None  -> b
                   | FStar_Pervasives_Native.Some w ->
                       let then_branch = b  in
                       let else_branch =
                         mk (FStar_Syntax_Syntax.Tm_match (scrutinee, rest))
                           r
                          in
                       FStar_Syntax_Util.if_then_else w then_branch
                         else_branch
                    in
                 let rec matches_pat scrutinee_orig p =
                   let scrutinee1 = FStar_Syntax_Util.unmeta scrutinee_orig
                      in
                   let uu____21607 =
                     FStar_Syntax_Util.head_and_args scrutinee1  in
                   match uu____21607 with
                   | (head1,args) ->
                       (match p.FStar_Syntax_Syntax.v with
                        | FStar_Syntax_Syntax.Pat_var bv ->
                            FStar_Util.Inl [(bv, scrutinee_orig)]
                        | FStar_Syntax_Syntax.Pat_wild bv ->
                            FStar_Util.Inl [(bv, scrutinee_orig)]
                        | FStar_Syntax_Syntax.Pat_dot_term uu____21694 ->
                            FStar_Util.Inl []
                        | FStar_Syntax_Syntax.Pat_constant s ->
                            (match scrutinee1.FStar_Syntax_Syntax.n with
                             | FStar_Syntax_Syntax.Tm_constant s' when
                                 FStar_Const.eq_const s s' ->
                                 FStar_Util.Inl []
                             | uu____21733 ->
                                 let uu____21734 =
                                   let uu____21735 = is_cons head1  in
                                   Prims.op_Negation uu____21735  in
                                 FStar_Util.Inr uu____21734)
                        | FStar_Syntax_Syntax.Pat_cons (fv,arg_pats) ->
                            let uu____21760 =
                              let uu____21761 =
                                FStar_Syntax_Util.un_uinst head1  in
                              uu____21761.FStar_Syntax_Syntax.n  in
                            (match uu____21760 with
                             | FStar_Syntax_Syntax.Tm_fvar fv' when
                                 FStar_Syntax_Syntax.fv_eq fv fv' ->
                                 matches_args [] args arg_pats
                             | uu____21779 ->
                                 let uu____21780 =
                                   let uu____21781 = is_cons head1  in
                                   Prims.op_Negation uu____21781  in
                                 FStar_Util.Inr uu____21780))
                 
                 and matches_args out a p =
                   match (a, p) with
                   | ([],[]) -> FStar_Util.Inl out
                   | ((t2,uu____21850)::rest_a,(p1,uu____21853)::rest_p) ->
                       let uu____21897 = matches_pat t2 p1  in
                       (match uu____21897 with
                        | FStar_Util.Inl s ->
                            matches_args (FStar_List.append out s) rest_a
                              rest_p
                        | m -> m)
                   | uu____21946 -> FStar_Util.Inr false
                  in
                 let rec matches scrutinee1 p =
                   match p with
                   | [] -> norm_and_rebuild_match ()
                   | (p1,wopt,b)::rest ->
                       let uu____22052 = matches_pat scrutinee1 p1  in
                       (match uu____22052 with
                        | FStar_Util.Inr (false ) -> matches scrutinee1 rest
                        | FStar_Util.Inr (true ) -> norm_and_rebuild_match ()
                        | FStar_Util.Inl s ->
                            (log cfg1
                               (fun uu____22092  ->
                                  let uu____22093 =
                                    FStar_Syntax_Print.pat_to_string p1  in
                                  let uu____22094 =
                                    let uu____22095 =
                                      FStar_List.map
                                        (fun uu____22105  ->
                                           match uu____22105 with
                                           | (uu____22110,t2) ->
                                               FStar_Syntax_Print.term_to_string
                                                 t2) s
                                       in
                                    FStar_All.pipe_right uu____22095
                                      (FStar_String.concat "; ")
                                     in
                                  FStar_Util.print2
                                    "Matches pattern %s with subst = %s\n"
                                    uu____22093 uu____22094);
                             (let env2 =
                                FStar_List.fold_left
                                  (fun env2  ->
                                     fun uu____22141  ->
                                       match uu____22141 with
                                       | (bv,t2) ->
                                           let uu____22164 =
                                             let uu____22171 =
                                               let uu____22174 =
                                                 FStar_Syntax_Syntax.mk_binder
                                                   bv
                                                  in
                                               FStar_Pervasives_Native.Some
                                                 uu____22174
                                                in
                                             let uu____22175 =
                                               let uu____22176 =
                                                 let uu____22207 =
                                                   FStar_Util.mk_ref
                                                     (FStar_Pervasives_Native.Some
                                                        ([], t2))
                                                    in
                                                 ([], t2, uu____22207, false)
                                                  in
                                               Clos uu____22176  in
                                             (uu____22171, uu____22175)  in
                                           uu____22164 :: env2) env1 s
                                 in
                              let uu____22324 = guard_when_clause wopt b rest
                                 in
                              norm cfg1 env2 stack1 uu____22324)))
                    in
                 if (cfg1.steps).iota
                 then matches scrutinee branches
                 else norm_and_rebuild_match ())))

let (plugins :
  (primitive_step -> Prims.unit,Prims.unit -> primitive_step Prims.list)
    FStar_Pervasives_Native.tuple2)
  =
  let plugins = FStar_Util.mk_ref []  in
  let register p =
    let uu____22347 =
      let uu____22350 = FStar_ST.op_Bang plugins  in p :: uu____22350  in
    FStar_ST.op_Colon_Equals plugins uu____22347  in
  let retrieve uu____22448 = FStar_ST.op_Bang plugins  in
  (register, retrieve) 
let (register_plugin : primitive_step -> Prims.unit) =
  fun p  -> FStar_Pervasives_Native.fst plugins p 
let (retrieve_plugins : Prims.unit -> primitive_step Prims.list) =
  fun uu____22513  -> FStar_Pervasives_Native.snd plugins () 
let (config' :
  primitive_step Prims.list ->
    step Prims.list -> FStar_TypeChecker_Env.env -> cfg)
  =
  fun psteps  ->
    fun s  ->
      fun e  ->
        let d =
          FStar_All.pipe_right s
            (FStar_List.collect
               (fun uu___90_22546  ->
                  match uu___90_22546 with
                  | UnfoldUntil k -> [FStar_TypeChecker_Env.Unfold k]
                  | Eager_unfolding  ->
                      [FStar_TypeChecker_Env.Eager_unfolding_only]
                  | Inlining  -> [FStar_TypeChecker_Env.Inlining]
                  | UnfoldTac  -> [FStar_TypeChecker_Env.UnfoldTac]
                  | uu____22550 -> []))
           in
        let d1 =
          match d with
          | [] -> [FStar_TypeChecker_Env.NoDelta]
          | uu____22556 -> d  in
        let uu____22559 = to_fsteps s  in
        let uu____22560 =
          let uu____22561 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "Norm")  in
          let uu____22562 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "Primops")  in
          let uu____22563 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "380")  in
          let uu____22564 =
            FStar_TypeChecker_Env.debug e (FStar_Options.Other "NormDelayed")
             in
          let uu____22565 =
            FStar_TypeChecker_Env.debug e
              (FStar_Options.Other "print_normalized_terms")
             in
          {
            gen = uu____22561;
            primop = uu____22562;
            b380 = uu____22563;
            norm_delayed = uu____22564;
            print_normalized = uu____22565
          }  in
        let uu____22566 =
          let uu____22569 =
            let uu____22572 = retrieve_plugins ()  in
            FStar_List.append uu____22572 psteps  in
          add_steps built_in_primitive_steps uu____22569  in
        let uu____22575 =
          (FStar_Options.normalize_pure_terms_for_extraction ()) ||
            (let uu____22577 =
               FStar_All.pipe_right s
                 (FStar_List.contains PureSubtermsWithinComputations)
                in
             Prims.op_Negation uu____22577)
           in
        {
          steps = uu____22559;
          tcenv = e;
          debug = uu____22560;
          delta_level = d1;
          primitive_steps = uu____22566;
          strong = false;
          memoize_lazy = true;
          normalize_pure_lets = uu____22575
        }
  
let (config : step Prims.list -> FStar_TypeChecker_Env.env -> cfg) =
  fun s  -> fun e  -> config' [] s e 
let (normalize_with_primitive_steps :
  primitive_step Prims.list ->
    step Prims.list ->
      FStar_TypeChecker_Env.env ->
        FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun ps  ->
    fun s  -> fun e  -> fun t  -> let c = config' ps s e  in norm c [] [] t
  
let (normalize :
  steps ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  = fun s  -> fun e  -> fun t  -> normalize_with_primitive_steps [] s e t 
let (normalize_comp :
  steps ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp)
  =
  fun s  ->
    fun e  ->
      fun t  -> let uu____22635 = config s e  in norm_comp uu____22635 [] t
  
let (normalize_universe :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.universe -> FStar_Syntax_Syntax.universe)
  =
  fun env  ->
    fun u  ->
      let uu____22648 = config [] env  in norm_universe uu____22648 [] u
  
let (ghost_to_pure :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp)
  =
  fun env  ->
    fun c  ->
      let cfg =
        config
          [UnfoldUntil FStar_Syntax_Syntax.Delta_constant;
          AllowUnboundUniverses;
          EraseUniverses] env
         in
      let non_info t =
        let uu____22666 = norm cfg [] [] t  in
        FStar_Syntax_Util.non_informative uu____22666  in
      match c.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Total uu____22673 -> c
      | FStar_Syntax_Syntax.GTotal (t,uopt) when non_info t ->
          let uu___187_22692 = c  in
          {
            FStar_Syntax_Syntax.n = (FStar_Syntax_Syntax.Total (t, uopt));
            FStar_Syntax_Syntax.pos =
              (uu___187_22692.FStar_Syntax_Syntax.pos);
            FStar_Syntax_Syntax.vars =
              (uu___187_22692.FStar_Syntax_Syntax.vars)
          }
      | FStar_Syntax_Syntax.Comp ct ->
          let l =
            FStar_TypeChecker_Env.norm_eff_name cfg.tcenv
              ct.FStar_Syntax_Syntax.effect_name
             in
          let uu____22699 =
            (FStar_Syntax_Util.is_ghost_effect l) &&
              (non_info ct.FStar_Syntax_Syntax.result_typ)
             in
          if uu____22699
          then
            let ct1 =
              let uu____22701 =
                downgrade_ghost_effect_name
                  ct.FStar_Syntax_Syntax.effect_name
                 in
              match uu____22701 with
              | FStar_Pervasives_Native.Some pure_eff ->
                  let flags1 =
                    let uu____22708 =
                      FStar_Ident.lid_equals pure_eff
                        FStar_Parser_Const.effect_Tot_lid
                       in
                    if uu____22708
                    then FStar_Syntax_Syntax.TOTAL ::
                      (ct.FStar_Syntax_Syntax.flags)
                    else ct.FStar_Syntax_Syntax.flags  in
                  let uu___188_22712 = ct  in
                  {
                    FStar_Syntax_Syntax.comp_univs =
                      (uu___188_22712.FStar_Syntax_Syntax.comp_univs);
                    FStar_Syntax_Syntax.effect_name = pure_eff;
                    FStar_Syntax_Syntax.result_typ =
                      (uu___188_22712.FStar_Syntax_Syntax.result_typ);
                    FStar_Syntax_Syntax.effect_args =
                      (uu___188_22712.FStar_Syntax_Syntax.effect_args);
                    FStar_Syntax_Syntax.flags = flags1
                  }
              | FStar_Pervasives_Native.None  ->
                  let ct1 =
                    FStar_TypeChecker_Env.unfold_effect_abbrev cfg.tcenv c
                     in
                  let uu___189_22714 = ct1  in
                  {
                    FStar_Syntax_Syntax.comp_univs =
                      (uu___189_22714.FStar_Syntax_Syntax.comp_univs);
                    FStar_Syntax_Syntax.effect_name =
                      FStar_Parser_Const.effect_PURE_lid;
                    FStar_Syntax_Syntax.result_typ =
                      (uu___189_22714.FStar_Syntax_Syntax.result_typ);
                    FStar_Syntax_Syntax.effect_args =
                      (uu___189_22714.FStar_Syntax_Syntax.effect_args);
                    FStar_Syntax_Syntax.flags =
                      (uu___189_22714.FStar_Syntax_Syntax.flags)
                  }
               in
            let uu___190_22715 = c  in
            {
              FStar_Syntax_Syntax.n = (FStar_Syntax_Syntax.Comp ct1);
              FStar_Syntax_Syntax.pos =
                (uu___190_22715.FStar_Syntax_Syntax.pos);
              FStar_Syntax_Syntax.vars =
                (uu___190_22715.FStar_Syntax_Syntax.vars)
            }
          else c
      | uu____22717 -> c
  
let (ghost_to_pure_lcomp :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.lcomp -> FStar_Syntax_Syntax.lcomp)
  =
  fun env  ->
    fun lc  ->
      let cfg =
        config
          [Eager_unfolding;
          UnfoldUntil FStar_Syntax_Syntax.Delta_constant;
          EraseUniverses;
          AllowUnboundUniverses] env
         in
      let non_info t =
        let uu____22729 = norm cfg [] [] t  in
        FStar_Syntax_Util.non_informative uu____22729  in
      let uu____22736 =
        (FStar_Syntax_Util.is_ghost_effect lc.FStar_Syntax_Syntax.eff_name)
          && (non_info lc.FStar_Syntax_Syntax.res_typ)
         in
      if uu____22736
      then
        let uu____22737 =
          downgrade_ghost_effect_name lc.FStar_Syntax_Syntax.eff_name  in
        match uu____22737 with
        | FStar_Pervasives_Native.Some pure_eff ->
            FStar_Syntax_Syntax.mk_lcomp pure_eff
              lc.FStar_Syntax_Syntax.res_typ lc.FStar_Syntax_Syntax.cflags
              (fun uu____22743  ->
                 let uu____22744 = FStar_Syntax_Syntax.lcomp_comp lc  in
                 ghost_to_pure env uu____22744)
        | FStar_Pervasives_Native.None  -> lc
      else lc
  
let (term_to_string :
  FStar_TypeChecker_Env.env -> FStar_Syntax_Syntax.term -> Prims.string) =
  fun env  ->
    fun t  ->
      let t1 =
        try normalize [AllowUnboundUniverses] env t
        with
        | e ->
            ((let uu____22761 =
                let uu____22766 =
                  let uu____22767 = FStar_Util.message_of_exn e  in
                  FStar_Util.format1 "Normalization failed with error %s\n"
                    uu____22767
                   in
                (FStar_Errors.Warning_NormalizationFailure, uu____22766)  in
              FStar_Errors.log_issue t.FStar_Syntax_Syntax.pos uu____22761);
             t)
         in
      FStar_Syntax_Print.term_to_string' env.FStar_TypeChecker_Env.dsenv t1
  
let (comp_to_string :
  FStar_TypeChecker_Env.env -> FStar_Syntax_Syntax.comp -> Prims.string) =
  fun env  ->
    fun c  ->
      let c1 =
        try
          let uu____22778 = config [AllowUnboundUniverses] env  in
          norm_comp uu____22778 [] c
        with
        | e ->
            ((let uu____22791 =
                let uu____22796 =
                  let uu____22797 = FStar_Util.message_of_exn e  in
                  FStar_Util.format1 "Normalization failed with error %s\n"
                    uu____22797
                   in
                (FStar_Errors.Warning_NormalizationFailure, uu____22796)  in
              FStar_Errors.log_issue c.FStar_Syntax_Syntax.pos uu____22791);
             c)
         in
      FStar_Syntax_Print.comp_to_string' env.FStar_TypeChecker_Env.dsenv c1
  
let (normalize_refinement :
  steps ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.typ)
  =
  fun steps  ->
    fun env  ->
      fun t0  ->
        let t = normalize (FStar_List.append steps [Beta]) env t0  in
        let rec aux t1 =
          let t2 = FStar_Syntax_Subst.compress t1  in
          match t2.FStar_Syntax_Syntax.n with
          | FStar_Syntax_Syntax.Tm_refine (x,phi) ->
              let t01 = aux x.FStar_Syntax_Syntax.sort  in
              (match t01.FStar_Syntax_Syntax.n with
               | FStar_Syntax_Syntax.Tm_refine (y,phi1) ->
                   let uu____22834 =
                     let uu____22835 =
                       let uu____22842 = FStar_Syntax_Util.mk_conj phi1 phi
                          in
                       (y, uu____22842)  in
                     FStar_Syntax_Syntax.Tm_refine uu____22835  in
                   mk uu____22834 t01.FStar_Syntax_Syntax.pos
               | uu____22847 -> t2)
          | uu____22848 -> t2  in
        aux t
  
let (unfold_whnf :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun t  ->
      normalize
        [Primops;
        Weak;
        HNF;
        UnfoldUntil FStar_Syntax_Syntax.Delta_constant;
        Beta] env t
  
let (reduce_or_remove_uvar_solutions :
  Prims.bool ->
    FStar_TypeChecker_Env.env ->
      FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun remove  ->
    fun env  ->
      fun t  ->
        normalize
          (FStar_List.append (if remove then [CheckNoUvars] else [])
             [Beta;
             DoNotUnfoldPureLets;
             CompressUvars;
             Exclude Zeta;
             Exclude Iota;
             NoFullNorm]) env t
  
let (reduce_uvar_solutions :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  = fun env  -> fun t  -> reduce_or_remove_uvar_solutions false env t 
let (remove_uvar_solutions :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  = fun env  -> fun t  -> reduce_or_remove_uvar_solutions true env t 
let (eta_expand_with_type :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term ->
      FStar_Syntax_Syntax.typ -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun e  ->
      fun t_e  ->
        let uu____22888 = FStar_Syntax_Util.arrow_formals_comp t_e  in
        match uu____22888 with
        | (formals,c) ->
            (match formals with
             | [] -> e
             | uu____22917 ->
                 let uu____22924 = FStar_Syntax_Util.abs_formals e  in
                 (match uu____22924 with
                  | (actuals,uu____22934,uu____22935) ->
                      if
                        (FStar_List.length actuals) =
                          (FStar_List.length formals)
                      then e
                      else
                        (let uu____22949 =
                           FStar_All.pipe_right formals
                             FStar_Syntax_Util.args_of_binders
                            in
                         match uu____22949 with
                         | (binders,args) ->
                             let uu____22966 =
                               FStar_Syntax_Syntax.mk_Tm_app e args
                                 FStar_Pervasives_Native.None
                                 e.FStar_Syntax_Syntax.pos
                                in
                             FStar_Syntax_Util.abs binders uu____22966
                               (FStar_Pervasives_Native.Some
                                  (FStar_Syntax_Util.residual_comp_of_comp c)))))
  
let (eta_expand :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun t  ->
      match t.FStar_Syntax_Syntax.n with
      | FStar_Syntax_Syntax.Tm_name x ->
          eta_expand_with_type env t x.FStar_Syntax_Syntax.sort
      | uu____22974 ->
          let uu____22975 = FStar_Syntax_Util.head_and_args t  in
          (match uu____22975 with
           | (head1,args) ->
               let uu____23012 =
                 let uu____23013 = FStar_Syntax_Subst.compress head1  in
                 uu____23013.FStar_Syntax_Syntax.n  in
               (match uu____23012 with
                | FStar_Syntax_Syntax.Tm_uvar (uu____23016,thead) ->
                    let uu____23042 = FStar_Syntax_Util.arrow_formals thead
                       in
                    (match uu____23042 with
                     | (formals,tres) ->
                         if
                           (FStar_List.length formals) =
                             (FStar_List.length args)
                         then t
                         else
                           (let uu____23084 =
                              env.FStar_TypeChecker_Env.type_of
                                (let uu___195_23092 = env  in
                                 {
                                   FStar_TypeChecker_Env.solver =
                                     (uu___195_23092.FStar_TypeChecker_Env.solver);
                                   FStar_TypeChecker_Env.range =
                                     (uu___195_23092.FStar_TypeChecker_Env.range);
                                   FStar_TypeChecker_Env.curmodule =
                                     (uu___195_23092.FStar_TypeChecker_Env.curmodule);
                                   FStar_TypeChecker_Env.gamma =
                                     (uu___195_23092.FStar_TypeChecker_Env.gamma);
                                   FStar_TypeChecker_Env.gamma_cache =
                                     (uu___195_23092.FStar_TypeChecker_Env.gamma_cache);
                                   FStar_TypeChecker_Env.modules =
                                     (uu___195_23092.FStar_TypeChecker_Env.modules);
                                   FStar_TypeChecker_Env.expected_typ =
                                     FStar_Pervasives_Native.None;
                                   FStar_TypeChecker_Env.sigtab =
                                     (uu___195_23092.FStar_TypeChecker_Env.sigtab);
                                   FStar_TypeChecker_Env.is_pattern =
                                     (uu___195_23092.FStar_TypeChecker_Env.is_pattern);
                                   FStar_TypeChecker_Env.instantiate_imp =
                                     (uu___195_23092.FStar_TypeChecker_Env.instantiate_imp);
                                   FStar_TypeChecker_Env.effects =
                                     (uu___195_23092.FStar_TypeChecker_Env.effects);
                                   FStar_TypeChecker_Env.generalize =
                                     (uu___195_23092.FStar_TypeChecker_Env.generalize);
                                   FStar_TypeChecker_Env.letrecs =
                                     (uu___195_23092.FStar_TypeChecker_Env.letrecs);
                                   FStar_TypeChecker_Env.top_level =
                                     (uu___195_23092.FStar_TypeChecker_Env.top_level);
                                   FStar_TypeChecker_Env.check_uvars =
                                     (uu___195_23092.FStar_TypeChecker_Env.check_uvars);
                                   FStar_TypeChecker_Env.use_eq =
                                     (uu___195_23092.FStar_TypeChecker_Env.use_eq);
                                   FStar_TypeChecker_Env.is_iface =
                                     (uu___195_23092.FStar_TypeChecker_Env.is_iface);
                                   FStar_TypeChecker_Env.admit =
                                     (uu___195_23092.FStar_TypeChecker_Env.admit);
                                   FStar_TypeChecker_Env.lax = true;
                                   FStar_TypeChecker_Env.lax_universes =
                                     (uu___195_23092.FStar_TypeChecker_Env.lax_universes);
                                   FStar_TypeChecker_Env.failhard =
                                     (uu___195_23092.FStar_TypeChecker_Env.failhard);
                                   FStar_TypeChecker_Env.nosynth =
                                     (uu___195_23092.FStar_TypeChecker_Env.nosynth);
                                   FStar_TypeChecker_Env.tc_term =
                                     (uu___195_23092.FStar_TypeChecker_Env.tc_term);
                                   FStar_TypeChecker_Env.type_of =
                                     (uu___195_23092.FStar_TypeChecker_Env.type_of);
                                   FStar_TypeChecker_Env.universe_of =
                                     (uu___195_23092.FStar_TypeChecker_Env.universe_of);
                                   FStar_TypeChecker_Env.check_type_of =
                                     (uu___195_23092.FStar_TypeChecker_Env.check_type_of);
                                   FStar_TypeChecker_Env.use_bv_sorts = true;
                                   FStar_TypeChecker_Env.qtbl_name_and_index
                                     =
                                     (uu___195_23092.FStar_TypeChecker_Env.qtbl_name_and_index);
                                   FStar_TypeChecker_Env.proof_ns =
                                     (uu___195_23092.FStar_TypeChecker_Env.proof_ns);
                                   FStar_TypeChecker_Env.synth_hook =
                                     (uu___195_23092.FStar_TypeChecker_Env.synth_hook);
                                   FStar_TypeChecker_Env.splice =
                                     (uu___195_23092.FStar_TypeChecker_Env.splice);
                                   FStar_TypeChecker_Env.is_native_tactic =
                                     (uu___195_23092.FStar_TypeChecker_Env.is_native_tactic);
                                   FStar_TypeChecker_Env.identifier_info =
                                     (uu___195_23092.FStar_TypeChecker_Env.identifier_info);
                                   FStar_TypeChecker_Env.tc_hooks =
                                     (uu___195_23092.FStar_TypeChecker_Env.tc_hooks);
                                   FStar_TypeChecker_Env.dsenv =
                                     (uu___195_23092.FStar_TypeChecker_Env.dsenv);
                                   FStar_TypeChecker_Env.dep_graph =
                                     (uu___195_23092.FStar_TypeChecker_Env.dep_graph)
                                 }) t
                               in
                            match uu____23084 with
                            | (uu____23093,ty,uu____23095) ->
                                eta_expand_with_type env t ty))
                | uu____23096 ->
                    let uu____23097 =
                      env.FStar_TypeChecker_Env.type_of
                        (let uu___196_23105 = env  in
                         {
                           FStar_TypeChecker_Env.solver =
                             (uu___196_23105.FStar_TypeChecker_Env.solver);
                           FStar_TypeChecker_Env.range =
                             (uu___196_23105.FStar_TypeChecker_Env.range);
                           FStar_TypeChecker_Env.curmodule =
                             (uu___196_23105.FStar_TypeChecker_Env.curmodule);
                           FStar_TypeChecker_Env.gamma =
                             (uu___196_23105.FStar_TypeChecker_Env.gamma);
                           FStar_TypeChecker_Env.gamma_cache =
                             (uu___196_23105.FStar_TypeChecker_Env.gamma_cache);
                           FStar_TypeChecker_Env.modules =
                             (uu___196_23105.FStar_TypeChecker_Env.modules);
                           FStar_TypeChecker_Env.expected_typ =
                             FStar_Pervasives_Native.None;
                           FStar_TypeChecker_Env.sigtab =
                             (uu___196_23105.FStar_TypeChecker_Env.sigtab);
                           FStar_TypeChecker_Env.is_pattern =
                             (uu___196_23105.FStar_TypeChecker_Env.is_pattern);
                           FStar_TypeChecker_Env.instantiate_imp =
                             (uu___196_23105.FStar_TypeChecker_Env.instantiate_imp);
                           FStar_TypeChecker_Env.effects =
                             (uu___196_23105.FStar_TypeChecker_Env.effects);
                           FStar_TypeChecker_Env.generalize =
                             (uu___196_23105.FStar_TypeChecker_Env.generalize);
                           FStar_TypeChecker_Env.letrecs =
                             (uu___196_23105.FStar_TypeChecker_Env.letrecs);
                           FStar_TypeChecker_Env.top_level =
                             (uu___196_23105.FStar_TypeChecker_Env.top_level);
                           FStar_TypeChecker_Env.check_uvars =
                             (uu___196_23105.FStar_TypeChecker_Env.check_uvars);
                           FStar_TypeChecker_Env.use_eq =
                             (uu___196_23105.FStar_TypeChecker_Env.use_eq);
                           FStar_TypeChecker_Env.is_iface =
                             (uu___196_23105.FStar_TypeChecker_Env.is_iface);
                           FStar_TypeChecker_Env.admit =
                             (uu___196_23105.FStar_TypeChecker_Env.admit);
                           FStar_TypeChecker_Env.lax = true;
                           FStar_TypeChecker_Env.lax_universes =
                             (uu___196_23105.FStar_TypeChecker_Env.lax_universes);
                           FStar_TypeChecker_Env.failhard =
                             (uu___196_23105.FStar_TypeChecker_Env.failhard);
                           FStar_TypeChecker_Env.nosynth =
                             (uu___196_23105.FStar_TypeChecker_Env.nosynth);
                           FStar_TypeChecker_Env.tc_term =
                             (uu___196_23105.FStar_TypeChecker_Env.tc_term);
                           FStar_TypeChecker_Env.type_of =
                             (uu___196_23105.FStar_TypeChecker_Env.type_of);
                           FStar_TypeChecker_Env.universe_of =
                             (uu___196_23105.FStar_TypeChecker_Env.universe_of);
                           FStar_TypeChecker_Env.check_type_of =
                             (uu___196_23105.FStar_TypeChecker_Env.check_type_of);
                           FStar_TypeChecker_Env.use_bv_sorts = true;
                           FStar_TypeChecker_Env.qtbl_name_and_index =
                             (uu___196_23105.FStar_TypeChecker_Env.qtbl_name_and_index);
                           FStar_TypeChecker_Env.proof_ns =
                             (uu___196_23105.FStar_TypeChecker_Env.proof_ns);
                           FStar_TypeChecker_Env.synth_hook =
                             (uu___196_23105.FStar_TypeChecker_Env.synth_hook);
                           FStar_TypeChecker_Env.splice =
                             (uu___196_23105.FStar_TypeChecker_Env.splice);
                           FStar_TypeChecker_Env.is_native_tactic =
                             (uu___196_23105.FStar_TypeChecker_Env.is_native_tactic);
                           FStar_TypeChecker_Env.identifier_info =
                             (uu___196_23105.FStar_TypeChecker_Env.identifier_info);
                           FStar_TypeChecker_Env.tc_hooks =
                             (uu___196_23105.FStar_TypeChecker_Env.tc_hooks);
                           FStar_TypeChecker_Env.dsenv =
                             (uu___196_23105.FStar_TypeChecker_Env.dsenv);
                           FStar_TypeChecker_Env.dep_graph =
                             (uu___196_23105.FStar_TypeChecker_Env.dep_graph)
                         }) t
                       in
                    (match uu____23097 with
                     | (uu____23106,ty,uu____23108) ->
                         eta_expand_with_type env t ty)))
  
let rec (elim_delayed_subst_term :
  FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term) =
  fun t  ->
    let mk1 x =
      FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
        t.FStar_Syntax_Syntax.pos
       in
    let t1 = FStar_Syntax_Subst.compress t  in
    let elim_bv x =
      let uu___197_23165 = x  in
      let uu____23166 = elim_delayed_subst_term x.FStar_Syntax_Syntax.sort
         in
      {
        FStar_Syntax_Syntax.ppname =
          (uu___197_23165.FStar_Syntax_Syntax.ppname);
        FStar_Syntax_Syntax.index =
          (uu___197_23165.FStar_Syntax_Syntax.index);
        FStar_Syntax_Syntax.sort = uu____23166
      }  in
    match t1.FStar_Syntax_Syntax.n with
    | FStar_Syntax_Syntax.Tm_delayed uu____23169 -> failwith "Impossible"
    | FStar_Syntax_Syntax.Tm_bvar uu____23194 -> t1
    | FStar_Syntax_Syntax.Tm_name uu____23195 -> t1
    | FStar_Syntax_Syntax.Tm_fvar uu____23196 -> t1
    | FStar_Syntax_Syntax.Tm_uinst uu____23197 -> t1
    | FStar_Syntax_Syntax.Tm_constant uu____23204 -> t1
    | FStar_Syntax_Syntax.Tm_type uu____23205 -> t1
    | FStar_Syntax_Syntax.Tm_lazy uu____23206 -> t1
    | FStar_Syntax_Syntax.Tm_unknown  -> t1
    | FStar_Syntax_Syntax.Tm_abs (bs,t2,rc_opt) ->
        let elim_rc rc =
          let uu___198_23234 = rc  in
          let uu____23235 =
            FStar_Util.map_opt rc.FStar_Syntax_Syntax.residual_typ
              elim_delayed_subst_term
             in
          let uu____23242 =
            elim_delayed_subst_cflags rc.FStar_Syntax_Syntax.residual_flags
             in
          {
            FStar_Syntax_Syntax.residual_effect =
              (uu___198_23234.FStar_Syntax_Syntax.residual_effect);
            FStar_Syntax_Syntax.residual_typ = uu____23235;
            FStar_Syntax_Syntax.residual_flags = uu____23242
          }  in
        let uu____23245 =
          let uu____23246 =
            let uu____23263 = elim_delayed_subst_binders bs  in
            let uu____23270 = elim_delayed_subst_term t2  in
            let uu____23271 = FStar_Util.map_opt rc_opt elim_rc  in
            (uu____23263, uu____23270, uu____23271)  in
          FStar_Syntax_Syntax.Tm_abs uu____23246  in
        mk1 uu____23245
    | FStar_Syntax_Syntax.Tm_arrow (bs,c) ->
        let uu____23300 =
          let uu____23301 =
            let uu____23314 = elim_delayed_subst_binders bs  in
            let uu____23321 = elim_delayed_subst_comp c  in
            (uu____23314, uu____23321)  in
          FStar_Syntax_Syntax.Tm_arrow uu____23301  in
        mk1 uu____23300
    | FStar_Syntax_Syntax.Tm_refine (bv,phi) ->
        let uu____23334 =
          let uu____23335 =
            let uu____23342 = elim_bv bv  in
            let uu____23343 = elim_delayed_subst_term phi  in
            (uu____23342, uu____23343)  in
          FStar_Syntax_Syntax.Tm_refine uu____23335  in
        mk1 uu____23334
    | FStar_Syntax_Syntax.Tm_app (t2,args) ->
        let uu____23366 =
          let uu____23367 =
            let uu____23382 = elim_delayed_subst_term t2  in
            let uu____23383 = elim_delayed_subst_args args  in
            (uu____23382, uu____23383)  in
          FStar_Syntax_Syntax.Tm_app uu____23367  in
        mk1 uu____23366
    | FStar_Syntax_Syntax.Tm_match (t2,branches) ->
        let rec elim_pat p =
          match p.FStar_Syntax_Syntax.v with
          | FStar_Syntax_Syntax.Pat_var x ->
              let uu___199_23447 = p  in
              let uu____23448 =
                let uu____23449 = elim_bv x  in
                FStar_Syntax_Syntax.Pat_var uu____23449  in
              {
                FStar_Syntax_Syntax.v = uu____23448;
                FStar_Syntax_Syntax.p =
                  (uu___199_23447.FStar_Syntax_Syntax.p)
              }
          | FStar_Syntax_Syntax.Pat_wild x ->
              let uu___200_23451 = p  in
              let uu____23452 =
                let uu____23453 = elim_bv x  in
                FStar_Syntax_Syntax.Pat_wild uu____23453  in
              {
                FStar_Syntax_Syntax.v = uu____23452;
                FStar_Syntax_Syntax.p =
                  (uu___200_23451.FStar_Syntax_Syntax.p)
              }
          | FStar_Syntax_Syntax.Pat_dot_term (x,t0) ->
              let uu___201_23460 = p  in
              let uu____23461 =
                let uu____23462 =
                  let uu____23469 = elim_bv x  in
                  let uu____23470 = elim_delayed_subst_term t0  in
                  (uu____23469, uu____23470)  in
                FStar_Syntax_Syntax.Pat_dot_term uu____23462  in
              {
                FStar_Syntax_Syntax.v = uu____23461;
                FStar_Syntax_Syntax.p =
                  (uu___201_23460.FStar_Syntax_Syntax.p)
              }
          | FStar_Syntax_Syntax.Pat_cons (fv,pats) ->
              let uu___202_23489 = p  in
              let uu____23490 =
                let uu____23491 =
                  let uu____23504 =
                    FStar_List.map
                      (fun uu____23527  ->
                         match uu____23527 with
                         | (x,b) ->
                             let uu____23540 = elim_pat x  in
                             (uu____23540, b)) pats
                     in
                  (fv, uu____23504)  in
                FStar_Syntax_Syntax.Pat_cons uu____23491  in
              {
                FStar_Syntax_Syntax.v = uu____23490;
                FStar_Syntax_Syntax.p =
                  (uu___202_23489.FStar_Syntax_Syntax.p)
              }
          | uu____23553 -> p  in
        let elim_branch uu____23575 =
          match uu____23575 with
          | (pat,wopt,t3) ->
              let uu____23601 = elim_pat pat  in
              let uu____23604 =
                FStar_Util.map_opt wopt elim_delayed_subst_term  in
              let uu____23607 = elim_delayed_subst_term t3  in
              (uu____23601, uu____23604, uu____23607)
           in
        let uu____23612 =
          let uu____23613 =
            let uu____23636 = elim_delayed_subst_term t2  in
            let uu____23637 = FStar_List.map elim_branch branches  in
            (uu____23636, uu____23637)  in
          FStar_Syntax_Syntax.Tm_match uu____23613  in
        mk1 uu____23612
    | FStar_Syntax_Syntax.Tm_ascribed (t2,a,lopt) ->
        let elim_ascription uu____23746 =
          match uu____23746 with
          | (tc,topt) ->
              let uu____23781 =
                match tc with
                | FStar_Util.Inl t3 ->
                    let uu____23791 = elim_delayed_subst_term t3  in
                    FStar_Util.Inl uu____23791
                | FStar_Util.Inr c ->
                    let uu____23793 = elim_delayed_subst_comp c  in
                    FStar_Util.Inr uu____23793
                 in
              let uu____23794 =
                FStar_Util.map_opt topt elim_delayed_subst_term  in
              (uu____23781, uu____23794)
           in
        let uu____23803 =
          let uu____23804 =
            let uu____23831 = elim_delayed_subst_term t2  in
            let uu____23832 = elim_ascription a  in
            (uu____23831, uu____23832, lopt)  in
          FStar_Syntax_Syntax.Tm_ascribed uu____23804  in
        mk1 uu____23803
    | FStar_Syntax_Syntax.Tm_let (lbs,t2) ->
        let elim_lb lb =
          let uu___203_23877 = lb  in
          let uu____23878 =
            elim_delayed_subst_term lb.FStar_Syntax_Syntax.lbtyp  in
          let uu____23881 =
            elim_delayed_subst_term lb.FStar_Syntax_Syntax.lbdef  in
          {
            FStar_Syntax_Syntax.lbname =
              (uu___203_23877.FStar_Syntax_Syntax.lbname);
            FStar_Syntax_Syntax.lbunivs =
              (uu___203_23877.FStar_Syntax_Syntax.lbunivs);
            FStar_Syntax_Syntax.lbtyp = uu____23878;
            FStar_Syntax_Syntax.lbeff =
              (uu___203_23877.FStar_Syntax_Syntax.lbeff);
            FStar_Syntax_Syntax.lbdef = uu____23881;
            FStar_Syntax_Syntax.lbattrs =
              (uu___203_23877.FStar_Syntax_Syntax.lbattrs);
            FStar_Syntax_Syntax.lbpos =
              (uu___203_23877.FStar_Syntax_Syntax.lbpos)
          }  in
        let uu____23884 =
          let uu____23885 =
            let uu____23898 =
              let uu____23905 =
                FStar_List.map elim_lb (FStar_Pervasives_Native.snd lbs)  in
              ((FStar_Pervasives_Native.fst lbs), uu____23905)  in
            let uu____23914 = elim_delayed_subst_term t2  in
            (uu____23898, uu____23914)  in
          FStar_Syntax_Syntax.Tm_let uu____23885  in
        mk1 uu____23884
    | FStar_Syntax_Syntax.Tm_uvar (uv,t2) ->
        let uu____23947 =
          let uu____23948 =
            let uu____23965 = elim_delayed_subst_term t2  in
            (uv, uu____23965)  in
          FStar_Syntax_Syntax.Tm_uvar uu____23948  in
        mk1 uu____23947
    | FStar_Syntax_Syntax.Tm_quoted (tm,qi) ->
        let qi1 =
          FStar_Syntax_Syntax.on_antiquoted elim_delayed_subst_term qi  in
        let uu____23983 =
          let uu____23984 =
            let uu____23991 = elim_delayed_subst_term tm  in
            (uu____23991, qi1)  in
          FStar_Syntax_Syntax.Tm_quoted uu____23984  in
        mk1 uu____23983
    | FStar_Syntax_Syntax.Tm_meta (t2,md) ->
        let uu____23998 =
          let uu____23999 =
            let uu____24006 = elim_delayed_subst_term t2  in
            let uu____24007 = elim_delayed_subst_meta md  in
            (uu____24006, uu____24007)  in
          FStar_Syntax_Syntax.Tm_meta uu____23999  in
        mk1 uu____23998

and (elim_delayed_subst_cflags :
  FStar_Syntax_Syntax.cflags Prims.list ->
    FStar_Syntax_Syntax.cflags Prims.list)
  =
  fun flags1  ->
    FStar_List.map
      (fun uu___91_24014  ->
         match uu___91_24014 with
         | FStar_Syntax_Syntax.DECREASES t ->
             let uu____24018 = elim_delayed_subst_term t  in
             FStar_Syntax_Syntax.DECREASES uu____24018
         | f -> f) flags1

and (elim_delayed_subst_comp :
  FStar_Syntax_Syntax.comp -> FStar_Syntax_Syntax.comp) =
  fun c  ->
    let mk1 x =
      FStar_Syntax_Syntax.mk x FStar_Pervasives_Native.None
        c.FStar_Syntax_Syntax.pos
       in
    match c.FStar_Syntax_Syntax.n with
    | FStar_Syntax_Syntax.Total (t,uopt) ->
        let uu____24039 =
          let uu____24040 =
            let uu____24049 = elim_delayed_subst_term t  in
            (uu____24049, uopt)  in
          FStar_Syntax_Syntax.Total uu____24040  in
        mk1 uu____24039
    | FStar_Syntax_Syntax.GTotal (t,uopt) ->
        let uu____24062 =
          let uu____24063 =
            let uu____24072 = elim_delayed_subst_term t  in
            (uu____24072, uopt)  in
          FStar_Syntax_Syntax.GTotal uu____24063  in
        mk1 uu____24062
    | FStar_Syntax_Syntax.Comp ct ->
        let ct1 =
          let uu___204_24077 = ct  in
          let uu____24078 =
            elim_delayed_subst_term ct.FStar_Syntax_Syntax.result_typ  in
          let uu____24081 =
            elim_delayed_subst_args ct.FStar_Syntax_Syntax.effect_args  in
          let uu____24090 =
            elim_delayed_subst_cflags ct.FStar_Syntax_Syntax.flags  in
          {
            FStar_Syntax_Syntax.comp_univs =
              (uu___204_24077.FStar_Syntax_Syntax.comp_univs);
            FStar_Syntax_Syntax.effect_name =
              (uu___204_24077.FStar_Syntax_Syntax.effect_name);
            FStar_Syntax_Syntax.result_typ = uu____24078;
            FStar_Syntax_Syntax.effect_args = uu____24081;
            FStar_Syntax_Syntax.flags = uu____24090
          }  in
        mk1 (FStar_Syntax_Syntax.Comp ct1)

and (elim_delayed_subst_meta :
  FStar_Syntax_Syntax.metadata -> FStar_Syntax_Syntax.metadata) =
  fun uu___92_24093  ->
    match uu___92_24093 with
    | FStar_Syntax_Syntax.Meta_pattern args ->
        let uu____24105 = FStar_List.map elim_delayed_subst_args args  in
        FStar_Syntax_Syntax.Meta_pattern uu____24105
    | FStar_Syntax_Syntax.Meta_monadic (m,t) ->
        let uu____24138 =
          let uu____24145 = elim_delayed_subst_term t  in (m, uu____24145)
           in
        FStar_Syntax_Syntax.Meta_monadic uu____24138
    | FStar_Syntax_Syntax.Meta_monadic_lift (m1,m2,t) ->
        let uu____24153 =
          let uu____24162 = elim_delayed_subst_term t  in
          (m1, m2, uu____24162)  in
        FStar_Syntax_Syntax.Meta_monadic_lift uu____24153
    | m -> m

and (elim_delayed_subst_args :
  (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
    FStar_Pervasives_Native.tuple2 Prims.list ->
    (FStar_Syntax_Syntax.term' FStar_Syntax_Syntax.syntax,FStar_Syntax_Syntax.aqual)
      FStar_Pervasives_Native.tuple2 Prims.list)
  =
  fun args  ->
    FStar_List.map
      (fun uu____24185  ->
         match uu____24185 with
         | (t,q) ->
             let uu____24196 = elim_delayed_subst_term t  in (uu____24196, q))
      args

and (elim_delayed_subst_binders :
  (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
    FStar_Pervasives_Native.tuple2 Prims.list ->
    (FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
      FStar_Pervasives_Native.tuple2 Prims.list)
  =
  fun bs  ->
    FStar_List.map
      (fun uu____24216  ->
         match uu____24216 with
         | (x,q) ->
             let uu____24227 =
               let uu___205_24228 = x  in
               let uu____24229 =
                 elim_delayed_subst_term x.FStar_Syntax_Syntax.sort  in
               {
                 FStar_Syntax_Syntax.ppname =
                   (uu___205_24228.FStar_Syntax_Syntax.ppname);
                 FStar_Syntax_Syntax.index =
                   (uu___205_24228.FStar_Syntax_Syntax.index);
                 FStar_Syntax_Syntax.sort = uu____24229
               }  in
             (uu____24227, q)) bs

let (elim_uvars_aux_tc :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.binders ->
        (FStar_Syntax_Syntax.typ,FStar_Syntax_Syntax.comp) FStar_Util.either
          ->
          (FStar_Syntax_Syntax.univ_names,(FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list,(FStar_Syntax_Syntax.term,
                                                         FStar_Syntax_Syntax.comp'
                                                           FStar_Syntax_Syntax.syntax)
                                                         FStar_Util.either)
            FStar_Pervasives_Native.tuple3)
  =
  fun env  ->
    fun univ_names  ->
      fun binders  ->
        fun tc  ->
          let t =
            match (binders, tc) with
            | ([],FStar_Util.Inl t) -> t
            | ([],FStar_Util.Inr c) ->
                failwith "Impossible: empty bindes with a comp"
            | (uu____24305,FStar_Util.Inr c) ->
                FStar_Syntax_Syntax.mk
                  (FStar_Syntax_Syntax.Tm_arrow (binders, c))
                  FStar_Pervasives_Native.None c.FStar_Syntax_Syntax.pos
            | (uu____24311,FStar_Util.Inl t) ->
                let uu____24317 =
                  let uu____24320 =
                    let uu____24321 =
                      let uu____24334 = FStar_Syntax_Syntax.mk_Total t  in
                      (binders, uu____24334)  in
                    FStar_Syntax_Syntax.Tm_arrow uu____24321  in
                  FStar_Syntax_Syntax.mk uu____24320  in
                uu____24317 FStar_Pervasives_Native.None
                  t.FStar_Syntax_Syntax.pos
             in
          let uu____24338 = FStar_Syntax_Subst.open_univ_vars univ_names t
             in
          match uu____24338 with
          | (univ_names1,t1) ->
              let t2 = remove_uvar_solutions env t1  in
              let t3 = FStar_Syntax_Subst.close_univ_vars univ_names1 t2  in
              let t4 = elim_delayed_subst_term t3  in
              let uu____24366 =
                match binders with
                | [] -> ([], (FStar_Util.Inl t4))
                | uu____24421 ->
                    let uu____24422 =
                      let uu____24431 =
                        let uu____24432 = FStar_Syntax_Subst.compress t4  in
                        uu____24432.FStar_Syntax_Syntax.n  in
                      (uu____24431, tc)  in
                    (match uu____24422 with
                     | (FStar_Syntax_Syntax.Tm_arrow
                        (binders1,c),FStar_Util.Inr uu____24457) ->
                         (binders1, (FStar_Util.Inr c))
                     | (FStar_Syntax_Syntax.Tm_arrow
                        (binders1,c),FStar_Util.Inl uu____24494) ->
                         (binders1,
                           (FStar_Util.Inl (FStar_Syntax_Util.comp_result c)))
                     | (uu____24533,FStar_Util.Inl uu____24534) ->
                         ([], (FStar_Util.Inl t4))
                     | uu____24557 -> failwith "Impossible")
                 in
              (match uu____24366 with
               | (binders1,tc1) -> (univ_names1, binders1, tc1))
  
let (elim_uvars_aux_t :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.binders ->
        FStar_Syntax_Syntax.typ ->
          (FStar_Syntax_Syntax.univ_names,(FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list,FStar_Syntax_Syntax.term)
            FStar_Pervasives_Native.tuple3)
  =
  fun env  ->
    fun univ_names  ->
      fun binders  ->
        fun t  ->
          let uu____24662 =
            elim_uvars_aux_tc env univ_names binders (FStar_Util.Inl t)  in
          match uu____24662 with
          | (univ_names1,binders1,tc) ->
              let uu____24720 = FStar_Util.left tc  in
              (univ_names1, binders1, uu____24720)
  
let (elim_uvars_aux_c :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.univ_names ->
      FStar_Syntax_Syntax.binders ->
        FStar_Syntax_Syntax.comp ->
          (FStar_Syntax_Syntax.univ_names,(FStar_Syntax_Syntax.bv,FStar_Syntax_Syntax.aqual)
                                            FStar_Pervasives_Native.tuple2
                                            Prims.list,FStar_Syntax_Syntax.comp'
                                                         FStar_Syntax_Syntax.syntax)
            FStar_Pervasives_Native.tuple3)
  =
  fun env  ->
    fun univ_names  ->
      fun binders  ->
        fun c  ->
          let uu____24755 =
            elim_uvars_aux_tc env univ_names binders (FStar_Util.Inr c)  in
          match uu____24755 with
          | (univ_names1,binders1,tc) ->
              let uu____24815 = FStar_Util.right tc  in
              (univ_names1, binders1, uu____24815)
  
let rec (elim_uvars :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.sigelt -> FStar_Syntax_Syntax.sigelt)
  =
  fun env  ->
    fun s  ->
      match s.FStar_Syntax_Syntax.sigel with
      | FStar_Syntax_Syntax.Sig_inductive_typ
          (lid,univ_names,binders,typ,lids,lids') ->
          let uu____24848 = elim_uvars_aux_t env univ_names binders typ  in
          (match uu____24848 with
           | (univ_names1,binders1,typ1) ->
               let uu___206_24876 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_inductive_typ
                      (lid, univ_names1, binders1, typ1, lids, lids'));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___206_24876.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___206_24876.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___206_24876.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___206_24876.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_bundle (sigs,lids) ->
          let uu___207_24897 = s  in
          let uu____24898 =
            let uu____24899 =
              let uu____24908 = FStar_List.map (elim_uvars env) sigs  in
              (uu____24908, lids)  in
            FStar_Syntax_Syntax.Sig_bundle uu____24899  in
          {
            FStar_Syntax_Syntax.sigel = uu____24898;
            FStar_Syntax_Syntax.sigrng =
              (uu___207_24897.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___207_24897.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___207_24897.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___207_24897.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_datacon (lid,univ_names,typ,lident,i,lids) ->
          let uu____24925 = elim_uvars_aux_t env univ_names [] typ  in
          (match uu____24925 with
           | (univ_names1,uu____24943,typ1) ->
               let uu___208_24957 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_datacon
                      (lid, univ_names1, typ1, lident, i, lids));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___208_24957.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___208_24957.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___208_24957.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___208_24957.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_declare_typ (lid,univ_names,typ) ->
          let uu____24963 = elim_uvars_aux_t env univ_names [] typ  in
          (match uu____24963 with
           | (univ_names1,uu____24981,typ1) ->
               let uu___209_24995 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_declare_typ
                      (lid, univ_names1, typ1));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___209_24995.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___209_24995.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___209_24995.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___209_24995.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_let ((b,lbs),lids) ->
          let lbs1 =
            FStar_All.pipe_right lbs
              (FStar_List.map
                 (fun lb  ->
                    let uu____25029 =
                      FStar_Syntax_Subst.univ_var_opening
                        lb.FStar_Syntax_Syntax.lbunivs
                       in
                    match uu____25029 with
                    | (opening,lbunivs) ->
                        let elim t =
                          let uu____25052 =
                            let uu____25053 =
                              let uu____25054 =
                                FStar_Syntax_Subst.subst opening t  in
                              remove_uvar_solutions env uu____25054  in
                            FStar_Syntax_Subst.close_univ_vars lbunivs
                              uu____25053
                             in
                          elim_delayed_subst_term uu____25052  in
                        let lbtyp = elim lb.FStar_Syntax_Syntax.lbtyp  in
                        let lbdef = elim lb.FStar_Syntax_Syntax.lbdef  in
                        let uu___210_25057 = lb  in
                        {
                          FStar_Syntax_Syntax.lbname =
                            (uu___210_25057.FStar_Syntax_Syntax.lbname);
                          FStar_Syntax_Syntax.lbunivs = lbunivs;
                          FStar_Syntax_Syntax.lbtyp = lbtyp;
                          FStar_Syntax_Syntax.lbeff =
                            (uu___210_25057.FStar_Syntax_Syntax.lbeff);
                          FStar_Syntax_Syntax.lbdef = lbdef;
                          FStar_Syntax_Syntax.lbattrs =
                            (uu___210_25057.FStar_Syntax_Syntax.lbattrs);
                          FStar_Syntax_Syntax.lbpos =
                            (uu___210_25057.FStar_Syntax_Syntax.lbpos)
                        }))
             in
          let uu___211_25058 = s  in
          {
            FStar_Syntax_Syntax.sigel =
              (FStar_Syntax_Syntax.Sig_let ((b, lbs1), lids));
            FStar_Syntax_Syntax.sigrng =
              (uu___211_25058.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___211_25058.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___211_25058.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___211_25058.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_main t ->
          let uu___212_25070 = s  in
          let uu____25071 =
            let uu____25072 = remove_uvar_solutions env t  in
            FStar_Syntax_Syntax.Sig_main uu____25072  in
          {
            FStar_Syntax_Syntax.sigel = uu____25071;
            FStar_Syntax_Syntax.sigrng =
              (uu___212_25070.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___212_25070.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___212_25070.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___212_25070.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_assume (l,us,t) ->
          let uu____25076 = elim_uvars_aux_t env us [] t  in
          (match uu____25076 with
           | (us1,uu____25094,t1) ->
               let uu___213_25108 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_assume (l, us1, t1));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___213_25108.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___213_25108.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___213_25108.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___213_25108.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_new_effect_for_free uu____25109 ->
          failwith "Impossible: should have been desugared already"
      | FStar_Syntax_Syntax.Sig_new_effect ed ->
          let uu____25111 =
            elim_uvars_aux_t env ed.FStar_Syntax_Syntax.univs
              ed.FStar_Syntax_Syntax.binders ed.FStar_Syntax_Syntax.signature
             in
          (match uu____25111 with
           | (univs1,binders,signature) ->
               let uu____25139 =
                 let uu____25148 = FStar_Syntax_Subst.univ_var_opening univs1
                    in
                 match uu____25148 with
                 | (univs_opening,univs2) ->
                     let uu____25175 =
                       FStar_Syntax_Subst.univ_var_closing univs2  in
                     (univs_opening, uu____25175)
                  in
               (match uu____25139 with
                | (univs_opening,univs_closing) ->
                    let uu____25192 =
                      let binders1 = FStar_Syntax_Subst.open_binders binders
                         in
                      let uu____25198 =
                        FStar_Syntax_Subst.opening_of_binders binders1  in
                      let uu____25199 =
                        FStar_Syntax_Subst.closing_of_binders binders1  in
                      (uu____25198, uu____25199)  in
                    (match uu____25192 with
                     | (b_opening,b_closing) ->
                         let n1 = FStar_List.length univs1  in
                         let n_binders = FStar_List.length binders  in
                         let elim_tscheme uu____25221 =
                           match uu____25221 with
                           | (us,t) ->
                               let n_us = FStar_List.length us  in
                               let uu____25239 =
                                 FStar_Syntax_Subst.open_univ_vars us t  in
                               (match uu____25239 with
                                | (us1,t1) ->
                                    let uu____25250 =
                                      let uu____25255 =
                                        FStar_All.pipe_right b_opening
                                          (FStar_Syntax_Subst.shift_subst
                                             n_us)
                                         in
                                      let uu____25262 =
                                        FStar_All.pipe_right b_closing
                                          (FStar_Syntax_Subst.shift_subst
                                             n_us)
                                         in
                                      (uu____25255, uu____25262)  in
                                    (match uu____25250 with
                                     | (b_opening1,b_closing1) ->
                                         let uu____25275 =
                                           let uu____25280 =
                                             FStar_All.pipe_right
                                               univs_opening
                                               (FStar_Syntax_Subst.shift_subst
                                                  n_us)
                                              in
                                           let uu____25289 =
                                             FStar_All.pipe_right
                                               univs_closing
                                               (FStar_Syntax_Subst.shift_subst
                                                  n_us)
                                              in
                                           (uu____25280, uu____25289)  in
                                         (match uu____25275 with
                                          | (univs_opening1,univs_closing1)
                                              ->
                                              let t2 =
                                                let uu____25305 =
                                                  FStar_Syntax_Subst.subst
                                                    b_opening1 t1
                                                   in
                                                FStar_Syntax_Subst.subst
                                                  univs_opening1 uu____25305
                                                 in
                                              let uu____25306 =
                                                elim_uvars_aux_t env [] [] t2
                                                 in
                                              (match uu____25306 with
                                               | (uu____25327,uu____25328,t3)
                                                   ->
                                                   let t4 =
                                                     let uu____25343 =
                                                       let uu____25344 =
                                                         FStar_Syntax_Subst.close_univ_vars
                                                           us1 t3
                                                          in
                                                       FStar_Syntax_Subst.subst
                                                         b_closing1
                                                         uu____25344
                                                        in
                                                     FStar_Syntax_Subst.subst
                                                       univs_closing1
                                                       uu____25343
                                                      in
                                                   (us1, t4)))))
                            in
                         let elim_term t =
                           let uu____25349 =
                             elim_uvars_aux_t env univs1 binders t  in
                           match uu____25349 with
                           | (uu____25362,uu____25363,t1) -> t1  in
                         let elim_action a =
                           let action_typ_templ =
                             let body =
                               FStar_Syntax_Syntax.mk
                                 (FStar_Syntax_Syntax.Tm_ascribed
                                    ((a.FStar_Syntax_Syntax.action_defn),
                                      ((FStar_Util.Inl
                                          (a.FStar_Syntax_Syntax.action_typ)),
                                        FStar_Pervasives_Native.None),
                                      FStar_Pervasives_Native.None))
                                 FStar_Pervasives_Native.None
                                 (a.FStar_Syntax_Syntax.action_defn).FStar_Syntax_Syntax.pos
                                in
                             match a.FStar_Syntax_Syntax.action_params with
                             | [] -> body
                             | uu____25423 ->
                                 FStar_Syntax_Syntax.mk
                                   (FStar_Syntax_Syntax.Tm_abs
                                      ((a.FStar_Syntax_Syntax.action_params),
                                        body, FStar_Pervasives_Native.None))
                                   FStar_Pervasives_Native.None
                                   (a.FStar_Syntax_Syntax.action_defn).FStar_Syntax_Syntax.pos
                              in
                           let destruct_action_body body =
                             let uu____25440 =
                               let uu____25441 =
                                 FStar_Syntax_Subst.compress body  in
                               uu____25441.FStar_Syntax_Syntax.n  in
                             match uu____25440 with
                             | FStar_Syntax_Syntax.Tm_ascribed
                                 (defn,(FStar_Util.Inl
                                        typ,FStar_Pervasives_Native.None ),FStar_Pervasives_Native.None
                                  )
                                 -> (defn, typ)
                             | uu____25500 -> failwith "Impossible"  in
                           let destruct_action_typ_templ t =
                             let uu____25529 =
                               let uu____25530 =
                                 FStar_Syntax_Subst.compress t  in
                               uu____25530.FStar_Syntax_Syntax.n  in
                             match uu____25529 with
                             | FStar_Syntax_Syntax.Tm_abs
                                 (pars,body,uu____25551) ->
                                 let uu____25572 = destruct_action_body body
                                    in
                                 (match uu____25572 with
                                  | (defn,typ) -> (pars, defn, typ))
                             | uu____25617 ->
                                 let uu____25618 = destruct_action_body t  in
                                 (match uu____25618 with
                                  | (defn,typ) -> ([], defn, typ))
                              in
                           let uu____25667 =
                             elim_tscheme
                               ((a.FStar_Syntax_Syntax.action_univs),
                                 action_typ_templ)
                              in
                           match uu____25667 with
                           | (action_univs,t) ->
                               let uu____25676 = destruct_action_typ_templ t
                                  in
                               (match uu____25676 with
                                | (action_params,action_defn,action_typ) ->
                                    let a' =
                                      let uu___214_25717 = a  in
                                      {
                                        FStar_Syntax_Syntax.action_name =
                                          (uu___214_25717.FStar_Syntax_Syntax.action_name);
                                        FStar_Syntax_Syntax.action_unqualified_name
                                          =
                                          (uu___214_25717.FStar_Syntax_Syntax.action_unqualified_name);
                                        FStar_Syntax_Syntax.action_univs =
                                          action_univs;
                                        FStar_Syntax_Syntax.action_params =
                                          action_params;
                                        FStar_Syntax_Syntax.action_defn =
                                          action_defn;
                                        FStar_Syntax_Syntax.action_typ =
                                          action_typ
                                      }  in
                                    a')
                            in
                         let ed1 =
                           let uu___215_25719 = ed  in
                           let uu____25720 =
                             elim_tscheme ed.FStar_Syntax_Syntax.ret_wp  in
                           let uu____25721 =
                             elim_tscheme ed.FStar_Syntax_Syntax.bind_wp  in
                           let uu____25722 =
                             elim_tscheme ed.FStar_Syntax_Syntax.if_then_else
                              in
                           let uu____25723 =
                             elim_tscheme ed.FStar_Syntax_Syntax.ite_wp  in
                           let uu____25724 =
                             elim_tscheme ed.FStar_Syntax_Syntax.stronger  in
                           let uu____25725 =
                             elim_tscheme ed.FStar_Syntax_Syntax.close_wp  in
                           let uu____25726 =
                             elim_tscheme ed.FStar_Syntax_Syntax.assert_p  in
                           let uu____25727 =
                             elim_tscheme ed.FStar_Syntax_Syntax.assume_p  in
                           let uu____25728 =
                             elim_tscheme ed.FStar_Syntax_Syntax.null_wp  in
                           let uu____25729 =
                             elim_tscheme ed.FStar_Syntax_Syntax.trivial  in
                           let uu____25730 =
                             elim_term ed.FStar_Syntax_Syntax.repr  in
                           let uu____25731 =
                             elim_tscheme ed.FStar_Syntax_Syntax.return_repr
                              in
                           let uu____25732 =
                             elim_tscheme ed.FStar_Syntax_Syntax.bind_repr
                              in
                           let uu____25733 =
                             FStar_List.map elim_action
                               ed.FStar_Syntax_Syntax.actions
                              in
                           {
                             FStar_Syntax_Syntax.cattributes =
                               (uu___215_25719.FStar_Syntax_Syntax.cattributes);
                             FStar_Syntax_Syntax.mname =
                               (uu___215_25719.FStar_Syntax_Syntax.mname);
                             FStar_Syntax_Syntax.univs = univs1;
                             FStar_Syntax_Syntax.binders = binders;
                             FStar_Syntax_Syntax.signature = signature;
                             FStar_Syntax_Syntax.ret_wp = uu____25720;
                             FStar_Syntax_Syntax.bind_wp = uu____25721;
                             FStar_Syntax_Syntax.if_then_else = uu____25722;
                             FStar_Syntax_Syntax.ite_wp = uu____25723;
                             FStar_Syntax_Syntax.stronger = uu____25724;
                             FStar_Syntax_Syntax.close_wp = uu____25725;
                             FStar_Syntax_Syntax.assert_p = uu____25726;
                             FStar_Syntax_Syntax.assume_p = uu____25727;
                             FStar_Syntax_Syntax.null_wp = uu____25728;
                             FStar_Syntax_Syntax.trivial = uu____25729;
                             FStar_Syntax_Syntax.repr = uu____25730;
                             FStar_Syntax_Syntax.return_repr = uu____25731;
                             FStar_Syntax_Syntax.bind_repr = uu____25732;
                             FStar_Syntax_Syntax.actions = uu____25733;
                             FStar_Syntax_Syntax.eff_attrs =
                               (uu___215_25719.FStar_Syntax_Syntax.eff_attrs)
                           }  in
                         let uu___216_25736 = s  in
                         {
                           FStar_Syntax_Syntax.sigel =
                             (FStar_Syntax_Syntax.Sig_new_effect ed1);
                           FStar_Syntax_Syntax.sigrng =
                             (uu___216_25736.FStar_Syntax_Syntax.sigrng);
                           FStar_Syntax_Syntax.sigquals =
                             (uu___216_25736.FStar_Syntax_Syntax.sigquals);
                           FStar_Syntax_Syntax.sigmeta =
                             (uu___216_25736.FStar_Syntax_Syntax.sigmeta);
                           FStar_Syntax_Syntax.sigattrs =
                             (uu___216_25736.FStar_Syntax_Syntax.sigattrs)
                         })))
      | FStar_Syntax_Syntax.Sig_sub_effect sub_eff ->
          let elim_tscheme_opt uu___93_25753 =
            match uu___93_25753 with
            | FStar_Pervasives_Native.None  -> FStar_Pervasives_Native.None
            | FStar_Pervasives_Native.Some (us,t) ->
                let uu____25780 = elim_uvars_aux_t env us [] t  in
                (match uu____25780 with
                 | (us1,uu____25804,t1) ->
                     FStar_Pervasives_Native.Some (us1, t1))
             in
          let sub_eff1 =
            let uu___217_25823 = sub_eff  in
            let uu____25824 =
              elim_tscheme_opt sub_eff.FStar_Syntax_Syntax.lift_wp  in
            let uu____25827 =
              elim_tscheme_opt sub_eff.FStar_Syntax_Syntax.lift  in
            {
              FStar_Syntax_Syntax.source =
                (uu___217_25823.FStar_Syntax_Syntax.source);
              FStar_Syntax_Syntax.target =
                (uu___217_25823.FStar_Syntax_Syntax.target);
              FStar_Syntax_Syntax.lift_wp = uu____25824;
              FStar_Syntax_Syntax.lift = uu____25827
            }  in
          let uu___218_25830 = s  in
          {
            FStar_Syntax_Syntax.sigel =
              (FStar_Syntax_Syntax.Sig_sub_effect sub_eff1);
            FStar_Syntax_Syntax.sigrng =
              (uu___218_25830.FStar_Syntax_Syntax.sigrng);
            FStar_Syntax_Syntax.sigquals =
              (uu___218_25830.FStar_Syntax_Syntax.sigquals);
            FStar_Syntax_Syntax.sigmeta =
              (uu___218_25830.FStar_Syntax_Syntax.sigmeta);
            FStar_Syntax_Syntax.sigattrs =
              (uu___218_25830.FStar_Syntax_Syntax.sigattrs)
          }
      | FStar_Syntax_Syntax.Sig_effect_abbrev
          (lid,univ_names,binders,comp,flags1) ->
          let uu____25840 = elim_uvars_aux_c env univ_names binders comp  in
          (match uu____25840 with
           | (univ_names1,binders1,comp1) ->
               let uu___219_25874 = s  in
               {
                 FStar_Syntax_Syntax.sigel =
                   (FStar_Syntax_Syntax.Sig_effect_abbrev
                      (lid, univ_names1, binders1, comp1, flags1));
                 FStar_Syntax_Syntax.sigrng =
                   (uu___219_25874.FStar_Syntax_Syntax.sigrng);
                 FStar_Syntax_Syntax.sigquals =
                   (uu___219_25874.FStar_Syntax_Syntax.sigquals);
                 FStar_Syntax_Syntax.sigmeta =
                   (uu___219_25874.FStar_Syntax_Syntax.sigmeta);
                 FStar_Syntax_Syntax.sigattrs =
                   (uu___219_25874.FStar_Syntax_Syntax.sigattrs)
               })
      | FStar_Syntax_Syntax.Sig_pragma uu____25885 -> s
      | FStar_Syntax_Syntax.Sig_splice uu____25886 -> s
  
let (erase_universes :
  FStar_TypeChecker_Env.env ->
    FStar_Syntax_Syntax.term -> FStar_Syntax_Syntax.term)
  =
  fun env  ->
    fun t  -> normalize [EraseUniverses; AllowUnboundUniverses] env t
  