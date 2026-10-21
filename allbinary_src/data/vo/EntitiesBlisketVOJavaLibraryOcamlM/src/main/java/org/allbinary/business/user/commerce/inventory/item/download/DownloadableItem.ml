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
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.data.generator.ProductIdGenerator *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.time.TimeUtil *)

class downloadableItem ((id_arg : string)) =
  object (self)
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable basicItemId : string = ""
    method basicItemId = basicItemId
    method set_basicItemId value' = basicItemId <- value'
    val mutable enabled : string = ""
    method enabled = enabled
    method set_enabled value' = enabled <- value'
    val mutable system : string = ""
    method system = system
    method set_system value' = system <- value'
    val mutable platform : string = ""
    method platform = platform
    method set_platform value' = platform <- value'
    val mutable specialName : string = ""
    method specialName = specialName
    method set_specialName value' = specialName <- value'
    val mutable version : string = ""
    method version = version
    method set_version value' = version <- value'
    val mutable changes : string = ""
    method changes = changes
    method set_changes value' = changes <- value'
    val mutable licenseFile : string = ""
    method licenseFile = licenseFile
    method set_licenseFile value' = licenseFile <- value'
    val mutable file : string = ""
    method file = file
    method set_file value' = file <- value'
    val mutable size : int = (Obj.magic 0)
    method size = size
    method set_size value' = size <- value'
    val mutable validTime : int = (Obj.magic 0)
    method validTime = validTime
    method set_validTime value' = validTime <- value'
    val mutable retries : string = ""
    method retries = retries
    method set_retries value' = retries <- value'
    
    
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))) in ();
        let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!values#add ((self#getId ())));
        ignore (!values#add (basicItemId));
        ignore (!values#add (enabled));
        ignore (!values#add ((self#getSpecialName ())));
        ignore (!values#add ((self#getVersion ())));
        ignore (!values#add ((self#getChanges ())));
        ignore (!values#add ((self#getSystem ())));
        ignore (!values#add ((self#getPlatform ())));
        ignore (!values#add ((self#getLicenseFile ())));
        ignore (!values#add ((self#getFile ())));
        ignore (!values#add ((java_string_of (Obj.repr (self#getSize ())))));
        ignore (!values#add ((java_string_of (Obj.repr (self#getValidTime ())))));
        ignore (!values#add ((self#getRetries ())));
        ignore (!values#add (!time));
        ignore (!values#add (!time));
        (!values :> BasicArrayList.basicArrayList)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let values : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!values#put ((DownloadItemData.get_iD ()), (self#getId ())));
        ignore (!values#put ((BasicItemData.getInstance ())#iD, basicItemId));
        ignore (!values#put ((EntryData.getInstance ())#eNABLE, enabled));
        ignore (!values#put ((DownloadItemData.get_sYSTEM ()), (self#getSystem ())));
        ignore (!values#put ((DownloadItemData.get_pLATFORM ()), (self#getPlatform ())));
        ignore (!values#put ((DownloadItemData.get_sPECIAL_NAME ()), (self#getSpecialName ())));
        ignore (!values#put ((DownloadItemData.get_vERSION ()), (self#getVersion ())));
        ignore (!values#put ((DownloadItemData.get_cHANGES ()), (self#getChanges ())));
        ignore (!values#put ((DownloadItemData.get_lICENSE_FILE ()), (self#getLicenseFile ())));
        ignore (!values#put ((DownloadItemData.get_fILE ()), (self#getFile ())));
        ignore (!values#put ((DownloadItemData.get_sIZE ()), (java_string_of (Obj.repr (self#getSize ())))));
        ignore (!values#put ((DownloadItemData.get_vALID_TIME ()), (java_string_of (Obj.repr (self#getValidTime ())))));
        ignore (!values#put ((DownloadItemData.get_rETRIES ()), (self#getRetries ())));
        let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
        let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
        ignore (!values#put ((EntryData.getInstance ())#lASTMODIFIED, !time));
        (!values :> java_hash_map)
        end
    

    method getId () : string =
        begin
        id
        end
    

    method getSystem () : string =
        begin
        system
        end
    

    method getPlatform () : string =
        begin
        platform
        end
    

    method getSpecialName () : string =
        begin
        specialName
        end
    

    method getVersion () : string =
        begin
        version
        end
    

    method getChanges () : string =
        begin
        changes
        end
    

    method getLicenseFile () : string =
        begin
        licenseFile
        end
    

    method getFile () : string =
        begin
        file
        end
    

    method getSize () : int =
        begin
        size
        end
    

    method getValidTime () : int =
        begin
        validTime
        end
    

    method getRetries () : string =
        begin
        retries
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        id <- ((new ProductIdGenerator.productIdGenerator ())#getNext ());
        basicItemId <- id_arg;
        enabled <- (EntryData.getInstance ())#yES;
        system <- "Java";
        platform <- "Android";
        specialName <- !eMPTY_STRING;
        version <- !eMPTY_STRING;
        changes <- !eMPTY_STRING;
        licenseFile <- !eMPTY_STRING;
        file <- !eMPTY_STRING;
        size <- (string_of_int (0));
        validTime <- (string_of_int (0));
        retries <- !eMPTY_STRING
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "DownloadableItem" (fun arguments -> Obj.repr (new downloadableItem (Obj.obj arguments)))


