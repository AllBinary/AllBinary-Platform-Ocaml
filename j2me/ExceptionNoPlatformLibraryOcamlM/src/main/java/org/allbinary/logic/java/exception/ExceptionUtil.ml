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

class exceptionUtil () =
  object
    val mutable pRETEND_EXCEPTION : exn = (Obj.magic 0)
    method pRETEND_EXCEPTION = pRETEND_EXCEPTION
    method set_pRETEND_EXCEPTION value' = pRETEND_EXCEPTION <- value'
    
    

    method getStackTrace ((_e : exn)) : string =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        pRETEND_EXCEPTION <- (Failure ("Not Really An Exception"));
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


