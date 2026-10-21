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

let nAME : string ref = ref ("IMAGE_ACTION_OUTPUT_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "ImageActionScriptOutputData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sAVE : string ref = ref ("SAVE_IMAGE_ACTION_OUTPUT_NAME")
let get_sAVE () = !sAVE
let set_sAVE value' = sAVE := value'
let () = java_register_static "ImageActionScriptOutputData.get_sAVE" (fun _ -> Obj.repr (get_sAVE ()))
let dISPLAY : string ref = ref ("DISPLAY_IMAGE_ACTION_OUTPUT_NAME")
let get_dISPLAY () = !dISPLAY
let set_dISPLAY value' = dISPLAY := value'
let () = java_register_static "ImageActionScriptOutputData.get_dISPLAY" (fun _ -> Obj.repr (get_dISPLAY ()))
let tYPE : string ref = ref ("TYPE_IMAGE_ACTION_OUTPUT_NAME")
let get_tYPE () = !tYPE
let set_tYPE value' = tYPE := value'
let () = java_register_static "ImageActionScriptOutputData.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
let tYPES : string ref = ref ("TYPES_IMAGE_ACTION_OUTPUT_NAME")
let get_tYPES () = !tYPES
let set_tYPES value' = tYPES := value'
let () = java_register_static "ImageActionScriptOutputData.get_tYPES" (fun _ -> Obj.repr (get_tYPES ()))
class imageActionScriptOutputData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageActionScriptOutputData" (fun arguments -> Obj.repr (new imageActionScriptOutputData (Obj.obj arguments)))


