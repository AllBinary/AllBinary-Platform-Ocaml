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
(* package org.allbinary.logic.system.hardware.components.linux *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.system.hardware.components.interfaces.HardDriveControllerInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)

class hardDriveController ((data_arg : string)) =
  object
    val mutable data : string = ""
    method data = data
    method set_data value' = data <- value'
    
    

    method compareTo : 'any1. 'any1 -> bool = fun (_componentInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        data
        end

    initializer
      begin
        ();
        ();
        data <- data_arg
      end
  end
let () = java_register_constructor "HardDriveController" (fun arguments -> Obj.repr (new hardDriveController (Obj.obj arguments)))


