open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_drawing_area_new" (void @-> returning (Widget.t_typ))
