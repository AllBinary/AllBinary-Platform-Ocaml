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
(* package org.allbinary.logic.system.security *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.InputStream *)
(* import org.allbinary.logic.io.StreamUtil *)
(* import org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt *)
(* import org.allbinary.logic.system.security.crypt.jcehelper.KeySpecFactory *)

class abCryptUtil () =
  object
    val mutable streamUtil : StreamUtil.streamUtil = (Obj.magic 0)
    method streamUtil = streamUtil
    method set_streamUtil value' = streamUtil <- value'
    
    

    method decrypt : 'any1. 'any1 * string -> int array = fun (inputStream, (key : string)) ->
        let inputStream = Obj.repr inputStream in
        begin
        let outputStream : java_byte_array_output_stream ref = ref ((Obj.magic 0)) in ();
        Fun.protect ~finally:(fun () -> 
            ignore (streamUtil#close (!outputStream));
            ignore (streamUtil#close ((Obj.magic inputStream)))
        ) (fun () -> (try
            outputStream := (Obj.magic (streamUtil#get ((Obj.magic inputStream), (new java_byte_array_output_stream ()), (Array.make (16384) 0))));
            let abCrypt : AbCrypt.abCrypt ref = ref (((new AbCrypt.abCrypt ((KeySpecFactory.getInstance ())#dESEDE)) :> AbCrypt.abCrypt)) in ();
            ignore (!abCrypt#init (key));
            (!abCrypt#decrypt ((!outputStream#toByteArray ())))
        with exception_value -> raise exception_value))
        end [@@warning "-20"]

    initializer
      begin
        streamUtil <- ((StreamUtil.getInstance ()) :> StreamUtil.streamUtil);
        ();
        ()
      end
  end
let () = java_register_constructor "AbCryptUtil" (fun arguments -> Obj.repr (new abCryptUtil (Obj.obj arguments)))

let instance = (new abCryptUtil ())
let get_instance () = instance
let () = java_register_static "AbCryptUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "AbCryptUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


