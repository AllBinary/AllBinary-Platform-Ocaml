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
(* package org.allbinary.logic.communication.ftp.configuration *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "FTP_NAME"
let get_nAME () = nAME
let () = java_register_static "FtpConfigurationData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sERVER : string = "FTP_SERVER"
let get_sERVER () = sERVER
let () = java_register_static "FtpConfigurationData.get_sERVER" (fun _ -> Obj.repr (get_sERVER ()))
let pATH : string = "FTP_PATH"
let get_pATH () = pATH
let () = java_register_static "FtpConfigurationData.get_pATH" (fun _ -> Obj.repr (get_pATH ()))
let uSERNAME : string = "FTP_USERNAME"
let get_uSERNAME () = uSERNAME
let () = java_register_static "FtpConfigurationData.get_uSERNAME" (fun _ -> Obj.repr (get_uSERNAME ()))
let pASSWORD : string = "FTP_PASSWORD"
let get_pASSWORD () = pASSWORD
let () = java_register_static "FtpConfigurationData.get_pASSWORD" (fun _ -> Obj.repr (get_pASSWORD ()))
class ftpConfigurationData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "FtpConfigurationData" (fun arguments -> Obj.repr (new ftpConfigurationData (Obj.obj arguments)))


