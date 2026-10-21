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
(* package org.allbinary.logic.communication.http.request.session *)

open Allbinary_java [@@warning "-33"]

let iNVALIDATESESSION : string = "SESSION_INVALIDATE_SESSION"
let get_iNVALIDATESESSION () = iNVALIDATESESSION
let () = java_register_static "WeblisketSessionData.get_iNVALIDATESESSION" (fun _ -> Obj.repr (get_iNVALIDATESESSION ()))
let aTTEMPTS : string = "SESSION_ATTEMPTS"
let get_aTTEMPTS () = aTTEMPTS
let () = java_register_static "WeblisketSessionData.get_aTTEMPTS" (fun _ -> Obj.repr (get_aTTEMPTS ()))
let tIMEOUT : string = "SESSION_TIMEOUT"
let get_tIMEOUT () = tIMEOUT
let () = java_register_static "WeblisketSessionData.get_tIMEOUT" (fun _ -> Obj.repr (get_tIMEOUT ()))
let rEMOVABLEUSERNAME : string = "SESSION_REMOVABLE_USER_NAME"
let get_rEMOVABLEUSERNAME () = rEMOVABLEUSERNAME
let () = java_register_static "WeblisketSessionData.get_rEMOVABLEUSERNAME" (fun _ -> Obj.repr (get_rEMOVABLEUSERNAME ()))
let rEMOVABLEPASSWORD : string = "SESSION_REMOVABLE_PASSWORD"
let get_rEMOVABLEPASSWORD () = rEMOVABLEPASSWORD
let () = java_register_static "WeblisketSessionData.get_rEMOVABLEPASSWORD" (fun _ -> Obj.repr (get_rEMOVABLEPASSWORD ()))
let rEMOVABLENEWPASSWORD : string = "SESSION_REMOVABLE_NEW_PASSWORD"
let get_rEMOVABLENEWPASSWORD () = rEMOVABLENEWPASSWORD
let () = java_register_static "WeblisketSessionData.get_rEMOVABLENEWPASSWORD" (fun _ -> Obj.repr (get_rEMOVABLENEWPASSWORD ()))
let rEMOVABLEREENTERNEWPASSWORD : string = "SESSION_REMOVABLE_REENTER_NEW_PASSWORD"
let get_rEMOVABLEREENTERNEWPASSWORD () = rEMOVABLEREENTERNEWPASSWORD
let () = java_register_static "WeblisketSessionData.get_rEMOVABLEREENTERNEWPASSWORD" (fun _ -> Obj.repr (get_rEMOVABLEREENTERNEWPASSWORD ()))
let aUTHENTICATED : string = "SESSION_AUTHENTICATED"
let get_aUTHENTICATED () = aUTHENTICATED
let () = java_register_static "WeblisketSessionData.get_aUTHENTICATED" (fun _ -> Obj.repr (get_aUTHENTICATED ()))
class weblisketSessionData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "WeblisketSessionData" (fun arguments -> Obj.repr (new weblisketSessionData (Obj.obj arguments)))


