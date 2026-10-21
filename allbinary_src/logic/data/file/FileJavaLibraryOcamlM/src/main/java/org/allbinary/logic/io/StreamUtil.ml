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
(* package org.allbinary.logic.io *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)
(* import java.io.Closeable *)
(* import java.io.InputStream *)
(* import java.io.OutputStream *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class streamUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method get : 'any1 'any2 'return. 'any1 * 'any2 * int array -> 'return = fun (inputStream, outputStream, (buffer : int array)) ->
        let inputStream = Obj.repr inputStream in
        let outputStream = Obj.repr outputStream in
        begin
        let len : int ref = ref (0) in ();
        while true do
            len := ((Obj.magic inputStream)#read (buffer, 0, (Array.length buffer)));
            if (!len <> (-1)) then begin
                ()
            end else begin
                raise Java_break
            end;
            ignore ((Obj.magic outputStream)#write (buffer, 0, !len))
        done;
        (Obj.magic ((Obj.magic outputStream)))
        end [@@warning "-20"]
    

    method getByteArray : 'any1. 'any1 * java_byte_array_output_stream * int array -> int array = fun (inputStream, (outputStream2 : java_byte_array_output_stream), (byteArray : int array)) ->
        let inputStream = Obj.repr inputStream in
        begin
        let outputStream : java_byte_array_output_stream ref = ref (outputStream2) in ();
        Fun.protect ~finally:(fun () -> 
            ignore (self#close (!outputStream))
        ) (fun () -> (try
            ignore (self#get ((Obj.magic inputStream), !outputStream, byteArray));
            (!outputStream#toByteArray ())
        with e -> begin
            raise e
        end))
        end [@@warning "-20"]
    

    method close : 'any1. 'any1 -> bool = fun (closeable) ->
        let closeable = Obj.repr closeable in
        begin
        (try
            if ((Obj.magic closeable) != (Obj.magic 0)) then begin
                ignore ((Obj.magic closeable)#close ())
            end;
            true
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#cLOSE, e));
            false
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "StreamUtil" (fun arguments -> Obj.repr (new streamUtil (Obj.obj arguments)))

let instance = (new streamUtil ())
let get_instance () = instance
let () = java_register_static "StreamUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "StreamUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


