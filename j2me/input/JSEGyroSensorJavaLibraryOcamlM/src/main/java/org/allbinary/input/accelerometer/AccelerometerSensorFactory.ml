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
(* package org.allbinary.input.accelerometer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.SensorFeatureFactory *)
(* import org.allbinary.input.gyro.AllBinaryOrientationSensor *)

let allBinaryAccelerometerSensor : Obj.t ref = ref ((Obj.repr (Obj.magic 0)))
let get_allBinaryAccelerometerSensor () = Obj.magic !allBinaryAccelerometerSensor
let set_allBinaryAccelerometerSensor value' = allBinaryAccelerometerSensor := Obj.repr value'
let () = java_register_static "AccelerometerSensorFactory.get_allBinaryAccelerometerSensor" (fun _ -> Obj.repr (get_allBinaryAccelerometerSensor ()))

let init () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let sensorFeatureFactory : SensorFeatureFactory.sensorFeatureFactory ref = ref (((SensorFeatureFactory.getInstance ()) :> SensorFeatureFactory.sensorFeatureFactory)) in ();
        if (!features#isFeature (!sensorFeatureFactory#oRIENTATION_SENSORS)) then begin
            raise (Failure ("No Orientation Sensors"))
        end else if (!features#isFeature (!sensorFeatureFactory#sIMULATED_ORIENTATION_SENSORS)) then begin
            raise (Failure ("No Simulation Sensors"))
        end else if (!features#isFeature (!sensorFeatureFactory#nO_ORIENTATION)) then begin
            allBinaryAccelerometerSensor := Obj.repr ((new NoAccelerometerSensor.noAccelerometerSensor ()))
        end else begin
            raise (Failure ("Not Such SensorFeature"))
        end
        end

and getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !allBinaryAccelerometerSensor)))
        end

let () = java_register_static "AccelerometerSensorFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "AccelerometerSensorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class accelerometerSensorFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "AccelerometerSensorFactory" (fun arguments -> Obj.repr (new accelerometerSensorFactory (Obj.obj arguments)))


