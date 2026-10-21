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

class sensorFeatureFactory () =
  object
    val mutable nO_ORIENTATION : SensorFeature.sensorFeature = (Obj.magic 0)
    method nO_ORIENTATION = nO_ORIENTATION
    method set_nO_ORIENTATION value' = nO_ORIENTATION <- value'
    val mutable oRIENTATION_SENSORS : SensorFeature.sensorFeature = (Obj.magic 0)
    method oRIENTATION_SENSORS = oRIENTATION_SENSORS
    method set_oRIENTATION_SENSORS value' = oRIENTATION_SENSORS <- value'
    val mutable sIMULATED_ORIENTATION_SENSORS : SensorFeature.sensorFeature = (Obj.magic 0)
    method sIMULATED_ORIENTATION_SENSORS = sIMULATED_ORIENTATION_SENSORS
    method set_sIMULATED_ORIENTATION_SENSORS value' = sIMULATED_ORIENTATION_SENSORS <- value'
    val mutable yAW : SensorFeature.sensorFeature = (Obj.magic 0)
    method yAW = yAW
    method set_yAW value' = yAW <- value'
    val mutable yAW_MINUS_RIGHT_PLUS_LEFT : SensorFeature.sensorFeature = (Obj.magic 0)
    method yAW_MINUS_RIGHT_PLUS_LEFT = yAW_MINUS_RIGHT_PLUS_LEFT
    method set_yAW_MINUS_RIGHT_PLUS_LEFT value' = yAW_MINUS_RIGHT_PLUS_LEFT <- value'
    val mutable yAW_MINUS_LEFT_PLUS_RIGHT : SensorFeature.sensorFeature = (Obj.magic 0)
    method yAW_MINUS_LEFT_PLUS_RIGHT = yAW_MINUS_LEFT_PLUS_RIGHT
    method set_yAW_MINUS_LEFT_PLUS_RIGHT value' = yAW_MINUS_LEFT_PLUS_RIGHT <- value'
    val mutable pITCH : SensorFeature.sensorFeature = (Obj.magic 0)
    method pITCH = pITCH
    method set_pITCH value' = pITCH <- value'
    val mutable rOLL : SensorFeature.sensorFeature = (Obj.magic 0)
    method rOLL = rOLL
    method set_rOLL value' = rOLL <- value'
    

    initializer
      begin
        nO_ORIENTATION <- ((new SensorFeature.sensorFeature ("No Orientation")) :> SensorFeature.sensorFeature);
        oRIENTATION_SENSORS <- ((new SensorFeature.sensorFeature ("Orientation Sensors")) :> SensorFeature.sensorFeature);
        sIMULATED_ORIENTATION_SENSORS <- ((new SensorFeature.sensorFeature ("Simulated Orientation Sensors")) :> SensorFeature.sensorFeature);
        yAW <- ((new SensorFeature.sensorFeature ("Yaw")) :> SensorFeature.sensorFeature);
        yAW_MINUS_RIGHT_PLUS_LEFT <- ((new SensorFeature.sensorFeature ("Yaw -Right +Left")) :> SensorFeature.sensorFeature);
        yAW_MINUS_LEFT_PLUS_RIGHT <- ((new SensorFeature.sensorFeature ("Yaw -Left +Right ")) :> SensorFeature.sensorFeature);
        pITCH <- ((new SensorFeature.sensorFeature ("Pitch")) :> SensorFeature.sensorFeature);
        rOLL <- ((new SensorFeature.sensorFeature ("Roll")) :> SensorFeature.sensorFeature);
        ();
        ()
      end
  end
let () = java_register_constructor "SensorFeatureFactory" (fun arguments -> Obj.repr (new sensorFeatureFactory (Obj.obj arguments)))

let instance = (new sensorFeatureFactory ())
let get_instance () = instance
let () = java_register_static "SensorFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "SensorFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


