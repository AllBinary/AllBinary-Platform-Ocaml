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
(* package org.allbinary.input.motion.gesture *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.input.motion.gesture.observer.MotionEventCircularPool *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)

class mirrorMotionGestureEventUtil () =
  object (self)
    val mutable motionEventCircularPool : MotionEventCircularPool.motionEventCircularPool = (Obj.magic 0)
    method motionEventCircularPool = motionEventCircularPool
    method set_motionEventCircularPool value' = motionEventCircularPool <- value'
    
    

    method mirrorVerticle : 'any1. 'any1 * int -> MotionGestureEvent.motionGestureEvent = fun (motionGestureEvent, (halfWidth : int)) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        let event : MotionGestureEvent.motionGestureEvent ref = ref (((motionEventCircularPool#getInstance (((Obj.magic motionGestureEvent)#getMotionGesture ()))) :> MotionGestureEvent.motionGestureEvent)) in ();
        let previousNewX : int ref = ref ((self#getNewX ((((Obj.magic motionGestureEvent)#getPreviousPoint ())#getX ()), halfWidth))) in ();
        let currentNewX : int ref = ref ((self#getNewX ((((Obj.magic motionGestureEvent)#getCurrentPoint ())#getX ()), halfWidth))) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let mirroredPreviousPoint : GPoint.gPoint ref = ref ((((Obj.magic !pointFactory)#createXY (!previousNewX, (((Obj.magic motionGestureEvent)#getPreviousPoint ())#getY ()))) :> GPoint.gPoint)) in ();
        let mirroredCurrentPoint : GPoint.gPoint ref = ref ((((Obj.magic !pointFactory)#createXY (!currentNewX, (((Obj.magic motionGestureEvent)#getCurrentPoint ())#getY ()))) :> GPoint.gPoint)) in ();
        ignore (!event#setPreviousPoint (!mirroredPreviousPoint));
        ignore (!event#setCurrentPoint (!mirroredCurrentPoint));
        (!event :> MotionGestureEvent.motionGestureEvent)
        end [@@warning "-20"]
    

    method getNewX ((x : int), (halfWidth : int)) : int =
        begin
        let newX : int ref = ref (0) in ();
        if (x > halfWidth) then begin
            newX := (halfWidth - ((x - halfWidth)))
        end else begin
            newX := (halfWidth + ((halfWidth - x)))
        end;
        !newX
        end

    initializer
      begin
        ();
        ();
        motionEventCircularPool <- (MotionEventCircularPool.createPool (2147483647))
      end
  end
let () = java_register_constructor "MirrorMotionGestureEventUtil" (fun arguments -> Obj.repr (new mirrorMotionGestureEventUtil (Obj.obj arguments)))

let instance = (new mirrorMotionGestureEventUtil ())
let get_instance () = instance
let () = java_register_static "MirrorMotionGestureEventUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MirrorMotionGestureEventUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


