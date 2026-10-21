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
(* package org.allbinary.image.opengles *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.platform.graphics.PlatformBitmapBase *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let texture2dList : BasicArrayList.basicArrayList = ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
let get_texture2dList () = texture2dList
let () = java_register_static "OpenGLESImage.get_texture2dList" (fun _ -> Obj.repr (get_texture2dList ()))
let tYPE : int = 4
let get_tYPE () = tYPE
let () = java_register_static "OpenGLESImage.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
class openGLESImage (image, (bitmapFactory : PlatformBitmapBaseFactory.platformBitmapBaseFactory), (textureFactory_arg : PlatformTextureBaseFactory.platformTextureBaseFactory)) =
  object
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable textureFactory : PlatformTextureBaseFactory.platformTextureBaseFactory = (Obj.magic 0)
    method textureFactory = textureFactory
    method set_textureFactory value' = textureFactory <- value'
    val mutable openGLBitmap : Obj.t = Obj.repr 0
    method openGLBitmap : 'r. 'r = Obj.magic openGLBitmap
    method set_openGLBitmap : 'v. 'v -> unit = fun value' -> openGLBitmap <- Obj.repr value'
    val mutable openGLESImageProperties : OpenGLESImageProperties.openGLESImageProperties = (Obj.magic 0)
    method openGLESImageProperties = openGLESImageProperties
    method set_openGLESImageProperties value' = openGLESImageProperties <- value'
    
    

    method set : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-20"]
    

    method initTexture : 'any1. 'any1 -> bool = fun (_gl) ->
        begin
        false
        end [@@warning "-20"]
    

    method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (_gl, (_viewHeight : int), (_x_src : float), (_y_src : float), (_width : float), (_height : float), (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method draw : 'any1. 'any1 * int * int * int -> unit = fun (_gl, (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getType () : int =
        begin
        tYPE
        end

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        openGLESImageProperties <- ((new OpenGLESImageProperties.openGLESImageProperties ()) :> OpenGLESImageProperties.openGLESImageProperties);
        ();
        openGLBitmap <- Obj.repr ((bitmapFactory#createBitmap (image)));
        textureFactory <- textureFactory_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLESImage" (fun arguments -> Obj.repr (new openGLESImage (Obj.obj arguments)))

let nULL_OPENGL_IMAGE = (new openGLESImage ((NullImage.get_nULL_IMAGE ()), (PlatformBitmapBaseFactory.get_nULL_PLATFORM_BITMAP_BASE_FACTORY ()), (PlatformTextureBaseFactory.get_nULL_PLATFORM_TEXTURE_BASE_FACTORY ())))
let get_nULL_OPENGL_IMAGE () = nULL_OPENGL_IMAGE
let () = java_register_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (fun _ -> Obj.repr (get_nULL_OPENGL_IMAGE ()))


