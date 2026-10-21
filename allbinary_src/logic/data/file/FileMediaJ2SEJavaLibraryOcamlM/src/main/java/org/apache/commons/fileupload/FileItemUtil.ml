(* Generated Code Do Not Modify *)
(* package org.apache.commons.fileupload *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.AbFileNativeUtil *)
(* import org.allbinary.logic.string.StringMaker *)

class fileItemUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable dEFAULT_CHARSET : string = ""
    method dEFAULT_CHARSET = dEFAULT_CHARSET
    method set_dEFAULT_CHARSET value' = dEFAULT_CHARSET <- value'
    

    method getString ((byteArray : int array)) : string =
        begin
        (Obj.obj (java_new "String" (Obj.repr (byteArray, dEFAULT_CHARSET))))
        end
    

    (* Java overload getString(FileItemStream) is not converted: OCaml has one method per name *)
    

    method getBytes : 'any1. 'any1 -> int array = fun (fileItem) ->
        let fileItem = Obj.repr fileItem in
        begin
        let streamUtil : StreamUtil.streamUtil ref = ref (((StreamUtil.getInstance ()) :> StreamUtil.streamUtil)) in ();
        let inputStream : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let outputStream : java_byte_array_output_stream ref = ref ((Obj.magic 0)) in ();
        Fun.protect ~finally:(fun () -> 
            ignore (!streamUtil#close (!outputStream));
            ignore (!streamUtil#close ((Obj.magic !inputStream)))
        ) (fun () -> (try
            inputStream := Obj.repr (((Obj.magic fileItem)#openStream ()));
            outputStream := (new java_byte_array_output_stream ());
            if ((Obj.magic fileItem)#isFormField ()) then begin
                ignore ((Obj.magic logUtil)#putF (("FileItemStream FieldName: " ^ java_string_of (Obj.repr (((Obj.magic fileItem)#getFieldName ())))), self, "write()"))
            end else begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Uploaded File FieldName: "));
                ignore (!stringBuffer#append (((Obj.magic fileItem)#getFieldName ())));
                ignore (!stringBuffer#append (" name = "));
                ignore (!stringBuffer#append (((Obj.magic fileItem)#getName ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "write()"))
            end;
            outputStream := (Obj.magic (!streamUtil#get ((Obj.magic !inputStream), !outputStream, (Array.make (16384) 0))));
            (!outputStream#toByteArray ())
        with exception_value -> raise exception_value))
        end [@@warning "-20"]
    

    method write : 'any1 'any2. 'any1 * 'any2 -> unit = fun (fileItem, file) ->
        let fileItem = Obj.repr fileItem in
        let file = Obj.repr file in
        begin
        ignore ((Obj.magic fileItem)#write ((AbFileNativeUtil.get ((Obj.magic file)))))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        dEFAULT_CHARSET <- "ISO-8859-1";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "FileItemUtil" (fun arguments -> Obj.repr (new fileItemUtil (Obj.obj arguments)))

let instance = (new fileItemUtil ())
let get_instance () = instance
let () = java_register_static "FileItemUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "FileItemUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


