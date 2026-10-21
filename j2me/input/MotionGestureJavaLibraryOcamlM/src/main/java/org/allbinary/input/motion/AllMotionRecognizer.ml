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
(* package org.allbinary.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.CustomGPoint *)
(* import org.allbinary.graphics.GPointCircularPool *)
(* import org.allbinary.input.motion.button.TouchButtonRecognizer *)
(* import org.allbinary.input.motion.gesture.MotionGestureRecognizer *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let index : int ref = ref (0)
let get_index () = !index
let set_index value' = index := value'
let () = java_register_static "AllMotionRecognizer.get_index" (fun _ -> Obj.repr (get_index ()))
let pointCircularPool : GPointCircularPool.gPointCircularPool = ((new GPointCircularPool.gPointCircularPool (40)) :> GPointCircularPool.gPointCircularPool)
let get_pointCircularPool () = pointCircularPool
let () = java_register_static "AllMotionRecognizer.get_pointCircularPool" (fun _ -> Obj.repr (get_pointCircularPool ()))
class allMotionRecognizer () =
  object
    inherit MotionRecognizer.motionRecognizer ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable motionGestureRecognizer : MotionGestureRecognizer.motionGestureRecognizer = (Obj.magic 0)
    method motionGestureRecognizer = motionGestureRecognizer
    method set_motionGestureRecognizer value' = motionGestureRecognizer <- value'
    val mutable touchButtonProcessing : bool = false
    method touchButtonProcessing = touchButtonProcessing
    method set_touchButtonProcessing value' = touchButtonProcessing <- value'
    val mutable touchButtonRecognizer : TouchButtonRecognizer.touchButtonRecognizer = (Obj.magic 0)
    method touchButtonRecognizer = touchButtonRecognizer
    method set_touchButtonRecognizer value' = touchButtonRecognizer <- value'
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    val mutable lastX : int = 0
    method lastX = lastX
    method set_lastX value' = lastX <- value'
    val mutable lastY : int = 0
    method lastY = lastY
    method set_lastY value' = lastY <- value'
    
    

    method processStartMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        if (touchButtonRecognizer#pressTouchButtonInput (x, y, deviceId)) then begin
            touchButtonProcessing <- true
        end;
        if (not touchButtonProcessing) then begin
            let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
            ignore (!point#setX (x));
            ignore (!point#setY (y));
            ignore (motionGestureRecognizer#processPressedMotionEvent (!point, deviceId, modifiers))
        end
        end [@@warning "-7"]
    

    method processEndMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        if (touchButtonRecognizer#releaseTouchButtonInput (x, y, deviceId)) then begin
            ()
        end;
        if (not touchButtonProcessing) then begin
            let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
            ignore (!point#setX (x));
            ignore (!point#setY (y));
            ignore (motionGestureRecognizer#processReleasedMotionEvent (!point, deviceId, modifiers))
        end;
        if touchButtonProcessing then begin
            touchButtonProcessing <- false
        end
        end [@@warning "-7"]
    

    method processDraggedMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        if touchButtonProcessing then begin
            ignore (touchButtonRecognizer#pressTouchButtonInput (x, y, deviceId))
        end;
        if (not touchButtonProcessing) then begin
            let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
            ignore (!point#setX (x));
            ignore (!point#setY (y));
            ignore (motionGestureRecognizer#processDraggedMotionEvent (!point, deviceId, modifiers))
        end
        end [@@warning "-7"]
    

    method processMovedMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        if ((x <> lastX) || (y <> lastY)) then begin
            lastX <- x;
            lastY <- y;
            let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
            ignore (!point#setX (x));
            ignore (!point#setY (y));
            ignore (motionGestureRecognizer#processMovedMotionEvent (!point, deviceId, modifiers))
        end
        end [@@warning "-7"]
    

    method processScrolledMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
        ignore (!point#setX (x));
        ignore (!point#setY (y));
        ignore (motionGestureRecognizer#processScrolledMotionEvent (!point, deviceId, modifiers))
        end [@@warning "-7"]
    

    method getMotionGestureRecognizer () : MotionGestureRecognizer.motionGestureRecognizer =
        begin
        (motionGestureRecognizer :> MotionGestureRecognizer.motionGestureRecognizer)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        touchButtonProcessing <- false;
        ();
        ();
        lastX <- 0;
        lastY <- 0;
        ();
        id <- (let value = !index in index := !index + 1; value);
        motionGestureRecognizer <- (new MotionGestureRecognizer.motionGestureRecognizer (id));
        touchButtonRecognizer <- (new TouchButtonRecognizer.touchButtonRecognizer ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllMotionRecognizer" (fun arguments -> Obj.repr (new allMotionRecognizer (Obj.obj arguments)))


