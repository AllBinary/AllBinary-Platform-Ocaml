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
(* package org.allbinary.business.user.commerce.inventory.item.download *)

open Allbinary_java [@@warning "-33"]

let nAME : string = "DOWNLOADITEM_NAME"
let get_nAME () = nAME
let () = java_register_static "DownloadItemData.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
let iD : string = "DOWNLOADITEM_ID"
let get_iD () = iD
let () = java_register_static "DownloadItemData.get_iD" (fun _ -> Obj.repr (get_iD ()))
let sYSTEM : string = "DOWNLOADITEM_SYSTEM"
let get_sYSTEM () = sYSTEM
let () = java_register_static "DownloadItemData.get_sYSTEM" (fun _ -> Obj.repr (get_sYSTEM ()))
let pLATFORM : string = "DOWNLOADITEM_PLATFORM"
let get_pLATFORM () = pLATFORM
let () = java_register_static "DownloadItemData.get_pLATFORM" (fun _ -> Obj.repr (get_pLATFORM ()))
let sPECIAL_NAME : string = "DOWNLOADITEM_SPECIAL_NAME"
let get_sPECIAL_NAME () = sPECIAL_NAME
let () = java_register_static "DownloadItemData.get_sPECIAL_NAME" (fun _ -> Obj.repr (get_sPECIAL_NAME ()))
let vERSION : string = "DOWNLOADITEM_VERSION"
let get_vERSION () = vERSION
let () = java_register_static "DownloadItemData.get_vERSION" (fun _ -> Obj.repr (get_vERSION ()))
let cHANGES : string = "DOWNLOADITEM_CHANGES"
let get_cHANGES () = cHANGES
let () = java_register_static "DownloadItemData.get_cHANGES" (fun _ -> Obj.repr (get_cHANGES ()))
let lICENSE_FILE : string = "DOWNLOADITEM_LICENSE_FILE"
let get_lICENSE_FILE () = lICENSE_FILE
let () = java_register_static "DownloadItemData.get_lICENSE_FILE" (fun _ -> Obj.repr (get_lICENSE_FILE ()))
let fILE : string = "DOWNLOADITEM_FILE"
let get_fILE () = fILE
let () = java_register_static "DownloadItemData.get_fILE" (fun _ -> Obj.repr (get_fILE ()))
let eXTRA_FILES : string = "DOWNLOADITEM_EXTRA_FILES"
let get_eXTRA_FILES () = eXTRA_FILES
let () = java_register_static "DownloadItemData.get_eXTRA_FILES" (fun _ -> Obj.repr (get_eXTRA_FILES ()))
let sIZE : string = "DOWNLOADITEM_SIZE"
let get_sIZE () = sIZE
let () = java_register_static "DownloadItemData.get_sIZE" (fun _ -> Obj.repr (get_sIZE ()))
let vALID_TIME : string = "DOWNLOADITEM_VALID_TIME"
let get_vALID_TIME () = vALID_TIME
let () = java_register_static "DownloadItemData.get_vALID_TIME" (fun _ -> Obj.repr (get_vALID_TIME ()))
let vALID_TIME_YEARS : string = "DOWNLOADITEM_VALID_TIME_YEAR"
let get_vALID_TIME_YEARS () = vALID_TIME_YEARS
let () = java_register_static "DownloadItemData.get_vALID_TIME_YEARS" (fun _ -> Obj.repr (get_vALID_TIME_YEARS ()))
let vALID_TIME_MONTHS : string = "DOWNLOADITEM_VALID_TIME_MONTH"
let get_vALID_TIME_MONTHS () = vALID_TIME_MONTHS
let () = java_register_static "DownloadItemData.get_vALID_TIME_MONTHS" (fun _ -> Obj.repr (get_vALID_TIME_MONTHS ()))
let vALID_TIME_DAYS : string = "DOWNLOADITEM_VALID_TIME_DAY"
let get_vALID_TIME_DAYS () = vALID_TIME_DAYS
let () = java_register_static "DownloadItemData.get_vALID_TIME_DAYS" (fun _ -> Obj.repr (get_vALID_TIME_DAYS ()))
let vALID_TIME_HOURS : string = "DOWNLOADITEM_VALID_TIME_HOUR"
let get_vALID_TIME_HOURS () = vALID_TIME_HOURS
let () = java_register_static "DownloadItemData.get_vALID_TIME_HOURS" (fun _ -> Obj.repr (get_vALID_TIME_HOURS ()))
let vALID_TIME_MINUTES : string = "DOWNLOADITEM_VALID_TIME_MINUTES"
let get_vALID_TIME_MINUTES () = vALID_TIME_MINUTES
let () = java_register_static "DownloadItemData.get_vALID_TIME_MINUTES" (fun _ -> Obj.repr (get_vALID_TIME_MINUTES ()))
let vALID_TIME_SECONDS : string = "DOWNLOADITEM_VALID_TIME_SECONDS"
let get_vALID_TIME_SECONDS () = vALID_TIME_SECONDS
let () = java_register_static "DownloadItemData.get_vALID_TIME_SECONDS" (fun _ -> Obj.repr (get_vALID_TIME_SECONDS ()))
let rETRIES : string = "DOWNLOADITEM_RETRIES"
let get_rETRIES () = rETRIES
let () = java_register_static "DownloadItemData.get_rETRIES" (fun _ -> Obj.repr (get_rETRIES ()))
class downloadItemData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "DownloadItemData" (fun arguments -> Obj.repr (new downloadItemData (Obj.obj arguments)))


