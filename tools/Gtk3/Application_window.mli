open Ctypes

type t
val t_typ : t typ

val create :
  Application.t ptr -> Widget.t ptr
val get_help_overlay :
  t -> Shortcuts_window.t ptr option
val get_id :
  t -> Unsigned.uint32
val get_show_menubar :
  t -> bool
val set_help_overlay :
  t -> Shortcuts_window.t ptr option -> unit
val set_show_menubar :
  t -> bool -> unit
