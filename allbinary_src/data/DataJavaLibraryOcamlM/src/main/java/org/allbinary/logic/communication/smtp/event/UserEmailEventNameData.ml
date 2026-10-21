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
(* package org.allbinary.logic.communication.smtp.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.logic.StdUtil *)

let userNameEvenNameHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map))
let get_userNameEvenNameHashMap () = !userNameEvenNameHashMap
let set_userNameEvenNameHashMap value' = userNameEvenNameHashMap := value'
let () = java_register_static "UserEmailEventNameData.get_userNameEvenNameHashMap" (fun _ -> Obj.repr (get_userNameEvenNameHashMap ()))
let nextId : int ref = ref (0)
let get_nextId () = !nextId
let set_nextId value' = nextId := value'
let () = java_register_static "UserEmailEventNameData.get_nextId" (fun _ -> Obj.repr (get_nextId ()))

let getInstance ((userEmailEventNameString : string)) =
        try
        begin
        let userEmailEventNameData : Obj.t ref = ref ((Obj.repr (Obj.magic (!userNameEvenNameHashMap#get (userEmailEventNameString))))) in ();
        if ((Obj.magic !userEmailEventNameData) == (Obj.magic 0)) then begin
            raise (Failure ("Exception"))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic !userEmailEventNameData))))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "UserEmailEventNameData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class userEmailEventNameData ((eventHandlerName_arg : string)) =
  object (self)
    val mutable eventNameId : int = 0
    method eventNameId = eventNameId
    method set_eventNameId value' = eventNameId <- value'
    val mutable eventHandlerName : string = ""
    method eventHandlerName = eventHandlerName
    method set_eventHandlerName value' = eventHandlerName <- value'
    
    

    method initNextId () : unit =
        begin
        eventNameId <- !nextId;
        nextId := !nextId + 1
        end
    

    method isEvent ((userEmailEventNameString : string)) : bool =
        begin
        (!userNameEvenNameHashMap#containsKey (userEmailEventNameString))
        end
    

    method toString () : string =
        begin
        eventHandlerName
        end

    initializer
      begin
        eventNameId <- 0;
        ();
        ();
        eventHandlerName <- eventHandlerName_arg;
        (self#initNextId ());
        ignore (!userNameEvenNameHashMap#put (eventHandlerName, self))
      end
  end
let () = java_register_constructor "UserEmailEventNameData" (fun arguments -> Obj.repr (new userEmailEventNameData (Obj.obj arguments)))

let iNSTALLER = (new userEmailEventNameData ("Installer"))
let get_iNSTALLER () = iNSTALLER
let () = java_register_static "UserEmailEventNameData.get_iNSTALLER" (fun _ -> Obj.repr (get_iNSTALLER ()))

let eXCEPTION = (new userEmailEventNameData ("Exception"))
let get_eXCEPTION () = eXCEPTION
let () = java_register_static "UserEmailEventNameData.get_eXCEPTION" (fun _ -> Obj.repr (get_eXCEPTION ()))

let lOGGEDEXCEPTION = (new userEmailEventNameData ("Logged Exception"))
let get_lOGGEDEXCEPTION () = lOGGEDEXCEPTION
let () = java_register_static "UserEmailEventNameData.get_lOGGEDEXCEPTION" (fun _ -> Obj.repr (get_lOGGEDEXCEPTION ()))

let eRROR = (new userEmailEventNameData ("Error"))
let get_eRROR () = eRROR
let () = java_register_static "UserEmailEventNameData.get_eRROR" (fun _ -> Obj.repr (get_eRROR ()))

let oUTOFMEMORY = (new userEmailEventNameData ("Out Of Memory Error"))
let get_oUTOFMEMORY () = oUTOFMEMORY
let () = java_register_static "UserEmailEventNameData.get_oUTOFMEMORY" (fun _ -> Obj.repr (get_oUTOFMEMORY ()))

let aDMINGENERATINGSTATICPAGES = (new userEmailEventNameData ("Admin Generating Static Pages"))
let get_aDMINGENERATINGSTATICPAGES () = aDMINGENERATINGSTATICPAGES
let () = java_register_static "UserEmailEventNameData.get_aDMINGENERATINGSTATICPAGES" (fun _ -> Obj.repr (get_aDMINGENERATINGSTATICPAGES ()))

let sTOREERROROCCURRED = (new userEmailEventNameData ("Store Error Occurred"))
let get_sTOREERROROCCURRED () = sTOREERROROCCURRED
let () = java_register_static "UserEmailEventNameData.get_sTOREERROROCCURRED" (fun _ -> Obj.repr (get_sTOREERROROCCURRED ()))

let sTOREOUTOFMEMORY = (new userEmailEventNameData ("Store Out Of Memory Error"))
let get_sTOREOUTOFMEMORY () = sTOREOUTOFMEMORY
let () = java_register_static "UserEmailEventNameData.get_sTOREOUTOFMEMORY" (fun _ -> Obj.repr (get_sTOREOUTOFMEMORY ()))

let sTORECREATED = (new userEmailEventNameData ("Store Created"))
let get_sTORECREATED () = sTORECREATED
let () = java_register_static "UserEmailEventNameData.get_sTORECREATED" (fun _ -> Obj.repr (get_sTORECREATED ()))

let sTOREOPENED = (new userEmailEventNameData ("Store Opened"))
let get_sTOREOPENED () = sTOREOPENED
let () = java_register_static "UserEmailEventNameData.get_sTOREOPENED" (fun _ -> Obj.repr (get_sTOREOPENED ()))

let sTORECLOSED = (new userEmailEventNameData ("Store Closed"))
let get_sTORECLOSED () = sTORECLOSED
let () = java_register_static "UserEmailEventNameData.get_sTORECLOSED" (fun _ -> Obj.repr (get_sTORECLOSED ()))

let sTOREGENERATINGSTATICPAGES = (new userEmailEventNameData ("Store Generating Static Pages"))
let get_sTOREGENERATINGSTATICPAGES () = sTOREGENERATINGSTATICPAGES
let () = java_register_static "UserEmailEventNameData.get_sTOREGENERATINGSTATICPAGES" (fun _ -> Obj.repr (get_sTOREGENERATINGSTATICPAGES ()))

let pRODUCTISOUT = (new userEmailEventNameData ("Product Is Out"))
let get_pRODUCTISOUT () = pRODUCTISOUT
let () = java_register_static "UserEmailEventNameData.get_pRODUCTISOUT" (fun _ -> Obj.repr (get_pRODUCTISOUT ()))

let pRODUCTISAVAILABLE = (new userEmailEventNameData ("Product Is Available"))
let get_pRODUCTISAVAILABLE () = pRODUCTISAVAILABLE
let () = java_register_static "UserEmailEventNameData.get_pRODUCTISAVAILABLE" (fun _ -> Obj.repr (get_pRODUCTISAVAILABLE ()))

let pRODUCTISOLD = (new userEmailEventNameData ("Product Is Old"))
let get_pRODUCTISOLD () = pRODUCTISOLD
let () = java_register_static "UserEmailEventNameData.get_pRODUCTISOLD" (fun _ -> Obj.repr (get_pRODUCTISOLD ()))

let pRODUCTISONSALE = (new userEmailEventNameData ("Product Is On Sale"))
let get_pRODUCTISONSALE () = pRODUCTISONSALE
let () = java_register_static "UserEmailEventNameData.get_pRODUCTISONSALE" (fun _ -> Obj.repr (get_pRODUCTISONSALE ()))

let pRODUCTSALEISOVER = (new userEmailEventNameData ("Product Sale Is Over"))
let get_pRODUCTSALEISOVER () = pRODUCTSALEISOVER
let () = java_register_static "UserEmailEventNameData.get_pRODUCTSALEISOVER" (fun _ -> Obj.repr (get_pRODUCTSALEISOVER ()))

let oRDERPREPROCESSING = (new userEmailEventNameData ((OrderHistoryData.get_pREPROCESSING ())))
let get_oRDERPREPROCESSING () = oRDERPREPROCESSING
let () = java_register_static "UserEmailEventNameData.get_oRDERPREPROCESSING" (fun _ -> Obj.repr (get_oRDERPREPROCESSING ()))

let oRDERPROCESSING = (new userEmailEventNameData ((OrderHistoryData.get_pROCESSING ())))
let get_oRDERPROCESSING () = oRDERPROCESSING
let () = java_register_static "UserEmailEventNameData.get_oRDERPROCESSING" (fun _ -> Obj.repr (get_oRDERPROCESSING ()))

let oRDERCANCELLED = (new userEmailEventNameData ((OrderHistoryData.get_cANCELLED ())))
let get_oRDERCANCELLED () = oRDERCANCELLED
let () = java_register_static "UserEmailEventNameData.get_oRDERCANCELLED" (fun _ -> Obj.repr (get_oRDERCANCELLED ()))

let oRDERPARTIALLYSHIPPED = (new userEmailEventNameData ((OrderHistoryData.get_pARTIALLYSHIPPED ())))
let get_oRDERPARTIALLYSHIPPED () = oRDERPARTIALLYSHIPPED
let () = java_register_static "UserEmailEventNameData.get_oRDERPARTIALLYSHIPPED" (fun _ -> Obj.repr (get_oRDERPARTIALLYSHIPPED ()))

let oRDERSHIPPED = (new userEmailEventNameData ((OrderHistoryData.get_sHIPPED ())))
let get_oRDERSHIPPED () = oRDERSHIPPED
let () = java_register_static "UserEmailEventNameData.get_oRDERSHIPPED" (fun _ -> Obj.repr (get_oRDERSHIPPED ()))

let qUOTEREQUEST = (new userEmailEventNameData ("Quote Request"))
let get_qUOTEREQUEST () = qUOTEREQUEST
let () = java_register_static "UserEmailEventNameData.get_qUOTEREQUEST" (fun _ -> Obj.repr (get_qUOTEREQUEST ()))

let nEWPASSWORD = (new userEmailEventNameData ("New Password"))
let get_nEWPASSWORD () = nEWPASSWORD
let () = java_register_static "UserEmailEventNameData.get_nEWPASSWORD" (fun _ -> Obj.repr (get_nEWPASSWORD ()))


