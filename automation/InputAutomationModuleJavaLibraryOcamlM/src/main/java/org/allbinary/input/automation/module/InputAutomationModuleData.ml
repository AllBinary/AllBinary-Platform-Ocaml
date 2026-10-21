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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("INPUT_AUTOMATION_MODULE")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "InputAutomationModuleData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let mODULE_NAME_END : string ref = ref (" Module")
let get_mODULE_NAME_END () = !mODULE_NAME_END
let set_mODULE_NAME_END value' = mODULE_NAME_END := value'
let () = java_register_static "InputAutomationModuleData.get_mODULE_NAME_END" (fun _ -> Obj.repr (get_mODULE_NAME_END ()))
class inputAutomationModuleData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "InputAutomationModuleData" (fun arguments -> Obj.repr (new inputAutomationModuleData (Obj.obj arguments)))


