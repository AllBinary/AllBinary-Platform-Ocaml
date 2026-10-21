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
(* package org.allbinary.logic.java.exception *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io.ByteArrayOutputStream *)

class exceptionUtil () =
  object
    val mutable pRETEND_EXCEPTION : exn = (Obj.magic 0)
    method pRETEND_EXCEPTION = pRETEND_EXCEPTION
    method set_pRETEND_EXCEPTION value' = pRETEND_EXCEPTION <- value'
    val mutable nONE : string = ""
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    
    

    method getStackTrace ((e : exn)) : string =
        try
        begin
        let bs : java_byte_array_output_stream ref = ref ((new java_byte_array_output_stream ())) in ();
        ignore (prerr_endline (Printexc.to_string e));
        let output : string ref = ref ((java_string_of (Obj.repr !bs))) in ();
        if (!output <> (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "String" (Obj.repr (!output)))))))
        end;
        nONE
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        pRETEND_EXCEPTION <- (Failure ("Not Really An Exception"));
        nONE <- "No Stack Trace";
        ();
        ()
      end
  end
let () = java_register_constructor "ExceptionUtil" (fun arguments -> Obj.repr (new exceptionUtil (Obj.obj arguments)))

let instance = (new exceptionUtil ())
let get_instance () = instance
let () = java_register_static "ExceptionUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ExceptionUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


