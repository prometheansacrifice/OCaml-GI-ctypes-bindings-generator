open Ctypes

type t
val t_typ : t structure typ

val create :
  Checksum_type.t -> t structure ptr
val copy :
  t structure ptr -> t structure ptr
val free :
  t structure ptr -> unit
val get_string :
  t structure ptr -> string option
val reset :
  t structure ptr -> unit
(*Not implemented g_checksum_update type C Array type for Types.Array tag not implemented*)
val type_get_length :
  Checksum_type.t -> int64
