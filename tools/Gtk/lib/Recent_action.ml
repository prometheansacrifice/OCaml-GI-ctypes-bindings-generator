open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_recent_action_new return type object not handled*)
(*Not implemented gtk_recent_action_new_for_manager type object not implemented*)
let get_show_numbers =
  foreign "gtk_recent_action_get_show_numbers" (ptr t_typ @-> returning (bool))
let set_show_numbers =
  foreign "gtk_recent_action_set_show_numbers" (ptr t_typ @-> bool @-> returning (void))
