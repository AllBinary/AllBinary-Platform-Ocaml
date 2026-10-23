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
(* package org.allbinary.input.gyro *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface *)
(* import org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener *)
(* import org.allbinary.input.AllBinarySensor *)
(* import org.allbinary.logic.math.Orientation *)
(* import org.allbinary.logic.math.PrimitiveFloatUtil *)

class allBinaryOrientationSensor () =
  object (self)
    inherit AllBinarySensor.allBinarySensor ()
    val mutable sensorDataFloatArray : float array = (Obj.magic 0)
    method sensorDataFloatArray = sensorDataFloatArray
    method set_sensorDataFloatArray value' = sensorDataFloatArray <- value'
    val mutable listener : CompleteMotionGestureInputEventListenerInterface.completeMotionGestureInputEventListenerInterface = (Obj.magic 0)
    method listener = listener
    method set_listener value' = listener <- value'
    

    method setCompleteMotionGestureInputEventListener : 'any1. 'any1 -> unit = fun (completeMotionGestureInputEventListenerInterface) ->
        let completeMotionGestureInputEventListenerInterface = Obj.repr completeMotionGestureInputEventListenerInterface in
        begin
        listener <- (Obj.magic completeMotionGestureInputEventListenerInterface)
        end [@@warning "-7-20"]
    
    

    method getOrientation : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]

    initializer
      begin
        sensorDataFloatArray <- (PrimitiveFloatUtil.getArrayInstance ());
        listener <- ((Obj.magic (java_call_static "NoCompleteMotionGestureInputEventListener.getInstance" (Obj.repr ()))) :> CompleteMotionGestureInputEventListenerInterface.completeMotionGestureInputEventListenerInterface);
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryOrientationSensor" (fun arguments -> Obj.repr (new allBinaryOrientationSensor (Obj.obj arguments)))


