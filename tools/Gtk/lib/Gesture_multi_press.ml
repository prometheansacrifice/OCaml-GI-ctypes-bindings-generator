open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_gesture_multi_press_new type object not implemented*)
let get_area self =
  let rect_ptr = allocate Rectangle.t_typ (make Rectangle.t_typ) in
  let get_area_raw =
    foreign "gtk_gesture_multi_press_get_area" (ptr t_typ @-> ptr (Rectangle.t_typ) @-> returning bool)
  in
  let ret = get_area_raw self rect_ptr in
  let rect = !@ rect_ptr in
  (ret, rect)
let set_area =
  foreign "gtk_gesture_multi_press_set_area" (ptr t_typ @-> ptr_opt Rectangle.t_typ @-> returning (void))
