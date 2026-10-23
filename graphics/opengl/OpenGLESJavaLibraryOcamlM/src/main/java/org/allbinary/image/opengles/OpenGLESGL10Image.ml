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
            ignore ((self#textureFactory)#load ((Obj.magic !gl10), (Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), 0, self, 0, true));
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
        openGLESImageProperties <- ((self#openGLESImageProperties) :> OpenGLESImageProperties.openGLESImageProperties)
        

        method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (gl, (viewHeight : int), (x_src : float), (y_src : float), (width : float), (height : float), (x : int), (y : int), (_z : int)) ->
            let gl = Obj.repr gl in
            begin
            let imageWidth : int ref = ref ((self#getWidth ())) in ();
            let imageHeight : int ref = ref ((self#getHeight ())) in ();
            (self#regionRectangleFloatArray).(7) <- (java_to_float (Obj.repr (viewHeight)));
            (self#regionRectangleFloatArray).(1) <- ((self#regionRectangleFloatArray).(7) - height);
            (self#regionRectangleFloatArray).(3) <- width;
            (self#regionRectangleFloatArray).(4) <- (self#regionRectangleFloatArray).(1);
            (self#regionRectangleFloatArray).(9) <- (self#regionRectangleFloatArray).(3);
            (self#regionRectangleFloatArray).(10) <- (self#regionRectangleFloatArray).(7);
            (self#regionTextureRectangleFloatArray).(0) <- (x_src / !imageWidth);
            (self#regionTextureRectangleFloatArray).(1) <- (((y_src + height)) / !imageHeight);
            (self#regionTextureRectangleFloatArray).(2) <- (((x_src + width)) / !imageWidth);
            (self#regionTextureRectangleFloatArray).(3) <- (self#regionTextureRectangleFloatArray).(1);
            (self#regionTextureRectangleFloatArray).(4) <- (self#regionTextureRectangleFloatArray).(0);
            (self#regionTextureRectangleFloatArray).(5) <- (y_src / !imageHeight);
            (self#regionTextureRectangleFloatArray).(6) <- (self#regionTextureRectangleFloatArray).(2);
            (self#regionTextureRectangleFloatArray).(7) <- (self#regionTextureRectangleFloatArray).(5);
            let u_center : float ref = ref (((((self#regionTextureRectangleFloatArray).(0) + (self#regionTextureRectangleFloatArray).(2))) /. 2.0)) in ();
            let v_center : float ref = ref (((((self#regionTextureRectangleFloatArray).(5) + (self#regionTextureRectangleFloatArray).(1))) /. 2.0)) in ();
            ignore ((self#glUtil)#rotateUVs ((self#regionTextureRectangleFloatArray), (java_to_float (Obj.repr ((-(self#openGLESImageProperties)#angle)))), !u_center, !v_center));
            ignore ((Obj.magic gl)#glPushMatrix ());
            let imageProcessor : OpenGLESImageProcessor.openGLESImageProcessor ref = ref (((self#imageProcessor) :> OpenGLESImageProcessor.openGLESImageProcessor)) in ();
            ignore ((self#openGLESImageTranslate)#translate ((Obj.magic gl), self, (java_to_float (Obj.repr (x))), (java_to_float (Obj.repr ((-y))))));
            ignore (!imageProcessor#scale ((Obj.magic gl), (self#openGLESImageProperties)#scaleX, (self#openGLESImageProperties)#scaleY));
            ignore (!imageProcessor#colorMask ((Obj.magic gl), (self#openGLESImageProperties)#redf, (self#openGLESImageProperties)#greenf, (self#openGLESImageProperties)#bluef, (self#openGLESImageProperties)#alphaf));
            ignore ((self#openGLESImageTranslate)#translate2 ((Obj.magic gl), self));
            ignore ((self#regionRectangleVertexFloatBuffer)#put ((self#regionRectangleFloatArray)));
            ignore ((self#glUtil)#position ((self#regionRectangleVertexFloatBuffer), 0));
            ignore ((Obj.magic gl)#glVertexPointer (3, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (self#regionRectangleVertexFloatBuffer)));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (self#openGLESImageProperties)#textureID));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
            ignore ((self#regionTextureVertexFloatBuffer)#put ((self#regionTextureRectangleFloatArray)));
            ignore ((self#glUtil)#position ((self#regionTextureVertexFloatBuffer), 0));
            ignore ((Obj.magic gl)#glTexCoordPointer (2, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (self#regionTextureVertexFloatBuffer)));
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
            (self#regionRectangleFloatArray).(7) <- (java_to_float (Obj.repr (((self#displayInfoSingleton)#getLastHeight ()))));
            (self#regionRectangleFloatArray).(1) <- ((self#regionRectangleFloatArray).(7) - !height);
            (self#regionRectangleFloatArray).(3) <- (float_of_int (!width));
            (self#regionRectangleFloatArray).(4) <- (self#regionRectangleFloatArray).(1);
            (self#regionRectangleFloatArray).(9) <- (self#regionRectangleFloatArray).(3);
            (self#regionRectangleFloatArray).(10) <- (self#regionRectangleFloatArray).(7);
            (self#regionTextureRectangleFloatArray).(0) <- 0.;
            (self#regionTextureRectangleFloatArray).(1) <- 1.;
            (self#regionTextureRectangleFloatArray).(2) <- 1.;
            (self#regionTextureRectangleFloatArray).(3) <- 1.;
            (self#regionTextureRectangleFloatArray).(4) <- 0.;
            (self#regionTextureRectangleFloatArray).(5) <- 0.;
            (self#regionTextureRectangleFloatArray).(6) <- 1.;
            (self#regionTextureRectangleFloatArray).(7) <- 0.;
            ignore ((Obj.magic gl)#glPushMatrix ());
            ignore ((self#openGLESImageTranslate)#translate ((Obj.magic gl), self, (java_to_float (Obj.repr (x))), (java_to_float (Obj.repr ((-y))))));
            let imageProcessor : OpenGLESImageProcessor.openGLESImageProcessor ref = ref (((self#imageProcessor) :> OpenGLESImageProcessor.openGLESImageProcessor)) in ();
            ignore (!imageProcessor#scale ((Obj.magic gl), (self#openGLESImageProperties)#scaleX, (self#openGLESImageProperties)#scaleY));
            ignore (!imageProcessor#colorMask ((Obj.magic gl), (self#openGLESImageProperties)#redf, (self#openGLESImageProperties)#greenf, (self#openGLESImageProperties)#bluef, (self#openGLESImageProperties)#alphaf));
            ignore ((self#openGLESImageTranslate)#translate2 ((Obj.magic gl), self));
            ignore ((self#regionRectangleVertexFloatBuffer)#put ((self#regionRectangleFloatArray)));
            ignore ((self#glUtil)#position ((self#regionRectangleVertexFloatBuffer), 0));
            ignore ((Obj.magic gl)#glVertexPointer (3, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (self#regionRectangleVertexFloatBuffer)));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
            ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (self#openGLESImageProperties)#textureID));
            ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
            ignore ((self#glUtil)#rotateUVs ((self#regionTextureRectangleFloatArray), (java_to_float (Obj.repr ((-(self#openGLESImageProperties)#angle)))), 0.5, 0.5));
            ignore ((self#glUtil)#position ((Obj.magic textureVertexFloatBuffer), 0));
            ignore ((Obj.magic textureVertexFloatBuffer)#put ((self#regionTextureRectangleFloatArray)));
            ignore ((self#glUtil)#position ((Obj.magic textureVertexFloatBuffer), 0));
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


