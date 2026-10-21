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
(* package org.allbinary.game.score.remote *)

open Allbinary_java [@@warning "-33"]

class remoteHighScoresData () =
  object
    val mutable hIGH_SCORES : string = ""
    method hIGH_SCORES = hIGH_SCORES
    method set_hIGH_SCORES value' = hIGH_SCORES <- value'
    val mutable cUSTOMER_USER_NAME : string = ""
    method cUSTOMER_USER_NAME = cUSTOMER_USER_NAME
    method set_cUSTOMER_USER_NAME value' = cUSTOMER_USER_NAME <- value'
    val mutable dISPLAY_NAME : string = ""
    method dISPLAY_NAME = dISPLAY_NAME
    method set_dISPLAY_NAME value' = dISPLAY_NAME <- value'
    val mutable sCORE : string = ""
    method sCORE = sCORE
    method set_sCORE value' = sCORE <- value'
    val mutable gAME_INFO : string = ""
    method gAME_INFO = gAME_INFO
    method set_gAME_INFO value' = gAME_INFO <- value'
    val mutable gAME_CONFIGURATION : string = ""
    method gAME_CONFIGURATION = gAME_CONFIGURATION
    method set_gAME_CONFIGURATION value' = gAME_CONFIGURATION <- value'

    initializer
      begin
        hIGH_SCORES <- "HIGH_SCORES";
        cUSTOMER_USER_NAME <- "CUSTOMER_USER_NAME";
        dISPLAY_NAME <- "DISPLAY_NAME";
        sCORE <- "SCORE";
        gAME_INFO <- "GAME_INFO";
        gAME_CONFIGURATION <- "GAME_CONFIGURATION";
        ()
      end
  end
let () = java_register_constructor "RemoteHighScoresData" (fun arguments -> Obj.repr (new remoteHighScoresData (Obj.obj arguments)))

let sINGLETON = (new remoteHighScoresData ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "RemoteHighScoresData.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "RemoteHighScoresData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


