(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles.shader *)

open Allbinary_java [@@warning "-33"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.opengles.OpenGLProcessor *)

class shaderOpenGLProcessor () =
  object
    inherit OpenGLProcessor.openGLProcessor ()
    
    

    method process0 : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method process1 : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method process : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method process2 : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method process3 : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ShaderOpenGLProcessor" (fun arguments -> Obj.repr (new shaderOpenGLProcessor (Obj.obj arguments)))


