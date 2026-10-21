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

class transactionTypeFactory () =
  object
    val mutable sALE : TransactionType.transactionType = (Obj.magic 0)
    method sALE = sALE
    method set_sALE value' = sALE <- value'
    val mutable cREDIT : TransactionType.transactionType = (Obj.magic 0)
    method cREDIT = cREDIT
    method set_cREDIT value' = cREDIT <- value'
    val mutable aUTHORIZATION : TransactionType.transactionType = (Obj.magic 0)
    method aUTHORIZATION = aUTHORIZATION
    method set_aUTHORIZATION value' = aUTHORIZATION <- value'
    val mutable dELAYEDCAPTURE : TransactionType.transactionType = (Obj.magic 0)
    method dELAYEDCAPTURE = dELAYEDCAPTURE
    method set_dELAYEDCAPTURE value' = dELAYEDCAPTURE <- value'
    val mutable vOID : TransactionType.transactionType = (Obj.magic 0)
    method vOID = vOID
    method set_vOID value' = vOID <- value'
    val mutable iNQUIRY : TransactionType.transactionType = (Obj.magic 0)
    method iNQUIRY = iNQUIRY
    method set_iNQUIRY value' = iNQUIRY <- value'

    initializer
      begin
        sALE <- ((new TransactionType.transactionType ("Sale")) :> TransactionType.transactionType);
        cREDIT <- ((new TransactionType.transactionType ("Credit")) :> TransactionType.transactionType);
        aUTHORIZATION <- ((new TransactionType.transactionType ("Authorization")) :> TransactionType.transactionType);
        dELAYEDCAPTURE <- ((new TransactionType.transactionType ("Delayed Capture")) :> TransactionType.transactionType);
        vOID <- ((new TransactionType.transactionType ("Void")) :> TransactionType.transactionType);
        iNQUIRY <- ((new TransactionType.transactionType ("Inquiry")) :> TransactionType.transactionType);
        ()
      end
  end
let () = java_register_constructor "TransactionTypeFactory" (fun arguments -> Obj.repr (new transactionTypeFactory (Obj.obj arguments)))

let instance = (new transactionTypeFactory ())
let get_instance () = instance
let () = java_register_static "TransactionTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TransactionTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


