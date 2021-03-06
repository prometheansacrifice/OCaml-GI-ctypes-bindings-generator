open Ctypes
open Foreign

let c_DESKTOP_APP_INFO_LOOKUP_EXTENSION_POINT_NAME = "gio-desktop-app-info-lookup"
let c_FILE_ATTRIBUTE_ACCESS_CAN_DELETE = "access::can-delete"
let c_FILE_ATTRIBUTE_ACCESS_CAN_EXECUTE = "access::can-execute"
let c_FILE_ATTRIBUTE_ACCESS_CAN_READ = "access::can-read"
let c_FILE_ATTRIBUTE_ACCESS_CAN_RENAME = "access::can-rename"
let c_FILE_ATTRIBUTE_ACCESS_CAN_TRASH = "access::can-trash"
let c_FILE_ATTRIBUTE_ACCESS_CAN_WRITE = "access::can-write"
let c_FILE_ATTRIBUTE_DOS_IS_ARCHIVE = "dos::is-archive"
let c_FILE_ATTRIBUTE_DOS_IS_SYSTEM = "dos::is-system"
let c_FILE_ATTRIBUTE_ETAG_VALUE = "etag::value"
let c_FILE_ATTRIBUTE_FILESYSTEM_FREE = "filesystem::free"
let c_FILE_ATTRIBUTE_FILESYSTEM_READONLY = "filesystem::readonly"
let c_FILE_ATTRIBUTE_FILESYSTEM_REMOTE = "filesystem::remote"
let c_FILE_ATTRIBUTE_FILESYSTEM_SIZE = "filesystem::size"
let c_FILE_ATTRIBUTE_FILESYSTEM_TYPE = "filesystem::type"
let c_FILE_ATTRIBUTE_FILESYSTEM_USED = "filesystem::used"
let c_FILE_ATTRIBUTE_FILESYSTEM_USE_PREVIEW = "filesystem::use-preview"
let c_FILE_ATTRIBUTE_GVFS_BACKEND = "gvfs::backend"
let c_FILE_ATTRIBUTE_ID_FILE = "id::file"
let c_FILE_ATTRIBUTE_ID_FILESYSTEM = "id::filesystem"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_EJECT = "mountable::can-eject"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_MOUNT = "mountable::can-mount"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_POLL = "mountable::can-poll"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_START = "mountable::can-start"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_START_DEGRADED = "mountable::can-start-degraded"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_STOP = "mountable::can-stop"
let c_FILE_ATTRIBUTE_MOUNTABLE_CAN_UNMOUNT = "mountable::can-unmount"
let c_FILE_ATTRIBUTE_MOUNTABLE_HAL_UDI = "mountable::hal-udi"
let c_FILE_ATTRIBUTE_MOUNTABLE_IS_MEDIA_CHECK_AUTOMATIC = "mountable::is-media-check-automatic"
let c_FILE_ATTRIBUTE_MOUNTABLE_START_STOP_TYPE = "mountable::start-stop-type"
let c_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE = "mountable::unix-device"
let c_FILE_ATTRIBUTE_MOUNTABLE_UNIX_DEVICE_FILE = "mountable::unix-device-file"
let c_FILE_ATTRIBUTE_OWNER_GROUP = "owner::group"
let c_FILE_ATTRIBUTE_OWNER_USER = "owner::user"
let c_FILE_ATTRIBUTE_OWNER_USER_REAL = "owner::user-real"
let c_FILE_ATTRIBUTE_PREVIEW_ICON = "preview::icon"
let c_FILE_ATTRIBUTE_RECENT_MODIFIED = "recent::modified"
let c_FILE_ATTRIBUTE_SELINUX_CONTEXT = "selinux::context"
let c_FILE_ATTRIBUTE_STANDARD_ALLOCATED_SIZE = "standard::allocated-size"
let c_FILE_ATTRIBUTE_STANDARD_CONTENT_TYPE = "standard::content-type"
let c_FILE_ATTRIBUTE_STANDARD_COPY_NAME = "standard::copy-name"
let c_FILE_ATTRIBUTE_STANDARD_DESCRIPTION = "standard::description"
let c_FILE_ATTRIBUTE_STANDARD_DISPLAY_NAME = "standard::display-name"
let c_FILE_ATTRIBUTE_STANDARD_EDIT_NAME = "standard::edit-name"
let c_FILE_ATTRIBUTE_STANDARD_FAST_CONTENT_TYPE = "standard::fast-content-type"
let c_FILE_ATTRIBUTE_STANDARD_ICON = "standard::icon"
let c_FILE_ATTRIBUTE_STANDARD_IS_BACKUP = "standard::is-backup"
let c_FILE_ATTRIBUTE_STANDARD_IS_HIDDEN = "standard::is-hidden"
let c_FILE_ATTRIBUTE_STANDARD_IS_SYMLINK = "standard::is-symlink"
let c_FILE_ATTRIBUTE_STANDARD_IS_VIRTUAL = "standard::is-virtual"
let c_FILE_ATTRIBUTE_STANDARD_IS_VOLATILE = "standard::is-volatile"
let c_FILE_ATTRIBUTE_STANDARD_NAME = "standard::name"
let c_FILE_ATTRIBUTE_STANDARD_SIZE = "standard::size"
let c_FILE_ATTRIBUTE_STANDARD_SORT_ORDER = "standard::sort-order"
let c_FILE_ATTRIBUTE_STANDARD_SYMBOLIC_ICON = "standard::symbolic-icon"
let c_FILE_ATTRIBUTE_STANDARD_SYMLINK_TARGET = "standard::symlink-target"
let c_FILE_ATTRIBUTE_STANDARD_TARGET_URI = "standard::target-uri"
let c_FILE_ATTRIBUTE_STANDARD_TYPE = "standard::type"
let c_FILE_ATTRIBUTE_THUMBNAILING_FAILED = "thumbnail::failed"
let c_FILE_ATTRIBUTE_THUMBNAIL_IS_VALID = "thumbnail::is-valid"
let c_FILE_ATTRIBUTE_THUMBNAIL_PATH = "thumbnail::path"
let c_FILE_ATTRIBUTE_TIME_ACCESS = "time::access"
let c_FILE_ATTRIBUTE_TIME_ACCESS_USEC = "time::access-usec"
let c_FILE_ATTRIBUTE_TIME_CHANGED = "time::changed"
let c_FILE_ATTRIBUTE_TIME_CHANGED_USEC = "time::changed-usec"
let c_FILE_ATTRIBUTE_TIME_CREATED = "time::created"
let c_FILE_ATTRIBUTE_TIME_CREATED_USEC = "time::created-usec"
let c_FILE_ATTRIBUTE_TIME_MODIFIED = "time::modified"
let c_FILE_ATTRIBUTE_TIME_MODIFIED_USEC = "time::modified-usec"
let c_FILE_ATTRIBUTE_TRASH_DELETION_DATE = "trash::deletion-date"
let c_FILE_ATTRIBUTE_TRASH_ITEM_COUNT = "trash::item-count"
let c_FILE_ATTRIBUTE_TRASH_ORIG_PATH = "trash::orig-path"
let c_FILE_ATTRIBUTE_UNIX_BLOCKS = "unix::blocks"
let c_FILE_ATTRIBUTE_UNIX_BLOCK_SIZE = "unix::block-size"
let c_FILE_ATTRIBUTE_UNIX_DEVICE = "unix::device"
let c_FILE_ATTRIBUTE_UNIX_GID = "unix::gid"
let c_FILE_ATTRIBUTE_UNIX_INODE = "unix::inode"
let c_FILE_ATTRIBUTE_UNIX_IS_MOUNTPOINT = "unix::is-mountpoint"
let c_FILE_ATTRIBUTE_UNIX_MODE = "unix::mode"
let c_FILE_ATTRIBUTE_UNIX_NLINK = "unix::nlink"
let c_FILE_ATTRIBUTE_UNIX_RDEV = "unix::rdev"
let c_FILE_ATTRIBUTE_UNIX_UID = "unix::uid"
let c_MENU_ATTRIBUTE_ACTION = "action"
let c_MENU_ATTRIBUTE_ACTION_NAMESPACE = "action-namespace"
let c_MENU_ATTRIBUTE_ICON = "icon"
let c_MENU_ATTRIBUTE_LABEL = "label"
let c_MENU_ATTRIBUTE_TARGET = "target"
let c_MENU_LINK_SECTION = "section"
let c_MENU_LINK_SUBMENU = "submenu"
let c_NATIVE_VOLUME_MONITOR_EXTENSION_POINT_NAME = "gio-native-volume-monitor"
let c_NETWORK_MONITOR_EXTENSION_POINT_NAME = "gio-network-monitor"
let c_PROXY_EXTENSION_POINT_NAME = "gio-proxy"
let c_PROXY_RESOLVER_EXTENSION_POINT_NAME = "gio-proxy-resolver"
let c_SETTINGS_BACKEND_EXTENSION_POINT_NAME = "gsettings-backend"
let c_TLS_BACKEND_EXTENSION_POINT_NAME = "gio-tls-backend"
let c_TLS_DATABASE_PURPOSE_AUTHENTICATE_CLIENT = "1.3.6.1.5.5.7.3.2"
let c_TLS_DATABASE_PURPOSE_AUTHENTICATE_SERVER = "1.3.6.1.5.5.7.3.1"
let c_VFS_EXTENSION_POINT_NAME = "gio-vfs"
let c_VOLUME_IDENTIFIER_KIND_CLASS = "class"
let c_VOLUME_IDENTIFIER_KIND_HAL_UDI = "hal-udi"
let c_VOLUME_IDENTIFIER_KIND_LABEL = "label"
let c_VOLUME_IDENTIFIER_KIND_NFS_MOUNT = "nfs-mount"
let c_VOLUME_IDENTIFIER_KIND_UNIX_DEVICE = "unix-device"
let c_VOLUME_IDENTIFIER_KIND_UUID = "uuid"
let c_VOLUME_MONITOR_EXTENSION_POINT_NAME = "gio-volume-monitor"
(*DEPRECATED : async_initable_newv_async*)
(*DEPRECATED : initable_newv*)
(*DEPRECATED : io_scheduler_cancel_all_jobs*)
(*DEPRECATED : io_scheduler_push_job*)
(*DEPRECATED : simple_async_report_gerror_in_idle*)
let unix_mounts_get () =
  let unix_mounts_get_raw =
    foreign "g_unix_mounts_get" (ptr (uint64_t) @-> returning (ptr List.t_typ))
  in
  let time_read_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = unix_mounts_get_raw time_read_ptr in
  let time_read = !@ time_read_ptr in
  (ret, time_read)

let unix_mounts_changed_since =
  foreign "g_unix_mounts_changed_since" (uint64_t @-> returning (bool))

let unix_mount_points_get () =
  let unix_mount_points_get_raw =
    foreign "g_unix_mount_points_get" (ptr (uint64_t) @-> returning (ptr List.t_typ))
  in
  let time_read_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = unix_mount_points_get_raw time_read_ptr in
  let time_read = !@ time_read_ptr in
  (ret, time_read)

let unix_mount_points_changed_since =
  foreign "g_unix_mount_points_changed_since" (uint64_t @-> returning (bool))

let unix_mount_is_system_internal =
  foreign "g_unix_mount_is_system_internal" (ptr Unix_mount_entry.t_typ @-> returning (bool))

let unix_mount_is_readonly =
  foreign "g_unix_mount_is_readonly" (ptr Unix_mount_entry.t_typ @-> returning (bool))

(*Not implemented g_unix_mount_guess_symbolic_icon return type interface not handled*)

let unix_mount_guess_should_display =
  foreign "g_unix_mount_guess_should_display" (ptr Unix_mount_entry.t_typ @-> returning (bool))

let unix_mount_guess_name =
  foreign "g_unix_mount_guess_name" (ptr Unix_mount_entry.t_typ @-> returning (string_opt))

(*Not implemented g_unix_mount_guess_icon return type interface not handled*)

let unix_mount_guess_can_eject =
  foreign "g_unix_mount_guess_can_eject" (ptr Unix_mount_entry.t_typ @-> returning (bool))

let unix_mount_get_mount_path =
  foreign "g_unix_mount_get_mount_path" (ptr Unix_mount_entry.t_typ @-> returning (string_opt))

let unix_mount_get_fs_type =
  foreign "g_unix_mount_get_fs_type" (ptr Unix_mount_entry.t_typ @-> returning (string_opt))

let unix_mount_get_device_path =
  foreign "g_unix_mount_get_device_path" (ptr Unix_mount_entry.t_typ @-> returning (string_opt))

let unix_mount_free =
  foreign "g_unix_mount_free" (ptr Unix_mount_entry.t_typ @-> returning (void))

let unix_mount_for file_path =
  let unix_mount_for_raw =
    foreign "g_unix_mount_for" (string @-> ptr (uint64_t) @-> returning (ptr Unix_mount_entry.t_typ))
  in
  let time_read_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = unix_mount_for_raw file_path time_read_ptr in
  let time_read = !@ time_read_ptr in
  (ret, time_read)

let unix_mount_copy =
  foreign "g_unix_mount_copy" (ptr Unix_mount_entry.t_typ @-> returning (ptr Unix_mount_entry.t_typ))

let unix_mount_compare =
  foreign "g_unix_mount_compare" (ptr Unix_mount_entry.t_typ @-> ptr Unix_mount_entry.t_typ @-> returning (int32_t))

let unix_mount_at mount_path =
  let unix_mount_at_raw =
    foreign "g_unix_mount_at" (string @-> ptr (uint64_t) @-> returning (ptr Unix_mount_entry.t_typ))
  in
  let time_read_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let ret = unix_mount_at_raw mount_path time_read_ptr in
  let time_read = !@ time_read_ptr in
  (ret, time_read)

let unix_is_system_fs_type =
  foreign "g_unix_is_system_fs_type" (string @-> returning (bool))

let unix_is_system_device_path =
  foreign "g_unix_is_system_device_path" (string @-> returning (bool))

let unix_is_mount_path_system_internal =
  foreign "g_unix_is_mount_path_system_internal" (string @-> returning (bool))

(*Not implemented g_tls_server_connection_new return type interface not handled*)

(*Not implemented g_tls_file_database_new return type interface not handled*)

let tls_error_quark =
  foreign "g_tls_error_quark" (void @-> returning (uint32_t))

(*Not implemented g_tls_client_connection_new type interface not implemented*)

(*Not implemented g_tls_backend_get_default return type interface not handled*)

let settings_schema_source_get_default =
  foreign "g_settings_schema_source_get_default" (void @-> returning (ptr_opt Settings_schema_source.t_typ))

let resources_unregister =
  foreign "g_resources_unregister" (ptr Resource.t_typ @-> returning (void))

let resources_register =
  foreign "g_resources_register" (ptr Resource.t_typ @-> returning (void))

let resources_open_stream path lookup_flags =
  let resources_open_stream_raw =
    foreign "g_resources_open_stream" (string @-> Resource_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Input_stream.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = resources_open_stream_raw path lookup_flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let resources_lookup_data path lookup_flags =
  let resources_lookup_data_raw =
    foreign "g_resources_lookup_data" (string @-> Resource_lookup_flags.t_list_view @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Bytes.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = resources_lookup_data_raw path lookup_flags err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let resources_get_info path lookup_flags =
  let resources_get_info_raw =
    foreign "g_resources_get_info" (string @-> Resource_lookup_flags.t_list_view @-> ptr (uint64_t) @-> ptr (uint32_t) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let size_ptr = allocate uint64_t Unsigned.UInt64.zero in
  let flags_ptr = allocate uint32_t Unsigned.UInt32.zero in
  let ret = resources_get_info_raw path lookup_flags size_ptr flags_ptr err_ptr_ptr in
  let get_ret_value () =
    let size = !@ size_ptr in
   let flags = !@ flags_ptr in
    (ret, size, flags)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_resources_enumerate_children return type C Array type for Types.Array tag not handled*)

let resource_load filename =
  let resource_load_raw =
    foreign "g_resource_load" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt Resource.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = resource_load_raw filename err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let resource_error_quark =
  foreign "g_resource_error_quark" (void @-> returning (uint32_t))

let resolver_error_quark =
  foreign "g_resolver_error_quark" (void @-> returning (uint32_t))

(*Not implemented g_proxy_resolver_get_default return type interface not handled*)

(*Not implemented g_proxy_get_default_for_protocol return type interface not handled*)

(*Not implemented g_pollable_stream_write_all type C Array type for Types.Array tag not implemented*)

(*Not implemented g_pollable_stream_write type C Array type for Types.Array tag not implemented*)

(*Not implemented g_pollable_stream_read type C Array type for Types.Array tag not implemented*)

let pollable_source_create_full =
  foreign "g_pollable_source_new_full" (ptr Object.t_typ @-> ptr_opt Source.t_typ @-> ptr_opt Cancellable.t_typ @-> returning (ptr Source.t_typ))

let pollable_source_create =
  foreign "g_pollable_source_new" (ptr Object.t_typ @-> returning (ptr Source.t_typ))

let null_settings_backend_create =
  foreign "g_null_settings_backend_new" (void @-> returning (ptr Settings_backend.t_typ))

let networking_init =
  foreign "g_networking_init" (void @-> returning (void))

(*Not implemented g_network_monitor_get_default return type interface not handled*)

let memory_settings_backend_create =
  foreign "g_memory_settings_backend_new" (void @-> returning (ptr Settings_backend.t_typ))

let keyfile_settings_backend_create =
  foreign "g_keyfile_settings_backend_new" (string @-> string @-> string_opt @-> returning (ptr Settings_backend.t_typ))

let io_modules_scan_all_in_directory_with_scope =
  foreign "g_io_modules_scan_all_in_directory_with_scope" (string @-> ptr IOModule_scope.t_typ @-> returning (void))

let io_modules_scan_all_in_directory =
  foreign "g_io_modules_scan_all_in_directory" (string @-> returning (void))

let io_modules_load_all_in_directory_with_scope =
  foreign "g_io_modules_load_all_in_directory_with_scope" (string @-> ptr IOModule_scope.t_typ @-> returning (ptr List.t_typ))

let io_modules_load_all_in_directory =
  foreign "g_io_modules_load_all_in_directory" (string @-> returning (ptr List.t_typ))

let io_extension_point_register =
  foreign "g_io_extension_point_register" (string @-> returning (ptr IOExtension_point.t_typ))

let io_extension_point_lookup =
  foreign "g_io_extension_point_lookup" (string @-> returning (ptr IOExtension_point.t_typ))

(*Not implemented g_io_extension_point_implement type gType not implemented*)

let io_error_quark =
  foreign "g_io_error_quark" (void @-> returning (uint32_t))

let io_error_from_errno =
  foreign "g_io_error_from_errno" (int32_t @-> returning (IOError_enum.t_view))

(*Not implemented g_icon_new_for_string return type interface not handled*)

let icon_hash =
  foreign "g_icon_hash" (ptr void @-> returning (uint32_t))

(*Not implemented g_icon_deserialize return type interface not handled*)

(*Not implemented g_file_parse_name return type interface not handled*)

(*Not implemented g_file_new_tmp return type interface not handled*)

(*Not implemented g_file_new_for_uri return type interface not handled*)

(*Not implemented g_file_new_for_path return type interface not handled*)

(*Not implemented g_file_new_for_commandline_arg_and_cwd return type interface not handled*)

(*Not implemented g_file_new_for_commandline_arg return type interface not handled*)

(*Not implemented g_dtls_server_connection_new type interface not implemented*)

(*Not implemented g_dtls_client_connection_new type interface not implemented*)

let dbus_is_unique_name =
  foreign "g_dbus_is_unique_name" (string @-> returning (bool))

let dbus_is_supported_address _string =
  let dbus_is_supported_address_raw =
    foreign "g_dbus_is_supported_address" (string @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = dbus_is_supported_address_raw _string err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let dbus_is_name =
  foreign "g_dbus_is_name" (string @-> returning (bool))

let dbus_is_member_name =
  foreign "g_dbus_is_member_name" (string @-> returning (bool))

let dbus_is_interface_name =
  foreign "g_dbus_is_interface_name" (string @-> returning (bool))

let dbus_is_guid =
  foreign "g_dbus_is_guid" (string @-> returning (bool))

let dbus_is_address =
  foreign "g_dbus_is_address" (string @-> returning (bool))

let dbus_gvariant_to_gvalue value =
  let dbus_gvariant_to_gvalue_raw =
    foreign "g_dbus_gvariant_to_gvalue" (ptr Variant.t_typ @-> ptr (Value.t_typ) @-> returning (void))
  in
  let out_gvalue_ptr = allocate Value.t_typ (make Value.t_typ) in
  let ret = dbus_gvariant_to_gvalue_raw value out_gvalue_ptr in
  let out_gvalue = !@ out_gvalue_ptr in
  (out_gvalue)

let dbus_gvalue_to_gvariant =
  foreign "g_dbus_gvalue_to_gvariant" (ptr Value.t_typ @-> ptr Variant_type.t_typ @-> returning (ptr Variant.t_typ))

let dbus_generate_guid =
  foreign "g_dbus_generate_guid" (void @-> returning (string_opt))

let dbus_error_unregister_error =
  foreign "g_dbus_error_unregister_error" (uint32_t @-> int32_t @-> string @-> returning (bool))

let dbus_error_strip_remote_error =
  foreign "g_dbus_error_strip_remote_error" (ptr Error.t_typ @-> returning (bool))

(*Not implemented g_dbus_error_register_error_domain type C Array type for Types.Array tag not implemented*)

let dbus_error_register_error =
  foreign "g_dbus_error_register_error" (uint32_t @-> int32_t @-> string @-> returning (bool))

let dbus_error_quark =
  foreign "g_dbus_error_quark" (void @-> returning (uint32_t))

let dbus_error_create_for_dbus_error =
  foreign "g_dbus_error_new_for_dbus_error" (string @-> string @-> returning (ptr Error.t_typ))

let dbus_error_is_remote_error =
  foreign "g_dbus_error_is_remote_error" (ptr Error.t_typ @-> returning (bool))

let dbus_error_get_remote_error =
  foreign "g_dbus_error_get_remote_error" (ptr Error.t_typ @-> returning (string_opt))

let dbus_error_encode_gerror =
  foreign "g_dbus_error_encode_gerror" (ptr Error.t_typ @-> returning (string_opt))

(*Not implemented g_dbus_annotation_info_lookup type C Array type for Types.Array tag not implemented*)

let dbus_address_get_stream_sync address cancellable =
  let dbus_address_get_stream_sync_raw =
    foreign "g_dbus_address_get_stream_sync" (string @-> ptr_opt Cancellable.t_typ @-> ptr (string) @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt IOStream.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let out_guid_ptr = allocate string " " in
  let ret = dbus_address_get_stream_sync_raw address cancellable out_guid_ptr err_ptr_ptr in
  let get_ret_value () =
    let out_guid = !@ out_guid_ptr in
    (ret, out_guid)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
(*Not implemented g_dbus_address_get_stream_finish type interface not implemented*)

(*Not implemented g_dbus_address_get_stream type callback not implemented*)

let dbus_address_get_for_bus_sync bus_type cancellable =
  let dbus_address_get_for_bus_sync_raw =
    foreign "g_dbus_address_get_for_bus_sync" (Bus_type.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (string_opt))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = dbus_address_get_for_bus_sync_raw bus_type cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let dbus_address_escape_value =
  foreign "g_dbus_address_escape_value" (string @-> returning (string_opt))

let content_types_get_registered =
  foreign "g_content_types_get_registered" (void @-> returning (ptr List.t_typ))

let content_type_is_unknown =
  foreign "g_content_type_is_unknown" (string @-> returning (bool))

let content_type_is_mime_type =
  foreign "g_content_type_is_mime_type" (string @-> string @-> returning (bool))

let content_type_is_a =
  foreign "g_content_type_is_a" (string @-> string @-> returning (bool))

(*Not implemented g_content_type_guess_for_tree type interface not implemented*)

(*Not implemented g_content_type_guess type C Array type for Types.Array tag not implemented*)

(*Not implemented g_content_type_get_symbolic_icon return type interface not handled*)

let content_type_get_mime_type =
  foreign "g_content_type_get_mime_type" (string @-> returning (string_opt))

(*Not implemented g_content_type_get_icon return type interface not handled*)

let content_type_get_generic_icon_name =
  foreign "g_content_type_get_generic_icon_name" (string @-> returning (string_opt))

let content_type_get_description =
  foreign "g_content_type_get_description" (string @-> returning (string_opt))

let content_type_from_mime_type =
  foreign "g_content_type_from_mime_type" (string @-> returning (string_opt))

let content_type_equals =
  foreign "g_content_type_equals" (string @-> string @-> returning (bool))

let content_type_can_be_executable =
  foreign "g_content_type_can_be_executable" (string @-> returning (bool))

let bus_watch_name =
  foreign "g_bus_watch_name_with_closures" (Bus_type.t_view @-> string @-> Bus_name_watcher_flags.t_list_view @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> returning (uint32_t))

let bus_watch_name_on_connection =
  foreign "g_bus_watch_name_on_connection_with_closures" (ptr DBus_connection.t_typ @-> string @-> Bus_name_watcher_flags.t_list_view @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> returning (uint32_t))

let bus_unwatch_name =
  foreign "g_bus_unwatch_name" (uint32_t @-> returning (void))

let bus_unown_name =
  foreign "g_bus_unown_name" (uint32_t @-> returning (void))

let bus_own_name =
  foreign "g_bus_own_name_with_closures" (Bus_type.t_view @-> string @-> Bus_name_owner_flags.t_list_view @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> returning (uint32_t))

let bus_own_name_on_connection =
  foreign "g_bus_own_name_on_connection_with_closures" (ptr DBus_connection.t_typ @-> string @-> Bus_name_owner_flags.t_list_view @-> ptr_opt Closure.t_typ @-> ptr_opt Closure.t_typ @-> returning (uint32_t))

let bus_get_sync bus_type cancellable =
  let bus_get_sync_raw =
    foreign "g_bus_get_sync" (Bus_type.t_view @-> ptr_opt Cancellable.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (ptr_opt DBus_connection.t_typ))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = bus_get_sync_raw bus_type cancellable err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

(*Not implemented g_bus_get_finish type interface not implemented*)

(*Not implemented g_bus_get type callback not implemented*)

let app_info_reset_type_associations =
  foreign "g_app_info_reset_type_associations" (string @-> returning (void))

(*Not implemented g_app_info_launch_default_for_uri_finish type interface not implemented*)

(*Not implemented g_app_info_launch_default_for_uri_async type callback not implemented*)

let app_info_launch_default_for_uri uri context =
  let app_info_launch_default_for_uri_raw =
    foreign "g_app_info_launch_default_for_uri" (string @-> ptr_opt App_launch_context.t_typ @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let ret = app_info_launch_default_for_uri_raw uri context err_ptr_ptr in
  match (!@ err_ptr_ptr) with
  | None -> Ok ret
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)

let app_info_get_recommended_for_type =
  foreign "g_app_info_get_recommended_for_type" (string @-> returning (ptr List.t_typ))

let app_info_get_fallback_for_type =
  foreign "g_app_info_get_fallback_for_type" (string @-> returning (ptr List.t_typ))

(*Not implemented g_app_info_get_default_for_uri_scheme return type interface not handled*)

(*Not implemented g_app_info_get_default_for_type return type interface not handled*)

let app_info_get_all_for_type =
  foreign "g_app_info_get_all_for_type" (string @-> returning (ptr List.t_typ))

let app_info_get_all =
  foreign "g_app_info_get_all" (void @-> returning (ptr List.t_typ))

(*Not implemented g_app_info_create_from_commandline return type interface not handled*)

let action_print_detailed_name =
  foreign "g_action_print_detailed_name" (string @-> ptr_opt Variant.t_typ @-> returning (string_opt))

let action_parse_detailed_name detailed_name =
  let action_parse_detailed_name_raw =
    foreign "g_action_parse_detailed_name" (string @-> ptr (string) @-> ptr (ptr Variant.t_typ) @-> ptr (ptr_opt Error.t_typ) @-> returning (bool))
  in
  let err_ptr_ptr = allocate (ptr_opt Error.t_typ) None in
  let action_name_ptr = allocate string " " in
  let target_value_ptr = allocate (ptr_opt Variant.t_typ) None in
  let ret = action_parse_detailed_name_raw detailed_name action_name_ptr target_value_ptr err_ptr_ptr in
  let get_ret_value () =
    let action_name = !@ action_name_ptr in
   let target_value = !@ target_value_ptr in
    (ret, action_name, target_value)
  in
  match (!@ err_ptr_ptr) with
  | None -> Ok (get_ret_value ())
  | Some _ -> let err_ptr = !@ err_ptr_ptr in
    let _ = Gc.finalise (function | Some e -> Error.free e | None -> () ) err_ptr in
    Error (err_ptr)
let action_name_is_valid =
  foreign "g_action_name_is_valid" (string @-> returning (bool))

