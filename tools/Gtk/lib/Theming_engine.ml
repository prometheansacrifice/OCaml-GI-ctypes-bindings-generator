open Ctypes
open Foreign

type t = unit ptr
let t_typ : t typ = ptr void

(*Not implemented gtk_theming_engine_load return type object not handled*)
let get_background_color self state =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let get_background_color_raw =
    foreign "gtk_theming_engine_get_background_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning void)
  in
  let ret = get_background_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)
let get_border self state =
  let border_ptr = allocate Border.t_typ (make Border.t_typ) in
  let get_border_raw =
    foreign "gtk_theming_engine_get_border" (ptr t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning void)
  in
  let ret = get_border_raw self state border_ptr in
  let border = !@ border_ptr in
  (border)
let get_border_color self state =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let get_border_color_raw =
    foreign "gtk_theming_engine_get_border_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning void)
  in
  let ret = get_border_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)
let get_color self state =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let get_color_raw =
    foreign "gtk_theming_engine_get_color" (ptr t_typ @-> State_flags.t_list_view @-> ptr (RGBA.t_typ) @-> returning void)
  in
  let ret = get_color_raw self state color_ptr in
  let color = !@ color_ptr in
  (color)
let get_direction =
  foreign "gtk_theming_engine_get_direction" (ptr t_typ @-> returning (Text_direction.t_view))
let get_font =
  foreign "gtk_theming_engine_get_font" (ptr t_typ @-> State_flags.t_list_view @-> returning (ptr Font_description.t_typ))
let get_junction_sides =
  foreign "gtk_theming_engine_get_junction_sides" (ptr t_typ @-> returning (Junction_sides.t_list_view))
let get_margin self state =
  let margin_ptr = allocate Border.t_typ (make Border.t_typ) in
  let get_margin_raw =
    foreign "gtk_theming_engine_get_margin" (ptr t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning void)
  in
  let ret = get_margin_raw self state margin_ptr in
  let margin = !@ margin_ptr in
  (margin)
let get_padding self state =
  let padding_ptr = allocate Border.t_typ (make Border.t_typ) in
  let get_padding_raw =
    foreign "gtk_theming_engine_get_padding" (ptr t_typ @-> State_flags.t_list_view @-> ptr (Border.t_typ) @-> returning void)
  in
  let ret = get_padding_raw self state padding_ptr in
  let padding = !@ padding_ptr in
  (padding)
let get_path =
  foreign "gtk_theming_engine_get_path" (ptr t_typ @-> returning (ptr Widget_path.t_typ))
let get_property self property state =
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let get_property_raw =
    foreign "gtk_theming_engine_get_property" (ptr t_typ @-> string @-> State_flags.t_list_view @-> ptr (Value.t_typ) @-> returning void)
  in
  let ret = get_property_raw self property state value_ptr in
  let value = !@ value_ptr in
  (value)
(*Not implemented gtk_theming_engine_get_screen return type object not handled*)
let get_state =
  foreign "gtk_theming_engine_get_state" (ptr t_typ @-> returning (State_flags.t_list_view))
let get_style_property self property_name =
  let value_ptr = allocate Value.t_typ (make Value.t_typ) in
  let get_style_property_raw =
    foreign "gtk_theming_engine_get_style_property" (ptr t_typ @-> string @-> ptr (Value.t_typ) @-> returning void)
  in
  let ret = get_style_property_raw self property_name value_ptr in
  let value = !@ value_ptr in
  (value)
let has_class =
  foreign "gtk_theming_engine_has_class" (ptr t_typ @-> string @-> returning (bool))
let has_region self style_region =
  let flags_ptr = allocate Region_flags.t_view (Region_flags.t_view.of_value (Unsigned.UInt32.zero)) in
  let has_region_raw =
    foreign "gtk_theming_engine_has_region" (ptr t_typ @-> string @-> ptr (Region_flags.t_list_view) @-> returning bool)
  in
  let ret = has_region_raw self style_region flags_ptr in
  let flags = (!@ flags_ptr) in
  (ret, flags)
let lookup_color self color_name =
  let color_ptr = allocate RGBA.t_typ (make RGBA.t_typ) in
  let lookup_color_raw =
    foreign "gtk_theming_engine_lookup_color" (ptr t_typ @-> string @-> ptr (RGBA.t_typ) @-> returning bool)
  in
  let ret = lookup_color_raw self color_name color_ptr in
  let color = !@ color_ptr in
  (ret, color)
let state_is_running self state =
  let progress_ptr = allocate double 0.0 in
  let state_is_running_raw =
    foreign "gtk_theming_engine_state_is_running" (ptr t_typ @-> State_type.t_view @-> ptr (double) @-> returning bool)
  in
  let ret = state_is_running_raw self state progress_ptr in
  let progress = !@ progress_ptr in
  (ret, progress)
