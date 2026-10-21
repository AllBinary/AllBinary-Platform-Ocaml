(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.khronos.opengles.GL11 *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.image.opengles.OpenGLESGL10ImageFactory *)
(* import org.allbinary.image.opengles.OpenGLESGL11VBOImageFactory *)
(* import org.allbinary.image.opengles.OpenGLImageSpecificFactory *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.tokens.Tokenizer *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class openGLCapabilities () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable cUSTOM_GL_SURFACE_VIEW : bool = false
    method cUSTOM_GL_SURFACE_VIEW = cUSTOM_GL_SURFACE_VIEW
    method set_cUSTOM_GL_SURFACE_VIEW value' = cUSTOM_GL_SURFACE_VIEW <- value'
    val mutable stringUtil : StringUtil.stringUtil = (Obj.magic 0)
    method stringUtil = stringUtil
    method set_stringUtil value' = stringUtil <- value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    val mutable glVersionString : string = ""
    method glVersionString = glVersionString
    method set_glVersionString value' = glVersionString <- value'
    val mutable glShaderVersionString : string = ""
    method glShaderVersionString = glShaderVersionString
    method set_glShaderVersionString value' = glShaderVersionString <- value'
    val mutable shaderVersion : int = 0
    method shaderVersion = shaderVersion
    method set_shaderVersion value' = shaderVersion <- value'
    val mutable glRenderer : string = ""
    method glRenderer = glRenderer
    method set_glRenderer value' = glRenderer <- value'
    val mutable glVendor : string = ""
    method glVendor = glVendor
    method set_glVendor value' = glVendor <- value'
    val mutable glExtensions : string = ""
    method glExtensions = glExtensions
    method set_glExtensions value' = glExtensions <- value'
    val mutable possiblyAccelerated : bool = false
    method possiblyAccelerated = possiblyAccelerated
    method set_possiblyAccelerated value' = possiblyAccelerated <- value'
    val mutable acceleratedString : string = ""
    method acceleratedString = acceleratedString
    method set_acceleratedString value' = acceleratedString <- value'
    val mutable maxTextureSize : int = 0
    method maxTextureSize = maxTextureSize
    method set_maxTextureSize value' = maxTextureSize <- value'
    val mutable vERSION_1_0 : string = ""
    method vERSION_1_0 = vERSION_1_0
    method set_vERSION_1_0 value' = vERSION_1_0 <- value'
    val mutable vERSION_1_1 : string = ""
    method vERSION_1_1 = vERSION_1_1
    method set_vERSION_1_1 value' = vERSION_1_1 <- value'
    val mutable vERSION_2_0 : string = ""
    method vERSION_2_0 = vERSION_2_0
    method set_vERSION_2_0 value' = vERSION_2_0 <- value'
    val mutable vERSION_3_0 : string = ""
    method vERSION_3_0 = vERSION_3_0
    method set_vERSION_3_0 value' = vERSION_3_0 <- value'
    val mutable vERSION_3_1 : string = ""
    method vERSION_3_1 = vERSION_3_1
    method set_vERSION_3_1 value' = vERSION_3_1 <- value'
    val mutable vERSION_3_2 : string = ""
    method vERSION_3_2 = vERSION_3_2
    method set_vERSION_3_2 value' = vERSION_3_2 <- value'
    val mutable vERSION_HIGHER_THAN_EXISTS : string = ""
    method vERSION_HIGHER_THAN_EXISTS = vERSION_HIGHER_THAN_EXISTS
    method set_vERSION_HIGHER_THAN_EXISTS value' = vERSION_HIGHER_THAN_EXISTS <- value'
    val mutable vERSION_UNK : string = ""
    method vERSION_UNK = vERSION_UNK
    method set_vERSION_UNK value' = vERSION_UNK <- value'
    val mutable gL_EXT_GPU_SHADER_100 : string = ""
    method gL_EXT_GPU_SHADER_100 = gL_EXT_GPU_SHADER_100
    method set_gL_EXT_GPU_SHADER_100 value' = gL_EXT_GPU_SHADER_100 <- value'
    val mutable gL_EXT_GPU_SHADER4 : string = ""
    method gL_EXT_GPU_SHADER4 = gL_EXT_GPU_SHADER4
    method set_gL_EXT_GPU_SHADER4 value' = gL_EXT_GPU_SHADER4 <- value'
    val mutable glVersion : string = ""
    method glVersion = glVersion
    method set_glVersion value' = glVersion <- value'
    val mutable glInstanceVersion : string = ""
    method glInstanceVersion = glInstanceVersion
    method set_glInstanceVersion value' = glInstanceVersion <- value'
    val mutable glExtensionDrawTexture : bool = false
    method glExtensionDrawTexture = glExtensionDrawTexture
    method set_glExtensionDrawTexture value' = glExtensionDrawTexture <- value'
    val mutable glThreedDrawTexture : bool = false
    method glThreedDrawTexture = glThreedDrawTexture
    method set_glThreedDrawTexture value' = glThreedDrawTexture <- value'
    val mutable glExtensionGPUShader4 : bool = false
    method glExtensionGPUShader4 = glExtensionGPUShader4
    method set_glExtensionGPUShader4 value' = glExtensionGPUShader4 <- value'
    val mutable glExtensionGPUShader100 : bool = false
    method glExtensionGPUShader100 = glExtensionGPUShader100
    method set_glExtensionGPUShader100 value' = glExtensionGPUShader100 <- value'
    val mutable vertexBufferObjectSupport : bool = false
    method vertexBufferObjectSupport = vertexBufferObjectSupport
    method set_vertexBufferObjectSupport value' = vertexBufferObjectSupport <- value'
    
    

    method isInitialized () : bool =
        begin
        initialized
        end
    

    method requireInitialization () : unit =
        begin
        ()
        end
    

    method initCapabilities : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let mETHOD_NAME : string ref = ref ("initGLCapabilities") in ();
        (try
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            let openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
            let openGLImageSpecificFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLImageSpecificFactory.getInstance" (Obj.repr ()))))) in ();
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            glVersionString <- ((Obj.magic gl)#glGetString ((Obj.magic (java_call_static "GL10.get_gL_VERSION" (Obj.repr ())))));
            let gL_SHADING_LANGUAGE_VERSION : int ref = ref (0x8b8c) in ();
            glShaderVersionString <- ((Obj.magic gl)#glGetString (!gL_SHADING_LANGUAGE_VERSION));
            if (glShaderVersionString = (Obj.magic 0)) then begin
                glShaderVersionString <- stringUtil#eMPTY_STRING
            end;
            (try
                if ((glShaderVersionString <> (Obj.magic 0)) && ((java_string_index_of glShaderVersionString (Obj.repr ('.'))) >= 0)) then begin
                    let startIndex : int ref = ref ((java_string_last_index_of glShaderVersionString (Obj.repr (' ')))) in ();
                    if (!startIndex >= 0) then begin
                        glShaderVersionString <- (String.sub glShaderVersionString ((!startIndex + 1)) (String.length glShaderVersionString - ((!startIndex + 1))))
                    end;
                    shaderVersion <- (int_of_string ((java_string_replace glShaderVersionString (Obj.repr ((CommonSeps.getInstance ())#pERIOD)) (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING)))))
                end
            with e -> begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !mETHOD_NAME, e))
            end);
            glRenderer <- ((Obj.magic gl)#glGetString ((Obj.magic (java_call_static "GL10.get_gL_RENDERER" (Obj.repr ())))));
            glVendor <- ((Obj.magic gl)#glGetString ((Obj.magic (java_call_static "GL10.get_gL_VENDOR" (Obj.repr ())))));
            glExtensions <- ((Obj.magic gl)#glGetString ((Obj.magic (java_call_static "GL10.get_gL_EXTENSIONS" (Obj.repr ())))));
            if ((java_string_index_of glExtensions (Obj.repr (gL_EXT_GPU_SHADER_100))) >= 0) then begin
                glExtensionGPUShader100 <- true
            end else begin
                glExtensionGPUShader100 <- false
            end;
            if ((java_string_index_of glExtensions (Obj.repr (gL_EXT_GPU_SHADER4))) >= 0) then begin
                glExtensionGPUShader4 <- true
            end else begin
                glExtensionGPUShader4 <- false
            end;
            if (glRenderer = (Obj.magic 0)) then begin
                glRenderer <- stringUtil#eMPTY_STRING
            end;
            if ((java_string_index_of (String.lowercase_ascii glRenderer) (Obj.repr ("pixelflinger"))) >= 0) then begin
                acceleratedString <- ("Probably Not for " ^ glRenderer);
                possiblyAccelerated <- false
            end else begin
                acceleratedString <- ("Probably for " ^ glRenderer);
                possiblyAccelerated <- true
            end;
            glExtensionDrawTexture <- false;
            if (glVersionString = (Obj.magic 0)) then begin
                glVersionString <- stringUtil#eMPTY_STRING;
                glVersion <- vERSION_UNK
            end else if ((java_string_index_of glVersionString (Obj.repr (" 1.0"))) >= 0) then begin
                glVersion <- vERSION_1_0
            end else if ((java_string_index_of glVersionString (Obj.repr (" 1.1"))) >= 0) then begin
                glVersion <- vERSION_1_1
            end else begin
                glVersion <- vERSION_UNK
            end;
            if (java_instanceof (Obj.repr (Obj.magic gl)) "GL11") then begin
                glInstanceVersion <- vERSION_1_1
            end else if (java_instanceof (Obj.repr (Obj.magic gl)) "GL10") then begin
                glInstanceVersion <- vERSION_1_0
            end;
            if (glVendor = (Obj.magic 0)) then begin
                glVendor <- stringUtil#eMPTY_STRING
            end;
            if (glExtensions = (Obj.magic 0)) then begin
                glExtensions <- stringUtil#eMPTY_STRING
            end;
            if possiblyAccelerated then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("VBO:?"))#appendboolean (((glInstanceVersion = vERSION_1_1))))#append ("||"))#appendboolean ((self#isExtension (!openGLFeatureFactory#oPENGL_VERTEX_BUFFER_OBJECT)))))), self, !mETHOD_NAME))));
                if (((glInstanceVersion = vERSION_1_1) || (self#isExtension (!openGLFeatureFactory#oPENGL_VERTEX_BUFFER_OBJECT)))) then begin
                    if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
                        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("VBO implementation was detected, but disabled by default for Android", self, !mETHOD_NAME))))
                    end else begin
                        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("VBO implementation was detected, but disabled for now", self, !mETHOD_NAME))))
                    end
                end
            end;
            let stringUtil_arg : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
            if (!features#isDefault (!openGLFeatureFactory#oPENGL_AUTO_SELECT)) then begin
                if vertexBufferObjectSupport then begin
                    ignore ((Obj.magic !openGLImageSpecificFactory)#setImageFactory ((new OpenGLESGL11VBOImageFactory.openGLESGL11VBOImageFactory ())))
                end else begin
                    ignore (!stringBuffer#append ("OpenGL is on but "));
                    ignore (!stringBuffer#append ((!stringUtil_arg#toString (!openGLFeatureFactory#oPENGL_DRAW_TEXTURE))));
                    ignore (!stringBuffer#append (" was not available"));
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME))));
                    ignore ((Obj.magic !openGLImageSpecificFactory)#setImageFactory ((new OpenGLESGL10ImageFactory.openGLESGL10ImageFactory ())))
                end
            end else begin
                ignore (!stringBuffer#append ((!stringUtil_arg#toString (!openGLFeatureFactory#oPENGL_AUTO_SELECT))));
                ignore (!stringBuffer#append (" is not on"));
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME))));
                ignore ((Obj.magic !openGLImageSpecificFactory)#setImageFactory ((new OpenGLESGL10ImageFactory.openGLESGL10ImageFactory ())))
            end;
            let maxTextureSizeArray : int array ref = ref ((Array.make (1) 0)) in ();
            ignore ((Obj.magic gl)#glGetIntegerv ((Obj.magic (java_call_static "GL10.get_gL_MAX_TEXTURE_SIZE" (Obj.repr ()))), !maxTextureSizeArray, 0));
            maxTextureSize <- !maxTextureSizeArray.(0);
            initialized <- true
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !mETHOD_NAME, e))
        end)
        end [@@warning "-20"]
    

    method isExtension : 'any1. 'any1 -> bool = fun (gameFeature) ->
        let gameFeature = Obj.repr gameFeature in
        try
        begin
        let index : int ref = ref ((java_string_index_of glExtensions (Obj.repr (((Obj.magic gameFeature)#getName ()))))) in ();
        if (!index >= 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method isGlExtensionDrawTexture () : bool =
        begin
        (self#requireInitialization ());
        glExtensionDrawTexture
        end
    

    method isGlExtensionGPUShader100 () : bool =
        begin
        glExtensionGPUShader100
        end
    

    method isGlExtensionGPUShader4 () : bool =
        begin
        (self#requireInitialization ());
        glExtensionGPUShader4
        end
    

    method getGlVersion () : string =
        begin
        (self#requireInitialization ());
        glVersion
        end
    

    method getGlVersionString () : string =
        begin
        (self#requireInitialization ());
        glVersionString
        end
    

    method getGlShaderVersion () : string =
        begin
        (self#requireInitialization ());
        glShaderVersionString
        end
    

    method isGlThreedDrawTexture () : bool =
        begin
        (self#requireInitialization ());
        glThreedDrawTexture
        end
    

    method getGlRenderer () : string =
        begin
        (self#requireInitialization ());
        glRenderer
        end
    

    method isVertexBufferObjectSupport () : bool =
        begin
        (self#requireInitialization ());
        vertexBufferObjectSupport
        end
    

    method isTextureSizeValid ((widthAndHeight : int)) : bool =
        try
        begin
        (self#requireInitialization ());
        if (maxTextureSize >= widthAndHeight) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("GL_VERSION: "));
        ignore (!stringBuffer#append (glVersionString));
        ignore (!stringBuffer#append (" GL_SHADING_LANGUAGE_VERSION: "));
        ignore (!stringBuffer#append (glShaderVersionString));
        ignore (!stringBuffer#append (" GL_RENDERER: "));
        ignore (!stringBuffer#append (glRenderer));
        ignore (!stringBuffer#append (" GL_VENDOR: "));
        ignore (!stringBuffer#append (glVendor));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (" Is Accelerated: "));
        ignore (!stringBuffer#append (acceleratedString));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (" VBO Support: "));
        ignore (!stringBuffer#appendboolean ((self#isVertexBufferObjectSupport ())));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (" Max Texture Size: "));
        ignore (!stringBuffer#appendint (maxTextureSize));
        ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
        ignore (!stringBuffer#append (" GL_EXTENSIONS: "));
        (try
            let tokenizer : Tokenizer.tokenizer ref = ref (((new Tokenizer.tokenizer (!commonSeps#sPACE)) :> Tokenizer.tokenizer)) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((!tokenizer#getTokensFromString (glExtensions, (new BasicArrayListD.basicArrayListD ()))) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!list#size ())) in ();
            for index = 0 to !size - 1 do
                ignore (!stringBuffer#append (!commonSeps#nEW_LINE));
                ignore (!stringBuffer#append ((stringUtil#toString (!list#objectArray.(index)))))
            done
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore (Obj.magic (java_call_static "PreLogUtil.putOE" (Obj.repr (!commonStrings#eXCEPTION, self, !commonStrings#tOSTRING, e))))
        end);
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        cUSTOM_GL_SURFACE_VIEW <- true;
        stringUtil <- ((StringUtil.getInstance ()) :> StringUtil.stringUtil);
        initialized <- false;
        glVersionString <- stringUtil#eMPTY_STRING;
        glShaderVersionString <- stringUtil#eMPTY_STRING;
        shaderVersion <- 0;
        glRenderer <- stringUtil#eMPTY_STRING;
        glVendor <- stringUtil#eMPTY_STRING;
        glExtensions <- stringUtil#eMPTY_STRING;
        possiblyAccelerated <- false;
        acceleratedString <- stringUtil#eMPTY_STRING;
        maxTextureSize <- 64;
        vERSION_1_0 <- "1.0";
        vERSION_1_1 <- "1.1";
        vERSION_2_0 <- "2.0";
        vERSION_3_0 <- "3.0";
        vERSION_3_1 <- "3.1";
        vERSION_3_2 <- "3.2";
        vERSION_HIGHER_THAN_EXISTS <- "999.999";
        vERSION_UNK <- "Unk";
        gL_EXT_GPU_SHADER_100 <- "GL_ARB_shading_language_100";
        gL_EXT_GPU_SHADER4 <- "GL_EXT_gpu_shader4";
        glVersion <- glVersionString;
        glInstanceVersion <- vERSION_UNK;
        glExtensionDrawTexture <- false;
        glThreedDrawTexture <- false;
        glExtensionGPUShader4 <- false;
        glExtensionGPUShader100 <- false;
        vertexBufferObjectSupport <- false;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLCapabilities" (fun arguments -> Obj.repr (new openGLCapabilities (Obj.obj arguments)))

let instance = (new openGLCapabilities ())
let get_instance () = instance
let () = java_register_static "OpenGLCapabilities.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLCapabilities.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


