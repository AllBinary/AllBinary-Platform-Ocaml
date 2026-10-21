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
(* package org.allbinary.input.automation.actions.script.condition.processors.input *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "GenericProfileActionScriptInputData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let tYPE : string ref = ref ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_TYPE")
let get_tYPE () = !tYPE
let set_tYPE value' = tYPE := value'
let () = java_register_static "GenericProfileActionScriptInputData.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
let dELAY : string ref = ref ("GENERIC_CONFIGURATION_PROFILE_ACTION_INPUT_DELAY")
let get_dELAY () = !dELAY
let set_dELAY value' = dELAY := value'
let () = java_register_static "GenericProfileActionScriptInputData.get_dELAY" (fun _ -> Obj.repr (get_dELAY ()))
class genericProfileActionScriptInputData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericProfileActionScriptInputData" (fun arguments -> Obj.repr (new genericProfileActionScriptInputData (Obj.obj arguments)))


