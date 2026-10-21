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
(* package org.allbinary.logic.system.hardware *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.system.hardware.components.interfaces.HardwareComponentInterface *)
(* import org.allbinary.logic.system.hardware.components.interfaces.NoHardwareComponent *)
(* import org.allbinary.util.ABHashtable *)

class noHardware () =
  object
    

    method getComponent ((_index : int)) : HardwareComponentInterface.hardwareComponentInterface =
        begin
        ((NoHardwareComponent.getInstance ()) :> HardwareComponentInterface.hardwareComponentInterface)
        end
    

    method toString () : string =
        begin
        "No Hardware"
        end
    

    method compareTo : 'any1. 'any1 -> bool = fun (_hardwareInterface) ->
        begin
        true
        end [@@warning "-20"]
    

    method difference : 'any1 'return. 'any1 -> 'return = fun (_hardwareInterface) ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoHardware" (fun arguments -> Obj.repr (new noHardware (Obj.obj arguments)))

let instance : HardwareInterface.hardwareInterface = ((new noHardware ()) :> HardwareInterface.hardwareInterface)
let get_instance () = instance
let () = java_register_static "NoHardware.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : HardwareInterface.hardwareInterface =
        begin
        (instance :> HardwareInterface.hardwareInterface)
        end
let () = java_register_static "NoHardware.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


