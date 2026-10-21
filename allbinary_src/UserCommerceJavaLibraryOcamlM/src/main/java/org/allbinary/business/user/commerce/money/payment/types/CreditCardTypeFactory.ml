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

class creditCardTypeFactory () =
  object
    val mutable vISA : CreditCardType.creditCardType = (Obj.magic 0)
    method vISA = vISA
    method set_vISA value' = vISA <- value'
    val mutable mASTERCARD : CreditCardType.creditCardType = (Obj.magic 0)
    method mASTERCARD = mASTERCARD
    method set_mASTERCARD value' = mASTERCARD <- value'
    val mutable dISCOVER : CreditCardType.creditCardType = (Obj.magic 0)
    method dISCOVER = dISCOVER
    method set_dISCOVER value' = dISCOVER <- value'
    val mutable aMERICANEXPRESS : CreditCardType.creditCardType = (Obj.magic 0)
    method aMERICANEXPRESS = aMERICANEXPRESS
    method set_aMERICANEXPRESS value' = aMERICANEXPRESS <- value'

    initializer
      begin
        vISA <- ((new CreditCardType.creditCardType ("Visa")) :> CreditCardType.creditCardType);
        mASTERCARD <- ((new CreditCardType.creditCardType ("MasterCard")) :> CreditCardType.creditCardType);
        dISCOVER <- ((new CreditCardType.creditCardType ("Discover")) :> CreditCardType.creditCardType);
        aMERICANEXPRESS <- ((new CreditCardType.creditCardType ("AMX")) :> CreditCardType.creditCardType);
        ()
      end
  end
let () = java_register_constructor "CreditCardTypeFactory" (fun arguments -> Obj.repr (new creditCardTypeFactory (Obj.obj arguments)))

let instance = (new creditCardTypeFactory ())
let get_instance () = instance
let () = java_register_static "CreditCardTypeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CreditCardTypeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


