(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]

let instance : OpenGLObject3dProcessor.openGLObject3dProcessor = ((new OpenGLObject3dProcessor.openGLObject3dProcessor ()) :> OpenGLObject3dProcessor.openGLObject3dProcessor)
let get_instance () = instance
let () = java_register_static "NullOpenGLTextureProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : OpenGLObject3dProcessor.openGLObject3dProcessor =
        begin
        (instance :> OpenGLObject3dProcessor.openGLObject3dProcessor)
        end

let () = java_register_static "NullOpenGLTextureProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class nullOpenGLTextureProcessor () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullOpenGLTextureProcessor" (fun arguments -> Obj.repr (new nullOpenGLTextureProcessor (Obj.obj arguments)))


