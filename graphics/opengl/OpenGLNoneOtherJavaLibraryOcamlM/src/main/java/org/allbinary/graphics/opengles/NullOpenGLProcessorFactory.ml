(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]

let instance : OpenGLProcessor.openGLProcessor = ((new OpenGLProcessor.openGLProcessor ()) :> OpenGLProcessor.openGLProcessor)
let get_instance () = instance
let () = java_register_static "NullOpenGLProcessorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : OpenGLProcessor.openGLProcessor =
        begin
        (instance :> OpenGLProcessor.openGLProcessor)
        end

let () = java_register_static "NullOpenGLProcessorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class nullOpenGLProcessorFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullOpenGLProcessorFactory" (fun arguments -> Obj.repr (new nullOpenGLProcessorFactory (Obj.obj arguments)))


