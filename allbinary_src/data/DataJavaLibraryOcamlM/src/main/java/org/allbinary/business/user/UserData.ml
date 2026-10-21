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
(* package org.allbinary.business.user *)

open Allbinary_java [@@warning "-33"]

let mAXLEN : int ref = ref (250)
let get_mAXLEN () = !mAXLEN
let set_mAXLEN value' = mAXLEN := value'
let () = java_register_static "UserData.get_mAXLEN" (fun _ -> Obj.repr (get_mAXLEN ()))
let nAME : string = "USER_NAME"
let get_nAME () = nAME
let () = java_register_static "UserData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let uSERNAME : string = "CUSTOMER_USER_NAME"
let get_uSERNAME () = uSERNAME
let () = java_register_static "UserData.get_uSERNAME" (fun _ -> Obj.repr (get_uSERNAME ()))
let pASSWORD : string = "CUSTOMER_PASSWORD"
let get_pASSWORD () = pASSWORD
let () = java_register_static "UserData.get_pASSWORD" (fun _ -> Obj.repr (get_pASSWORD ()))
let pREFIXNAME : string = "CUSTOMER_PREFIX_NAME"
let get_pREFIXNAME () = pREFIXNAME
let () = java_register_static "UserData.get_pREFIXNAME" (fun _ -> Obj.repr (get_pREFIXNAME ()))
let fIRSTNAME : string = "CUSTOMER_FIRST_NAME"
let get_fIRSTNAME () = fIRSTNAME
let () = java_register_static "UserData.get_fIRSTNAME" (fun _ -> Obj.repr (get_fIRSTNAME ()))
let lASTNAME : string = "CUSTOMER_LAST_NAME"
let get_lASTNAME () = lASTNAME
let () = java_register_static "UserData.get_lASTNAME" (fun _ -> Obj.repr (get_lASTNAME ()))
let mIDDLENAME : string = "CUSTOMER_MIDDLE_NAME"
let get_mIDDLENAME () = mIDDLENAME
let () = java_register_static "UserData.get_mIDDLENAME" (fun _ -> Obj.repr (get_mIDDLENAME ()))
let sUFFIXNAME : string = "CUSTOMER_SUFFIX_NAME"
let get_sUFFIXNAME () = sUFFIXNAME
let () = java_register_static "UserData.get_sUFFIXNAME" (fun _ -> Obj.repr (get_sUFFIXNAME ()))
let cOMPANY : string = "CUSTOMER_COMPANY"
let get_cOMPANY () = cOMPANY
let () = java_register_static "UserData.get_cOMPANY" (fun _ -> Obj.repr (get_cOMPANY ()))
let pOSITIONATCOMPANY : string = "CUSTOMER_POSITION_AT_COMPANY"
let get_pOSITIONATCOMPANY () = pOSITIONATCOMPANY
let () = java_register_static "UserData.get_pOSITIONATCOMPANY" (fun _ -> Obj.repr (get_pOSITIONATCOMPANY ()))
let mAINEMAIL : string = "CUSTOMER_MAIN_EMAIL"
let get_mAINEMAIL () = mAINEMAIL
let () = java_register_static "UserData.get_mAINEMAIL" (fun _ -> Obj.repr (get_mAINEMAIL ()))
let sECONDARYEMAIL : string = "CUSTOMER_SECONDARY_EMAIL"
let get_sECONDARYEMAIL () = sECONDARYEMAIL
let () = java_register_static "UserData.get_sECONDARYEMAIL" (fun _ -> Obj.repr (get_sECONDARYEMAIL ()))
let hOMEPHONE : string = "CUSTOMER_HOME_PHONE"
let get_hOMEPHONE () = hOMEPHONE
let () = java_register_static "UserData.get_hOMEPHONE" (fun _ -> Obj.repr (get_hOMEPHONE ()))
let cELLPHONE : string = "CUSTOMER_CELL_PHONE"
let get_cELLPHONE () = cELLPHONE
let () = java_register_static "UserData.get_cELLPHONE" (fun _ -> Obj.repr (get_cELLPHONE ()))
let wORKPHONE : string = "CUSTOMER_WORK_PHONE"
let get_wORKPHONE () = wORKPHONE
let () = java_register_static "UserData.get_wORKPHONE" (fun _ -> Obj.repr (get_wORKPHONE ()))
let oTHERCONTACT : string = "CUSTOMER_OTHER_CONTACT"
let get_oTHERCONTACT () = oTHERCONTACT
let () = java_register_static "UserData.get_oTHERCONTACT" (fun _ -> Obj.repr (get_oTHERCONTACT ()))
let eLECTRONICDEVICE : string = "CUSTOMER_ELECTRONIC_DEVICE"
let get_eLECTRONICDEVICE () = eLECTRONICDEVICE
let () = java_register_static "UserData.get_eLECTRONICDEVICE" (fun _ -> Obj.repr (get_eLECTRONICDEVICE ()))
let fAX : string = "CUSTOMER_FAX"
let get_fAX () = fAX
let () = java_register_static "UserData.get_fAX" (fun _ -> Obj.repr (get_fAX ()))
let sECRET : string = "CUSTOMER_SECRET"
let get_sECRET () = sECRET
let () = java_register_static "UserData.get_sECRET" (fun _ -> Obj.repr (get_sECRET ()))
let pERMISSIONS : string = "CUSTOMER_PERMISSIONS"
let get_pERMISSIONS () = pERMISSIONS
let () = java_register_static "UserData.get_pERMISSIONS" (fun _ -> Obj.repr (get_pERMISSIONS ()))
let cONFIGURATION : string = "CUSTOMER_CONFIGURATION"
let get_cONFIGURATION () = cONFIGURATION
let () = java_register_static "UserData.get_cONFIGURATION" (fun _ -> Obj.repr (get_cONFIGURATION ()))
class userData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "UserData" (fun arguments -> Obj.repr (new userData (Obj.obj arguments)))


