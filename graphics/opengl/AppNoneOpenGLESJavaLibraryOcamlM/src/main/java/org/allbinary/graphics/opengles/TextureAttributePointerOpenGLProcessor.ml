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
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor *)

class textureAttributePointerOpenGLProcessor () =
  object
    inherit ObjectThreedOpenGLProcessor.objectThreedOpenGLProcessor ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _anyType) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TextureAttributePointerOpenGLProcessor" (fun arguments -> Obj.repr (new textureAttributePointerOpenGLProcessor (Obj.obj arguments)))

let instance = (new textureAttributePointerOpenGLProcessor ())
let get_instance () = instance
let () = java_register_static "TextureAttributePointerOpenGLProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TextureAttributePointerOpenGLProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


