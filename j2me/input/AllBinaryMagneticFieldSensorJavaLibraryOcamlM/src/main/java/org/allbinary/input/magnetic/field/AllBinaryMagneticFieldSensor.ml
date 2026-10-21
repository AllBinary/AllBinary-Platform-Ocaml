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
(* package org.allbinary.input.magnetic.field *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.input.AllBinarySensor *)

class allBinaryMagneticFieldSensor () =
  object
    inherit AllBinarySensor.allBinarySensor ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "AllBinaryMagneticFieldSensor" (fun arguments -> Obj.repr (new allBinaryMagneticFieldSensor (Obj.obj arguments)))


