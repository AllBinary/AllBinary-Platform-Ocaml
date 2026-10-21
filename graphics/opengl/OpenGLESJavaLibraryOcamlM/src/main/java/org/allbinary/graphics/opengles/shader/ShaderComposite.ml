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
(* import org.allbinary.graphics.opengles.OpenGLProcessor *)
(* import org.allbinary.graphics.opengles.NullOpenGLProcessorFactory *)

class shaderComposite ((requiresOpenGLVersion_arg : string), (shaderArray_arg : Shader.shader array), compositeShaderUpdater_arg, (shaderInitializer_arg : ShaderInitializer.shaderInitializer), (modelViewProjection_arg : ModelViewProjection.modelViewProjection), (colorOpenGLProcessor_arg : OpenGLProcessor.openGLProcessor), (vertexOpenGLProcessor_arg : OpenGLProcessor.openGLProcessor), (disableProgramShaderOpenGLProcessor_arg : OpenGLProcessor.openGLProcessor)) =
  object
    val mutable disableProgramShaderOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method disableProgramShaderOpenGLProcessor = disableProgramShaderOpenGLProcessor
    method set_disableProgramShaderOpenGLProcessor value' = disableProgramShaderOpenGLProcessor <- value'
    val mutable requiresOpenGLVersion : string = ""
    method requiresOpenGLVersion = requiresOpenGLVersion
    method set_requiresOpenGLVersion value' = requiresOpenGLVersion <- value'
    val mutable shaderArray : Shader.shader array = (Obj.magic 0)
    method shaderArray = shaderArray
    method set_shaderArray value' = shaderArray <- value'
    val mutable shaderInitializer : ShaderInitializer.shaderInitializer = (Obj.magic 0)
    method shaderInitializer = shaderInitializer
    method set_shaderInitializer value' = shaderInitializer <- value'
    val mutable compositeShaderUpdater : Obj.t = Obj.repr 0
    method compositeShaderUpdater : 'r. 'r = Obj.magic compositeShaderUpdater
    method set_compositeShaderUpdater : 'v. 'v -> unit = fun value' -> compositeShaderUpdater <- Obj.repr value'
    val mutable modelViewProjection : ModelViewProjection.modelViewProjection = (Obj.magic 0)
    method modelViewProjection = modelViewProjection
    method set_modelViewProjection value' = modelViewProjection <- value'
    val mutable colorOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method colorOpenGLProcessor = colorOpenGLProcessor
    method set_colorOpenGLProcessor value' = colorOpenGLProcessor <- value'
    val mutable vertexOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method vertexOpenGLProcessor = vertexOpenGLProcessor
    method set_vertexOpenGLProcessor value' = vertexOpenGLProcessor <- value'
    val mutable useProgramShaderOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method useProgramShaderOpenGLProcessor = useProgramShaderOpenGLProcessor
    method set_useProgramShaderOpenGLProcessor value' = useProgramShaderOpenGLProcessor <- value'
    val mutable shaderMatrixOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method shaderMatrixOpenGLProcessor = shaderMatrixOpenGLProcessor
    method set_shaderMatrixOpenGLProcessor value' = shaderMatrixOpenGLProcessor <- value'
    val mutable colorEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method colorEnableVertexAttribArrayOpenGLProcessor = colorEnableVertexAttribArrayOpenGLProcessor
    method set_colorEnableVertexAttribArrayOpenGLProcessor value' = colorEnableVertexAttribArrayOpenGLProcessor <- value'
    val mutable normalEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method normalEnableVertexAttribArrayOpenGLProcessor = normalEnableVertexAttribArrayOpenGLProcessor
    method set_normalEnableVertexAttribArrayOpenGLProcessor value' = normalEnableVertexAttribArrayOpenGLProcessor <- value'
    val mutable vertexEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method vertexEnableVertexAttribArrayOpenGLProcessor = vertexEnableVertexAttribArrayOpenGLProcessor
    method set_vertexEnableVertexAttribArrayOpenGLProcessor value' = vertexEnableVertexAttribArrayOpenGLProcessor <- value'
    val mutable textureEnableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method textureEnableVertexAttribArrayOpenGLProcessor = textureEnableVertexAttribArrayOpenGLProcessor
    method set_textureEnableVertexAttribArrayOpenGLProcessor value' = textureEnableVertexAttribArrayOpenGLProcessor <- value'
    val mutable colorDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method colorDisableVertexAttribArrayOpenGLProcessor = colorDisableVertexAttribArrayOpenGLProcessor
    method set_colorDisableVertexAttribArrayOpenGLProcessor value' = colorDisableVertexAttribArrayOpenGLProcessor <- value'
    val mutable normalDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method normalDisableVertexAttribArrayOpenGLProcessor = normalDisableVertexAttribArrayOpenGLProcessor
    method set_normalDisableVertexAttribArrayOpenGLProcessor value' = normalDisableVertexAttribArrayOpenGLProcessor <- value'
    val mutable vertexDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method vertexDisableVertexAttribArrayOpenGLProcessor = vertexDisableVertexAttribArrayOpenGLProcessor
    method set_vertexDisableVertexAttribArrayOpenGLProcessor value' = vertexDisableVertexAttribArrayOpenGLProcessor <- value'
    val mutable textureDisableVertexAttribArrayOpenGLProcessor : OpenGLProcessor.openGLProcessor = (Obj.magic 0)
    method textureDisableVertexAttribArrayOpenGLProcessor = textureDisableVertexAttribArrayOpenGLProcessor
    method set_textureDisableVertexAttribArrayOpenGLProcessor value' = textureDisableVertexAttribArrayOpenGLProcessor <- value'
    val mutable uniformLightPositionOpenGLProcessor : OpenGLObject3dProcessor.openGLObject3dProcessor = (Obj.magic 0)
    method uniformLightPositionOpenGLProcessor = uniformLightPositionOpenGLProcessor
    method set_uniformLightPositionOpenGLProcessor value' = uniformLightPositionOpenGLProcessor <- value'
    val mutable uniformLightColorOpenGLProcessor : OpenGLObject3dProcessor.openGLObject3dProcessor = (Obj.magic 0)
    method uniformLightColorOpenGLProcessor = uniformLightColorOpenGLProcessor
    method set_uniformLightColorOpenGLProcessor value' = uniformLightColorOpenGLProcessor <- value'
    val mutable uniformCameraPositionOpenGLProcessor : OpenGLObject3dProcessor.openGLObject3dProcessor = (Obj.magic 0)
    method uniformCameraPositionOpenGLProcessor = uniformCameraPositionOpenGLProcessor
    method set_uniformCameraPositionOpenGLProcessor value' = uniformCameraPositionOpenGLProcessor <- value'
    val mutable uniformTextureUnitOpenGLProcessor : OpenGLObject3dProcessor.openGLObject3dProcessor = (Obj.magic 0)
    method uniformTextureUnitOpenGLProcessor = uniformTextureUnitOpenGLProcessor
    method set_uniformTextureUnitOpenGLProcessor value' = uniformTextureUnitOpenGLProcessor <- value'
    val mutable programHandle : int = 0
    method programHandle = programHandle
    method set_programHandle value' = programHandle <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        programHandle <- (shaderInitializer#init ((Obj.magic gl), shaderArray, (Obj.magic compositeShaderUpdater)#attributeArray))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        useProgramShaderOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        shaderMatrixOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        colorEnableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        normalEnableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        vertexEnableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        textureEnableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        colorDisableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        normalDisableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        vertexDisableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        textureDisableVertexAttribArrayOpenGLProcessor <- ((NullOpenGLProcessorFactory.getInstance ()) :> OpenGLProcessor.openGLProcessor);
        uniformLightPositionOpenGLProcessor <- ((NullOpenGLTextureProcessor.getInstance ()) :> OpenGLObject3dProcessor.openGLObject3dProcessor);
        uniformLightColorOpenGLProcessor <- ((NullOpenGLTextureProcessor.getInstance ()) :> OpenGLObject3dProcessor.openGLObject3dProcessor);
        uniformCameraPositionOpenGLProcessor <- ((NullOpenGLTextureProcessor.getInstance ()) :> OpenGLObject3dProcessor.openGLObject3dProcessor);
        uniformTextureUnitOpenGLProcessor <- ((NullOpenGLTextureProcessor.getInstance ()) :> OpenGLObject3dProcessor.openGLObject3dProcessor);
        programHandle <- 0;
        ();
        requiresOpenGLVersion <- requiresOpenGLVersion_arg;
        shaderArray <- shaderArray_arg;
        shaderInitializer <- shaderInitializer_arg;
        compositeShaderUpdater <- Obj.repr (compositeShaderUpdater_arg);
        modelViewProjection <- modelViewProjection_arg;
        colorOpenGLProcessor <- colorOpenGLProcessor_arg;
        vertexOpenGLProcessor <- vertexOpenGLProcessor_arg;
        disableProgramShaderOpenGLProcessor <- disableProgramShaderOpenGLProcessor_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShaderComposite" (fun arguments -> Obj.repr (new shaderComposite (Obj.obj arguments)))


