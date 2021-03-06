open Ctypes

type t
val t_typ : t typ

val create :
  unit -> Widget.t ptr
val add_action_widget :
  t -> Widget.t ptr -> int32 -> unit
val add_button :
  t -> string -> int32 -> Widget.t ptr
val get_action_area :
  t -> Widget.t ptr
val get_content_area :
  t -> Box.t ptr
val get_header_bar :
  t -> Widget.t ptr
val get_response_for_widget :
  t -> Widget.t ptr -> int32
val get_widget_for_response :
  t -> int32 -> Widget.t ptr option
val response :
  t -> int32 -> unit
val run :
  t -> int32
(*Not implemented gtk_dialog_set_alternative_button_order_from_array type C Array type for Types.Array tag not implemented*)
val set_default_response :
  t -> int32 -> unit
val set_response_sensitive :
  t -> int32 -> bool -> unit
