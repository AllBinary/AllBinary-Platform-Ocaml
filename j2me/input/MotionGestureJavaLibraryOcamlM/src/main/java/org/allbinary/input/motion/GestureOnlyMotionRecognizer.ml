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
(* import org.allbinary.input.motion.gesture.MotionGestureRecognizer *)

let index : int ref = ref (0)
let get_index () = !index
let set_index value' = index := value'
let () = java_register_static "GestureOnlyMotionRecognizer.get_index" (fun _ -> Obj.repr (get_index ()))
let pointCircularPool : GPointCircularPool.gPointCircularPool = ((new GPointCircularPool.gPointCircularPool (40)) :> GPointCircularPool.gPointCircularPool)
let get_pointCircularPool () = pointCircularPool
let () = java_register_static "GestureOnlyMotionRecognizer.get_pointCircularPool" (fun _ -> Obj.repr (get_pointCircularPool ()))
class gestureOnlyMotionRecognizer () =
  object
    inherit MotionRecognizer.motionRecognizer ()
    val mutable motionGestureRecognizer : MotionGestureRecognizer.motionGestureRecognizer = (Obj.magic 0)
    method motionGestureRecognizer = motionGestureRecognizer
    method set_motionGestureRecognizer value' = motionGestureRecognizer <- value'
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    
    

    method processStartMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
        ignore (!point#setX (x));
        ignore (!point#setY (y));
        ignore (motionGestureRecognizer#processPressedMotionEvent (!point, deviceId, modifiers))
        end [@@warning "-7"]
    

    method processEndMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
        ignore (!point#setX (x));
        ignore (!point#setY (y));
        ignore (motionGestureRecognizer#processReleasedMotionEvent (!point, deviceId, modifiers))
        end [@@warning "-7"]
    

    method processDraggedMotionEvent ((x : int), (y : int), (deviceId : int), (modifiers : int)) : unit =
        begin
        let point : CustomGPoint.customGPoint ref = ref (((Obj.magic (pointCircularPool#getNextInstance ())) :> CustomGPoint.customGPoint)) in ();
        ignore (!point#setX (x));
        ignore (!point#setY (y));
        ignore (motionGestureRecognizer#processDraggedMotionEvent (!point, deviceId, modifiers))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        id <- (let value = !index in index := !index + 1; value);
        motionGestureRecognizer <- (new MotionGestureRecognizer.motionGestureRecognizer (id))
      end
  end
let () = java_register_constructor "GestureOnlyMotionRecognizer" (fun arguments -> Obj.repr (new gestureOnlyMotionRecognizer (Obj.obj arguments)))


