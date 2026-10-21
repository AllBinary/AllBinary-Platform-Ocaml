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
(* package org.allbinary.logic.communication.http.file.upload *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.ArrayList *)
(* import java.util.List *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.logic.communication.http.AbFileItemFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.commons.fileupload.FileItemIterator *)
(* import org.apache.commons.fileupload.FileItemStream *)
(* import org.apache.commons.fileupload.FileItemUtil *)

class abFileUploadFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method getFileItemStreamList : 'any1 'return. 'any1 -> 'return = fun (httpServletRequest) ->
        let httpServletRequest = Obj.repr httpServletRequest in
        begin
        (try
            let fileUpload : AbFileUpload.abFileUpload ref = ref (((new AbFileUpload.abFileUpload ((new AbFileItemFactory.abFileItemFactory ()))) :> AbFileUpload.abFileUpload)) in ();
            let iterator : Obj.t ref = ref ((Obj.repr (!fileUpload#getItemIterator ((Obj.magic httpServletRequest))))) in ();
            let items : Obj.t ref = ref ((Obj.repr (new ArrayList.arrayList ()))) in ();
            while ((Obj.magic !iterator)#hasNext ()) do
                let fileItemStream : Obj.t ref = ref ((Obj.repr ((Obj.magic !iterator)#next ()))) in ();
                ignore (HttpFileUploadUtil.log ((Obj.magic !fileItemStream)));
                let fileItem : AbFileItem.abFileItem ref = ref (((new AbFileItem.abFileItem (((Obj.magic !fileItemStream)#getName ()), ((Obj.magic !fileItemStream)#getFieldName ()), ((Obj.magic (java_call_static "FileItemUtil.getInstance" (Obj.repr ())))#getBytes ((Obj.magic !fileItemStream))))) :> AbFileItem.abFileItem)) in ();
                ignore ((Obj.magic !items)#add (!fileItem))
            done;
            (Obj.magic ((Obj.magic !items)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPERROR)) then begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "get()", e))
            end;
            raise e
        end)
        end [@@warning "-20"]
    

    method getFileItemList : 'any1 'return. 'any1 -> 'return = fun (httpServletRequest) ->
        let httpServletRequest = Obj.repr httpServletRequest in
        begin
        (try
            let abFileUpload : AbFileUpload.abFileUpload ref = ref (((new AbFileUpload.abFileUpload ((new AbFileItemFactory.abFileItemFactory ()))) :> AbFileUpload.abFileUpload)) in ();
            (Obj.magic ((!abFileUpload#parseRequest ((Obj.magic httpServletRequest)))))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTPERROR)) then begin
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "get()", e))
            end;
            raise e
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbFileUploadFactory" (fun arguments -> Obj.repr (new abFileUploadFactory (Obj.obj arguments)))

let instance = (new abFileUploadFactory ())
let get_instance () = instance
let () = java_register_static "AbFileUploadFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AbFileUploadFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


