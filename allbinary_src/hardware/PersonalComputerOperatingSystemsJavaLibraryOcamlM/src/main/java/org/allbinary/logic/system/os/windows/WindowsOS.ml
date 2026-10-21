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
(* package org.allbinary.logic.system.os.windows *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)

class windowsOS () =
  object
    inherit GenericOperatingSystem.genericOperatingSystem ()
    
    

    method isAutoHide () : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        ();
        scalable <- true
      end
  end
let () = java_register_constructor "WindowsOS" (fun arguments -> Obj.repr (new windowsOS (Obj.obj arguments)))


