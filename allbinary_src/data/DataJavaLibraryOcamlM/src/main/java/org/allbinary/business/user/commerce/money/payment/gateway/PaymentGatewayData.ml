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

let cRYPTNUM : int = 5
let get_cRYPTNUM () = cRYPTNUM
let () = java_register_static "PaymentGatewayData.get_cRYPTNUM" (fun _ -> Obj.repr (get_cRYPTNUM ()))
class paymentGatewayData ((value : string)) =
  object
    val mutable key : string = ""
    method key = key
    method set_key value' = key <- value'
    
    

    method toString () : string =
        begin
        key
        end

    initializer
      begin
        ();
        ();
        key <- value
      end
  end
let () = java_register_constructor "PaymentGatewayData" (fun arguments -> Obj.repr (new paymentGatewayData (Obj.obj arguments)))

let iD = (new paymentGatewayData ("PAYMENTGATEWAY_ID"))
let get_iD () = iD
let () = java_register_static "PaymentGatewayData.get_iD" (fun _ -> Obj.repr (get_iD ()))

let nAME = (new paymentGatewayData ("PAYMENTGATEWAY_NAME"))
let get_nAME () = nAME
let () = java_register_static "PaymentGatewayData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))

let vALUE = (new paymentGatewayData ("PAYMENTGATEWAY_VALUE"))
let get_vALUE () = vALUE
let () = java_register_static "PaymentGatewayData.get_vALUE" (fun _ -> Obj.repr (get_vALUE ()))

let pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE = (new paymentGatewayData ("PAYMENTGATEWAY_PAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE"))
let get_pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE () = pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE
let () = java_register_static "PaymentGatewayData.get_pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE" (fun _ -> Obj.repr (get_pAYMENTTRANSACTIONINTERFACEFACTORYINTERFACE ()))

let pAYMENTPROCESSORINTERFACEFACTORYINTERFACE = (new paymentGatewayData ("PAYMENTGATEWAY_PAYMENTPROCESSORINTERFACEFACTORYINTERFACE"))
let get_pAYMENTPROCESSORINTERFACEFACTORYINTERFACE () = pAYMENTPROCESSORINTERFACEFACTORYINTERFACE
let () = java_register_static "PaymentGatewayData.get_pAYMENTPROCESSORINTERFACEFACTORYINTERFACE" (fun _ -> Obj.repr (get_pAYMENTPROCESSORINTERFACEFACTORYINTERFACE ()))

let mODE = (new paymentGatewayData ("MODE"))
let get_mODE () = mODE
let () = java_register_static "PaymentGatewayData.get_mODE" (fun _ -> Obj.repr (get_mODE ()))

let sERVERPROTOCOL = (new paymentGatewayData ("SERVERPROTOCOL"))
let get_sERVERPROTOCOL () = sERVERPROTOCOL
let () = java_register_static "PaymentGatewayData.get_sERVERPROTOCOL" (fun _ -> Obj.repr (get_sERVERPROTOCOL ()))

let sERVER = (new paymentGatewayData ("SERVER"))
let get_sERVER () = sERVER
let () = java_register_static "PaymentGatewayData.get_sERVER" (fun _ -> Obj.repr (get_sERVER ()))

let sERVERPORT = (new paymentGatewayData ("SERVERPORT"))
let get_sERVERPORT () = sERVERPORT
let () = java_register_static "PaymentGatewayData.get_sERVERPORT" (fun _ -> Obj.repr (get_sERVERPORT ()))

let sERVERPATH = (new paymentGatewayData ("SERVERPATH"))
let get_sERVERPATH () = sERVERPATH
let () = java_register_static "PaymentGatewayData.get_sERVERPATH" (fun _ -> Obj.repr (get_sERVERPATH ()))

let tESTPROTOCOL = (new paymentGatewayData ("TESTSERVERPROTOCOL"))
let get_tESTPROTOCOL () = tESTPROTOCOL
let () = java_register_static "PaymentGatewayData.get_tESTPROTOCOL" (fun _ -> Obj.repr (get_tESTPROTOCOL ()))

let tESTSERVER = (new paymentGatewayData ("TESTSERVER"))
let get_tESTSERVER () = tESTSERVER
let () = java_register_static "PaymentGatewayData.get_tESTSERVER" (fun _ -> Obj.repr (get_tESTSERVER ()))

let tESTPORT = (new paymentGatewayData ("TESTPORT"))
let get_tESTPORT () = tESTPORT
let () = java_register_static "PaymentGatewayData.get_tESTPORT" (fun _ -> Obj.repr (get_tESTPORT ()))

let tESTPATH = (new paymentGatewayData ("TESTSERVERPATH"))
let get_tESTPATH () = tESTPATH
let () = java_register_static "PaymentGatewayData.get_tESTPATH" (fun _ -> Obj.repr (get_tESTPATH ()))

let tIMEOUT = (new paymentGatewayData ("TIMEOUT"))
let get_tIMEOUT () = tIMEOUT
let () = java_register_static "PaymentGatewayData.get_tIMEOUT" (fun _ -> Obj.repr (get_tIMEOUT ()))

let pROXYPROTOCOL = (new paymentGatewayData ("PROXYPROTOCOL"))
let get_pROXYPROTOCOL () = pROXYPROTOCOL
let () = java_register_static "PaymentGatewayData.get_pROXYPROTOCOL" (fun _ -> Obj.repr (get_pROXYPROTOCOL ()))

let pROXYSERVER = (new paymentGatewayData ("PROXYSERVER"))
let get_pROXYSERVER () = pROXYSERVER
let () = java_register_static "PaymentGatewayData.get_pROXYSERVER" (fun _ -> Obj.repr (get_pROXYSERVER ()))

let pROXYPATH = (new paymentGatewayData ("PROXYPATH"))
let get_pROXYPATH () = pROXYPATH
let () = java_register_static "PaymentGatewayData.get_pROXYPATH" (fun _ -> Obj.repr (get_pROXYPATH ()))

let pROXYUSERNAME = (new paymentGatewayData ("PROXYUSERNAME"))
let get_pROXYUSERNAME () = pROXYUSERNAME
let () = java_register_static "PaymentGatewayData.get_pROXYUSERNAME" (fun _ -> Obj.repr (get_pROXYUSERNAME ()))

let pROXYPASSWORD = (new paymentGatewayData ("PROXYPASSWORD"))
let get_pROXYPASSWORD () = pROXYPASSWORD
let () = java_register_static "PaymentGatewayData.get_pROXYPASSWORD" (fun _ -> Obj.repr (get_pROXYPASSWORD ()))

let pROXYPORT = (new paymentGatewayData ("PROXYPORT"))
let get_pROXYPORT () = pROXYPORT
let () = java_register_static "PaymentGatewayData.get_pROXYPORT" (fun _ -> Obj.repr (get_pROXYPORT ()))

let pROXYTIMEOUT = (new paymentGatewayData ("PROXYTIMEOUT"))
let get_pROXYTIMEOUT () = pROXYTIMEOUT
let () = java_register_static "PaymentGatewayData.get_pROXYTIMEOUT" (fun _ -> Obj.repr (get_pROXYTIMEOUT ()))

let sPECIAL1 = (new paymentGatewayData ("SPECIAL1"))
let get_sPECIAL1 () = sPECIAL1
let () = java_register_static "PaymentGatewayData.get_sPECIAL1" (fun _ -> Obj.repr (get_sPECIAL1 ()))

let sPECIAL2 = (new paymentGatewayData ("SPECIAL2"))
let get_sPECIAL2 () = sPECIAL2
let () = java_register_static "PaymentGatewayData.get_sPECIAL2" (fun _ -> Obj.repr (get_sPECIAL2 ()))

let sPECIAL3 = (new paymentGatewayData ("SPECIAL3"))
let get_sPECIAL3 () = sPECIAL3
let () = java_register_static "PaymentGatewayData.get_sPECIAL3" (fun _ -> Obj.repr (get_sPECIAL3 ()))

let sPECIAL4 = (new paymentGatewayData ("SPECIAL4"))
let get_sPECIAL4 () = sPECIAL4
let () = java_register_static "PaymentGatewayData.get_sPECIAL4" (fun _ -> Obj.repr (get_sPECIAL4 ()))

let sPECIAL5 = (new paymentGatewayData ("SPECIAL5"))
let get_sPECIAL5 () = sPECIAL5
let () = java_register_static "PaymentGatewayData.get_sPECIAL5" (fun _ -> Obj.repr (get_sPECIAL5 ()))

let sPECIAL6 = (new paymentGatewayData ("SPECIAL6"))
let get_sPECIAL6 () = sPECIAL6
let () = java_register_static "PaymentGatewayData.get_sPECIAL6" (fun _ -> Obj.repr (get_sPECIAL6 ()))

let sPECIAL7 = (new paymentGatewayData ("SPECIAL7"))
let get_sPECIAL7 () = sPECIAL7
let () = java_register_static "PaymentGatewayData.get_sPECIAL7" (fun _ -> Obj.repr (get_sPECIAL7 ()))

let sPECIAL8 = (new paymentGatewayData ("SPECIAL8"))
let get_sPECIAL8 () = sPECIAL8
let () = java_register_static "PaymentGatewayData.get_sPECIAL8" (fun _ -> Obj.repr (get_sPECIAL8 ()))

let sPECIAL9 = (new paymentGatewayData ("SPECIAL9"))
let get_sPECIAL9 () = sPECIAL9
let () = java_register_static "PaymentGatewayData.get_sPECIAL9" (fun _ -> Obj.repr (get_sPECIAL9 ()))


