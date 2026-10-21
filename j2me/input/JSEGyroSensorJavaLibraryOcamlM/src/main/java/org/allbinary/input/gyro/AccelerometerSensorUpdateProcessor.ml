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
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.SensorFeatureFactory *)
(* import org.allbinary.game.input.motion.action.NoCompleteMotionGestureInputEventListener *)
(* import org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener *)
(* import org.allbinary.input.accelerometer.AccelerometerSensorFactory *)

class accelerometerSensorUpdateProcessor () =
  object
    inherit Processor.processor ()
    

    method process () : unit =
        begin
        let sensorFeatureFactory : SensorFeatureFactory.sensorFeatureFactory ref = ref (((SensorFeatureFactory.getInstance ()) :> SensorFeatureFactory.sensorFeatureFactory)) in ();
        if ((Features.getInstance ())#isFeature (!sensorFeatureFactory#oRIENTATION_SENSORS)) then begin
            ignore ((Obj.magic (java_call_static "AccelerometerSensorFactory.getInstance" (Obj.repr ())))#setCompleteMotionGestureInputEventListener ((new SingleKeyPressGameKeyFromMotionGestureEventListener.singleKeyPressGameKeyFromMotionGestureEventListener ())))
        end else if ((Features.getInstance ())#isFeature (!sensorFeatureFactory#sIMULATED_ORIENTATION_SENSORS)) then begin
            ignore ((Obj.magic (java_call_static "AccelerometerSensorFactory.getInstance" (Obj.repr ())))#setCompleteMotionGestureInputEventListener ((new SingleKeyPressGameKeyFromMotionGestureEventListener.singleKeyPressGameKeyFromMotionGestureEventListener ())))
        end else if ((Features.getInstance ())#isFeature (!sensorFeatureFactory#nO_ORIENTATION)) then begin
            ignore ((Obj.magic (java_call_static "AccelerometerSensorFactory.getInstance" (Obj.repr ())))#setCompleteMotionGestureInputEventListener ((Obj.magic (java_call_static "NoCompleteMotionGestureInputEventListener.getInstance" (Obj.repr ())))))
        end else begin
            raise (Failure ("Sensor Feature Not Set"))
        end
        end [@@warning "-7"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AccelerometerSensorUpdateProcessor" (fun arguments -> Obj.repr (new accelerometerSensorUpdateProcessor (Obj.obj arguments)))


