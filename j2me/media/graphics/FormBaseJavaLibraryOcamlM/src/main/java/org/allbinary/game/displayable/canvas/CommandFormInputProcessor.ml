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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Command *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.layer.SWTUtil *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.graphics.form.CommandCurrentSelectionForm *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.audio.PrimaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SelectSound *)
(* import org.allbinary.thread.PrimaryThreadPool *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)

class commandFormInputProcessor ((gameKeyEventList : BasicArrayList.basicArrayList), (playerInputId : int), (gameCanvas : MyCanvas.myCanvas), (form_arg : ScrollSelectionForm.scrollSelectionForm)) =
  object (self)
    inherit BasicMenuInputProcessor.basicMenuInputProcessor (gameKeyEventList, playerInputId, gameCanvas) as super
    val mutable mOTION_GESTURE_SOURCE_ID : int = 0
    method mOTION_GESTURE_SOURCE_ID = mOTION_GESTURE_SOURCE_ID
    method set_mOTION_GESTURE_SOURCE_ID value' = mOTION_GESTURE_SOURCE_ID <- value'
    val mutable cLICK_DELAY : int = 0
    method cLICK_DELAY = cLICK_DELAY
    method set_cLICK_DELAY value' = cLICK_DELAY <- value'
    val mutable clickTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method clickTimeHelper = clickTimeHelper
    method set_clickTimeHelper value' = clickTimeHelper <- value'
    val mutable dOUBLE_CLICK_DELAY : int = 0
    method dOUBLE_CLICK_DELAY = dOUBLE_CLICK_DELAY
    method set_dOUBLE_CLICK_DELAY value' = dOUBLE_CLICK_DELAY <- value'
    val mutable doubleClickTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method doubleClickTimeHelper = doubleClickTimeHelper
    method set_doubleClickTimeHelper value' = doubleClickTimeHelper <- value'
    val mutable isSingleKeyProcessing : bool = false
    method isSingleKeyProcessing = isSingleKeyProcessing
    method set_isSingleKeyProcessing value' = isSingleKeyProcessing <- value'
    val mutable form : ScrollSelectionForm.scrollSelectionForm = (Obj.magic 0)
    method form = form
    method set_form value' = form <- value'
    val mutable hasPressed : bool = false
    method hasPressed = hasPressed
    method set_hasPressed value' = hasPressed <- value'
    val mutable pROCESS_COMMAND : string = ""
    method pROCESS_COMMAND = pROCESS_COMMAND
    method set_pROCESS_COMMAND value' = pROCESS_COMMAND <- value'
    val mutable nAME_LABEL : string = ""
    method nAME_LABEL = nAME_LABEL
    method set_nAME_LABEL value' = nAME_LABEL <- value'
    
    

    method processInput ((key : int)) : int =
        try
        begin
        if ((((key = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) || (key = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))))) || (key = (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))))) || (key = (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))))) then begin
            ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
            ignore (form#processInputKey (key));
            raise (Java_return (Obj.repr (1)))
        end else if (key = (Obj.magic (java_call_static "Canvas.get_fIRE" (Obj.repr ())))) then begin
            ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
            raise (Java_return (Obj.repr ((self#processCommand ()))))
        end;
        0
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processCommand () : int =
        try
        begin
        let commandCurrentSelectionForm : CommandCurrentSelectionForm.commandCurrentSelectionForm ref = ref (((Obj.magic form) :> CommandCurrentSelectionForm.commandCurrentSelectionForm)) in ();
        let command : Obj.t ref = ref ((Obj.repr (!commandCurrentSelectionForm#getSelectedCommand ()))) in ();
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (Obj.magic !command))), self, pROCESS_COMMAND));
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        if (((SWTUtil.get_isSWT ()) && (!features#isFeature (!openGLFeatureFactory#oPENGL))) && ((Obj.repr (Obj.magic !command)) != (Obj.repr (GameCommandsFactory.getInstance ())#eXIT_COMMAND))) then begin
            ignore ((Obj.obj (java_new "CommandRunnable" (Obj.repr (self, (Obj.magic !command)))))#run ())
        end else begin
            ignore ((PrimaryThreadPool.getInstance ())#runTask ((Obj.obj (java_new "CommandRunnable" (Obj.repr (self, (Obj.magic !command)))))))
        end;
        if ((Obj.repr (Obj.magic !command)) == (Obj.repr (GameCommandsFactory.getInstance ())#qUIT_COMMAND)) then begin
            raise (Java_return (Obj.repr ((-1))))
        end else begin
            raise (Java_return (Obj.repr (1)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processInputList () : int =
        try
        begin
        (try
            let motionInputsIndex : int ref = ref ((self#processMotionInputs ())) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((self#getGameKeyEventList ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!list#size ())) in ();
            let key : int ref = ref (0) in ();
            let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
            for index = 0 to !size - 1 do
                gameKeyEvent := (Obj.magic !list#objectArray.(index));
                key := (!gameKeyEvent#getKey ());
                if ((!gameKeyEvent#getSourceId ()) != mOTION_GESTURE_SOURCE_ID) then begin
                    if ((self#processInput (!key)) = 1) then begin
                        raise Java_break
                    end
                end
            done;
            ignore (self#clear ());
            if ((!size > 0) || (!motionInputsIndex >= 0)) then begin
                raise (Java_return (Obj.repr (1)))
            end else begin
                raise (Java_return (Obj.repr ((-1))))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#gameInputStrings)#pROCESS_INPUT, e));
            (-1)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processMotionInputs () : int =
        begin
        let lastIndex : int ref = ref ((((self#motionGestureEventList)#size ()) - 1)) in ();
        if (!lastIndex >= 0) then begin
            let motionGestureEvent : MotionGestureEvent.motionGestureEvent ref = ref (((Obj.magic (self#motionGestureEventList)#objectArray.(!lastIndex)) :> MotionGestureEvent.motionGestureEvent)) in ();
            (self#processMotionInput (!motionGestureEvent))
        end;
        ignore ((self#motionGestureEventList)#clear ());
        !lastIndex
        end [@@warning "-7"]
    

    method processMotionInput : 'any1. 'any1 -> unit = fun (motionGestureEvent) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
        let motionGestureInput : MotionGestureInput.motionGestureInput ref = ref ((((Obj.magic motionGestureEvent)#getMotionGesture ()) :> MotionGestureInput.motionGestureInput)) in ();
        if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic !touchMotionGestureFactory)#rELEASED)) then begin
            let point : GPoint.gPoint ref = ref ((((Obj.magic motionGestureEvent)#getCurrentPoint ()) :> GPoint.gPoint)) in ();
            if (form#isInForm (!point)) then begin
                let index : int ref = ref ((form#getSelectedIndexForPoint (!point))) in ();
                if (!index <> (-1)) then begin
                    ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
                    if (!index = (form#getSelectedIndex ())) then begin
                        if (clickTimeHelper#isTimeTNT ()) then begin
                            ignore (self#processCommand ())
                        end
                    end else begin
                        ignore (form#setSelectedIndex (!index))
                    end
                end else begin
                    ()
                end
            end;
            if hasPressed then begin
                if (not (doubleClickTimeHelper#isTimeTNT ())) then begin
                    ignore ((self#logUtil)#putF ("Double Press", self, (self#gameInputStrings)#pROCESS_MOTION_INPUT));
                    ignore (self#processCommand ())
                end;
                doubleClickTimeHelper#set_delay (dOUBLE_CLICK_DELAY);
                ignore (doubleClickTimeHelper#setStartTimeTNT ())
            end;
            hasPressed <- false
        end else if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic !touchMotionGestureFactory)#pRESSED)) then begin
            doubleClickTimeHelper#set_delay (0);
            hasPressed <- true
        end
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((super#toString ())))#append (nAME_LABEL))#append ((java_string_of (Obj.repr form))))))
        end [@@warning "-7"]

    initializer
      begin
        mOTION_GESTURE_SOURCE_ID <- (GameKeyEventFactory.getInstance ())#mOTION_GESTURE_SOURCE_ID;
        cLICK_DELAY <- 150;
        clickTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (cLICK_DELAY)) :> TimeDelayHelper.timeDelayHelper);
        dOUBLE_CLICK_DELAY <- 1200;
        doubleClickTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (dOUBLE_CLICK_DELAY)) :> TimeDelayHelper.timeDelayHelper);
        isSingleKeyProcessing <- ((InputFeatureFactory.getInstance ())#isSingleKeyProcessing ());
        ();
        hasPressed <- false;
        pROCESS_COMMAND <- "processCommand";
        nAME_LABEL <- " ScrollSelectionForm: ";
        ();
        (* super(...) is the inherit clause *) ();
        form <- form_arg
      end
  end
let () = java_register_constructor "CommandFormInputProcessor" (fun arguments -> Obj.repr (new commandFormInputProcessor (Obj.obj arguments)))


