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
(* package org.allbinary.input.automation.actions.script.condition.processors *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("GENERIC_CONFIGURATION_PROFILE_ACTION_PROCESSOR_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "GenericProfileActionScriptProcessorData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class genericProfileActionScriptProcessorData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "GenericProfileActionScriptProcessorData" (fun arguments -> Obj.repr (new genericProfileActionScriptProcessorData (Obj.obj arguments)))


