open Ctypes

type t
val t_typ : t typ

val create:
  unit -> IMContext.t
val add_compose_file:
  t -> string -> unit
