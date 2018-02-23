open Ctypes

type t
val t_typ : t typ

val create:
  string -> string option -> string option -> string option -> Action.t
val create_for_manager:
  string -> string option -> string option -> string option -> Recent_manager.t -> Action.t
val get_show_numbers:
  t -> bool
val set_show_numbers:
  t -> bool -> unit
