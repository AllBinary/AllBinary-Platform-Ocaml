(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.threed.min3d.renderer.processor.ObjectThreedOpenGLProcessor *)

class enableFacesShaderOpenGLProcessor () =
  object
    inherit ObjectThreedOpenGLProcessor.objectThreedOpenGLProcessor ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gl, _anyType) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "EnableFacesShaderOpenGLProcessor" (fun arguments -> Obj.repr (new enableFacesShaderOpenGLProcessor (Obj.obj arguments)))

let instance = (new enableFacesShaderOpenGLProcessor ())
let get_instance () = instance
let () = java_register_static "EnableFacesShaderOpenGLProcessor.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "EnableFacesShaderOpenGLProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


