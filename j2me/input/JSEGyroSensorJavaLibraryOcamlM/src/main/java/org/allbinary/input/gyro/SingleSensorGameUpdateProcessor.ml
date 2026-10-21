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

class singleSensorGameUpdateProcessor () =
  object (self)
    inherit SensorGameUpdateProcessor.sensorGameUpdateProcessor ()
    val mutable accelerometerSensorUpdateProcessor : Processor.processor = (Obj.magic 0)
    method accelerometerSensorUpdateProcessor = accelerometerSensorUpdateProcessor
    method set_accelerometerSensorUpdateProcessor value' = accelerometerSensorUpdateProcessor <- value'
    val mutable gyroSensorUpdateProcessor : Processor.processor = (Obj.magic 0)
    method gyroSensorUpdateProcessor = gyroSensorUpdateProcessor
    method set_gyroSensorUpdateProcessor value' = gyroSensorUpdateProcessor <- value'
    

    method process : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ignore (self#setNoSensors ())
        end [@@warning "-7"]
    

    method sendNotifications : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        accelerometerSensorUpdateProcessor <- ((new AccelerometerSensorUpdateProcessor.accelerometerSensorUpdateProcessor ()) :> Processor.processor);
        gyroSensorUpdateProcessor <- ((new GyroSensorUpdateProcessor.gyroSensorUpdateProcessor ()) :> Processor.processor);
        ()
      end
  end
let () = java_register_constructor "SingleSensorGameUpdateProcessor" (fun arguments -> Obj.repr (new singleSensorGameUpdateProcessor (Obj.obj arguments)))


