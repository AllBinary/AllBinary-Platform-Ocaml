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
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystems *)
(* import org.allbinary.logic.system.hardware.linux.LinuxHardware *)
(* import org.allbinary.logic.system.hardware.windows.WindowsHardware *)

class hardwareFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "HardwareFactory" (fun arguments -> Obj.repr (new hardwareFactory (Obj.obj arguments)))

let instance = (new hardwareFactory ())
let get_instance () = instance
let () = java_register_static "HardwareFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end

(* Java overload getInstance(GenericOperatingSystem) is not converted: OCaml has one method per name *)
let () = java_register_static "HardwareFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


