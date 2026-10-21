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
(* package org.allbinary.business.user.commerce.inventory.basket *)

open Allbinary_java [@@warning "-33"]

let bASKET : string = "BASKET"
let get_bASKET () = bASKET
let () = java_register_static "BasketData.get_bASKET" (fun _ -> Obj.repr (get_bASKET ()))
let nAME : string = "NAME"
let get_nAME () = nAME
let () = java_register_static "BasketData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let bASKETREVIEW : string = "BASKET_REVIEW"
let get_bASKETREVIEW () = bASKETREVIEW
let () = java_register_static "BasketData.get_bASKETREVIEW" (fun _ -> Obj.repr (get_bASKETREVIEW ()))
let tOTALWEIGHT : string = "BASKET_TOTALWEIGTH"
let get_tOTALWEIGHT () = tOTALWEIGHT
let () = java_register_static "BasketData.get_tOTALWEIGHT" (fun _ -> Obj.repr (get_tOTALWEIGHT ()))
let iTEMTOTAL : string = "BASKET_ITEMTOTAL"
let get_iTEMTOTAL () = iTEMTOTAL
let () = java_register_static "BasketData.get_iTEMTOTAL" (fun _ -> Obj.repr (get_iTEMTOTAL ()))
let iTEMTOTALINBASKET : string = "BASKET_ITEMTOTALINBASKET"
let get_iTEMTOTALINBASKET () = iTEMTOTALINBASKET
let () = java_register_static "BasketData.get_iTEMTOTALINBASKET" (fun _ -> Obj.repr (get_iTEMTOTALINBASKET ()))
let sUBTOTAL : string = "BASKET_SUBTOTAL"
let get_sUBTOTAL () = sUBTOTAL
let () = java_register_static "BasketData.get_sUBTOTAL" (fun _ -> Obj.repr (get_sUBTOTAL ()))
let iSEMPTY : string = "BASKET_ISEMPTY"
let get_iSEMPTY () = iSEMPTY
let () = java_register_static "BasketData.get_iSEMPTY" (fun _ -> Obj.repr (get_iSEMPTY ()))
let iNSERT : string = "BASKET_INSERT"
let get_iNSERT () = iNSERT
let () = java_register_static "BasketData.get_iNSERT" (fun _ -> Obj.repr (get_iNSERT ()))
let dELETE : string = "BASKET_DELETE"
let get_dELETE () = dELETE
let () = java_register_static "BasketData.get_dELETE" (fun _ -> Obj.repr (get_dELETE ()))
let aDJUST : string = "BASKET_ADJUST"
let get_aDJUST () = aDJUST
let () = java_register_static "BasketData.get_aDJUST" (fun _ -> Obj.repr (get_aDJUST ()))
class basketData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BasketData" (fun arguments -> Obj.repr (new basketData (Obj.obj arguments)))


