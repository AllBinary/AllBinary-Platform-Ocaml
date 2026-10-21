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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]

class gameInputStrings () =
  object
    val mutable pROCESS_INPUT : string = ""
    method pROCESS_INPUT = pROCESS_INPUT
    method set_pROCESS_INPUT value' = pROCESS_INPUT <- value'
    val mutable kEY_PRESSED : string = ""
    method kEY_PRESSED = kEY_PRESSED
    method set_kEY_PRESSED value' = kEY_PRESSED <- value'
    val mutable kEY_RELEASED : string = ""
    method kEY_RELEASED = kEY_RELEASED
    method set_kEY_RELEASED value' = kEY_RELEASED <- value'
    val mutable kEY_REPEATED : string = ""
    method kEY_REPEATED = kEY_REPEATED
    method set_kEY_REPEATED value' = kEY_REPEATED <- value'
    val mutable oN_PRESS_GAME_KEY : string = ""
    method oN_PRESS_GAME_KEY = oN_PRESS_GAME_KEY
    method set_oN_PRESS_GAME_KEY value' = oN_PRESS_GAME_KEY <- value'
    val mutable oN_DOWN_GAME_KEY : string = ""
    method oN_DOWN_GAME_KEY = oN_DOWN_GAME_KEY
    method set_oN_DOWN_GAME_KEY value' = oN_DOWN_GAME_KEY <- value'
    val mutable oN_UP_GAME_KEY : string = ""
    method oN_UP_GAME_KEY = oN_UP_GAME_KEY
    method set_oN_UP_GAME_KEY value' = oN_UP_GAME_KEY <- value'
    val mutable nO_KEY : string = ""
    method nO_KEY = nO_KEY
    method set_nO_KEY value' = nO_KEY <- value'
    val mutable aDD_KEY_EVENT : string = ""
    method aDD_KEY_EVENT = aDD_KEY_EVENT
    method set_aDD_KEY_EVENT value' = aDD_KEY_EVENT <- value'
    val mutable rEMOVE_KEY_EVENT : string = ""
    method rEMOVE_KEY_EVENT = rEMOVE_KEY_EVENT
    method set_rEMOVE_KEY_EVENT value' = rEMOVE_KEY_EVENT <- value'
    val mutable sTRAFE_LEFT : string = ""
    method sTRAFE_LEFT = sTRAFE_LEFT
    method set_sTRAFE_LEFT value' = sTRAFE_LEFT <- value'
    val mutable sTRAFE_RIGHT : string = ""
    method sTRAFE_RIGHT = sTRAFE_RIGHT
    method set_sTRAFE_RIGHT value' = sTRAFE_RIGHT <- value'
    val mutable pROCESS_MOTION_INPUT : string = ""
    method pROCESS_MOTION_INPUT = pROCESS_MOTION_INPUT
    method set_pROCESS_MOTION_INPUT value' = pROCESS_MOTION_INPUT <- value'
    val mutable uDPATE_CURRENT_TOUCH_INPUT_FACTORY : string = ""
    method uDPATE_CURRENT_TOUCH_INPUT_FACTORY = uDPATE_CURRENT_TOUCH_INPUT_FACTORY
    method set_uDPATE_CURRENT_TOUCH_INPUT_FACTORY value' = uDPATE_CURRENT_TOUCH_INPUT_FACTORY <- value'
    val mutable eNABLE_PLAYER_GAME_INPUTS : string = ""
    method eNABLE_PLAYER_GAME_INPUTS = eNABLE_PLAYER_GAME_INPUTS
    method set_eNABLE_PLAYER_GAME_INPUTS value' = eNABLE_PLAYER_GAME_INPUTS <- value'
    val mutable eNABLE_PLAYER_GAME_INPUT : string = ""
    method eNABLE_PLAYER_GAME_INPUT = eNABLE_PLAYER_GAME_INPUT
    method set_eNABLE_PLAYER_GAME_INPUT value' = eNABLE_PLAYER_GAME_INPUT <- value'

    initializer
      begin
        pROCESS_INPUT <- "processInput";
        kEY_PRESSED <- "keyPressed";
        kEY_RELEASED <- "keyReleased";
        kEY_REPEATED <- "keyRepeated";
        oN_PRESS_GAME_KEY <- "onPressGameKeyEvent";
        oN_DOWN_GAME_KEY <- "onDownGameKeyEvent";
        oN_UP_GAME_KEY <- "onUpGameKeyEvent";
        nO_KEY <- "Key Code Not Mapped For Game: ";
        aDD_KEY_EVENT <- "addGameKeyEvent";
        rEMOVE_KEY_EVENT <- "removeGameKeyEvent";
        sTRAFE_LEFT <- "strafeLeft";
        sTRAFE_RIGHT <- "strafeRight";
        pROCESS_MOTION_INPUT <- "processMotionInput";
        uDPATE_CURRENT_TOUCH_INPUT_FACTORY <- "updateCurrentTouchInputFactory";
        eNABLE_PLAYER_GAME_INPUTS <- "Enabling PlayerGameInputs: ";
        eNABLE_PLAYER_GAME_INPUT <- "Enabling PlayerGameInput: ";
        ()
      end
  end
let () = java_register_constructor "GameInputStrings" (fun arguments -> Obj.repr (new gameInputStrings (Obj.obj arguments)))

let instance = (new gameInputStrings ())
let get_instance () = instance
let () = java_register_static "GameInputStrings.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameInputStrings.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


