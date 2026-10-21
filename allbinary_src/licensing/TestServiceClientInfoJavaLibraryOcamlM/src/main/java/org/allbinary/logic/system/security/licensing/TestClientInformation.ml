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

class testClientInformation () =
  object
    inherit AbeClientInformation.abeClientInformation ("Test App Name", "0.0.1", "Test App Name 0.0.1", "TA")
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "TestClientInformation" (fun arguments -> Obj.repr (new testClientInformation (Obj.obj arguments)))


