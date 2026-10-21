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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]

class inputAutomationClientInformation () =
  object
    inherit AbeClientInformation.abeClientInformation ("InputAutomationTool", "0.0.1", "InputAutomationTool 0.0.1", "IA")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "InputAutomationClientInformation" (fun arguments -> Obj.repr (new inputAutomationClientInformation (Obj.obj arguments)))


