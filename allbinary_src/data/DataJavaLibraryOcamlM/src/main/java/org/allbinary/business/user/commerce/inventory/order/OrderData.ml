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
(* package org.allbinary.business.user.commerce.inventory.order *)

open Allbinary_java [@@warning "-33"]

let oRDERS : string = "ORDERS"
let get_oRDERS () = oRDERS
let () = java_register_static "OrderData.get_oRDERS" (fun _ -> Obj.repr (get_oRDERS ()))
let oRDER : string = "ORDER"
let get_oRDER () = oRDER
let () = java_register_static "OrderData.get_oRDER" (fun _ -> Obj.repr (get_oRDER ()))
let iD : string = "ORDER_ID"
let get_iD () = iD
let () = java_register_static "OrderData.get_iD" (fun _ -> Obj.repr (get_iD ()))
let cUSTOMERCOMMENT : string = "ORDER_CUSTOMER_COMMENT"
let get_cUSTOMERCOMMENT () = cUSTOMERCOMMENT
let () = java_register_static "OrderData.get_cUSTOMERCOMMENT" (fun _ -> Obj.repr (get_cUSTOMERCOMMENT ()))
let cUSTOMERCANCELCOMMENT : string = "ORDER_CUSTOMER_CANCEL_COMMENT"
let get_cUSTOMERCANCELCOMMENT () = cUSTOMERCANCELCOMMENT
let () = java_register_static "OrderData.get_cUSTOMERCANCELCOMMENT" (fun _ -> Obj.repr (get_cUSTOMERCANCELCOMMENT ()))
let sTORECOMMENT : string = "ORDER_STORE_COMMENT"
let get_sTORECOMMENT () = sTORECOMMENT
let () = java_register_static "OrderData.get_sTORECOMMENT" (fun _ -> Obj.repr (get_sTORECOMMENT ()))
let sTORECANCELCOMMENT : string = "ORDER_STORE_CANCEL_COMMENT"
let get_sTORECANCELCOMMENT () = sTORECANCELCOMMENT
let () = java_register_static "OrderData.get_sTORECANCELCOMMENT" (fun _ -> Obj.repr (get_sTORECANCELCOMMENT ()))
class orderData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OrderData" (fun arguments -> Obj.repr (new orderData (Obj.obj arguments)))


