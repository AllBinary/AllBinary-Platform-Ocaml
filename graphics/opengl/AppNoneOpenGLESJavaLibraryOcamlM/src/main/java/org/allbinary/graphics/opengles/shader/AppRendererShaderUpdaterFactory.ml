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
[@@@warning "-20"]

class appRendererShaderUpdaterFactory () =
  object
    inherit ShaderUpdater.shaderUpdater ()
    val mutable nULL_SHADER_COMPOSITE_ARRAY : ShaderComposite.shaderComposite array = (Obj.magic 0)
    method nULL_SHADER_COMPOSITE_ARRAY = nULL_SHADER_COMPOSITE_ARRAY
    method set_nULL_SHADER_COMPOSITE_ARRAY value' = nULL_SHADER_COMPOSITE_ARRAY <- value'
    val mutable shaderCompositeArray : ShaderComposite.shaderComposite array = (Obj.magic 0)
    method shaderCompositeArray = shaderCompositeArray
    method set_shaderCompositeArray value' = shaderCompositeArray <- value'
    val mutable shaderOpenGLProcessorArray : ShaderOpenGLProcessor.shaderOpenGLProcessor array = (Obj.magic 0)
    method shaderOpenGLProcessorArray = shaderOpenGLProcessorArray
    method set_shaderOpenGLProcessorArray value' = shaderOpenGLProcessorArray <- value'
    

    method getTestShaders () : ShaderOpenGLProcessor.shaderOpenGLProcessor array =
        begin
        shaderOpenGLProcessorArray
        end [@@warning "-7"]
    

    method setShaderComposite : 'any1. 'any1 -> unit = fun (_object3d) ->
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        nULL_SHADER_COMPOSITE_ARRAY <- (Array.make (0) (Obj.magic 0));
        shaderCompositeArray <- nULL_SHADER_COMPOSITE_ARRAY;
        shaderOpenGLProcessorArray <- (Array.make (0) (Obj.magic 0));
        ()
      end
  end
let () = java_register_constructor "AppRendererShaderUpdaterFactory" (fun arguments -> Obj.repr (new appRendererShaderUpdaterFactory (Obj.obj arguments)))

let instanceC = (new appRendererShaderUpdaterFactory ())
let get_instanceC () = instanceC
let () = java_register_static "AppRendererShaderUpdaterFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "AppRendererShaderUpdaterFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


