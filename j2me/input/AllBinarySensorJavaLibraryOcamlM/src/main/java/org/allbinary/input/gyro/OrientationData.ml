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

class orientationData () =
  object
    val mutable oRIENTATION_SENSOR_INPUT : string = ""
    method oRIENTATION_SENSOR_INPUT = oRIENTATION_SENSOR_INPUT
    method set_oRIENTATION_SENSOR_INPUT value' = oRIENTATION_SENSOR_INPUT <- value'
    val mutable oRIENTATION_TYPE : string = ""
    method oRIENTATION_TYPE = oRIENTATION_TYPE
    method set_oRIENTATION_TYPE value' = oRIENTATION_TYPE <- value'
    

    initializer
      begin
        oRIENTATION_SENSOR_INPUT <- "Orientation Sensor Input";
        oRIENTATION_TYPE <- "Orientation Type";
        ();
        ()
      end
  end
let () = java_register_constructor "OrientationData" (fun arguments -> Obj.repr (new orientationData (Obj.obj arguments)))

let sINGLETON = (new orientationData ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "OrientationData.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "OrientationData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


