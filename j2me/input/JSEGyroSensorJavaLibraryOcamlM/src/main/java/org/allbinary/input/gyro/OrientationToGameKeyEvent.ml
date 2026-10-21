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
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.SensorFeatureFactory *)
(* import org.allbinary.logic.math.Orientation *)

class orientationToGameKeyEvent () =
  object
    val mutable allBinaryGyroSensor : Obj.t = Obj.repr 0
    method allBinaryGyroSensor : 'r. 'r = Obj.magic allBinaryGyroSensor
    method set_allBinaryGyroSensor : 'v. 'v -> unit = fun value' -> allBinaryGyroSensor <- Obj.repr value'
    val mutable mIN : int = 0
    method mIN = mIN
    method set_mIN value' = mIN <- value'
    
    

    method setAllBinaryGyroSensor : 'any1. 'any1 -> unit = fun (allBinaryGyroSensor_arg) ->
        let allBinaryGyroSensor_arg = Obj.repr allBinaryGyroSensor_arg in
        begin
        allBinaryGyroSensor <- Obj.repr ((Obj.magic allBinaryGyroSensor_arg))
        end [@@warning "-20"]
    

    method getAllBinaryGyroSensor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic allBinaryGyroSensor)))
        end
    

    method process () : unit =
        begin
        ()
        end
    

    method updateGameKeyEvents : 'any1. 'any1 * int * int * int -> unit = fun (_orientation, (_yaw : int), (_pitch : int), (_roll : int)) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        allBinaryGyroSensor <- (Obj.repr (Obj.magic 0));
        mIN <- 15;
        ();
        if ((Features.getInstance ())#isFeature ((SensorFeatureFactory.getInstance ())#nO_ORIENTATION)) then begin
            allBinaryGyroSensor <- Obj.repr ((new NoGyroSensor.noGyroSensor ()))
        end else begin
            raise (Failure ("Not Such Feature"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrientationToGameKeyEvent" (fun arguments -> Obj.repr (new orientationToGameKeyEvent (Obj.obj arguments)))


