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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

let eXTENSION : string = ".jsp"
let get_eXTENSION () = eXTENSION
let () = java_register_static "PaymentGatewayPageData.get_eXTENSION" (fun _ -> Obj.repr (get_eXTENSION ()))
let nAME : string = (StringUtil.getInstance ())#eMPTY_STRING
let get_nAME () = nAME
let () = java_register_static "PaymentGatewayPageData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let fORWARDMAKEPAYMENT : string = "MakePayment.jsp"
let get_fORWARDMAKEPAYMENT () = fORWARDMAKEPAYMENT
let () = java_register_static "PaymentGatewayPageData.get_fORWARDMAKEPAYMENT" (fun _ -> Obj.repr (get_fORWARDMAKEPAYMENT ()))
let pAYMENTOPTIONS : string = ("PaymentOptions" ^ java_string_of (Obj.repr (eXTENSION)))
let get_pAYMENTOPTIONS () = pAYMENTOPTIONS
let () = java_register_static "PaymentGatewayPageData.get_pAYMENTOPTIONS" (fun _ -> Obj.repr (get_pAYMENTOPTIONS ()))
let sTARTCHECKOUT : string = ("StartCheckout" ^ java_string_of (Obj.repr (eXTENSION)))
let get_sTARTCHECKOUT () = sTARTCHECKOUT
let () = java_register_static "PaymentGatewayPageData.get_sTARTCHECKOUT" (fun _ -> Obj.repr (get_sTARTCHECKOUT ()))
class paymentGatewayPageData ((location : string), (paymentMethod : string)) =
  object
    val mutable mAKEPAYMENT : string = ""
    method mAKEPAYMENT = mAKEPAYMENT
    method set_mAKEPAYMENT value' = mAKEPAYMENT <- value'
    val mutable cHECKOUT : string = ""
    method cHECKOUT = cHECKOUT
    method set_cHECKOUT value' = cHECKOUT <- value'
    val mutable sHIPPING : string = ""
    method sHIPPING = sHIPPING
    method set_sHIPPING value' = sHIPPING <- value'
    val mutable sHIPPINGADDRESS : string = ""
    method sHIPPINGADDRESS = sHIPPINGADDRESS
    method set_sHIPPINGADDRESS value' = sHIPPINGADDRESS <- value'
    val mutable sHIPPINGADDRESSACTION : string = ""
    method sHIPPINGADDRESSACTION = sHIPPINGADDRESSACTION
    method set_sHIPPINGADDRESSACTION value' = sHIPPINGADDRESSACTION <- value'
    val mutable bILLINGADDRESS : string = ""
    method bILLINGADDRESS = bILLINGADDRESS
    method set_bILLINGADDRESS value' = bILLINGADDRESS <- value'
    val mutable pAYMENT : string = ""
    method pAYMENT = pAYMENT
    method set_pAYMENT value' = pAYMENT <- value'
    val mutable aUTHORIZE : string = ""
    method aUTHORIZE = aUTHORIZE
    method set_aUTHORIZE value' = aUTHORIZE <- value'
    val mutable fINISH : string = ""
    method fINISH = fINISH
    method set_fINISH value' = fINISH <- value'
    

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let paymentMethodString : string ref = ref ((java_string_of (Obj.repr (nAME)) ^ paymentMethod)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (location));
        ignore (!stringBuffer#append ("MakePayment"));
        ignore (!stringBuffer#append (eXTENSION));
        mAKEPAYMENT <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("Checkout"));
        ignore (!stringBuffer#append (eXTENSION));
        cHECKOUT <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("Shipping"));
        ignore (!stringBuffer#append (eXTENSION));
        sHIPPING <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("ShippingAddress"));
        ignore (!stringBuffer#append (eXTENSION));
        sHIPPINGADDRESS <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("ShippingAddressAction"));
        ignore (!stringBuffer#append (eXTENSION));
        sHIPPINGADDRESSACTION <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("BillingAddress"));
        ignore (!stringBuffer#append (eXTENSION));
        bILLINGADDRESS <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("Payment"));
        ignore (!stringBuffer#append (eXTENSION));
        pAYMENT <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("Authorize"));
        ignore (!stringBuffer#append (eXTENSION));
        aUTHORIZE <- (java_string_of (Obj.repr !stringBuffer));
        ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
        ignore (!stringBuffer#append (!paymentMethodString));
        ignore (!stringBuffer#append ("PaymentFinish"));
        ignore (!stringBuffer#append (eXTENSION));
        fINISH <- (java_string_of (Obj.repr !stringBuffer))
      end
  end
let () = java_register_constructor "PaymentGatewayPageData" (fun arguments -> Obj.repr (new paymentGatewayPageData (Obj.obj arguments)))


