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
(* package org.allbinary.business.context.modules.storefront.statistics.orders.history *)

open Allbinary_java [@@warning "-33"]

class storeFrontOrdersHistoryStatisticsData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable nUMBEROFORDERS : string = ""
    method nUMBEROFORDERS = nUMBEROFORDERS
    method set_nUMBEROFORDERS value' = nUMBEROFORDERS <- value'
    val mutable sUBTOTAL : string = ""
    method sUBTOTAL = sUBTOTAL
    method set_sUBTOTAL value' = sUBTOTAL <- value'
    val mutable sHIPPINGCOST : string = ""
    method sHIPPINGCOST = sHIPPINGCOST
    method set_sHIPPINGCOST value' = sHIPPINGCOST <- value'
    val mutable tAXES : string = ""
    method tAXES = tAXES
    method set_tAXES value' = tAXES <- value'
    val mutable tOTAL : string = ""
    method tOTAL = tOTAL
    method set_tOTAL value' = tOTAL <- value'
    

    initializer
      begin
        nAME <- "STOREFRONT_ORDERS_HISTORY_STATISTICS_NAME";
        nUMBEROFORDERS <- "STOREFRONT_ORDERS_HISTORY_STATISTICS_NUMBER_OF_ORDERS";
        sUBTOTAL <- "STOREFRONT_ORDERS_HISTORY_STATISTICS_SUBTOTAL";
        sHIPPINGCOST <- "STOREFRONT_ORDERS_HISTORY_STATISTICS_SHIPPINGCOST";
        tAXES <- "STOREFRONT_ORDERS_HISTORY_STATISTICS_TAXES";
        tOTAL <- "STOREFRONT_ORDERS_HISTORY_STATISTICS_TOTAL";
        ();
        ()
      end
  end
let () = java_register_constructor "StoreFrontOrdersHistoryStatisticsData" (fun arguments -> Obj.repr (new storeFrontOrdersHistoryStatisticsData (Obj.obj arguments)))

let instance = (new storeFrontOrdersHistoryStatisticsData ())
let get_instance () = instance
let () = java_register_static "StoreFrontOrdersHistoryStatisticsData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StoreFrontOrdersHistoryStatisticsData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


