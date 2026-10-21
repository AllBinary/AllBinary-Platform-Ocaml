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
(* package org.allbinary.game.input.motion.action *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEvent *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)

class gameKeyCompleteMotionGestureInputEvent ((name : string), (motionGestureInput : MotionGestureInput.motionGestureInput), (_inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping)) =
  object
    inherit CompleteMotionGestureInputEvent.completeMotionGestureInputEvent (name, motionGestureInput)
    val mutable gameKey : GameKey.gameKey = (Obj.magic 0)
    method gameKey = gameKey
    method set_gameKey value' = gameKey <- value'
    val mutable gameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method gameKeyEvent = gameKeyEvent
    method set_gameKeyEvent value' = gameKeyEvent <- value'
    
    

    method getSourceId () : int =
        begin
        0
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent_arg) ->
        let gameKeyEvent_arg = Obj.repr gameKeyEvent_arg in
        begin
        gameKeyEvent <- (Obj.magic gameKeyEvent_arg)
        end [@@warning "-7-20"]
    

    method getGameKeyEvent () : GameKeyEvent.gameKeyEvent =
        begin
        (gameKeyEvent :> GameKeyEvent.gameKeyEvent)
        end [@@warning "-7"]
    

    method setGameKey : 'any1. 'any1 -> unit = fun (gameKey_arg) ->
        let gameKey_arg = Obj.repr gameKey_arg in
        begin
        gameKey <- (Obj.magic gameKey_arg)
        end [@@warning "-7-20"]
    

    method getGameKey () : GameKey.gameKey =
        begin
        (gameKey :> GameKey.gameKey)
        end [@@warning "-7"]

    initializer
      begin
        gameKey <- ((GameKey.get_nULL_GAME_KEY ()) :> GameKey.gameKey);
        gameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameKeyCompleteMotionGestureInputEvent" (fun arguments -> Obj.repr (new gameKeyCompleteMotionGestureInputEvent (Obj.obj arguments)))


