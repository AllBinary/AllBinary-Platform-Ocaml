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
(* import org.allbinary.game.input.event.DownGameKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.UpGameKeyEventHandler *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.math.RectangleCollisionUtil *)
(* import org.allbinary.util.BasicArrayList *)

class touchButtonRecognizer () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable rectangleCollisionUtil : Obj.t = Obj.repr 0
    method rectangleCollisionUtil : 'r. 'r = Obj.magic rectangleCollisionUtil
    method set_rectangleCollisionUtil : 'v. 'v -> unit = fun value' -> rectangleCollisionUtil <- Obj.repr value'
    val mutable upGameKeyEventHandler : UpGameKeyEventHandler.upGameKeyEventHandler = (Obj.magic 0)
    method upGameKeyEventHandler = upGameKeyEventHandler
    method set_upGameKeyEventHandler value' = upGameKeyEventHandler <- value'
    val mutable downGameKeyEventHandler : DownGameKeyEventHandler.downGameKeyEventHandler = (Obj.magic 0)
    method downGameKeyEventHandler = downGameKeyEventHandler
    method set_downGameKeyEventHandler value' = downGameKeyEventHandler <- value'
    val mutable lastPressedTouchButtonInput : TouchButtonInput.touchButtonInput = (Obj.magic 0)
    method lastPressedTouchButtonInput = lastPressedTouchButtonInput
    method set_lastPressedTouchButtonInput value' = lastPressedTouchButtonInput <- value'
    val mutable currentlyPressedTouchButtonSingleton : CurrentlyPressedTouchButtonSingleton.currentlyPressedTouchButtonSingleton = (Obj.magic 0)
    method currentlyPressedTouchButtonSingleton = currentlyPressedTouchButtonSingleton
    method set_currentlyPressedTouchButtonSingleton value' = currentlyPressedTouchButtonSingleton <- value'
    val mutable releaseHelper : ReleaseHelper.releaseHelper = (Obj.magic 0)
    method releaseHelper = releaseHelper
    method set_releaseHelper value' = releaseHelper <- value'
    
    

    method processRelease : 'any1. 'any1 * int -> unit = fun (touchButtonInput, (deviceId : int)) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        ignore (releaseHelper#release ((Obj.magic touchButtonInput), deviceId));
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref ((((Obj.magic touchButtonInput)#getGameKeyEvent ()) :> GameKeyEvent.gameKeyEvent)) in ();
        ignore (upGameKeyEventHandler#fireEvent (!gameKeyEvent));
        ignore ((upGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent));
        ignore (currentlyPressedTouchButtonSingleton#remove ((Obj.magic touchButtonInput)))
        end [@@warning "-20"]
    

    method releaseTouchButtonInput ((x : int), (y : int), (deviceId : int)) : bool =
        try
        begin
        let touchButtonInput : TouchButtonInput.touchButtonInput ref = ref ((lastPressedTouchButtonInput :> TouchButtonInput.touchButtonInput)) in ();
        if (currentlyPressedTouchButtonSingleton#contains (!touchButtonInput)) then begin
            lastPressedTouchButtonInput <- (Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#nONE;
            (self#processRelease (!touchButtonInput, deviceId));
            raise (Java_return (Obj.repr (true)))
        end else begin
            let list : BasicArrayList.basicArrayList ref = ref ((((TouchButtonFactory.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
            let rectangle : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
            let touchButton : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for index = ((!list#size ()) - 1) downto 0 do
                touchButton := Obj.repr ((Obj.magic !list#objectArray.(index)));
                rectangle := Obj.repr (((Obj.magic !touchButton)#getRectangle ()));
                point := ((Obj.magic !rectangle)#getPoint ());
                if ((Obj.magic rectangleCollisionUtil)#isInside ((!point#getX ()), (!point#getY ()), ((Obj.magic !rectangle)#getMaxX ()), ((Obj.magic !rectangle)#getMaxY ()), x, y)) then begin
                    touchButtonInput := ((Obj.magic !touchButton)#getTouchButtonInput ());
                    (self#processRelease (!touchButtonInput, deviceId));
                    raise (Java_return (Obj.repr (true)))
                end
            done
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method pressTouchButtonInput ((x : int), (y : int), (deviceId : int)) : bool =
        try
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((((TouchButtonFactory.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
        let rectangle : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let touchButton : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let touchButtonInput : TouchButtonInput.touchButtonInput ref = ref (((Obj.magic 0) :> TouchButtonInput.touchButtonInput)) in ();
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
        for index = ((!list#size ()) - 1) downto 0 do
            touchButton := Obj.repr ((Obj.magic !list#objectArray.(index)));
            rectangle := Obj.repr (((Obj.magic !touchButton)#getRectangle ()));
            point := ((Obj.magic !rectangle)#getPoint ());
            if ((Obj.magic rectangleCollisionUtil)#isInside ((!point#getX ()), (!point#getY ()), ((Obj.magic !rectangle)#getMaxX ()), ((Obj.magic !rectangle)#getMaxY ()), x, y)) then begin
                touchButtonInput := ((Obj.magic !touchButton)#getTouchButtonInput ());
                if (not (currentlyPressedTouchButtonSingleton#contains (!touchButtonInput))) then begin
                    ignore (releaseHelper#release (!touchButtonInput, deviceId));
                    lastPressedTouchButtonInput <- !touchButtonInput;
                    ignore (currentlyPressedTouchButtonSingleton#add (!touchButtonInput));
                    gameKeyEvent := (!touchButtonInput#getGameKeyEvent ());
                    ignore (downGameKeyEventHandler#fireEvent (!gameKeyEvent));
                    ignore ((downGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent))
                end;
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        rectangleCollisionUtil <- (Obj.repr (Obj.magic (java_call_static "RectangleCollisionUtil.getInstance" (Obj.repr ()))));
        upGameKeyEventHandler <- ((UpGameKeyEventHandler.getInstance ()) :> UpGameKeyEventHandler.upGameKeyEventHandler);
        downGameKeyEventHandler <- ((DownGameKeyEventHandler.getInstance ()) :> DownGameKeyEventHandler.downGameKeyEventHandler);
        lastPressedTouchButtonInput <- ((Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#nONE :> TouchButtonInput.touchButtonInput);
        currentlyPressedTouchButtonSingleton <- ((CurrentlyPressedTouchButtonSingleton.getInstance ()) :> CurrentlyPressedTouchButtonSingleton.currentlyPressedTouchButtonSingleton);
        releaseHelper <- ((Obj.magic 0) :> ReleaseHelper.releaseHelper);
        ();
        if ((Obj.magic (java_call_static "TouchScreenFactory.getInstance" (Obj.repr ())))#isMultiTouch ()) then begin
            releaseHelper <- (new MultitouchReleaseHelper.multitouchReleaseHelper (self))
        end else begin
            releaseHelper <- (new ReleaseHelper.releaseHelper (self))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "TouchButtonRecognizer" (fun arguments -> Obj.repr (new touchButtonRecognizer (Obj.obj arguments)))


