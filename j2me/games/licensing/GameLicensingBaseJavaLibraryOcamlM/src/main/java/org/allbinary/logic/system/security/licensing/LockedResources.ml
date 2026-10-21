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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

class lockedResources () =
  object
    val mutable lOCKED_DEMO_GAME_FEATURE_RESOURCE : string = ""
    method lOCKED_DEMO_GAME_FEATURE_RESOURCE = lOCKED_DEMO_GAME_FEATURE_RESOURCE
    method set_lOCKED_DEMO_GAME_FEATURE_RESOURCE value' = lOCKED_DEMO_GAME_FEATURE_RESOURCE <- value'

    initializer
      begin
        lOCKED_DEMO_GAME_FEATURE_RESOURCE <- "/locked_demo_game_feature_64_by_64.png";
        ()
      end
  end
let () = java_register_constructor "LockedResources" (fun arguments -> Obj.repr (new lockedResources (Obj.obj arguments)))

let instance = (new lockedResources ())
let get_instance () = instance
let () = java_register_static "LockedResources.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LockedResources.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


