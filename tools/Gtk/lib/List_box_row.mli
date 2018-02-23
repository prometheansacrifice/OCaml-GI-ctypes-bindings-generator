open Ctypes

type t
val t_typ : t typ

val create:
  unit -> Widget.t
val changed:
  t -> unit
val get_activatable:
  t -> bool
val get_header:
  t -> Widget.t
val get_index:
  t -> int32
val get_selectable:
  t -> bool
val is_selected:
  t -> bool
val set_activatable:
  t -> bool -> unit
val set_header:
  t -> Widget.t -> unit
val set_selectable:
  t -> bool -> unit
