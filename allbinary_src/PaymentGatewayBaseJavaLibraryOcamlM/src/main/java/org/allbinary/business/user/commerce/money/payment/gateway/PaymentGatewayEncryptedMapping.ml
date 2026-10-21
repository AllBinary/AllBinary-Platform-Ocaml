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
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.data.tables.TableMappingInterface *)

class paymentGatewayEncryptedMapping ((paymentGatewayInterface_arg : PaymentGatewayInterface.paymentGatewayInterface)) =
  object
    val mutable paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface = (Obj.magic 0)
    method paymentGatewayInterface = paymentGatewayInterface
    method set_paymentGatewayInterface value' = paymentGatewayInterface <- value'
    
    

    method toHashMap () : java_hash_map =
        begin
        ((paymentGatewayInterface#toHashMap (true)) :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        ((paymentGatewayInterface#toVector (true)) :> BasicArrayList.basicArrayList)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic (paymentGatewayInterface#getKey ()))))
        end

    initializer
      begin
        ();
        ();
        paymentGatewayInterface <- paymentGatewayInterface_arg
      end
  end
let () = java_register_constructor "PaymentGatewayEncryptedMapping" (fun arguments -> Obj.repr (new paymentGatewayEncryptedMapping (Obj.obj arguments)))


