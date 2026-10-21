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
(* import org.allbinary.input.AllBinarySensor *)
(* import org.allbinary.input.NoAllBinarySensor *)

class sensorGameUpdateProcessor () =
  object (self)
    val mutable inputSensor : AllBinarySensor.allBinarySensor = (Obj.magic 0)
    method inputSensor = inputSensor
    method set_inputSensor value' = inputSensor <- value'
    

    method setInputSensor : 'any1. 'any1 -> unit = fun (inputSensor_arg) ->
        let inputSensor_arg = Obj.repr inputSensor_arg in
        begin
        inputSensor <- (Obj.magic inputSensor_arg)
        end [@@warning "-20"]
    

    method getInputSensor () : AllBinarySensor.allBinarySensor =
        begin
        (inputSensor :> AllBinarySensor.allBinarySensor)
        end
    

    method process : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end
    

    method sendNotifications : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end
    

    method isAnySensor () : bool =
        try
        begin
        if ((Obj.repr inputSensor) == (Obj.repr (NoAllBinarySensor.getInstance ()))) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method setNoSensors () : unit =
        begin
        (self#setInputSensor ((NoAllBinarySensor.getInstance ())))
        end

    initializer
      begin
        inputSensor <- ((NoAllBinarySensor.getInstance ()) :> AllBinarySensor.allBinarySensor);
        ()
      end
  end
let () = java_register_constructor "SensorGameUpdateProcessor" (fun arguments -> Obj.repr (new sensorGameUpdateProcessor (Obj.obj arguments)))


