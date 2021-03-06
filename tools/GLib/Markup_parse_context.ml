open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Markup_parse_context"

(*Not implemented g_markup_parse_context_new type callback not implemented*)
let end_parse self =
  let end_parse_raw =
    foreign "g_markup_parse_context_end_parse" (ptr t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = end_parse_raw self err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let free =
  foreign "g_markup_parse_context_free" (ptr t_typ @-> returning (void))
let get_element =
  foreign "g_markup_parse_context_get_element" (ptr t_typ @-> returning (string_opt))
let get_position =
  foreign "g_markup_parse_context_get_position" (ptr t_typ @-> ptr_opt int32_t @-> ptr_opt int32_t @-> returning (void))
let get_user_data =
  foreign "g_markup_parse_context_get_user_data" (ptr t_typ @-> returning (ptr_opt void))
let parse self text text_len =
  let parse_raw =
    foreign "g_markup_parse_context_parse" (ptr t_typ @-> string @-> int64_t @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = parse_raw self text text_len err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let pop =
  foreign "g_markup_parse_context_pop" (ptr t_typ @-> returning (ptr_opt void))
let push =
  foreign "g_markup_parse_context_push" (ptr t_typ @-> ptr Markup_parser.t_typ @-> ptr_opt void @-> returning (void))
let incr_ref =
  foreign "g_markup_parse_context_ref" (ptr t_typ @-> returning (ptr t_typ))
let unref =
  foreign "g_markup_parse_context_unref" (ptr t_typ @-> returning (void))
