(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.business.user.commerce.inventory.item.permission *)

open Allbinary_java [@@warning "-33"]

let wHO : string = "PERMISSIONSITEM_WHO"
let get_wHO () = wHO
let () = java_register_static "PermissionItemData.get_wHO" (fun _ -> Obj.repr (get_wHO ()))
let wHAT : string = "PERMISSIONSITEM_WHAT"
let get_wHAT () = wHAT
let () = java_register_static "PermissionItemData.get_wHAT" (fun _ -> Obj.repr (get_wHAT ()))
let tYPE : string = "PERMISSIONSITEM_TYPE"
let get_tYPE () = tYPE
let () = java_register_static "PermissionItemData.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
let sTART_TIME : string = "PERMISSIONSITEM_START_TIME"
let get_sTART_TIME () = sTART_TIME
let () = java_register_static "PermissionItemData.get_sTART_TIME" (fun _ -> Obj.repr (get_sTART_TIME ()))
let eND_TIME : string = "PERMISSIONSITEM_END_TIME"
let get_eND_TIME () = eND_TIME
let () = java_register_static "PermissionItemData.get_eND_TIME" (fun _ -> Obj.repr (get_eND_TIME ()))
let rEMOTE_ADDR : string = "PERMISSIONSITEM_REMOTE_ADDR"
let get_rEMOTE_ADDR () = rEMOTE_ADDR
let () = java_register_static "PermissionItemData.get_rEMOTE_ADDR" (fun _ -> Obj.repr (get_rEMOTE_ADDR ()))
class permissionItemData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PermissionItemData" (fun arguments -> Obj.repr (new permissionItemData (Obj.obj arguments)))


