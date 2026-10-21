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
(* import org.allbinary.game.input.event.DownGameKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.UpGameKeyEventHandler *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)

class gameKeyFromMotionGestureEventListener () =
  object (self)
    inherit CompleteMotionGestureInputEventListener.completeMotionGestureInputEventListener ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable previousGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method previousGameKeyEvent = previousGameKeyEvent
    method set_previousGameKeyEvent value' = previousGameKeyEvent <- value'
    

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
            if ((Obj.repr !gameKeyEvent) != (Obj.repr previousGameKeyEvent)) then begin
                if ((Obj.repr previousGameKeyEvent) != (Obj.repr (GameKeyEvent.get_nONE ()))) then begin
                    ignore ((UpGameKeyEventHandler.getInstance ())#fireEvent (previousGameKeyEvent))
                end;
                previousGameKeyEvent <- !gameKeyEvent;
                if ((!gameKeyEvent != (Obj.magic 0)) && ((Obj.repr !gameKeyEvent) != (Obj.repr (GameKeyEvent.get_nONE ())))) then begin
                    ignore ((DownGameKeyEventHandler.getInstance ())#fireEvent (!gameKeyEvent))
                end
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "onCompleteMotionGestureInputEvent", e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        previousGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameKeyFromMotionGestureEventListener" (fun arguments -> Obj.repr (new gameKeyFromMotionGestureEventListener (Obj.obj arguments)))


