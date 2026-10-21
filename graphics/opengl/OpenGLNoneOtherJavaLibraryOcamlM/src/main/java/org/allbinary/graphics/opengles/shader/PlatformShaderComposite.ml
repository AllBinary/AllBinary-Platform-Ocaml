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
(* import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory *)
(* import org.allbinary.graphics.opengles.OpenGLProcessor *)

class platformShaderComposite ((requiresOpenGLVersion : string), (shaderArray : Shader.shader array), compositeShaderUpdater, (shaderInitializer : ShaderInitializer.shaderInitializer), (modelViewProjection : ModelViewProjection.modelViewProjection), (colorOpenGLProcessor : OpenGLProcessor.openGLProcessor), (vertexOpenGLProcessor : OpenGLProcessor.openGLProcessor)) =
  object
    inherit ShaderComposite.shaderComposite (requiresOpenGLVersion, shaderArray, compositeShaderUpdater, shaderInitializer, modelViewProjection, colorOpenGLProcessor, vertexOpenGLProcessor, (NullOpenGLProcessorFactory.getInstance ()))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PlatformShaderComposite" (fun arguments -> Obj.repr (new platformShaderComposite (Obj.obj arguments)))


