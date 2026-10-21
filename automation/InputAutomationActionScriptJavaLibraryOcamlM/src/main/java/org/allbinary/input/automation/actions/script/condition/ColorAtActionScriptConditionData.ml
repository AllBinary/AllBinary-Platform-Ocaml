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

let nAME : string ref = ref ("COLOR_AT_ACTION_CONDITION_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let lOCATION_X : string ref = ref ("COLOR_AT_ACTION_CONDITION_LOCATION_X")
let get_lOCATION_X () = !lOCATION_X
let set_lOCATION_X value' = lOCATION_X := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_lOCATION_X" (fun _ -> Obj.repr (get_lOCATION_X ()))
let lOCATION_Y : string ref = ref ("COLOR_AT_ACTION_CONDITION_LOCATION_Y")
let get_lOCATION_Y () = !lOCATION_Y
let set_lOCATION_Y value' = lOCATION_Y := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_lOCATION_Y" (fun _ -> Obj.repr (get_lOCATION_Y ()))
let mIN_RED : string ref = ref ("COLOR_AT_ACTION_CONDITION_MIN_RED")
let get_mIN_RED () = !mIN_RED
let set_mIN_RED value' = mIN_RED := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_mIN_RED" (fun _ -> Obj.repr (get_mIN_RED ()))
let mAX_RED : string ref = ref ("COLOR_AT_ACTION_CONDITION_MAX_RED")
let get_mAX_RED () = !mAX_RED
let set_mAX_RED value' = mAX_RED := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_mAX_RED" (fun _ -> Obj.repr (get_mAX_RED ()))
let mIN_GREEN : string ref = ref ("COLOR_AT_ACTION_CONDITION_MIN_GREEN")
let get_mIN_GREEN () = !mIN_GREEN
let set_mIN_GREEN value' = mIN_GREEN := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_mIN_GREEN" (fun _ -> Obj.repr (get_mIN_GREEN ()))
let mAX_GREEN : string ref = ref ("COLOR_AT_ACTION_CONDITION_MAX_GREEN")
let get_mAX_GREEN () = !mAX_GREEN
let set_mAX_GREEN value' = mAX_GREEN := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_mAX_GREEN" (fun _ -> Obj.repr (get_mAX_GREEN ()))
let mIN_BLUE : string ref = ref ("COLOR_AT_ACTION_CONDITION_MIN_BLUE")
let get_mIN_BLUE () = !mIN_BLUE
let set_mIN_BLUE value' = mIN_BLUE := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_mIN_BLUE" (fun _ -> Obj.repr (get_mIN_BLUE ()))
let mAX_BLUE : string ref = ref ("COLOR_AT_ACTION_CONDITION_MAX_BLUE")
let get_mAX_BLUE () = !mAX_BLUE
let set_mAX_BLUE value' = mAX_BLUE := value'
let () = java_register_static "ColorAtActionScriptConditionData.get_mAX_BLUE" (fun _ -> Obj.repr (get_mAX_BLUE ()))
class colorAtActionScriptConditionData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ColorAtActionScriptConditionData" (fun arguments -> Obj.repr (new colorAtActionScriptConditionData (Obj.obj arguments)))


