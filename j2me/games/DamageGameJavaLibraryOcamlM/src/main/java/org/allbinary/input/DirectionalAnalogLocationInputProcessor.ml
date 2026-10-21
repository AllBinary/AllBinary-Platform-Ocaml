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
(* package org.allbinary.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.android.input.motion.AnalogLocationInputProcessor *)
(* import org.allbinary.game.input.GameInputProcessor *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.analog.AnalogLocationInput *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.graphics.CustomGPoint *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class directionalAnalogLocationInputProcessor ((inputProcessorArray_arg : GameInputProcessor.gameInputProcessor array)) =
  object (self)
    inherit AnalogLocationInputProcessor.analogLocationInputProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable inputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method inputProcessorArray = inputProcessorArray
    method set_inputProcessorArray value' = inputProcessorArray <- value'
    val mutable gameKeyFactory : GameKeyFactory.gameKeyFactory = (Obj.magic 0)
    method gameKeyFactory = gameKeyFactory
    method set_gameKeyFactory value' = gameKeyFactory <- value'
    val mutable leftGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method leftGameKeyEvent = leftGameKeyEvent
    method set_leftGameKeyEvent value' = leftGameKeyEvent <- value'
    val mutable rightGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method rightGameKeyEvent = rightGameKeyEvent
    method set_rightGameKeyEvent value' = rightGameKeyEvent <- value'
    val mutable upGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method upGameKeyEvent = upGameKeyEvent
    method set_upGameKeyEvent value' = upGameKeyEvent <- value'
    val mutable downGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method downGameKeyEvent = downGameKeyEvent
    method set_downGameKeyEvent value' = downGameKeyEvent <- value'
    val mutable leftTriggerGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method leftTriggerGameKeyEvent = leftTriggerGameKeyEvent
    method set_leftTriggerGameKeyEvent value' = leftTriggerGameKeyEvent <- value'
    val mutable rightTriggerGameKeyEvent : GameKeyEvent.gameKeyEvent = (Obj.magic 0)
    method rightTriggerGameKeyEvent = rightTriggerGameKeyEvent
    method set_rightTriggerGameKeyEvent value' = rightTriggerGameKeyEvent <- value'
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allbinaryLayerManager, analogLocationInput) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let analogLocationInput = Obj.repr analogLocationInput in
        begin
        (try
            let customGPoint : CustomGPoint.customGPoint ref = ref (((Obj.magic 0) :> CustomGPoint.customGPoint)) in ();
            customGPoint := ((Obj.magic analogLocationInput)#getCustomGPoint ());
            let x : int ref = ref ((!customGPoint#getX ())) in ();
            let y : int ref = ref ((!customGPoint#getY ())) in ();
            let leftTrigger : int ref = ref (((Obj.magic analogLocationInput)#getLeftTrigger ())) in ();
            let rightTrigger : int ref = ref (((Obj.magic analogLocationInput)#getRightTrigger ())) in ();
            if (!x < 0) then begin
                ignore (inputProcessorArray.((leftGameKeyEvent#getKey ()))#processAnalog ((Obj.magic allbinaryLayerManager), leftGameKeyEvent, !x))
            end else if (!x > 0) then begin
                ignore (inputProcessorArray.((rightGameKeyEvent#getKey ()))#processAnalog ((Obj.magic allbinaryLayerManager), rightGameKeyEvent, !x))
            end;
            if (!y < 0) then begin
                ignore (inputProcessorArray.((downGameKeyEvent#getKey ()))#processAnalog ((Obj.magic allbinaryLayerManager), downGameKeyEvent, !y))
            end else if (!y > 0) then begin
                ignore (inputProcessorArray.((upGameKeyEvent#getKey ()))#processAnalog ((Obj.magic allbinaryLayerManager), upGameKeyEvent, !y))
            end;
            if (!leftTrigger > 0) then begin
                ignore (inputProcessorArray.((leftTriggerGameKeyEvent#getKey ()))#processAnalog ((Obj.magic allbinaryLayerManager), leftTriggerGameKeyEvent, !leftTrigger))
            end;
            if (!rightTrigger > 0) then begin
                ignore (inputProcessorArray.((rightTriggerGameKeyEvent#getKey ()))#processAnalog ((Obj.magic allbinaryLayerManager), rightTriggerGameKeyEvent, !rightTrigger))
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put ("Unable to process analog input", self, !commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]
    

    method getSourceId () : int =
        begin
        0
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        gameKeyFactory <- ((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory);
        leftGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        rightGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        upGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        downGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        leftTriggerGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        rightTriggerGameKeyEvent <- ((GameKeyEvent.get_nONE ()) :> GameKeyEvent.gameKeyEvent);
        ();
        inputProcessorArray <- inputProcessorArray_arg;
        (try
            leftGameKeyEvent <- ((GameKeyEventFactory.getInstance ())#getInstanceForInput (self, gameKeyFactory#lEFT));
            rightGameKeyEvent <- ((GameKeyEventFactory.getInstance ())#getInstanceForInput (self, gameKeyFactory#rIGHT));
            upGameKeyEvent <- ((GameKeyEventFactory.getInstance ())#getInstanceForInput (self, gameKeyFactory#uP));
            downGameKeyEvent <- ((GameKeyEventFactory.getInstance ())#getInstanceForInput (self, gameKeyFactory#dOWN));
            leftTriggerGameKeyEvent <- ((GameKeyEventFactory.getInstance ())#getInstanceForInput (self, gameKeyFactory#kEY_NUM0));
            rightTriggerGameKeyEvent <- ((GameKeyEventFactory.getInstance ())#getInstanceForInput (self, gameKeyFactory#kEY_NUM5))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cONSTRUCTOR, e))
        end)
      end
  end [@@warning "-20"]
let () = java_register_constructor "DirectionalAnalogLocationInputProcessor" (fun arguments -> Obj.repr (new directionalAnalogLocationInputProcessor (Obj.obj arguments)))


