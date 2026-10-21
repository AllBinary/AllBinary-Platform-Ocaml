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
(* package org.allbinary.input.motion.gesture.observer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.logic.util.event.AllBinaryEventCircularPool *)

class motionEventCircularPool ((id : int)) =
  object
    val mutable mIN : int = 0
    method mIN = mIN
    method set_mIN value' = mIN <- value'
    val mutable eventPool : AllBinaryEventCircularPool.allBinaryEventCircularPool = (Obj.magic 0)
    method eventPool = eventPool
    method set_eventPool value' = eventPool <- value'
    
    

    method getInstance : 'any1. 'any1 -> MotionGestureEvent.motionGestureEvent = fun (motionGestureInput) ->
        let motionGestureInput = Obj.repr motionGestureInput in
        begin
        ((Obj.magic (eventPool#getInstance ((((Obj.magic motionGestureInput)#getId ()) - mIN)))) :> MotionGestureEvent.motionGestureEvent)
        end [@@warning "-20"]

    initializer
      begin
        mIN <- ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#lAST_MOTION#getId ());
        eventPool <- ((new AllBinaryEventCircularPool.allBinaryEventCircularPool (((((InputFactory.getInstance ())#mAX - 1)) - mIN))) :> AllBinaryEventCircularPool.allBinaryEventCircularPool);
        ();
        ignore (eventPool#initAllBinaryEventCircularPool ((new MotionEventFactory.motionEventFactory (eventPool, id))))
      end
  end
let () = java_register_constructor "MotionEventCircularPool" (fun arguments -> Obj.repr (new motionEventCircularPool (Obj.obj arguments)))

let createPool ((id : int)) =
        begin
        (new motionEventCircularPool (id))
        end
let () = java_register_static "MotionEventCircularPool.createPool" (fun arguments -> Obj.repr (createPool (Obj.obj arguments)))


