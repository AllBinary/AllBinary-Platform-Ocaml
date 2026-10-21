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
(* package org.allbinary.business.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]

let nAME : string ref = ref ("PAYMENTGATEWAYS_NAME")
let get_nAME () = !nAME
let set_nAME value' = nAME := value'
let () = java_register_static "PaymentGatewaysData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class paymentGatewaysData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PaymentGatewaysData" (fun arguments -> Obj.repr (new paymentGatewaysData (Obj.obj arguments)))


