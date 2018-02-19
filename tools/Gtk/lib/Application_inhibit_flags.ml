open Ctypes
open Foreign

type t = Logout | Switch | Suspend | Idle
type t_list = t list

let of_value v =
  if v = Unsigned.UInt32.of_int 1 then Logout
  else if v = Unsigned.UInt32.of_int 2 then Switch
  else if v = Unsigned.UInt32.of_int 4 then Suspend
  else if v = Unsigned.UInt32.of_int 8 then Idle
  else raise (Invalid_argument "Unexpected Application_inhibit_flags value")

let to_value = function
  | Logout -> Unsigned.UInt32.of_int 1
  | Switch -> Unsigned.UInt32.of_int 2
  | Suspend -> Unsigned.UInt32.of_int 4
  | Idle -> Unsigned.UInt32.of_int 8

let list_of_value v =
  let open Unsigned.UInt32 in
  let all_flags = [( 1 , Logout ); ( 2 , Switch ); ( 4 , Suspend ); ( 8 , Idle )]
  in
  let rec build_flags_list allf acc =
    match allf with
    | [] -> acc
    | (i, f) :: q -> if ((logand v (of_int i )) <> zero) then build_flags_list q (f :: acc)
      else build_flags_list q acc
  in build_flags_list all_flags []

let list_to_value flags =
  let open Unsigned.UInt32 in
  let rec logor_flags l acc =
    match l with
    | [] -> acc
    | f :: q -> let v = to_value f in
      let acc' = logor acc v in
      logor_flags q acc'
  in
  logor_flags flags zero

let t_list_view = view ~read:list_of_value ~write:list_to_value uint32_t
