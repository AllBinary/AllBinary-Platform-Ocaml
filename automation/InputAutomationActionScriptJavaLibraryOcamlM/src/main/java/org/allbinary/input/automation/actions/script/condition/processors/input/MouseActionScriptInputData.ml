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

let nAME : string ref = ref ("MOUSE_ACTION_INPUT_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "MouseActionScriptInputData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let bUTTONS : string ref = ref ("MOUSE_ACTION_INPUT_BUTTONS")
let get_bUTTONS () = !bUTTONS
let set_bUTTONS value' = bUTTONS := value'
let () = java_register_static "MouseActionScriptInputData.get_bUTTONS" (fun _ -> Obj.repr (get_bUTTONS ()))
let mOVE : string ref = ref ("MOUSE_ACTION_INPUT_MOVE")
let get_mOVE () = !mOVE
let set_mOVE value' = mOVE := value'
let () = java_register_static "MouseActionScriptInputData.get_mOVE" (fun _ -> Obj.repr (get_mOVE ()))
let mOVE_X : string ref = ref ("MOUSE_ACTION_INPUT_MOVE_X")
let get_mOVE_X () = !mOVE_X
let set_mOVE_X value' = mOVE_X := value'
let () = java_register_static "MouseActionScriptInputData.get_mOVE_X" (fun _ -> Obj.repr (get_mOVE_X ()))
let mOVE_Y : string ref = ref ("MOUSE_ACTION_INPUT_MOVE_Y")
let get_mOVE_Y () = !mOVE_Y
let set_mOVE_Y value' = mOVE_Y := value'
let () = java_register_static "MouseActionScriptInputData.get_mOVE_Y" (fun _ -> Obj.repr (get_mOVE_Y ()))
class mouseActionScriptInputData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MouseActionScriptInputData" (fun arguments -> Obj.repr (new mouseActionScriptInputData (Obj.obj arguments)))


