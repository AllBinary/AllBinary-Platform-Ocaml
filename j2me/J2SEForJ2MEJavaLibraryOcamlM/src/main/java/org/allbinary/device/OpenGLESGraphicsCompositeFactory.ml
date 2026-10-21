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

class openGLESGraphicsCompositeFactory () =
  object
    val mutable openGLESGraphicsFactory : OpenGLESGraphicsFactory.openGLESGraphicsFactory = (Obj.magic 0)
    method openGLESGraphicsFactory = openGLESGraphicsFactory
    method set_openGLESGraphicsFactory value' = openGLESGraphicsFactory <- value'
    

    method set : 'any1. 'any1 -> unit = fun (openGLESGraphicsFactory_arg) ->
        let openGLESGraphicsFactory_arg = Obj.repr openGLESGraphicsFactory_arg in
        begin
        openGLESGraphicsFactory <- (Obj.magic openGLESGraphicsFactory_arg)
        end [@@warning "-20"]
    

    method get () : OpenGLESGraphicsFactory.openGLESGraphicsFactory =
        begin
        (openGLESGraphicsFactory :> OpenGLESGraphicsFactory.openGLESGraphicsFactory)
        end

    initializer
      begin
        openGLESGraphicsFactory <- ((new OpenGLESGraphicsFactory.openGLESGraphicsFactory ()) :> OpenGLESGraphicsFactory.openGLESGraphicsFactory);
        ()
      end
  end
let () = java_register_constructor "OpenGLESGraphicsCompositeFactory" (fun arguments -> Obj.repr (new openGLESGraphicsCompositeFactory (Obj.obj arguments)))

let instance = (new openGLESGraphicsCompositeFactory ())
let get_instance () = instance
let () = java_register_static "OpenGLESGraphicsCompositeFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLESGraphicsCompositeFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


