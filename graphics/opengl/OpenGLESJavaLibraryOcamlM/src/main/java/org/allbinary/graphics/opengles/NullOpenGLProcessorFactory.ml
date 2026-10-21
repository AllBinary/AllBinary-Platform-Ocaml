(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]

class nullOpenGLProcessorFactory () =
  object

    initializer
      begin
        ()
      end
  end

let instance : OpenGLProcessor.openGLProcessor = ((new OpenGLProcessor.openGLProcessor ()) :> OpenGLProcessor.openGLProcessor)
let getInstance () =
        begin
        instance
        end


