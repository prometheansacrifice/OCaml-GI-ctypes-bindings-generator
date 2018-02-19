open Ctypes

type t = Below | Above | Below_text | Above_text

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

