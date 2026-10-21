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
(* package org.allbinary.logic.communication.smtp.configuration.server *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "EMAIL_SERVER_CONFIGURATION_NAME"
let get_nAME () = nAME
let () = java_register_static "EmailServerConfigurationData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sERVER : string = "EMAIL_SERVER_CONFIGURATION_SERVER"
let get_sERVER () = sERVER
let () = java_register_static "EmailServerConfigurationData.get_sERVER" (fun _ -> Obj.repr (get_sERVER ()))
let aCCOUNT : string = "EMAIL_SERVER_CONFIGURATION_ACCOUNT"
let get_aCCOUNT () = aCCOUNT
let () = java_register_static "EmailServerConfigurationData.get_aCCOUNT" (fun _ -> Obj.repr (get_aCCOUNT ()))
let pASSWORD : string = "EMAIL_SERVER_CONFIGURATION_PASSWORD"
let get_pASSWORD () = pASSWORD
let () = java_register_static "EmailServerConfigurationData.get_pASSWORD" (fun _ -> Obj.repr (get_pASSWORD ()))
class emailServerConfigurationData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "EmailServerConfigurationData" (fun arguments -> Obj.repr (new emailServerConfigurationData (Obj.obj arguments)))


