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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.anyType.clazz.ClassUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.apache.commons.fileupload.FileItemStream *)

class httpFileUploadUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid : 'any1. 'any1 -> bool = fun (anyType) ->
        let anyType = Obj.repr anyType in
        try
        begin
        if ((anyType != (Obj.magic 0)) && (not ((java_instanceof (Obj.repr anyType) "String")))) then begin
            if (java_instanceof (Obj.repr anyType) "FileItem") then begin
                raise (Java_return (Obj.repr (true)))
            end else begin
                raise (Failure (("Object Not Instance Of FileItem but is: " ^ java_string_of (Obj.repr ((ClassUtil.viewAll (anyType, (CommonSeps.getInstance ())#nEW_LINE)))))))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "HttpFileUploadUtil" (fun arguments -> Obj.repr (new httpFileUploadUtil (Obj.obj arguments)))

let instance = (new httpFileUploadUtil ())
let get_instance () = instance
let () = java_register_static "HttpFileUploadUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let rec getInstance () =
        begin
        instance
        end

and log : 'any1. 'any1 -> unit = fun (fileItem) ->
        let fileItem = Obj.repr fileItem in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        ignore (!stringBuffer#append ("FileItem Log:"));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append ("Content Type:"));
        ignore (!stringBuffer#append (((Obj.magic fileItem)#getContentType ())));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append ("Field Name:"));
        ignore (!stringBuffer#append (((Obj.magic fileItem)#getFieldName ())));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append ("Name:"));
        ignore (!stringBuffer#append (((Obj.magic fileItem)#getName ())));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append ("Size:"));
        ignore (!stringBuffer#append (" Not Calculated Yet"));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#hTTP)) then begin
            ignore ((Obj.magic !logUtil_arg)#putF ((java_string_of (Obj.repr !stringBuffer)), (getInstance ()), "log()"))
        end
        end [@@warning "-20"]

(* Java overload log(FileItem) is not converted: OCaml has one method per name *)
let () = java_register_static "HttpFileUploadUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "HttpFileUploadUtil.log" (fun arguments -> Obj.repr (log (Obj.obj arguments)))


