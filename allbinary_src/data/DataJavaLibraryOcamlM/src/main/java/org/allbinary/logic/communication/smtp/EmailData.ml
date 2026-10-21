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
(* package org.allbinary.logic.communication.smtp *)

open Allbinary_java [@@warning "-33"]

let sERVER : string = "EMAIL_SERVER"
let get_sERVER () = sERVER
let () = java_register_static "EmailData.get_sERVER" (fun _ -> Obj.repr (get_sERVER ()))
let nAME : string = "EMAIL_NAME"
let get_nAME () = nAME
let () = java_register_static "EmailData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let fROM : string = "EMAIL_FROM"
let get_fROM () = fROM
let () = java_register_static "EmailData.get_fROM" (fun _ -> Obj.repr (get_fROM ()))
let tO : string = "EMAIL_TO"
let get_tO () = tO
let () = java_register_static "EmailData.get_tO" (fun _ -> Obj.repr (get_tO ()))
let cC : string = "EMAIL_CC"
let get_cC () = cC
let () = java_register_static "EmailData.get_cC" (fun _ -> Obj.repr (get_cC ()))
let bCC : string = "EMAIL_BCC"
let get_bCC () = bCC
let () = java_register_static "EmailData.get_bCC" (fun _ -> Obj.repr (get_bCC ()))
let sUBJECT : string = "EMAIL_SUBJECT"
let get_sUBJECT () = sUBJECT
let () = java_register_static "EmailData.get_sUBJECT" (fun _ -> Obj.repr (get_sUBJECT ()))
let cONTENT : string = "EMAIL_CONTENT"
let get_cONTENT () = cONTENT
let () = java_register_static "EmailData.get_cONTENT" (fun _ -> Obj.repr (get_cONTENT ()))
class emailData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "EmailData" (fun arguments -> Obj.repr (new emailData (Obj.obj arguments)))


