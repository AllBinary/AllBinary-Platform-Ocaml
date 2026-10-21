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
(* package org.allbinary.init.crypt.jcehelper *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayInputStream *)
(* import java.io.ByteArrayOutputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class basicCryptUtil () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable xML_START : string = ""
    method xML_START = xML_START
    method set_xML_START value' = xML_START <- value'
    

    method getDecryptedInputStream : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (inputStream, cryptInterface) ->
        let inputStream = Obj.repr inputStream in
        let cryptInterface = Obj.repr cryptInterface in
        begin
        let buffer : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
        let ch : int ref = ref (0) in ();
        while true do
            ch := ((Obj.magic inputStream)#read ());
            if (!ch = (-1)) then begin
                raise Java_break
            end;
            ignore (!buffer#write (!ch))
        done;
        let decrypted : int array ref = ref (((Obj.magic cryptInterface)#decrypt ((!buffer#toByteArray ())))) in ();
        let decryptedString : string ref = ref ((Obj.obj (java_new "String" (Obj.repr (!decrypted))))) in ();
        let index : int ref = ref ((java_string_index_of !decryptedString (Obj.repr (xML_START)))) in ();
        if (!index > 0) then begin
            decryptedString := (String.sub !decryptedString (!index) (String.length !decryptedString - (!index)))
        end;
        (Obj.magic ((new ByteArrayInputStream.byteArrayInputStream (((Obj.magic tsUtil)#getByteArray (!decryptedString))))))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        xML_START <- "<?xml";
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicCryptUtil" (fun arguments -> Obj.repr (new basicCryptUtil (Obj.obj arguments)))

let instance = (new basicCryptUtil ())
let get_instance () = instance
let () = java_register_static "BasicCryptUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BasicCryptUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


