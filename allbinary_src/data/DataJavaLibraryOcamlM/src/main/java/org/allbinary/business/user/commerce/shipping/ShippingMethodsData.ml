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
(* package org.allbinary.business.user.commerce.shipping *)

open Allbinary_java [@@warning "-33"]

let sHIPPINGMETHODSORDERSUMMARIES : string = "SHIPPINGMETHODS_ORDERSUMMARIES"
let get_sHIPPINGMETHODSORDERSUMMARIES () = sHIPPINGMETHODSORDERSUMMARIES
let () = java_register_static "ShippingMethodsData.get_sHIPPINGMETHODSORDERSUMMARIES" (fun _ -> Obj.repr (get_sHIPPINGMETHODSORDERSUMMARIES ()))
let sHIPPINGMETHODORDERSUMMARY : string = "SHIPPINGMETHOD_ORDERSUMMARY"
let get_sHIPPINGMETHODORDERSUMMARY () = sHIPPINGMETHODORDERSUMMARY
let () = java_register_static "ShippingMethodsData.get_sHIPPINGMETHODORDERSUMMARY" (fun _ -> Obj.repr (get_sHIPPINGMETHODORDERSUMMARY ()))
let sHIPPINGMETHODS : string = "SHIPPINGMETHODS"
let get_sHIPPINGMETHODS () = sHIPPINGMETHODS
let () = java_register_static "ShippingMethodsData.get_sHIPPINGMETHODS" (fun _ -> Obj.repr (get_sHIPPINGMETHODS ()))
let nAME : string = "SHIPPINGMETHODS_NAME"
let get_nAME () = nAME
let () = java_register_static "ShippingMethodsData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sHIPPINGCOST : string = "SHIPPINGMETHOD_SHIPPINGCOST"
let get_sHIPPINGCOST () = sHIPPINGCOST
let () = java_register_static "ShippingMethodsData.get_sHIPPINGCOST" (fun _ -> Obj.repr (get_sHIPPINGCOST ()))
let tAXRATE : string = "SHIPPINGMETHOD_TAXRATE"
let get_tAXRATE () = tAXRATE
let () = java_register_static "ShippingMethodsData.get_tAXRATE" (fun _ -> Obj.repr (get_tAXRATE ()))
let sUBTOTAL : string = "SHIPPINGMETHOD_SUBTOTAL"
let get_sUBTOTAL () = sUBTOTAL
let () = java_register_static "ShippingMethodsData.get_sUBTOTAL" (fun _ -> Obj.repr (get_sUBTOTAL ()))
let tAX : string = "SHIPPINGMETHOD_TAX"
let get_tAX () = tAX
let () = java_register_static "ShippingMethodsData.get_tAX" (fun _ -> Obj.repr (get_tAX ()))
let tOTAL : string = "SHIPPINGMETHOD_TOTAL"
let get_tOTAL () = tOTAL
let () = java_register_static "ShippingMethodsData.get_tOTAL" (fun _ -> Obj.repr (get_tOTAL ()))
class shippingMethodsData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ShippingMethodsData" (fun arguments -> Obj.repr (new shippingMethodsData (Obj.obj arguments)))


