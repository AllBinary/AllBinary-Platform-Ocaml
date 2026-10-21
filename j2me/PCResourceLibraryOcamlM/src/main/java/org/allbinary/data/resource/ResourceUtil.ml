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
(* package org.allbinary.data.resource *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.ByteArrayOutputStream *)
(* import java.io.FileInputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class resourceUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable path : string = ""
    method path = path
    method set_path value' = path <- value'
    val mutable ext : string = ""
    method ext = ext
    method set_ext value' = ext <- value'
    
    

    method setLoadingPaths ((path_arg : string), (ext_arg : string)) : unit =
        begin
        path <- path_arg;
        ext <- ext_arg
        end
    

    method setClassLoader : 'any1. 'any1 -> unit = fun (_classLoader) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getResourceAsStream : 'return. string -> 'return = fun ((resource : string)) ->
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (self#getResourceAsStreamAtStart (resource, 2)))) in ();
        if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
            inputStream := Obj.repr ((self#getResourceAsStreamAtStart (resource, 1)));
            if ((Obj.magic !inputStream) == (Obj.magic 0)) then begin
                raise (Failure ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Unable to obtain: "))#append (resource))))))
            end
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end
    

    method getResourceAsStreamAtStart : 'return. string * int -> 'return = fun ((resource : string), (_startIndex : int)) ->
        try
        begin
        let inputStream : Obj.t ref = ref ((Obj.repr (new FileInputStream.fileInputStream ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (path))#append (resource))#append (ext)))))))) in ();
        if ((Obj.magic !inputStream) != (Obj.magic 0)) then begin
            let byteArray : int array ref = ref ((Array.make (((Obj.magic !inputStream)#available ())) 0)) in ();
            ignore ((StreamUtil.getInstance ())#getByteArray ((Obj.magic !inputStream), (new java_byte_array_output_stream ()), !byteArray));
            raise (Java_return (Obj.repr ((new ByteArrayInputStream.byteArrayInputStream (!byteArray)))))
        end;
        (Obj.magic ((Obj.magic !inputStream)))
        end
        with Java_return value -> Obj.obj value
    

    method addResource ((_resource : string), (_value : int)) : unit =
        begin
        ()
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        path <- (StringUtil.getInstance ())#eMPTY_STRING;
        ext <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ResourceUtil" (fun arguments -> Obj.repr (new resourceUtil (Obj.obj arguments)))

let instance = (new resourceUtil ())
let get_instance () = instance
let () = java_register_static "ResourceUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ResourceUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


