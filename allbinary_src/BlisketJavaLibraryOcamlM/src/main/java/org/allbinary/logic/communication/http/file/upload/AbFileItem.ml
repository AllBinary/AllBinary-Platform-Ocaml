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
(* import java.io.File *)
(* import java.io.IOException *)
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import java.io.UnsupportedEncodingException *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.apache.commons.fileupload.FileItem *)
(* import org.apache.commons.fileupload.FileItemHeaders *)
(* import org.apache.commons.fileupload.FileItemUtil *)

class abFileItem ((name_arg : string), (fieldName_arg : string), (byteArray_arg : int array)) =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable fieldName : string = ""
    method fieldName = fieldName
    method set_fieldName value' = fieldName <- value'
    val mutable byteArray : int array = (Obj.magic 0)
    method byteArray = byteArray
    method set_byteArray value' = byteArray <- value'
    
    

    method getInputStream : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end
    

    method getContentType () : string =
        begin
        (Obj.magic 0)
        end
    

    method getName () : string =
        begin
        name
        end
    

    method isInMemory () : bool =
        begin
        true
        end
    

    method getSize () : int =
        begin
        (Array.length byteArray)
        end
    

    method get () : int array =
        begin
        byteArray
        end
    

    method getString ((encoding : string)) : string =
        begin
        (Obj.obj (java_new "String" (Obj.repr (byteArray, encoding))))
        end
    

    (* Java overload getString() is not converted: OCaml has one method per name *)
    

    method write : 'any1. 'any1 -> unit = fun (_file) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    (* Java overload write(AbFile) is not converted: OCaml has one method per name *)
    

    method delete () : unit =
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, "delete()"))
        end
    

    method getFieldName () : string =
        begin
        fieldName
        end
    

    method setFieldName ((name_arg : string)) : unit =
        begin
        fieldName <- name_arg
        end
    

    method isFormField () : bool =
        try
        begin
        if ((StringValidationUtil.getInstance ())#isEmpty (fieldName)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method setFormField ((_state : bool)) : unit =
        begin
        ()
        end
    

    method getOutputStream : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end
    

    method getHeaders : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end
    

    method setHeaders : 'any1. 'any1 -> unit = fun (_fih) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        name <- name_arg;
        fieldName <- fieldName_arg;
        byteArray <- byteArray_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbFileItem" (fun arguments -> Obj.repr (new abFileItem (Obj.obj arguments)))


