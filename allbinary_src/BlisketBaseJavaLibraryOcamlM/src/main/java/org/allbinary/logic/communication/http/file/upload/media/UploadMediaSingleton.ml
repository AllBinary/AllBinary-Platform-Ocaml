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
(* package org.allbinary.logic.communication.http.file.upload.media *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.media.MediaData *)
(* import org.allbinary.logic.visual.media.MediaIOUtil *)
(* import org.allbinary.logic.visual.media.MediaTypeData *)
(* import org.allbinary.string.CommonStrings *)

let uploadMedia = ref ((Obj.magic 0))
let get_uploadMedia () = !uploadMedia
let set_uploadMedia value' = uploadMedia := value'
let () = java_register_static "UploadMediaSingleton.get_uploadMedia" (fun _ -> Obj.repr (get_uploadMedia ()))
class uploadMediaSingleton () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable readerFileTypesHashMap : java_hash_map = (Obj.magic 0)
    method readerFileTypesHashMap = readerFileTypesHashMap
    method set_readerFileTypesHashMap value' = readerFileTypesHashMap <- value'
    val mutable writerFileTypesHashMap : java_hash_map = (Obj.magic 0)
    method writerFileTypesHashMap = writerFileTypesHashMap
    method set_writerFileTypesHashMap value' = writerFileTypesHashMap <- value'
    
    

    method isReaderSupported ((mediaFileType : string)) : bool =
        begin
        (readerFileTypesHashMap#containsKey (mediaFileType))
        end
    

    method isWriterSupported ((mediaFileType : string)) : bool =
        begin
        (readerFileTypesHashMap#containsKey (mediaFileType))
        end
    

    method isSupported ((mediaFileType : string)) : bool =
        begin
        ((self#isReaderSupported (mediaFileType)) && (self#isWriterSupported (mediaFileType)))
        end
    

    method isMedia ((mediaFileType : string), (aMediaType : string)) : bool =
        begin
        ((self#isReaderMedia (mediaFileType, aMediaType)) && (self#isWriterMedia (mediaFileType, aMediaType)))
        end
    

    method isReaderMedia ((mediaFileType : string), (aMediaType : string)) : bool =
        begin
        (self#isMedia (mediaFileType, aMediaType, readerFileTypesHashMap))
        end
    

    method isWriterMedia ((mediaFileType : string), (aMediaType : string)) : bool =
        begin
        (self#isMedia (mediaFileType, aMediaType, writerFileTypesHashMap))
        end
    

    (* Java overload isMedia(String, String, HashMap) is not converted: OCaml has one method per name *)

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        readerFileTypesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        writerFileTypesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
        let hashMap : java_hash_map ref = ref (((MediaData.toHashMap ()) :> java_hash_map)) in ();
        let set : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let mediaDataNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
        let size : int ref = ref ((Array.length !mediaDataNameArray)) in ();
        for index = 0 to !size - 1 do
            let mediaDataName : string ref = ref ((Obj.magic !mediaDataNameArray.(index))) in ();
            let mediaData : MediaData.mediaData ref = ref (((Obj.magic (!hashMap#get (!mediaDataName))) :> MediaData.mediaData)) in ();
            ignore (readerFileTypesHashMap#put ((!mediaData#getName ()), (!mediaData#getType ())))
        done;
        let mediaIOUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "MediaIOUtil.getInstance" (Obj.repr ()))))) in ();
        let rESIZABLE_MEDIA : string ref = ref ((MediaTypeData.getInstance ())#rESIZABLE_MEDIA) in ();
        let readerFileTypes : string array ref = ref (((Obj.magic !mediaIOUtil)#getReaderFormatNames ())) in ();
        for index = 0 to (Array.length !readerFileTypes) - 1 do
            ignore (readerFileTypesHashMap#put (!readerFileTypes.(index), !rESIZABLE_MEDIA))
        done;
        let writerFileTypes : string array ref = ref (((Obj.magic !mediaIOUtil)#getWriterFormatNames ())) in ();
        for index = 0 to (Array.length !writerFileTypes) - 1 do
            ignore (writerFileTypesHashMap#put (!writerFileTypes.(index), !rESIZABLE_MEDIA))
        done;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPREQUEST)) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Supported Media Readers: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr readerFileTypesHashMap))));
            ignore (!stringBuffer#append (" Writers: "));
            ignore (!stringBuffer#append ((java_string_of (Obj.repr writerFileTypesHashMap))));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "UploadMediaSingleton" (fun arguments -> Obj.repr (new uploadMediaSingleton (Obj.obj arguments)))

let getInstance () =
        begin
        if (!uploadMedia == (Obj.magic 0)) then begin
            uploadMedia := (new uploadMediaSingleton ())
        end;
        !uploadMedia
        end
let () = java_register_static "UploadMediaSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


