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
(* package org.allbinary.input.automation.module.generic *)

open Allbinary_java [@@warning "-33"]

let rELATIVE_PATH : string ref = ref ("./")
let get_rELATIVE_PATH () = !rELATIVE_PATH
let set_rELATIVE_PATH value' = rELATIVE_PATH := value'
let () = java_register_static "GenericConfigData.get_rELATIVE_PATH" (fun _ -> Obj.repr (get_rELATIVE_PATH ()))
let cONFIG_PATH : string ref = ref ("modules/configs/")
let get_cONFIG_PATH () = !cONFIG_PATH
let set_cONFIG_PATH value' = cONFIG_PATH := value'
let () = java_register_static "GenericConfigData.get_cONFIG_PATH" (fun _ -> Obj.repr (get_cONFIG_PATH ()))
let mODULE_RELATIVE_PATH : string ref = ref ((java_string_of (Obj.repr ((!rELATIVE_PATH + !cONFIG_PATH))) ^ "allbinary/input/automation/module/"))
let get_mODULE_RELATIVE_PATH () = !mODULE_RELATIVE_PATH
let set_mODULE_RELATIVE_PATH value' = mODULE_RELATIVE_PATH := value'
let () = java_register_static "GenericConfigData.get_mODULE_RELATIVE_PATH" (fun _ -> Obj.repr (get_mODULE_RELATIVE_PATH ()))
let gAME_MODULE_RELATIVE_PATH : string ref = ref ((java_string_of (Obj.repr (!mODULE_RELATIVE_PATH)) ^ "game/"))
let get_gAME_MODULE_RELATIVE_PATH () = !gAME_MODULE_RELATIVE_PATH
let set_gAME_MODULE_RELATIVE_PATH value' = gAME_MODULE_RELATIVE_PATH := value'
let () = java_register_static "GenericConfigData.get_gAME_MODULE_RELATIVE_PATH" (fun _ -> Obj.repr (get_gAME_MODULE_RELATIVE_PATH ()))
let mMO_GAME_MODULE_RELATIVE_PATH : string ref = ref ((java_string_of (Obj.repr (!gAME_MODULE_RELATIVE_PATH)) ^ "mmog/"))
let get_mMO_GAME_MODULE_RELATIVE_PATH () = !mMO_GAME_MODULE_RELATIVE_PATH
let set_mMO_GAME_MODULE_RELATIVE_PATH value' = mMO_GAME_MODULE_RELATIVE_PATH := value'
let () = java_register_static "GenericConfigData.get_mMO_GAME_MODULE_RELATIVE_PATH" (fun _ -> Obj.repr (get_mMO_GAME_MODULE_RELATIVE_PATH ()))
let fREE_MMO_GAME_MODULE_RELATIVE_PATH : string ref = ref ("free/")
let get_fREE_MMO_GAME_MODULE_RELATIVE_PATH () = !fREE_MMO_GAME_MODULE_RELATIVE_PATH
let set_fREE_MMO_GAME_MODULE_RELATIVE_PATH value' = fREE_MMO_GAME_MODULE_RELATIVE_PATH := value'
let () = java_register_static "GenericConfigData.get_fREE_MMO_GAME_MODULE_RELATIVE_PATH" (fun _ -> Obj.repr (get_fREE_MMO_GAME_MODULE_RELATIVE_PATH ()))
class genericConfigData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericConfigData" (fun arguments -> Obj.repr (new genericConfigData (Obj.obj arguments)))


