open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_cell_renderer_combo_new" (void @-> returning (Cell_renderer.t_typ))
