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
(* import org.allbinary.game.input.GameInputStrings *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.RectangleCollisionUtil *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)

class popupMenuInputProcessor ((gameKeyEventList : BasicArrayList.basicArrayList), (playerInputId : int), (gameCanvas : MyCanvas.myCanvas), rectangle_arg) =
  object (self)
    inherit BasicMenuInputProcessor.basicMenuInputProcessor (gameKeyEventList, playerInputId, gameCanvas)
    val mutable rectangleCollisionUtil : Obj.t = Obj.repr 0
    method rectangleCollisionUtil : 'r. 'r = Obj.magic rectangleCollisionUtil
    method set_rectangleCollisionUtil : 'v. 'v -> unit = fun value' -> rectangleCollisionUtil <- Obj.repr value'
    val mutable cLICK_DELAY : int = 0
    method cLICK_DELAY = cLICK_DELAY
    method set_cLICK_DELAY value' = cLICK_DELAY <- value'
    val mutable clickTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method clickTimeHelper = clickTimeHelper
    method set_clickTimeHelper value' = clickTimeHelper <- value'
    val mutable rectangle : Obj.t = Obj.repr 0
    method rectangle : 'r. 'r = Obj.magic rectangle
    method set_rectangle : 'v. 'v -> unit = fun value' -> rectangle <- Obj.repr value'
    
    

    method init : 'any1. 'any1 -> unit = fun (rectangle_arg) ->
        let rectangle_arg = Obj.repr rectangle_arg in
        begin
        rectangle <- Obj.repr ((Obj.magic rectangle_arg))
        end [@@warning "-7-20"]
    

    method processInput ((key : int)) : int =
        try
        begin
        if (key = (Obj.magic (java_call_static "Canvas.get_kEY_STAR" (Obj.repr ())))) then begin
            let gameCanvas : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCanvas ())))) in ();
            ignore ((Obj.magic !gameCanvas)#toggleMenu ());
            raise (Java_return (Obj.repr (1)))
        end;
        0
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
                if (!gameKeyEvent != (Obj.magic 0)) then begin
                    key := (!gameKeyEvent#getKey ());
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
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (GameInputStrings.getInstance ())#pROCESS_INPUT, e));
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
        try
        begin
        if ((Obj.magic motionGestureEvent) == (Obj.magic 0)) then begin
            ignore ((self#logUtil)#putF ("Exception: Bug", self, (self#gameInputStrings)#pROCESS_MOTION_INPUT));
            raise (Java_return (Obj.repr (())))
        end;
        let touchMotionGestureFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))))) in ();
        let motionGestureInput : MotionGestureInput.motionGestureInput ref = ref ((((Obj.magic motionGestureEvent)#getMotionGesture ()) :> MotionGestureInput.motionGestureInput)) in ();
        if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic !touchMotionGestureFactory)#rELEASED)) then begin
            let point : GPoint.gPoint ref = ref ((((Obj.magic motionGestureEvent)#getCurrentPoint ()) :> GPoint.gPoint)) in ();
            let rectPoint : GPoint.gPoint ref = ref ((((Obj.magic rectangle)#getPoint ()) :> GPoint.gPoint)) in ();
            if ((Obj.magic rectangleCollisionUtil)#isInside ((!rectPoint#getX ()), (!rectPoint#getY ()), (((Obj.magic rectangle)#getMaxX ()) + 20), ((Obj.magic rectangle)#getMaxY ()), (!point#getX ()), (!point#getY ()))) then begin
                if (clickTimeHelper#isTimeTNT ()) then begin
                    let gameCanvas : Obj.t ref = ref ((Obj.repr (Obj.magic (self#getCanvas ())))) in ();
                    ignore ((Obj.magic !gameCanvas)#toggleMenu ())
                end
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        rectangleCollisionUtil <- (Obj.repr (Obj.magic (java_call_static "RectangleCollisionUtil.getInstance" (Obj.repr ()))));
        cLICK_DELAY <- 120;
        clickTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (cLICK_DELAY)) :> TimeDelayHelper.timeDelayHelper);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        rectangle <- Obj.repr (rectangle_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "PopupMenuInputProcessor" (fun arguments -> Obj.repr (new popupMenuInputProcessor (Obj.obj arguments)))


