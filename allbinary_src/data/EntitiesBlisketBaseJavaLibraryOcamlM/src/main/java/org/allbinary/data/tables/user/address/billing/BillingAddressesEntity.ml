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
(* package org.allbinary.data.tables.user.address.billing *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.data.tables.user.address.StreetAddressesEntity *)

class billingAddressesEntity ((userName : string)) =
  object (self)
    inherit StreetAddressesEntity.streetAddressesEntity (userName)
    val mutable tABLENAME : string = ""
    method tABLENAME = tABLENAME
    method set_tABLENAME value' = tABLENAME <- value'
    

    initializer
      begin
        tABLENAME <- "billing";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tABLENAME))
      end
  end
let () = java_register_constructor "BillingAddressesEntity" (fun arguments -> Obj.repr (new billingAddressesEntity (Obj.obj arguments)))


