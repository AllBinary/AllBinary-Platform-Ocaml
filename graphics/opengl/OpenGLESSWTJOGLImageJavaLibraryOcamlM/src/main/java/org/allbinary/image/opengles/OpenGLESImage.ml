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
(* import javax.microedition.lcdui.OpenGLESPostLoadPlatformImage *)
(* import javax.microedition.lcdui.PostLoadImageProcessor *)
(* import org.allbinary.graphics.GraphicsStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
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
  object (self)
    inherit Image.image ((image#getName ()), (PostLoadImageProcessor.get_nULL_POST_LOAD_IMAGE_PROCESSOR ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable textureFactory : PlatformTextureBaseFactory.platformTextureBaseFactory = (Obj.magic 0)
    method textureFactory = textureFactory
    method set_textureFactory value' = textureFactory <- value'
    val mutable openGLBitmap : Obj.t = Obj.repr 0
    method openGLBitmap : 'r. 'r = Obj.magic openGLBitmap
    method set_openGLBitmap : 'v. 'v -> unit = fun value' -> openGLBitmap <- Obj.repr value'
    val mutable imageProcessor : OpenGLESImageProcessor.openGLESImageProcessor = (Obj.magic 0)
    method imageProcessor = imageProcessor
    method set_imageProcessor value' = imageProcessor <- value'
    val mutable openGLESImageTranslate : OpenGLESImageTranslate.openGLESImageTranslate = (Obj.magic 0)
    method openGLESImageTranslate = openGLESImageTranslate
    method set_openGLESImageTranslate value' = openGLESImageTranslate <- value'
    val mutable openGLESImageProperties : OpenGLESImageProperties.openGLESImageProperties = (Obj.magic 0)
    method openGLESImageProperties = openGLESImageProperties
    method set_openGLESImageProperties value' = openGLESImageProperties <- value'
    
    

    method getHeight () : int =
        begin
        (java_to_int (Obj.repr (((((Obj.magic openGLBitmap)#getHeight ()) * openGLESImageProperties#scaleY2)))))
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        (java_to_int (Obj.repr (((((Obj.magic openGLBitmap)#getWidth ()) * openGLESImageProperties#scaleX2)))))
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (_gl) ->
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method initTexture : 'any1. 'any1 -> bool = fun (gl) ->
        let gl = Obj.repr gl in
        try
        begin
        if (not (texture2dList#contains (self))) then begin
            ignore (texture2dList#add (self));
            let textures : int array ref = ref ((Array.make (1) 0)) in ();
            ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            if (openGLESImageProperties#textureID != (-1)) then begin
                !textures.(0) <- openGLESImageProperties#textureID;
                ignore ((Obj.magic gl)#glDeleteTextures (1, !textures, 0))
            end;
            ignore ((Obj.magic gl)#glGenTextures (1, !textures, 0));
            openGLESImageProperties#set_textureID (!textures.(0));
            ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), openGLESImageProperties#textureID));
            ignore ((Obj.magic gl)#glTexParameterf ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (Obj.magic (java_call_static "GL10.get_gL_TEXTURE_MIN_FILTER" (Obj.repr ()))), (Obj.magic (java_call_static "GL10.get_gL_NEAREST" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glTexParameterf ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (Obj.magic (java_call_static "GL10.get_gL_TEXTURE_WRAP_S" (Obj.repr ()))), (Obj.magic (java_call_static "GL10.get_gL_CLAMP_TO_EDGE" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glTexParameterf ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (Obj.magic (java_call_static "GL10.get_gL_TEXTURE_WRAP_T" (Obj.repr ()))), (Obj.magic (java_call_static "GL10.get_gL_CLAMP_TO_EDGE" (Obj.repr ())))));
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (_gl, (_viewHeight : int), (_x_src : float), (_y_src : float), (_width : float), (_height : float), (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method draw : 'any1. 'any1 * int * int * int -> unit = fun (_gl, (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getType () : int =
        begin
        tYPE
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        let graphicsStrings : GraphicsStrings.graphicsStrings ref = ref (((GraphicsStrings.getInstance ()) :> GraphicsStrings.graphicsStrings)) in ();
        (java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ((self#getName ())))#append ((super#toString ())))#append (!graphicsStrings#oPACITY))#appendfloat ((java_to_float (Obj.repr (openGLESImageProperties#alphaf)))))))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        imageProcessor <- ((OpenGLESImageProcessor.getInstance ()) :> OpenGLESImageProcessor.openGLESImageProcessor);
        openGLESImageTranslate <- ((OpenGLESImageTranslate.getInstance ()) :> OpenGLESImageTranslate.openGLESImageTranslate);
        openGLESImageProperties <- ((new OpenGLESImageProperties.openGLESImageProperties ()) :> OpenGLESImageProperties.openGLESImageProperties);
        ();
        (* super(...) is the inherit clause *) ();
        openGLBitmap <- Obj.repr ((bitmapFactory#createBitmap (image)));
        textureFactory <- textureFactory_arg;
        ignore ((Obj.magic (java_call_static "OpenGLImageCacheFactory.getInstance" (Obj.repr ())))#init (self));
        (self#set_platformImage) ((OpenGLESPostLoadPlatformImage.getInstance ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLESImage" (fun arguments -> Obj.repr (new openGLESImage (Obj.obj arguments)))

let nULL_OPENGL_IMAGE = (new openGLESImage ((NullImage.get_nULL_IMAGE ()), (PlatformBitmapBaseFactory.get_nULL_PLATFORM_BITMAP_BASE_FACTORY ()), (PlatformTextureBaseFactory.get_nULL_PLATFORM_TEXTURE_BASE_FACTORY ())))
let get_nULL_OPENGL_IMAGE () = nULL_OPENGL_IMAGE
let () = java_register_static "OpenGLESImage.get_nULL_OPENGL_IMAGE" (fun _ -> Obj.repr (get_nULL_OPENGL_IMAGE ()))


