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
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.string.CommonStrings *)

class gameKeyCompleteMotionGestureInputEvent ((name : string), (motionGestureInput : MotionGestureInput.motionGestureInput), (inputToGameKeyMapping_arg : InputToGameKeyMapping.inputToGameKeyMapping)) =
  object (self)
    inherit CompleteMotionGestureInputEvent.completeMotionGestureInputEvent (name, motionGestureInput)
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    val mutable sOURCE_ID : int = 0
    method sOURCE_ID = sOURCE_ID
    method set_sOURCE_ID value' = sOURCE_ID <- value'
    val mutable gameKey : GameKey.gameKey = (Obj.magic 0)
    method gameKey = gameKey
    method set_gameKey value' = gameKey <- value'
    val mutable gameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method gameKeyEvent = gameKeyEvent
    method set_gameKeyEvent value' = gameKeyEvent <- value'
    val mutable inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    
    

    method getSourceId () : int =
        begin
        sOURCE_ID
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        (try
            (self#setGameKey ((inputToGameKeyMapping#getInstance (((self#getMotionGestureInput ())#getId ())))));
            (self#setGameKeyEvent ((gameKeyEventFactory#getInstanceForInput (self, (self#getGameKey ())))))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((self#logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#uPDATE, e))
        end)
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
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        sOURCE_ID <- gameKeyEventFactory#mOTION_GESTURE_SOURCE_ID;
        gameKey <- ((GameKey.get_nULL_GAME_KEY ()) :> GameKey.gameKey);
        gameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        inputToGameKeyMapping <- inputToGameKeyMapping_arg;
        ignore ((GameKeyCompleteMotionGestureInputEventFactory.getInstance ())#add (self));
        (self#update ())
      end
  end
let () = java_register_constructor "GameKeyCompleteMotionGestureInputEvent" (fun arguments -> Obj.repr (new gameKeyCompleteMotionGestureInputEvent (Obj.obj arguments)))


