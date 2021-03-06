(*
 * Copyright 2017 Cedric LE MOIGNE, cedlemo@gmx.com
 * This file is part of OCaml-GObject-Introspection.
 *
 * OCaml-GObject-Introspection is free software: you can redistribute it and/or modify
 * it under the terms of the GNU General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * any later version.
 *
 * OCaml-GObject-Introspection is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with OCaml-GObject-Introspection.  If not, see <http://www.gnu.org/licenses/>.
 *)

(** Bind_enum : regroups all functions needed to parse and generate the
    OCaml code for C enums. Flags are enums for which the constants can be
    OR"ed". *)

open Ctypes
open Foreign
open GObject_introspection

val append_enum_type:
  (string * string) list -> Binding_utils.File.t -> unit

val append_enum_of_value_fn:
  string -> string -> (string * string) list -> Binding_utils.Sources.t -> unit

val append_enum_to_value_fn:
  string -> string -> (string * string) list -> Binding_utils.Sources.t -> unit

val append_enum_view:
  string -> Binding_utils.Sources.t -> unit

val get_values_and_variants:
  Enum_info.t structure ptr -> (string * string) list

val append_ctypes_enum_bindings:
  string -> Enum_info.t structure ptr -> Binding_utils.Sources.t -> unit

val append_flags_types:
  (string * string) list -> Binding_utils.File.t -> unit

val append_flags_list_to_value_fn:
  string -> string -> Binding_utils.Sources.t -> unit

val append_flags_list_of_value_fn:
  string -> string -> (string * string) list -> Binding_utils.Sources.t -> unit

val append_flags_view:
  string -> Binding_utils.Sources.t -> unit

val append_ctypes_flags_bindings:
  string -> Enum_info.t structure ptr -> Binding_utils.Sources.t -> unit

(** Use Enum_info in order to generate Ctypes bindings.
    It creates an enumname view and all the conversion functions. *)
val parse_enum_info :
  Base_info.t structure ptr -> Binding_utils.Sources.t -> unit

(** Use Enum_info in order to generate Ctypes bindings.
    It creates an enumname_list view and all the conversion functions. *)
val parse_flags_info :
  Base_info.t structure ptr -> Binding_utils.Sources.t -> unit
