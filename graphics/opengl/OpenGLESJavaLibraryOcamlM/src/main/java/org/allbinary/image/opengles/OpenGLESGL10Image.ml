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
(* import java.nio.ByteBuffer *)
(* import java.nio.ByteOrder *)
(* import java.nio.FloatBuffer *)
(* import javax.microedition.khronos.opengles.GL *)
(* import javax.microedition.khronos.opengles.GL10 *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.opengles.OpenGLLogUtil *)
(* import org.allbinary.opengles.GLUtil *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)

class openGLESGL10Image (image, (bitmapFactory : PlatformBitmapBaseFactory.platformBitmapBaseFactory), (textureFactory : PlatformTextureBaseFactory.platformTextureBaseFactory)) =
  object (self)
    inherit OpenGLESImage.openGLESImage (image, bitmapFactory, textureFactory) as super
    val mutable textureVertexFloatBuffer : Obj.t = Obj.repr 0
    method textureVertexFloatBuffer : 'r. 'r = Obj.magic textureVertexFloatBuffer
    method set_textureVertexFloatBuffer : 'v. 'v -> unit = fun value' -> textureVertexFloatBuffer <- Obj.repr value'
    val mutable realOpenGLESImageDraw : OpenGLESImageDraw.openGLESImageDraw = (Obj.magic 0)
    method realOpenGLESImageDraw = realOpenGLESImageDraw
    method set_realOpenGLESImageDraw value' = realOpenGLESImageDraw <- value'
    val mutable openGLESImageDraw : OpenGLESImageDraw.openGLESImageDraw = (Obj.magic 0)
    method openGLESImageDraw = openGLESImageDraw
    method set_openGLESImageDraw value' = openGLESImageDraw <- value'
    
    

    method initVertices () : unit =
        begin
        ignore ((Obj.magic textureVertexFloatBuffer)#put (0.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (1.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (1.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (1.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (0.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (0.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (1.));
        ignore ((Obj.magic textureVertexFloatBuffer)#put (0.));
        ignore ((Obj.magic textureVertexFloatBuffer)#rewind ())
        end [@@warning "-7"]
    

    method set : 'any1. 'any1 -> unit = fun (gl) ->
        let gl = Obj.repr gl in
        begin
        let gl10 : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic gl)))) in ();
        if (super#initTexture ((Obj.magic !gl10))) then begin
            ignore (textureFactory#load ((Obj.magic !gl10), (Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), 0, self, 0, true));
            ignore ((Obj.magic !gl10)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            openGLESImageDraw <- realOpenGLESImageDraw;
            ignore ((OpenGLLogUtil.getInstance ())#logError ((Obj.magic !gl10), self))
        end
        end [@@warning "-7-20"]
    

    method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (gl, (viewHeight : int), (x_src : float), (y_src : float), (width : float), (height : float), (x : int), (y : int), (z : int)) ->
        let gl = Obj.repr gl in
        begin
        ignore (openGLESImageDraw#drawRegion ((Obj.magic gl), viewHeight, x_src, y_src, width, height, x, y, z))
        end [@@warning "-7-20"]
    

    method draw : 'any1. 'any1 * int * int * int -> unit = fun (gl, (x : int), (y : int), (z : int)) ->
        let gl = Obj.repr gl in
        begin
        ignore (openGLESImageDraw#draw ((Obj.magic gl), x, y, z))
        end [@@warning "-7-20"]

    initializer
      begin
        textureVertexFloatBuffer <- (Obj.repr (((ByteBuffer.allocateDirect (((4 * 4) * 2)))#order ((ByteOrder.nativeOrder ())))#asFloatBuffer ()));
        realOpenGLESImageDraw <- ((object (self)
        inherit OpenGLESImageDraw.openGLESImageDraw () as super
        glUtil <- ((GLUtil.getInstance ()) :> GLUtil.gLUtil)
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)
        textureVertexFloatBuffer <- (Obj.repr (Obj.magic textureVertexFloatBuffer))
        regionTextureRectangleFloatArray <- (Array.make (8) 0.0)
        regionTextureVertexFloatBuffer <- (Obj.repr (((ByteBuffer.allocateDirect (((4 * 4) * 2)))#order ((ByteOrder.nativeOrder ())))#asFloatBuffer ()))
        regionRectangleFloatArray <- [| 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0. |]
        regionRectangleVertexFloatBuffer <- (Obj.repr (((ByteBuffer.allocateDirect (((4 * 4) * 3)))#order ((ByteOrder.nativeOrder ())))#asFloatBuffer ()))
        openGLESImageProperties <- (openGLESImageProperties :> OpenGLESImageProperties.openGLESImageProperties)
        

        method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (gl, (viewHeight : int), (x_src : float), (y_src : float), (width : float), (height : float), (x : int), (y : int), (_z : int)) ->
            let gl = Obj.repr gl in
            begin
            let imageWidth : int ref = ref ((self#getWidth ())) in ();
            let imageHeight : int ref = ref ((self#getHeight ())) in ();
            regionRectangleFloatArray.(7) <- (java_to_float (Obj.repr (viewHeight)));
            regionRectangleFloatArray.(1) <- (regionRectangleFloatArray.(7) - height);
            regionRectangleFloatArray.(3) <- width;
            regionRectangleFloatArray.(4) <- regionRectangleFloatArray.(1);
            regionRectangleFloatArray.(9) <- regionRectangleFloatArray.(3);
            regionRectangleFloatArray.(10) <- regionRectangleFloatArray.(7);
            regionTextureRectangleFloatArray.(0) <- (x_src / !imageWidth);
            regionTextureRectangleFloatArray.(1) <- (((y_src + height)) / !imageHeight);
            regionTextureRectangleFloatArray.(2) <- (((x_src + width)) / !imageWidth);
            regionTextureRectangleFloatArray.(3) <- regionTextureRectangleFloatArray.(1);
            regionTextureRectangleFloatArray.(4) <- regionTextureRectangleFloatArray.(0);
            regionTextureRectangleFloatArray.(5) <- (y_src / !imageHeight);
            regionTextureRectangleFloatArray.(6) <- regionTextureRectangleFloatArray.(2);
            regionTextureRectangleFloatArray.(7) <- regionTextureRectangleFloatArray.(5);
            let u_center : float ref = ref ((((regionTextureRectangleFloatArray.(0) + regionTextureRectangleFloatArray.(2))) /. 2.0)) in ();
            let v_center : float ref = ref ((((regionTextureRectangleFloatArray.(5) + regionTextureRectangleFloatArray.(1))) /. 2.0)) in ();
            ignore (glUtil#rotateUVs (regionTextureRectangleFloatArray, (java_to_float (Obj.repr ((-openGLESImageProperties#angle)))), !u_center, !v_center));
            ignore ((Obj.magic gl)#glPushMatrix ());
            let imageProcessor : OpenGLESImageProcessor.openGLESImageProcessor ref = ref ((imageProcessor :> OpenGLESImageProcessor.openGLESImageProcessor)) in ();
            ignore (openGLESImageTranslate#translate ((Obj.magic gl), self, (java_to_float (Obj.repr (x))), (java_to_float (Obj.repr ((-y))))));
            ignore (!imageProcessor#scale ((Obj.magic gl), openGLESImageProperties#scaleX, openGLESImageProperties#scaleY));
            ignore (!imageProcessor#colorMask ((Obj.magic gl), openGLESImageProperties#redf, openGLESImageProperties#greenf, openGLESImageProperties#bluef, openGLESImageProperties#alphaf));
            ignore (openGLESImageTranslate#translate2 ((Obj.magic gl), self));
            ignore (regionRectangleVertexFloatBuffer#put (regionRectangleFloatArray));
            ignore (glUtil#position (regionRectangleVertexFloatBuffer, 0));
            ignore ((Obj.magic gl)#glVertexPointer (3, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, regionRectangleVertexFloatBuffer));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), openGLESImageProperties#textureID));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
            ignore (regionTextureVertexFloatBuffer#put (regionTextureRectangleFloatArray));
            ignore (glUtil#position (regionTextureVertexFloatBuffer, 0));
            ignore ((Obj.magic gl)#glTexCoordPointer (2, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, regionTextureVertexFloatBuffer));
            ignore ((Obj.magic gl)#glDrawArrays ((Obj.magic (java_call_static "GL10.get_gL_TRIANGLE_STRIP" (Obj.repr ()))), 0, 4));
            ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glPopMatrix ())
            end [@@warning "-20"]
        

        method draw : 'any1. 'any1 * int * int * int -> unit = fun (gl, (x : int), (y : int), (_z : int)) ->
            let gl = Obj.repr gl in
            begin
            let width : int ref = ref ((self#getWidth ())) in ();
            let height : int ref = ref ((self#getHeight ())) in ();
            regionRectangleFloatArray.(7) <- (java_to_float (Obj.repr ((displayInfoSingleton#getLastHeight ()))));
            regionRectangleFloatArray.(1) <- (regionRectangleFloatArray.(7) - !height);
            regionRectangleFloatArray.(3) <- (float_of_int (!width));
            regionRectangleFloatArray.(4) <- regionRectangleFloatArray.(1);
            regionRectangleFloatArray.(9) <- regionRectangleFloatArray.(3);
            regionRectangleFloatArray.(10) <- regionRectangleFloatArray.(7);
            regionTextureRectangleFloatArray.(0) <- 0.;
            regionTextureRectangleFloatArray.(1) <- 1.;
            regionTextureRectangleFloatArray.(2) <- 1.;
            regionTextureRectangleFloatArray.(3) <- 1.;
            regionTextureRectangleFloatArray.(4) <- 0.;
            regionTextureRectangleFloatArray.(5) <- 0.;
            regionTextureRectangleFloatArray.(6) <- 1.;
            regionTextureRectangleFloatArray.(7) <- 0.;
            ignore ((Obj.magic gl)#glPushMatrix ());
            ignore (openGLESImageTranslate#translate ((Obj.magic gl), self, (java_to_float (Obj.repr (x))), (java_to_float (Obj.repr ((-y))))));
            let imageProcessor : OpenGLESImageProcessor.openGLESImageProcessor ref = ref ((imageProcessor :> OpenGLESImageProcessor.openGLESImageProcessor)) in ();
            ignore (!imageProcessor#scale ((Obj.magic gl), openGLESImageProperties#scaleX, openGLESImageProperties#scaleY));
            ignore (!imageProcessor#colorMask ((Obj.magic gl), openGLESImageProperties#redf, openGLESImageProperties#greenf, openGLESImageProperties#bluef, openGLESImageProperties#alphaf));
            ignore (openGLESImageTranslate#translate2 ((Obj.magic gl), self));
            ignore (regionRectangleVertexFloatBuffer#put (regionRectangleFloatArray));
            ignore (glUtil#position (regionRectangleVertexFloatBuffer, 0));
            ignore ((Obj.magic gl)#glVertexPointer (3, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, regionRectangleVertexFloatBuffer));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), openGLESImageProperties#textureID));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
            ignore (glUtil#rotateUVs (regionTextureRectangleFloatArray, (java_to_float (Obj.repr ((-openGLESImageProperties#angle)))), 0.5, 0.5));
            ignore (glUtil#position ((Obj.magic textureVertexFloatBuffer), 0));
            ignore ((Obj.magic textureVertexFloatBuffer)#put (regionTextureRectangleFloatArray));
            ignore (glUtil#position ((Obj.magic textureVertexFloatBuffer), 0));
            ignore ((Obj.magic gl)#glTexCoordPointer (2, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (Obj.magic textureVertexFloatBuffer)));
            ignore ((Obj.magic gl)#glDrawArrays ((Obj.magic (java_call_static "GL10.get_gL_TRIANGLE_STRIP" (Obj.repr ()))), 0, 4));
            ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glPopMatrix ())
            end [@@warning "-20"]
    end) :> OpenGLESImageDraw.openGLESImageDraw);
        openGLESImageDraw <- ((OpenGLESImageDraw.getInstance ()) :> OpenGLESImageDraw.openGLESImageDraw);
        ();
        (* super(...) is the inherit clause *) ();
        (self#initVertices ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLESGL10Image" (fun arguments -> Obj.repr (new openGLESGL10Image (Obj.obj arguments)))


