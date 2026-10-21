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
(* import org.allbinary.input.AllBinarySensorListener *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.Orientation *)

class noGyroSensor () =
  object (self)
    inherit AllBinaryOrientationSensor.allBinaryOrientationSensor ()
    
    

    method getOrientation : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "Orientation.get_nONE" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method onSensorChange () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
      end
  end
let () = java_register_constructor "NoGyroSensor" (fun arguments -> Obj.repr (new noGyroSensor (Obj.obj arguments)))


