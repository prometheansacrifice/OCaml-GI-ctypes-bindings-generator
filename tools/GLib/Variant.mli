open Ctypes

type t
val t_typ : t structure typ

(*Not implemented g_variant_new_array type C Array type for Types.Array tag not implemented*)
val create_boolean :
  bool -> t structure ptr
val create_byte :
  Unsigned.uint8 -> t structure ptr
(*Not implemented g_variant_new_bytestring type C Array type for Types.Array tag not implemented*)
(*Not implemented g_variant_new_bytestring_array type C Array type for Types.Array tag not implemented*)
val create_dict_entry :
  t structure ptr -> t structure ptr -> t structure ptr
val create_double :
  float -> t structure ptr
val create_fixed_array :
  Variant_type.t structure ptr -> unit ptr option -> Unsigned.uint64 -> Unsigned.uint64 -> t structure ptr
val create_from_bytes :
  Variant_type.t structure ptr -> Bytes.t structure ptr -> bool -> t structure ptr
(*Not implemented g_variant_new_from_data type C Array type for Types.Array tag not implemented*)
val create_handle :
  int32 -> t structure ptr
val create_int16 :
  int -> t structure ptr
val create_int32 :
  int32 -> t structure ptr
val create_int64 :
  int64 -> t structure ptr
val create_maybe :
  Variant_type.t structure ptr option -> t structure ptr option -> t structure ptr
val create_object_path :
  string -> t structure ptr
(*Not implemented g_variant_new_objv type C Array type for Types.Array tag not implemented*)
val create_signature :
  string -> t structure ptr
val create_string :
  string -> t structure ptr
(*Not implemented g_variant_new_strv type C Array type for Types.Array tag not implemented*)
(*Not implemented g_variant_new_tuple type C Array type for Types.Array tag not implemented*)
val create_uint16 :
  Unsigned.uint16 -> t structure ptr
val create_uint32 :
  Unsigned.uint32 -> t structure ptr
val create_uint64 :
  Unsigned.uint64 -> t structure ptr
val create_variant :
  t structure ptr -> t structure ptr
val byteswap :
  t structure ptr -> t structure ptr
val check_format_string :
  t structure ptr -> string -> bool -> bool
val classify :
  t structure ptr -> Variant_class.t
val compare :
  t structure ptr -> t structure ptr -> int32
(*Not implemented g_variant_dup_bytestring return type C Array type for Types.Array tag not handled*)
(*Not implemented g_variant_dup_bytestring_array return type C Array type for Types.Array tag not handled*)
(*Not implemented g_variant_dup_objv return type C Array type for Types.Array tag not handled*)
val dup_string :
  t structure ptr -> (string option * Unsigned.uint64)
(*Not implemented g_variant_dup_strv return type C Array type for Types.Array tag not handled*)
val equal :
  t structure ptr -> t structure ptr -> bool
val get_boolean :
  t structure ptr -> bool
val get_byte :
  t structure ptr -> Unsigned.uint8
(*Not implemented g_variant_get_bytestring return type C Array type for Types.Array tag not handled*)
(*Not implemented g_variant_get_bytestring_array return type C Array type for Types.Array tag not handled*)
val get_child_value :
  t structure ptr -> Unsigned.uint64 -> t structure ptr
val get_data :
  t structure ptr -> unit ptr option
val get_data_as_bytes :
  t structure ptr -> Bytes.t structure ptr
val get_double :
  t structure ptr -> float
val get_handle :
  t structure ptr -> int32
val get_int16 :
  t structure ptr -> int
val get_int32 :
  t structure ptr -> int32
val get_int64 :
  t structure ptr -> int64
val get_maybe :
  t structure ptr -> t structure ptr option
val get_normal_form :
  t structure ptr -> t structure ptr
(*Not implemented g_variant_get_objv return type C Array type for Types.Array tag not handled*)
val get_size :
  t structure ptr -> Unsigned.uint64
val get_string :
  t structure ptr -> (string option * Unsigned.uint64)
(*Not implemented g_variant_get_strv return type C Array type for Types.Array tag not handled*)
val get_type :
  t structure ptr -> Variant_type.t structure ptr
val get_type_string :
  t structure ptr -> string option
val get_uint16 :
  t structure ptr -> Unsigned.uint16
val get_uint32 :
  t structure ptr -> Unsigned.uint32
val get_uint64 :
  t structure ptr -> Unsigned.uint64
val get_variant :
  t structure ptr -> t structure ptr
val hash :
  t structure ptr -> Unsigned.uint32
val is_container :
  t structure ptr -> bool
val is_floating :
  t structure ptr -> bool
val is_normal_form :
  t structure ptr -> bool
val is_of_type :
  t structure ptr -> Variant_type.t structure ptr -> bool
val lookup_value :
  t structure ptr -> string -> Variant_type.t structure ptr option -> t structure ptr
val n_children :
  t structure ptr -> Unsigned.uint64
val print :
  t structure ptr -> bool -> string option
val incr_ref :
  t structure ptr -> t structure ptr
val ref_sink :
  t structure ptr -> t structure ptr
val store :
  t structure ptr -> unit ptr -> unit
val take_ref :
  t structure ptr -> t structure ptr
val unref :
  t structure ptr -> unit
val is_object_path :
  string -> bool
val is_signature :
  string -> bool
val parse :
  Variant_type.t structure ptr option -> string -> string option -> string option -> (t structure ptr option, Error.t structure ptr option) result
val parse_error_print_context :
  Error.t structure ptr -> string -> string option
val parse_error_quark :
  unit -> Unsigned.uint32
val parser_get_error_quark :
  unit -> Unsigned.uint32
