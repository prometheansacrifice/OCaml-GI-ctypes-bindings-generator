open Ctypes

type t
val t_typ : t typ

val create_from_file :
  string -> (t ptr option, Error.t structure ptr option) result
val create_from_files :
  string -> string -> (t ptr option, Error.t structure ptr option) result
val create_from_pem :
  string -> int64 -> (t ptr option, Error.t structure ptr option) result
val list_create_from_file :
  string -> (List.t structure (* Not implemented : interface *) ptr option, Error.t structure ptr option) result
val get_issuer :
  t -> t ptr
val is_same :
  t -> t ptr -> bool
(*Not implemented g_tls_certificate_verify type interface not implemented*)
