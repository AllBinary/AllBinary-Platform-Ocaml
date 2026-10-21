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
(* import org.allbinary.logic.system.os.OperatingSystemInterface *)

class hardwareFactory () =
  object
    val mutable sINGLETON : HardwareInterface.hardwareInterface = (Obj.magic 0)
    method sINGLETON = sINGLETON
    method set_sINGLETON value' = sINGLETON <- value'
    
    

    (* Java overload getInstance(OperatingSystemInterface) is not converted: OCaml has one method per name *)

    initializer
      begin
        sINGLETON <- ((NoHardware.getInstance ()) :> HardwareInterface.hardwareInterface);
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
let () = java_register_static "HardwareFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


