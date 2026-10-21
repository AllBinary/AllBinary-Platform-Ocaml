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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]

class gameInfoData () =
  object
    val mutable gAME_TYPE : string = ""
    method gAME_TYPE = gAME_TYPE
    method set_gAME_TYPE value' = gAME_TYPE <- value'
    val mutable gAME_MODE : string = ""
    method gAME_MODE = gAME_MODE
    method set_gAME_MODE value' = gAME_MODE <- value'
    val mutable pLAYER_TYPE : string = ""
    method pLAYER_TYPE = pLAYER_TYPE
    method set_pLAYER_TYPE value' = pLAYER_TYPE <- value'
    val mutable hIGHEST_LEVEL : string = ""
    method hIGHEST_LEVEL = hIGHEST_LEVEL
    method set_hIGHEST_LEVEL value' = hIGHEST_LEVEL <- value'
    val mutable cURRENT_LEVEL : string = ""
    method cURRENT_LEVEL = cURRENT_LEVEL
    method set_cURRENT_LEVEL value' = cURRENT_LEVEL <- value'
    val mutable sOFTWARE_INFORMATION : string = ""
    method sOFTWARE_INFORMATION = sOFTWARE_INFORMATION
    method set_sOFTWARE_INFORMATION value' = sOFTWARE_INFORMATION <- value'
    

    initializer
      begin
        gAME_TYPE <- "GAME_TYPE";
        gAME_MODE <- "GAME_MODE";
        pLAYER_TYPE <- "PLAYER_TYPE";
        hIGHEST_LEVEL <- "HIGHEST_LEVEL";
        cURRENT_LEVEL <- "CURRENT_LEVEL";
        sOFTWARE_INFORMATION <- "SOFTWARE_INFORMATION";
        ();
        ()
      end
  end
let () = java_register_constructor "GameInfoData" (fun arguments -> Obj.repr (new gameInfoData (Obj.obj arguments)))

let instance = (new gameInfoData ())
let get_instance () = instance
let () = java_register_static "GameInfoData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameInfoData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


