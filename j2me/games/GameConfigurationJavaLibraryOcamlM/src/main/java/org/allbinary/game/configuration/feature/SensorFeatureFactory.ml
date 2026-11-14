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
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let instance_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instance : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instance_cell with Lazy.Undefined -> java_null)
let set_instance value' = instance_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "SensorFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
let () = java_register_static "SensorFeatureFactory.set_instance" (fun value' -> set_instance value'; Obj.repr ())
class sensorFeatureFactory () =
  object
    val mutable nO_ORIENTATION : Obj.t = Obj.repr 0
    method nO_ORIENTATION : 'r. 'r = Obj.magic nO_ORIENTATION
    method set_nO_ORIENTATION : 'v. 'v -> unit = fun value' -> nO_ORIENTATION <- Obj.repr value'
    val mutable oRIENTATION_SENSORS : Obj.t = Obj.repr 0
    method oRIENTATION_SENSORS : 'r. 'r = Obj.magic oRIENTATION_SENSORS
    method set_oRIENTATION_SENSORS : 'v. 'v -> unit = fun value' -> oRIENTATION_SENSORS <- Obj.repr value'
    val mutable sIMULATED_ORIENTATION_SENSORS : Obj.t = Obj.repr 0
    method sIMULATED_ORIENTATION_SENSORS : 'r. 'r = Obj.magic sIMULATED_ORIENTATION_SENSORS
    method set_sIMULATED_ORIENTATION_SENSORS : 'v. 'v -> unit = fun value' -> sIMULATED_ORIENTATION_SENSORS <- Obj.repr value'
    val mutable yAW : Obj.t = Obj.repr 0
    method yAW : 'r. 'r = Obj.magic yAW
    method set_yAW : 'v. 'v -> unit = fun value' -> yAW <- Obj.repr value'
    val mutable yAW_MINUS_RIGHT_PLUS_LEFT : Obj.t = Obj.repr 0
    method yAW_MINUS_RIGHT_PLUS_LEFT : 'r. 'r = Obj.magic yAW_MINUS_RIGHT_PLUS_LEFT
    method set_yAW_MINUS_RIGHT_PLUS_LEFT : 'v. 'v -> unit = fun value' -> yAW_MINUS_RIGHT_PLUS_LEFT <- Obj.repr value'
    val mutable yAW_MINUS_LEFT_PLUS_RIGHT : Obj.t = Obj.repr 0
    method yAW_MINUS_LEFT_PLUS_RIGHT : 'r. 'r = Obj.magic yAW_MINUS_LEFT_PLUS_RIGHT
    method set_yAW_MINUS_LEFT_PLUS_RIGHT : 'v. 'v -> unit = fun value' -> yAW_MINUS_LEFT_PLUS_RIGHT <- Obj.repr value'
    val mutable pITCH : Obj.t = Obj.repr 0
    method pITCH : 'r. 'r = Obj.magic pITCH
    method set_pITCH : 'v. 'v -> unit = fun value' -> pITCH <- Obj.repr value'
    val mutable rOLL : Obj.t = Obj.repr 0
    method rOLL : 'r. 'r = Obj.magic rOLL
    method set_rOLL : 'v. 'v -> unit = fun value' -> rOLL <- Obj.repr value'
    

    initializer
      begin
        nO_ORIENTATION <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("No Orientation")))));
        oRIENTATION_SENSORS <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Orientation Sensors")))));
        sIMULATED_ORIENTATION_SENSORS <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Simulated Orientation Sensors")))));
        yAW <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Yaw")))));
        yAW_MINUS_RIGHT_PLUS_LEFT <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Yaw -Right +Left")))));
        yAW_MINUS_LEFT_PLUS_RIGHT <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Yaw -Left +Right ")))));
        pITCH <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Pitch")))));
        rOLL <- (Obj.repr (Obj.obj (java_new "SensorFeature" (Obj.repr ("Roll")))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SensorFeatureFactory" (fun arguments -> Obj.repr (new sensorFeatureFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instance ()))))
        end
let () = java_register_static "SensorFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instance_cell := lazy (Obj.repr ((new sensorFeatureFactory ())))


