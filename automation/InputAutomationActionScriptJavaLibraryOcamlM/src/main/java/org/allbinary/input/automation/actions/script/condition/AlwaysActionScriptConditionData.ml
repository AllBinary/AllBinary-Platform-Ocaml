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
(* package org.allbinary.input.automation.actions.script.condition *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("ALWAYS_ACTION_CONDITION_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "AlwaysActionScriptConditionData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let iS_ON : string ref = ref ("ALWAYS_ACTION_CONDITION_IS_ON")
let get_iS_ON () = !iS_ON
let set_iS_ON value' = iS_ON := value'
let () = java_register_static "AlwaysActionScriptConditionData.get_iS_ON" (fun _ -> Obj.repr (get_iS_ON ()))
class alwaysActionScriptConditionData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AlwaysActionScriptConditionData" (fun arguments -> Obj.repr (new alwaysActionScriptConditionData (Obj.obj arguments)))


