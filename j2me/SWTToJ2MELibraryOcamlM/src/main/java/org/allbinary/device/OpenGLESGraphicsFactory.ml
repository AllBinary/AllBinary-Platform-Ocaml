(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.device *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class openGLESGraphicsFactory () =
  object
    

    method getOpenGLESGraphicsInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESGraphicsFactory" (fun arguments -> Obj.repr (new openGLESGraphicsFactory (Obj.obj arguments)))


