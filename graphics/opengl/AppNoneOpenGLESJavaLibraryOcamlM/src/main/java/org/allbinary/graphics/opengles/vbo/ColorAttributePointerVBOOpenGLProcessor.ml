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
(* package org.allbinary.graphics.opengles.vbo *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor *)

class colorAttributePointerVBOOpenGLProcessor () =
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
let () = java_register_constructor "ColorAttributePointerVBOOpenGLProcessor" (fun arguments -> Obj.repr (new colorAttributePointerVBOOpenGLProcessor (Obj.obj arguments)))

let instance = (new colorAttributePointerVBOOpenGLProcessor ())
let get_instance () = instance
let () = java_register_static "ColorAttributePointerVBOOpenGLProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ColorAttributePointerVBOOpenGLProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


