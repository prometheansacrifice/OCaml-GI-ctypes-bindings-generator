open Ctypes
open Foreign

type t
let t_typ : t structure typ = structure "Checksum"

let create =
  foreign "g_checksum_new" (Checksum_type.t_view @-> returning (ptr t_typ))
let copy =
  foreign "g_checksum_copy" (ptr t_typ @-> returning (ptr t_typ))
let free =
  foreign "g_checksum_free" (ptr t_typ @-> returning (void))
let get_string =
  foreign "g_checksum_get_string" (ptr t_typ @-> returning (string_opt))
let reset =
  foreign "g_checksum_reset" (ptr t_typ @-> returning (void))
(*Not implemented g_checksum_update type C Array type for Types.Array tag not implemented*)
let type_get_length =
  foreign "g_checksum_type_get_length" (Checksum_type.t_view @-> returning (int64_t))
