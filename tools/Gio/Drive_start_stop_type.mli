open Ctypes

type t = Unknown | Shutdown | Network | Multidisk | Password

val of_value:
  Unsigned.uint32 -> t

val to_value:
  t -> Unsigned.uint32

val t_view: t typ

