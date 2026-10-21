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
(* import org.allbinary.logic.string.StringUtil *)

class openGLCapabilities () =
  object
    val mutable cUSTOM_GL_SURFACE_VIEW : bool = false
    method cUSTOM_GL_SURFACE_VIEW = cUSTOM_GL_SURFACE_VIEW
    method set_cUSTOM_GL_SURFACE_VIEW value' = cUSTOM_GL_SURFACE_VIEW <- value'
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
    val mutable glVersion : string = ""
    method glVersion = glVersion
    method set_glVersion value' = glVersion <- value'
    val mutable shaderVersion : int = 0
    method shaderVersion = shaderVersion
    method set_shaderVersion value' = shaderVersion <- value'
    val mutable glInstanceVersion : string = ""
    method glInstanceVersion = glInstanceVersion
    method set_glInstanceVersion value' = glInstanceVersion <- value'
    val mutable maxTextureSize : int = 0
    method maxTextureSize = maxTextureSize
    method set_maxTextureSize value' = maxTextureSize <- value'
    
    

    method isInitialized () : bool =
        begin
        true
        end
    

    method initCapabilities : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        ()
        end
    

    method isGlExtensionDrawTexture () : bool =
        begin
        false
        end
    

    method getGlVersion () : string =
        begin
        glVersion
        end
    

    method isVertexBufferObjectSupport () : bool =
        begin
        false
        end
    

    method isTextureSizeValid ((_widthAndHeight : int)) : bool =
        begin
        true
        end

    initializer
      begin
        cUSTOM_GL_SURFACE_VIEW <- true;
        vERSION_1_0 <- "1.0";
        vERSION_1_1 <- "1.1";
        vERSION_2_0 <- "2.0";
        vERSION_3_0 <- "3.0";
        vERSION_3_1 <- "3.1";
        vERSION_3_2 <- "3.2";
        vERSION_HIGHER_THAN_EXISTS <- "999.999";
        glVersion <- (StringUtil.getInstance ())#eMPTY_STRING;
        shaderVersion <- 0;
        glInstanceVersion <- (StringUtil.getInstance ())#eMPTY_STRING;
        maxTextureSize <- 64;
        ();
        ()
      end
  end
let () = java_register_constructor "OpenGLCapabilities" (fun arguments -> Obj.repr (new openGLCapabilities (Obj.obj arguments)))

let instance = (new openGLCapabilities ())
let get_instance () = instance
let () = java_register_static "OpenGLCapabilities.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLCapabilities.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


