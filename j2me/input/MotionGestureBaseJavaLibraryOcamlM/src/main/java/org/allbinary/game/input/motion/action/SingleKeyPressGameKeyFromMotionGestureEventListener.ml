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
(* import org.allbinary.game.input.CompleteMotionGestureInputEventListener *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.PressGameKeyEventHandler *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)

class singleKeyPressGameKeyFromMotionGestureEventListener () =
  object (self)
    inherit CompleteMotionGestureInputEventListener.completeMotionGestureInputEventListener ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onCompleteMotionGestureInputEvent : 'any1. 'any1 -> unit = fun (completeMotionGestureInputEvent) ->
        let completeMotionGestureInputEvent = Obj.repr completeMotionGestureInputEvent in
        begin
        (try
            let gameKeyCompleteMotionGestureInputEvent : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic completeMotionGestureInputEvent)))) in ();
            let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref ((((Obj.magic !gameKeyCompleteMotionGestureInputEvent)#getGameKeyEvent ()) :> GameKeyEvent.gameKeyEvent)) in ();
            ignore ((PressGameKeyEventHandler.getInstance ())#fireEvent (!gameKeyEvent))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "onCompleteMotionGestureInputEvent", e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SingleKeyPressGameKeyFromMotionGestureEventListener" (fun arguments -> Obj.repr (new singleKeyPressGameKeyFromMotionGestureEventListener (Obj.obj arguments)))


