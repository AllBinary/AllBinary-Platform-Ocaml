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
(* package org.allbinary.business.user.commerce.money.payment.types *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class checkType () =
  object
    val mutable types : string array = (Obj.magic 0)
    method types = types
    method set_types value' = types <- value'
    

    initializer
      begin
        types <- [| "Check"; "Money Order"; "Cashiers Check" |];
        ();
        ()
      end
  end
let () = java_register_constructor "CheckType" (fun arguments -> Obj.repr (new checkType (Obj.obj arguments)))


