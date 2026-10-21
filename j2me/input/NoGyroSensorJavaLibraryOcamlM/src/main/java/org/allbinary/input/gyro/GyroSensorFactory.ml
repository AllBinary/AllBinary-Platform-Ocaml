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

let allBinaryGyroSensor : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "AllBinaryOrientationSensor.get_nULL_ALLBINARY_ORIENTATION_SENSOR" (Obj.repr ())))))
let get_allBinaryGyroSensor () = Obj.magic !allBinaryGyroSensor
let set_allBinaryGyroSensor value' = allBinaryGyroSensor := Obj.repr value'
let () = java_register_static "GyroSensorFactory.get_allBinaryGyroSensor" (fun _ -> Obj.repr (get_allBinaryGyroSensor ()))

let init () : unit =
        begin
        allBinaryGyroSensor := Obj.repr ((new NoGyroSensor.noGyroSensor ()))
        end

and getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !allBinaryGyroSensor)))
        end

let () = java_register_static "GyroSensorFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "GyroSensorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class gyroSensorFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GyroSensorFactory" (fun arguments -> Obj.repr (new gyroSensorFactory (Obj.obj arguments)))


