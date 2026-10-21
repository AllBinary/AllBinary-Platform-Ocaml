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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEvent *)
(* import org.allbinary.game.input.CompleteMotionGestureInputEventHandler *)
(* import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.mapping.InputMappingInterface *)
(* import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.paint.ProcessPaintable *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)

class touchButtonsPaintableComposite ((inputMappingInterface_arg : InputMappingInterface.inputMappingInterface), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit ProcessPaintable.processPaintable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable inputMappingInterface : InputMappingInterface.inputMappingInterface = (Obj.magic 0)
    method inputMappingInterface = inputMappingInterface
    method set_inputMappingInterface value' = inputMappingInterface <- value'
    val mutable touchButtonsPaintable : TouchButtonsMappingPaintable.touchButtonsMappingPaintable = (Obj.magic 0)
    method touchButtonsPaintable = touchButtonsPaintable
    method set_touchButtonsPaintable value' = touchButtonsPaintable <- value'
    val mutable timeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeHelper = timeHelper
    method set_timeHelper value' = timeHelper <- value'
    val mutable released : bool = false
    method released = released
    method set_released value' = released <- value'
    val mutable mETHOD_NAME : string = ""
    method mETHOD_NAME = mETHOD_NAME
    method set_mETHOD_NAME value' = mETHOD_NAME <- value'
    val mutable rELEASE : string = ""
    method rELEASE = rELEASE
    method set_rELEASE value' = rELEASE <- value'
    val mutable fAST_REPEAT : string = ""
    method fAST_REPEAT = fAST_REPEAT
    method set_fAST_REPEAT value' = fAST_REPEAT <- value'
    val mutable iGNORE : string = ""
    method iGNORE = iGNORE
    method set_iGNORE value' = iGNORE <- value'
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onCompleteMotionGestureInputEvent : 'any1. 'any1 -> unit = fun (completeMotionGestureInputEvent) ->
        let completeMotionGestureInputEvent = Obj.repr completeMotionGestureInputEvent in
        try
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "onCompleteMotionGestureInputEvent"));
            let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
            let gameKeyCompleteMotionGestureInputEvent : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic completeMotionGestureInputEvent)))) in ();
            let gameKey : GameKey.gameKey ref = ref ((((Obj.magic !gameKeyCompleteMotionGestureInputEvent)#getGameKey ()) :> GameKey.gameKey)) in ();
            let motionGestureInput : MotionGestureInput.motionGestureInput ref = ref ((((Obj.magic completeMotionGestureInputEvent)#getMotionGestureInput ()) :> MotionGestureInput.motionGestureInput)) in ();
            if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic !touchMotionGestureFactory)#rELEASED)) then begin
                ignore ((Obj.magic logUtil)#putF (rELEASE, self, mETHOD_NAME));
                released <- true;
                raise (Java_return (Obj.repr (())))
            end;
            if (((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION)) && (not (timeHelper#isTimeTNT ()))) then begin
                ignore ((Obj.magic logUtil)#putF (fAST_REPEAT, self, mETHOD_NAME));
                raise (Java_return (Obj.repr (())))
            end;
            if (not released) then begin
                ignore ((Obj.magic logUtil)#putF (iGNORE, self, mETHOD_NAME));
                raise (Java_return (Obj.repr (())))
            end;
            released <- false;
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("GameKey: "))#append (((StringUtil.getInstance ())#toString (!gameKey))))#append (" MotionGestureInput: "))#append (((StringUtil.getInstance ())#toString (!motionGestureInput)))))), self, mETHOD_NAME));
            ignore (inputMappingInterface#processInputMapping (!gameKey, !motionGestureInput))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, mETHOD_NAME, e))
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method process () : unit =
        begin
        ignore ((CompleteMotionGestureInputEventHandler.getInstance ())#removeListener (self))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        timeHelper <- ((new TimeDelayHelper.timeDelayHelper (250)) :> TimeDelayHelper.timeDelayHelper);
        released <- true;
        mETHOD_NAME <- "onCompleteMotionGestureInputEvent";
        rELEASE <- "Ignoring: MotionGestureInput Release";
        fAST_REPEAT <- "Ignoring: MotionGestureInput Repeated To Quickly";
        iGNORE <- "Ignoring: Until Released";
        ();
        inputMappingInterface <- inputMappingInterface_arg;
        ignore ((CompleteMotionGestureInputEventHandler.getInstance ())#addListenerInterface (self));
        touchButtonsPaintable <- (new TouchButtonsMappingPaintable.touchButtonsMappingPaintable (basicColor))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchButtonsPaintableComposite" (fun arguments -> Obj.repr (new touchButtonsPaintableComposite (Obj.obj arguments)))


