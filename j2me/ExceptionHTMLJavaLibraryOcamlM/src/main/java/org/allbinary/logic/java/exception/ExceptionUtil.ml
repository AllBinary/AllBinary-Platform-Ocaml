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
(* import jsinterop.annotations.JsType *)

let pRETEND_EXCEPTION : exn = (Failure ("Not Really An Exception"))
let get_pRETEND_EXCEPTION () = pRETEND_EXCEPTION
let () = java_register_static "ExceptionUtil.get_pRETEND_EXCEPTION" (fun _ -> Obj.repr (get_pRETEND_EXCEPTION ()))
class exceptionUtil () =
  object
    val mutable nONE : string = ""
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    
    

    method getStackTrace ((e : exn)) : string =
        begin
        ignore (prerr_endline (Printexc.to_string e));
        nONE
        end

    initializer
      begin
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


