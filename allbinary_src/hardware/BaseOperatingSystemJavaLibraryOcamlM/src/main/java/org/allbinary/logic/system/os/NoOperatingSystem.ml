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
(* package org.allbinary.logic.system.os *)

open Allbinary_java [@@warning "-33"]

let nO_OPERATING_SYSTEM : GenericOperatingSystem.genericOperatingSystem = ((new GenericOperatingSystem.genericOperatingSystem ()) :> GenericOperatingSystem.genericOperatingSystem)
let get_nO_OPERATING_SYSTEM () = nO_OPERATING_SYSTEM
let () = java_register_static "NoOperatingSystem.get_nO_OPERATING_SYSTEM" (fun _ -> Obj.repr (get_nO_OPERATING_SYSTEM ()))
class noOperatingSystem () =
  object
    inherit GenericOperatingSystem.genericOperatingSystem ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NoOperatingSystem" (fun arguments -> Obj.repr (new noOperatingSystem (Obj.obj arguments)))


