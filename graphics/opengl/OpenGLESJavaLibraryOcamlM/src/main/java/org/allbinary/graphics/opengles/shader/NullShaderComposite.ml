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
(* import javax.microedition.khronos.opengles.GL10 *)
(* import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory *)
(* import org.allbinary.graphics.opengles.OpenGLCapabilities *)
(* import org.allbinary.graphics.opengles.OpenGLProcessor *)

class nullShaderComposite ((requiresOpenGLVersion : string), (shaderArray : Shader.shader array), compositeShaderUpdater, (shaderInitializer : ShaderInitializer.shaderInitializer), (modelViewProjection : ModelViewProjection.modelViewProjection), (colorOpenGLProcessor : OpenGLProcessor.openGLProcessor), (vertexOpenGLProcessor : OpenGLProcessor.openGLProcessor), (disableProgramShaderOpenGLProcessor : OpenGLProcessor.openGLProcessor)) =
  object (self)
    inherit ShaderComposite.shaderComposite (requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, disableProgramShaderOpenGLProcessor)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        (self#set_useProgramShaderOpenGLProcessor) ((NullOpenGLProcessorFactory.getInstance ()))
      end
  end
let () = java_register_constructor "NullShaderComposite" (fun arguments -> Obj.repr (new nullShaderComposite (Obj.obj arguments)))

let instance = (object (self)
        inherit nullShaderComposite ((Obj.magic (java_call_static "OpenGLCapabilities.getInstance" (Obj.repr ())))#vERSION_2_0, [| (new Shader.shader ()); (new Shader.shader ()) |], (Obj.magic (java_call_static "CompositeShaderUpdater.getInstance" (Obj.repr ()))), (ShaderInitializer.getInstance ()), (ModelViewProjection.getInstance ()), (NullOpenGLProcessorFactory.getInstance ()), (NullOpenGLProcessorFactory.getInstance ()), (NullOpenGLProcessorFactory.getInstance ())) as super
        

        method init : 'any1. 'any1 -> unit = fun (_gl) ->
            begin
            ()
            end [@@warning "-20"]
    end)
let get_instance () = instance
let () = java_register_static "NullShaderComposite.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : ShaderComposite.shaderComposite =
        begin
        (instance :> ShaderComposite.shaderComposite)
        end
let () = java_register_static "NullShaderComposite.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


