open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

let create =
  foreign "gtk_vscale_new" (ptr Adjustment.t_typ @-> returning (ptr Widget.t_typ))
let create_with_range =
  foreign "gtk_vscale_new_with_range" (double @-> double @-> double @-> returning (ptr Widget.t_typ))
