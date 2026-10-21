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

let nAME : string ref = ref ("KEY_ACTION_INPUT_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "KeyboardActionScriptInputData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let kEY : string ref = ref ("KEY_ACTION_INPUT_KEY")
let get_kEY () = !kEY
let set_kEY value' = kEY := value'
let () = java_register_static "KeyboardActionScriptInputData.get_kEY" (fun _ -> Obj.repr (get_kEY ()))
let dELAY_BETWEEN_KEYS : string ref = ref ("KEY_ACTION_INPUT_DELAY_BETWEEN_KEYS")
let get_dELAY_BETWEEN_KEYS () = !dELAY_BETWEEN_KEYS
let set_dELAY_BETWEEN_KEYS value' = dELAY_BETWEEN_KEYS := value'
let () = java_register_static "KeyboardActionScriptInputData.get_dELAY_BETWEEN_KEYS" (fun _ -> Obj.repr (get_dELAY_BETWEEN_KEYS ()))
let pRESS : string ref = ref ("KEY_ACTION_INPUT_PRESS")
let get_pRESS () = !pRESS
let set_pRESS value' = pRESS := value'
let () = java_register_static "KeyboardActionScriptInputData.get_pRESS" (fun _ -> Obj.repr (get_pRESS ()))
let rELEASE : string ref = ref ("KEY_ACTION_INPUT_RELEASE")
let get_rELEASE () = !rELEASE
let set_rELEASE value' = rELEASE := value'
let () = java_register_static "KeyboardActionScriptInputData.get_rELEASE" (fun _ -> Obj.repr (get_rELEASE ()))
class keyboardActionScriptInputData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "KeyboardActionScriptInputData" (fun arguments -> Obj.repr (new keyboardActionScriptInputData (Obj.obj arguments)))


