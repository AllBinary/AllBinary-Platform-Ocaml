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

class gameStrings () =
  object
    val mutable pROCESS_TICK : string = ""
    method pROCESS_TICK = pROCESS_TICK
    method set_pROCESS_TICK value' = pROCESS_TICK <- value'
    val mutable oN_GAME_INITIALIZED : string = ""
    method oN_GAME_INITIALIZED = oN_GAME_INITIALIZED
    method set_oN_GAME_INITIALIZED value' = oN_GAME_INITIALIZED <- value'
    val mutable uPDATESURFACE : string = ""
    method uPDATESURFACE = uPDATESURFACE
    method set_uPDATESURFACE value' = uPDATESURFACE <- value'
    val mutable oN_SET_DISPLAYABLE : string = ""
    method oN_SET_DISPLAYABLE = oN_SET_DISPLAYABLE
    method set_oN_SET_DISPLAYABLE value' = oN_SET_DISPLAYABLE <- value'
    val mutable uNPAUSE : string = ""
    method uNPAUSE = uNPAUSE
    method set_uNPAUSE value' = uNPAUSE <- value'
    val mutable tOGGLE_MENU : string = ""
    method tOGGLE_MENU = tOGGLE_MENU
    method set_tOGGLE_MENU value' = tOGGLE_MENU <- value'
    val mutable sET_GAME_OVER : string = ""
    method sET_GAME_OVER = sET_GAME_OVER
    method set_sET_GAME_OVER value' = sET_GAME_OVER <- value'
    val mutable gAME_STATE : string = ""
    method gAME_STATE = gAME_STATE
    method set_gAME_STATE value' = gAME_STATE <- value'
    val mutable sET_GAME_STATE : string = ""
    method sET_GAME_STATE = sET_GAME_STATE
    method set_sET_GAME_STATE value' = sET_GAME_STATE <- value'
    val mutable sTOP_GAME_CANVAS_RUNNABLE_INTERFACE : string = ""
    method sTOP_GAME_CANVAS_RUNNABLE_INTERFACE = sTOP_GAME_CANVAS_RUNNABLE_INTERFACE
    method set_sTOP_GAME_CANVAS_RUNNABLE_INTERFACE value' = sTOP_GAME_CANVAS_RUNNABLE_INTERFACE <- value'

    initializer
      begin
        pROCESS_TICK <- "processTick";
        oN_GAME_INITIALIZED <- "onGameInitialized";
        uPDATESURFACE <- "updateSurface";
        oN_SET_DISPLAYABLE <- "onSetDisplayable";
        uNPAUSE <- "unPause";
        tOGGLE_MENU <- "toggleMenu";
        sET_GAME_OVER <- "setGameOver";
        gAME_STATE <- "Game State: ";
        sET_GAME_STATE <- "setGameState";
        sTOP_GAME_CANVAS_RUNNABLE_INTERFACE <- "stopGameCanvasRunnableInterface";
        ()
      end
  end
let () = java_register_constructor "GameStrings" (fun arguments -> Obj.repr (new gameStrings (Obj.obj arguments)))

let instance = (new gameStrings ())
let get_instance () = instance
let () = java_register_static "GameStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


