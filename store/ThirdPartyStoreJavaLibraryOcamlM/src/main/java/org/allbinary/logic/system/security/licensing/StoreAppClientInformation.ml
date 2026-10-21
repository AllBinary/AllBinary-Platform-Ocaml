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
[@@@warning "-20"]
(* import org.allbinary.thirdparty.store.LongArrayIdentifierInterface *)

class storeAppClientInformation ((name : string), (version : string), (specialName : string), (shortName : string), (longArrayIdentifier_arg : int array)) =
  object
    inherit AbeClientInformation.abeClientInformation (name, version, specialName, shortName)
    val mutable longArrayIdentifier : int array = (Obj.magic 0)
    method longArrayIdentifier = longArrayIdentifier
    method set_longArrayIdentifier value' = longArrayIdentifier <- value'
    
    

    method getLongArrayIdentifier () : int array =
        begin
        longArrayIdentifier
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        longArrayIdentifier <- longArrayIdentifier_arg
      end
  end
let () = java_register_constructor "StoreAppClientInformation" (fun arguments -> Obj.repr (new storeAppClientInformation (Obj.obj arguments)))


