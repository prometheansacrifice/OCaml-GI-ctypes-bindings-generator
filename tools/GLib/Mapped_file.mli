open Ctypes

type t
val t_typ : t structure typ

val create :
  string -> bool -> (t structure ptr option, Error.t structure ptr option) result
val create_from_fd :
  int32 -> bool -> (t structure ptr option, Error.t structure ptr option) result
val free :
  t structure ptr -> unit
val get_bytes :
  t structure ptr -> Bytes.t structure ptr
val get_contents :
  t structure ptr -> string option
val get_length :
  t structure ptr -> Unsigned.uint64
val incr_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
