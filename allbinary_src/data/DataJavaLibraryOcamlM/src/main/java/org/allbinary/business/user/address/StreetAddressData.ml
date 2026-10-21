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
(* package org.allbinary.business.user.address *)

open Allbinary_java [@@warning "-33"]

let mAX : int = 255
let get_mAX () = mAX
let () = java_register_static "StreetAddressData.get_mAX" (fun _ -> Obj.repr (get_mAX ()))
let mIN : int = 0
let get_mIN () = mIN
let () = java_register_static "StreetAddressData.get_mIN" (fun _ -> Obj.repr (get_mIN ()))
let fORM : string = "FORM"
let get_fORM () = fORM
let () = java_register_static "StreetAddressData.get_fORM" (fun _ -> Obj.repr (get_fORM ()))
let sTATES : string = "STATES"
let get_sTATES () = sTATES
let () = java_register_static "StreetAddressData.get_sTATES" (fun _ -> Obj.repr (get_sTATES ()))
let nUMBEROFADDRESSES : string = "STREETADDRESS_NUMBEROFADDRESSES"
let get_nUMBEROFADDRESSES () = nUMBEROFADDRESSES
let () = java_register_static "StreetAddressData.get_nUMBEROFADDRESSES" (fun _ -> Obj.repr (get_nUMBEROFADDRESSES ()))
let iD : string = "STREETADDRESS_ID"
let get_iD () = iD
let () = java_register_static "StreetAddressData.get_iD" (fun _ -> Obj.repr (get_iD ()))
let dEFAULT : string = "STREETADDRESS_DEFAULT_ADDRESS"
let get_dEFAULT () = dEFAULT
let () = java_register_static "StreetAddressData.get_dEFAULT" (fun _ -> Obj.repr (get_dEFAULT ()))
let aDDRESS : string = "STREETADDRESS_ADDRESS"
let get_aDDRESS () = aDDRESS
let () = java_register_static "StreetAddressData.get_aDDRESS" (fun _ -> Obj.repr (get_aDDRESS ()))
let nAME : string = "STREETADDRESS_NAME"
let get_nAME () = nAME
let () = java_register_static "StreetAddressData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let sTREET : string = "STREETADDRESS_STREET"
let get_sTREET () = sTREET
let () = java_register_static "StreetAddressData.get_sTREET" (fun _ -> Obj.repr (get_sTREET ()))
let cITY : string = "STREETADDRESS_CITY"
let get_cITY () = cITY
let () = java_register_static "StreetAddressData.get_cITY" (fun _ -> Obj.repr (get_cITY ()))
let sTATE : string = "STREETADDRESS_STATE"
let get_sTATE () = sTATE
let () = java_register_static "StreetAddressData.get_sTATE" (fun _ -> Obj.repr (get_sTATE ()))
let cODE : string = "STREETADDRESS_CODE"
let get_cODE () = cODE
let () = java_register_static "StreetAddressData.get_cODE" (fun _ -> Obj.repr (get_cODE ()))
let cOUNTRY : string = "STREETADDRESS_COUNTRY"
let get_cOUNTRY () = cOUNTRY
let () = java_register_static "StreetAddressData.get_cOUNTRY" (fun _ -> Obj.repr (get_cOUNTRY ()))
class streetAddressData () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "StreetAddressData" (fun arguments -> Obj.repr (new streetAddressData (Obj.obj arguments)))


