(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.configuration.persistance *)

open Allbinary_java [@@warning "-33"]

class gamePersistanceStrings () =
  object
    val mutable sAVED_GAME_RECORD_ID : string = ""
    method sAVED_GAME_RECORD_ID = sAVED_GAME_RECORD_ID
    method set_sAVED_GAME_RECORD_ID value' = sAVED_GAME_RECORD_ID <- value'
    val mutable sAVED_GAME_CONFIGURATION_RECORD_ID : string = ""
    method sAVED_GAME_CONFIGURATION_RECORD_ID = sAVED_GAME_CONFIGURATION_RECORD_ID
    method set_sAVED_GAME_CONFIGURATION_RECORD_ID value' = sAVED_GAME_CONFIGURATION_RECORD_ID <- value'
    val mutable dEFAULT_INPUT_MAPPING_RECORD_ID : string = ""
    method dEFAULT_INPUT_MAPPING_RECORD_ID = dEFAULT_INPUT_MAPPING_RECORD_ID
    method set_dEFAULT_INPUT_MAPPING_RECORD_ID value' = dEFAULT_INPUT_MAPPING_RECORD_ID <- value'
    val mutable sAVED_INPUT_CONFIGURATION_RECORD_ID : string = ""
    method sAVED_INPUT_CONFIGURATION_RECORD_ID = sAVED_INPUT_CONFIGURATION_RECORD_ID
    method set_sAVED_INPUT_CONFIGURATION_RECORD_ID value' = sAVED_INPUT_CONFIGURATION_RECORD_ID <- value'

    initializer
      begin
        sAVED_GAME_RECORD_ID <- "_SG";
        sAVED_GAME_CONFIGURATION_RECORD_ID <- "_SGC";
        dEFAULT_INPUT_MAPPING_RECORD_ID <- "_DIM";
        sAVED_INPUT_CONFIGURATION_RECORD_ID <- "_SIC";
        ()
      end
  end
let () = java_register_constructor "GamePersistanceStrings" (fun arguments -> Obj.repr (new gamePersistanceStrings (Obj.obj arguments)))

let instance = (new gamePersistanceStrings ())
let get_instance () = instance
let () = java_register_static "GamePersistanceStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GamePersistanceStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


