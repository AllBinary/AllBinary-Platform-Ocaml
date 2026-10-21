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

let sETTOBILLINGADDRESS : string = "Set To Billing Address"
let get_sETTOBILLINGADDRESS () = sETTOBILLINGADDRESS
let () = java_register_static "ShippingAddressData.get_sETTOBILLINGADDRESS" (fun _ -> Obj.repr (get_sETTOBILLINGADDRESS ()))
let sELECT : string = "Select Shipping Address"
let get_sELECT () = sELECT
let () = java_register_static "ShippingAddressData.get_sELECT" (fun _ -> Obj.repr (get_sELECT ()))
let sELECTNAME : string = "SELECTSHIPPINGADDRESS"
let get_sELECTNAME () = sELECTNAME
let () = java_register_static "ShippingAddressData.get_sELECTNAME" (fun _ -> Obj.repr (get_sELECTNAME ()))
let mULTIPLE : string = "SHIPPINGADDRESSES"
let get_mULTIPLE () = mULTIPLE
let () = java_register_static "ShippingAddressData.get_mULTIPLE" (fun _ -> Obj.repr (get_mULTIPLE ()))
let sHIPPINGADDRESSES : string = "SHIPPINGADDRESSES"
let get_sHIPPINGADDRESSES () = sHIPPINGADDRESSES
let () = java_register_static "ShippingAddressData.get_sHIPPINGADDRESSES" (fun _ -> Obj.repr (get_sHIPPINGADDRESSES ()))
let sHIPPINGADDRESS : string = "SHIPPINGADDRESS"
let get_sHIPPINGADDRESS () = sHIPPINGADDRESS
let () = java_register_static "ShippingAddressData.get_sHIPPINGADDRESS" (fun _ -> Obj.repr (get_sHIPPINGADDRESS ()))
let iD : string = "SHIPPINGADDRESS_ID"
let get_iD () = iD
let () = java_register_static "ShippingAddressData.get_iD" (fun _ -> Obj.repr (get_iD ()))
let aDDRESS : string = "SHIPPINGADDRESS_ADDRESS"
let get_aDDRESS () = aDDRESS
let () = java_register_static "ShippingAddressData.get_aDDRESS" (fun _ -> Obj.repr (get_aDDRESS ()))
let nAME : string = "SHIPPINGADDRESS_NAME"
let get_nAME () = nAME
let () = java_register_static "ShippingAddressData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sTREET : string = "SHIPPINGADDRESS_STREET"
let get_sTREET () = sTREET
let () = java_register_static "ShippingAddressData.get_sTREET" (fun _ -> Obj.repr (get_sTREET ()))
let cITY : string = "SHIPPINGADDRESS_CITY"
let get_cITY () = cITY
let () = java_register_static "ShippingAddressData.get_cITY" (fun _ -> Obj.repr (get_cITY ()))
let sTATE : string = "SHIPPINGADDRESS_STATE"
let get_sTATE () = sTATE
let () = java_register_static "ShippingAddressData.get_sTATE" (fun _ -> Obj.repr (get_sTATE ()))
let cODE : string = "SHIPPINGADDRESS_CODE"
let get_cODE () = cODE
let () = java_register_static "ShippingAddressData.get_cODE" (fun _ -> Obj.repr (get_cODE ()))
let cOUNTRY : string = "SHIPPINGADDRESS_COUNTRY"
let get_cOUNTRY () = cOUNTRY
let () = java_register_static "ShippingAddressData.get_cOUNTRY" (fun _ -> Obj.repr (get_cOUNTRY ()))
let tAX : string = "SHIPPINGADDRESS_TAX"
let get_tAX () = tAX
let () = java_register_static "ShippingAddressData.get_tAX" (fun _ -> Obj.repr (get_tAX ()))
class shippingAddressData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ShippingAddressData" (fun arguments -> Obj.repr (new shippingAddressData (Obj.obj arguments)))


