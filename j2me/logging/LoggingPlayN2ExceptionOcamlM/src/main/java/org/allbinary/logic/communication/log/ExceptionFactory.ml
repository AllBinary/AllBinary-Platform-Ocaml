(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2026 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.communication.log *)

open Allbinary_java [@@warning "-33"]
(* import jsinterop.annotations.JsType *)

class exceptionFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ExceptionFactory" (fun arguments -> Obj.repr (new exceptionFactory (Obj.obj arguments)))

let createThrowable ((message : string)) : exn =
        begin
        (Obj.obj (java_new "Throwable" (Obj.repr (message))))
        end
let () = java_register_static "ExceptionFactory.createThrowable" (fun arguments -> Obj.repr (createThrowable (Obj.obj arguments)))


