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
(* package org.allbinary.input.automation.module.actions.script.condition.processors.output *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("GENERIC_CONFIGURATION_PROFILE_ACTION_OUTPUT_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "GenericProfileActionScriptOutputData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let tYPE : string ref = ref ("GENERIC_CONFIGURATION_PROFILE_ACTION_OUTPUT_TYPE")
let get_tYPE () = !tYPE
let set_tYPE value' = tYPE := value'
let () = java_register_static "GenericProfileActionScriptOutputData.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
class genericProfileActionScriptOutputData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericProfileActionScriptOutputData" (fun arguments -> Obj.repr (new genericProfileActionScriptOutputData (Obj.obj arguments)))


