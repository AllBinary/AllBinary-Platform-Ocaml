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

let mAXIDLEN : int ref = ref (19)
let get_mAXIDLEN () = !mAXIDLEN
let set_mAXIDLEN value' = mAXIDLEN := value'
let () = java_register_static "OrderHistoryData.get_mAXIDLEN" (fun _ -> Obj.repr (get_mAXIDLEN ()))
let dATEDELTA : string = "DATE_DELTA"
let get_dATEDELTA () = dATEDELTA
let () = java_register_static "OrderHistoryData.get_dATEDELTA" (fun _ -> Obj.repr (get_dATEDELTA ()))
let dATETYPE : string = "DATE_TYPE"
let get_dATETYPE () = dATETYPE
let () = java_register_static "OrderHistoryData.get_dATETYPE" (fun _ -> Obj.repr (get_dATETYPE ()))
let tYPELONG : string = "TYPE_LONG"
let get_tYPELONG () = tYPELONG
let () = java_register_static "OrderHistoryData.get_tYPELONG" (fun _ -> Obj.repr (get_tYPELONG ()))
let tYPECAESAR : string = "TYPE_CAESAR"
let get_tYPECAESAR () = tYPECAESAR
let () = java_register_static "OrderHistoryData.get_tYPECAESAR" (fun _ -> Obj.repr (get_tYPECAESAR ()))
let tODATE : string = "TO_DATE"
let get_tODATE () = tODATE
let () = java_register_static "OrderHistoryData.get_tODATE" (fun _ -> Obj.repr (get_tODATE ()))
let fROMHOUR : string = "FROM_HOUR"
let get_fROMHOUR () = fROMHOUR
let () = java_register_static "OrderHistoryData.get_fROMHOUR" (fun _ -> Obj.repr (get_fROMHOUR ()))
let fROMDAY : string = "FROM_DAY"
let get_fROMDAY () = fROMDAY
let () = java_register_static "OrderHistoryData.get_fROMDAY" (fun _ -> Obj.repr (get_fROMDAY ()))
let fROMMONTH : string = "FROM_MONTH"
let get_fROMMONTH () = fROMMONTH
let () = java_register_static "OrderHistoryData.get_fROMMONTH" (fun _ -> Obj.repr (get_fROMMONTH ()))
let fROMYEAR : string = "FROM_YEAR"
let get_fROMYEAR () = fROMYEAR
let () = java_register_static "OrderHistoryData.get_fROMYEAR" (fun _ -> Obj.repr (get_fROMYEAR ()))
let tOHOUR : string = "TO_HOUR"
let get_tOHOUR () = tOHOUR
let () = java_register_static "OrderHistoryData.get_tOHOUR" (fun _ -> Obj.repr (get_tOHOUR ()))
let tODAY : string = "TO_DAY"
let get_tODAY () = tODAY
let () = java_register_static "OrderHistoryData.get_tODAY" (fun _ -> Obj.repr (get_tODAY ()))
let tOMONTH : string = "TO_MONTH"
let get_tOMONTH () = tOMONTH
let () = java_register_static "OrderHistoryData.get_tOMONTH" (fun _ -> Obj.repr (get_tOMONTH ()))
let tOYEAR : string = "TO_YEAR"
let get_tOYEAR () = tOYEAR
let () = java_register_static "OrderHistoryData.get_tOYEAR" (fun _ -> Obj.repr (get_tOYEAR ()))
let oRDERHISTORY : string = "ORDERHISTORY"
let get_oRDERHISTORY () = oRDERHISTORY
let () = java_register_static "OrderHistoryData.get_oRDERHISTORY" (fun _ -> Obj.repr (get_oRDERHISTORY ()))
let sHIPPEDDATE : string = "ORDERHISTORY_SHIPPED_DATE"
let get_sHIPPEDDATE () = sHIPPEDDATE
let () = java_register_static "OrderHistoryData.get_sHIPPEDDATE" (fun _ -> Obj.repr (get_sHIPPEDDATE ()))
let oRDERDATE : string = "ORDERHISTORY_ORDER_DATE"
let get_oRDERDATE () = oRDERDATE
let () = java_register_static "OrderHistoryData.get_oRDERDATE" (fun _ -> Obj.repr (get_oRDERDATE ()))
let tRANSDATE : string = "ORDERHISTORY_TRANS_DATE"
let get_tRANSDATE () = tRANSDATE
let () = java_register_static "OrderHistoryData.get_tRANSDATE" (fun _ -> Obj.repr (get_tRANSDATE ()))
let cANCELDATE : string = "ORDERHISTORY_CANCEL_DATE"
let get_cANCELDATE () = cANCELDATE
let () = java_register_static "OrderHistoryData.get_cANCELDATE" (fun _ -> Obj.repr (get_cANCELDATE ()))
let sHIPPEDDATEFORMATTED : string = "ORDERHISTORY_SHIPPED_DATE_FORMATTED"
let get_sHIPPEDDATEFORMATTED () = sHIPPEDDATEFORMATTED
let () = java_register_static "OrderHistoryData.get_sHIPPEDDATEFORMATTED" (fun _ -> Obj.repr (get_sHIPPEDDATEFORMATTED ()))
let oRDERDATEFORMATTED : string = "ORDERHISTORY_ORDER_DATE_FORMATTED"
let get_oRDERDATEFORMATTED () = oRDERDATEFORMATTED
let () = java_register_static "OrderHistoryData.get_oRDERDATEFORMATTED" (fun _ -> Obj.repr (get_oRDERDATEFORMATTED ()))
let tRANSDATEFORMATTED : string = "ORDERHISTORY_TRANS_DATE_FORMATTED"
let get_tRANSDATEFORMATTED () = tRANSDATEFORMATTED
let () = java_register_static "OrderHistoryData.get_tRANSDATEFORMATTED" (fun _ -> Obj.repr (get_tRANSDATEFORMATTED ()))
let cANCELDATEFORMATTED : string = "ORDERHISTORY_CANCEL_DATE_FORMATTED"
let get_cANCELDATEFORMATTED () = cANCELDATEFORMATTED
let () = java_register_static "OrderHistoryData.get_cANCELDATEFORMATTED" (fun _ -> Obj.repr (get_cANCELDATEFORMATTED ()))
let sUBTOTAL : string = "ORDERHISTORY_SUB_TOTAL"
let get_sUBTOTAL () = sUBTOTAL
let () = java_register_static "OrderHistoryData.get_sUBTOTAL" (fun _ -> Obj.repr (get_sUBTOTAL ()))
let sHIPPINGCOST : string = "ORDERHISTORY_SHIPPING_COST"
let get_sHIPPINGCOST () = sHIPPINGCOST
let () = java_register_static "OrderHistoryData.get_sHIPPINGCOST" (fun _ -> Obj.repr (get_sHIPPINGCOST ()))
let tAX : string = "ORDERHISTORY_TAX"
let get_tAX () = tAX
let () = java_register_static "OrderHistoryData.get_tAX" (fun _ -> Obj.repr (get_tAX ()))
let tOTAL : string = "ORDERHISTORY_TOTAL"
let get_tOTAL () = tOTAL
let () = java_register_static "OrderHistoryData.get_tOTAL" (fun _ -> Obj.repr (get_tOTAL ()))
let cANCELINFO : string = "ORDERHISTORY_CANCEL_INFO"
let get_cANCELINFO () = cANCELINFO
let () = java_register_static "OrderHistoryData.get_cANCELINFO" (fun _ -> Obj.repr (get_cANCELINFO ()))
let cANCELTYPE : string = "ORDERHISTORY_CANCEL_TYPE"
let get_cANCELTYPE () = cANCELTYPE
let () = java_register_static "OrderHistoryData.get_cANCELTYPE" (fun _ -> Obj.repr (get_cANCELTYPE ()))
let sTATUS : string = "ORDERHISTORY_STATUS"
let get_sTATUS () = sTATUS
let () = java_register_static "OrderHistoryData.get_sTATUS" (fun _ -> Obj.repr (get_sTATUS ()))
let pREPROCESSINGNAME : string = "PREPROCESSING"
let get_pREPROCESSINGNAME () = pREPROCESSINGNAME
let () = java_register_static "OrderHistoryData.get_pREPROCESSINGNAME" (fun _ -> Obj.repr (get_pREPROCESSINGNAME ()))
let pROCESSINGNAME : string = "PROCESSING"
let get_pROCESSINGNAME () = pROCESSINGNAME
let () = java_register_static "OrderHistoryData.get_pROCESSINGNAME" (fun _ -> Obj.repr (get_pROCESSINGNAME ()))
let cANCELLEDNAME : string = "CANCELLED"
let get_cANCELLEDNAME () = cANCELLEDNAME
let () = java_register_static "OrderHistoryData.get_cANCELLEDNAME" (fun _ -> Obj.repr (get_cANCELLEDNAME ()))
let pARTIALLYSHIPPEDNAME : string = "PARTIALLYSHIPPED"
let get_pARTIALLYSHIPPEDNAME () = pARTIALLYSHIPPEDNAME
let () = java_register_static "OrderHistoryData.get_pARTIALLYSHIPPEDNAME" (fun _ -> Obj.repr (get_pARTIALLYSHIPPEDNAME ()))
let sHIPPEDNAME : string = "SHIPPED"
let get_sHIPPEDNAME () = sHIPPEDNAME
let () = java_register_static "OrderHistoryData.get_sHIPPEDNAME" (fun _ -> Obj.repr (get_sHIPPEDNAME ()))
let pREPROCESSING : string = "Order Preprocessing"
let get_pREPROCESSING () = pREPROCESSING
let () = java_register_static "OrderHistoryData.get_pREPROCESSING" (fun _ -> Obj.repr (get_pREPROCESSING ()))
let pROCESSING : string = "Order Processing"
let get_pROCESSING () = pROCESSING
let () = java_register_static "OrderHistoryData.get_pROCESSING" (fun _ -> Obj.repr (get_pROCESSING ()))
let cANCELLED : string = "Order Cancelled"
let get_cANCELLED () = cANCELLED
let () = java_register_static "OrderHistoryData.get_cANCELLED" (fun _ -> Obj.repr (get_cANCELLED ()))
let pARTIALLYSHIPPED : string = "Order Partially Shipped"
let get_pARTIALLYSHIPPED () = pARTIALLYSHIPPED
let () = java_register_static "OrderHistoryData.get_pARTIALLYSHIPPED" (fun _ -> Obj.repr (get_pARTIALLYSHIPPED ()))
let sHIPPED : string = "Order Shipped"
let get_sHIPPED () = sHIPPED
let () = java_register_static "OrderHistoryData.get_sHIPPED" (fun _ -> Obj.repr (get_sHIPPED ()))
let sETSTATUS : string = "Set Status"
let get_sETSTATUS () = sETSTATUS
let () = java_register_static "OrderHistoryData.get_sETSTATUS" (fun _ -> Obj.repr (get_sETSTATUS ()))
class orderHistoryData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OrderHistoryData" (fun arguments -> Obj.repr (new orderHistoryData (Obj.obj arguments)))


