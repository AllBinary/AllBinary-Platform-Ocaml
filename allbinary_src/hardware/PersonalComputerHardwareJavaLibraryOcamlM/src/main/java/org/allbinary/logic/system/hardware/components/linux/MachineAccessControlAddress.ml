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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.MachineAccessControlAddressInterface *)

class machineAccessControlAddress () =
  object
    
    

    method compareTo : 'any1. 'any1 -> bool = fun (_componentInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MachineAccessControlAddress" (fun arguments -> Obj.repr (new machineAccessControlAddress (Obj.obj arguments)))


