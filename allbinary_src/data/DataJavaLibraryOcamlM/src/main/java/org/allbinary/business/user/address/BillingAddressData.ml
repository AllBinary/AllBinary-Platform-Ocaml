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
(* package org.allbinary.business.user.address *)

open Allbinary_java [@@warning "-33"]

let mAX : int = 255
let get_mAX () = mAX
let () = java_register_static "BillingAddressData.get_mAX" (fun _ -> Obj.repr (get_mAX ()))
let mIN : int = 0
let get_mIN () = mIN
let () = java_register_static "BillingAddressData.get_mIN" (fun _ -> Obj.repr (get_mIN ()))
let mULTIPLE : string = "BILLINGADDRESSES"
let get_mULTIPLE () = mULTIPLE
let () = java_register_static "BillingAddressData.get_mULTIPLE" (fun _ -> Obj.repr (get_mULTIPLE ()))
let sTATES : string = "BILLINGADDRESS_STATES"
let get_sTATES () = sTATES
let () = java_register_static "BillingAddressData.get_sTATES" (fun _ -> Obj.repr (get_sTATES ()))
let sETTOSHIPPINGADDRESS : string = "Set To Shipping Address"
let get_sETTOSHIPPINGADDRESS () = sETTOSHIPPINGADDRESS
let () = java_register_static "BillingAddressData.get_sETTOSHIPPINGADDRESS" (fun _ -> Obj.repr (get_sETTOSHIPPINGADDRESS ()))
let sELECT : string = "Select Billing Address"
let get_sELECT () = sELECT
let () = java_register_static "BillingAddressData.get_sELECT" (fun _ -> Obj.repr (get_sELECT ()))
let sETTOSHIPPINGADDRESSNAME : string = "SETTOSHIPPINGADDRESS"
let get_sETTOSHIPPINGADDRESSNAME () = sETTOSHIPPINGADDRESSNAME
let () = java_register_static "BillingAddressData.get_sETTOSHIPPINGADDRESSNAME" (fun _ -> Obj.repr (get_sETTOSHIPPINGADDRESSNAME ()))
let bILLINGADDRESSES : string = "BILLINGADDRESSES"
let get_bILLINGADDRESSES () = bILLINGADDRESSES
let () = java_register_static "BillingAddressData.get_bILLINGADDRESSES" (fun _ -> Obj.repr (get_bILLINGADDRESSES ()))
let bILLINGADDRESS : string = "BILLINGADDRESS"
let get_bILLINGADDRESS () = bILLINGADDRESS
let () = java_register_static "BillingAddressData.get_bILLINGADDRESS" (fun _ -> Obj.repr (get_bILLINGADDRESS ()))
let iD : string = "BILLINGADDRESS_ID"
let get_iD () = iD
let () = java_register_static "BillingAddressData.get_iD" (fun _ -> Obj.repr (get_iD ()))
let aDDRESS : string = "BILLINGADDRESS_ADDRESS"
let get_aDDRESS () = aDDRESS
let () = java_register_static "BillingAddressData.get_aDDRESS" (fun _ -> Obj.repr (get_aDDRESS ()))
let nAME : string = "BILLINGADDRESS_NAME"
let get_nAME () = nAME
let () = java_register_static "BillingAddressData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sTREET : string = "BILLINGADDRESS_STREET"
let get_sTREET () = sTREET
let () = java_register_static "BillingAddressData.get_sTREET" (fun _ -> Obj.repr (get_sTREET ()))
let cITY : string = "BILLINGADDRESS_CITY"
let get_cITY () = cITY
let () = java_register_static "BillingAddressData.get_cITY" (fun _ -> Obj.repr (get_cITY ()))
let sTATE : string = "BILLINGADDRESS_STATE"
let get_sTATE () = sTATE
let () = java_register_static "BillingAddressData.get_sTATE" (fun _ -> Obj.repr (get_sTATE ()))
let cODE : string = "BILLINGADDRESS_CODE"
let get_cODE () = cODE
let () = java_register_static "BillingAddressData.get_cODE" (fun _ -> Obj.repr (get_cODE ()))
let cOUNTRY : string = "BILLINGADDRESS_COUNTRY"
let get_cOUNTRY () = cOUNTRY
let () = java_register_static "BillingAddressData.get_cOUNTRY" (fun _ -> Obj.repr (get_cOUNTRY ()))
class billingAddressData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BillingAddressData" (fun arguments -> Obj.repr (new billingAddressData (Obj.obj arguments)))


