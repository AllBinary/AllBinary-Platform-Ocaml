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
(* import org.allbinary.graphics.opengles.OpenGLLogUtil *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.opengles.GLUtil *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)

class openGLESGL11VBOImage (image, (bitmapFactory : PlatformBitmapBaseFactory.platformBitmapBaseFactory), (textureFactory : PlatformTextureBaseFactory.platformTextureBaseFactory)) =
  object (self)
    inherit OpenGLESImage.openGLESImage (image, bitmapFactory, textureFactory) as super
    val mutable glUtil : GLUtil.gLUtil = (Obj.magic 0)
    method glUtil = glUtil
    method set_glUtil value' = glUtil <- value'
    val mutable textureVertexFloatBuffer : Obj.t = Obj.repr 0
    method textureVertexFloatBuffer : 'r. 'r = Obj.magic textureVertexFloatBuffer
    method set_textureVertexFloatBuffer : 'v. 'v -> unit = fun value' -> textureVertexFloatBuffer <- Obj.repr value'
    val mutable regionRectangleFloatArray : float array = (Obj.magic 0)
    method regionRectangleFloatArray = regionRectangleFloatArray
    method set_regionRectangleFloatArray value' = regionRectangleFloatArray <- value'
    val mutable regionRectangleVertexFloatBuffer : Obj.t = Obj.repr 0
    method regionRectangleVertexFloatBuffer : 'r. 'r = Obj.magic regionRectangleVertexFloatBuffer
    method set_regionRectangleVertexFloatBuffer : 'v. 'v -> unit = fun value' -> regionRectangleVertexFloatBuffer <- Obj.repr value'
    val mutable regionTextureRectangleFloatArray : float array = (Obj.magic 0)
    method regionTextureRectangleFloatArray = regionTextureRectangleFloatArray
    method set_regionTextureRectangleFloatArray value' = regionTextureRectangleFloatArray <- value'
    val mutable regionTextureVertexFloatBuffer : Obj.t = Obj.repr 0
    method regionTextureVertexFloatBuffer : 'r. 'r = Obj.magic regionTextureVertexFloatBuffer
    method set_regionTextureVertexFloatBuffer : 'v. 'v -> unit = fun value' -> regionTextureVertexFloatBuffer <- Obj.repr value'
    
    

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
            ignore ((OpenGLLogUtil.getInstance ())#logError ((Obj.magic !gl10), self))
        end
        end [@@warning "-7-20"]
    

    method drawRegion : 'any1. 'any1 * int * float * float * float * float * int * int * int -> unit = fun (gl, (viewHeight : int), (x_src : float), (y_src : float), (width : float), (height : float), (x : int), (y : int), (_z : int)) ->
        let gl = Obj.repr gl in
        begin
        regionRectangleFloatArray.(0) <- (float_of_int (x));
        regionRectangleFloatArray.(7) <- (float_of_int ((viewHeight - y)));
        regionRectangleFloatArray.(1) <- (regionRectangleFloatArray.(7) -. height);
        regionRectangleFloatArray.(3) <- ((float_of_int (x)) +. width);
        regionRectangleFloatArray.(4) <- regionRectangleFloatArray.(1);
        regionRectangleFloatArray.(6) <- (float_of_int (x));
        regionRectangleFloatArray.(9) <- regionRectangleFloatArray.(3);
        regionRectangleFloatArray.(10) <- regionRectangleFloatArray.(7);
        regionTextureRectangleFloatArray.(0) <- (x_src /. (self#getWidth ()));
        regionTextureRectangleFloatArray.(1) <- (((y_src +. height)) /. (self#getHeight ()));
        regionTextureRectangleFloatArray.(2) <- (((x_src +. width)) /. (self#getWidth ()));
        regionTextureRectangleFloatArray.(3) <- regionTextureRectangleFloatArray.(1);
        regionTextureRectangleFloatArray.(4) <- regionTextureRectangleFloatArray.(0);
        regionTextureRectangleFloatArray.(5) <- (y_src /. (self#getHeight ()));
        regionTextureRectangleFloatArray.(6) <- regionTextureRectangleFloatArray.(2);
        regionTextureRectangleFloatArray.(7) <- regionTextureRectangleFloatArray.(5);
        ignore (glUtil#position ((Obj.magic regionRectangleVertexFloatBuffer), 0));
        ignore ((Obj.magic gl)#glVertexPointer (3, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (Obj.magic regionRectangleVertexFloatBuffer)));
        ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (self#openGLESImageProperties)#textureID));
        ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
        ignore (glUtil#position ((Obj.magic regionTextureVertexFloatBuffer), 0));
        ignore ((Obj.magic gl)#glTexCoordPointer (2, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (Obj.magic regionTextureVertexFloatBuffer)));
        ignore ((Obj.magic gl)#glDrawArrays ((Obj.magic (java_call_static "GL10.get_gL_TRIANGLE_STRIP" (Obj.repr ()))), 0, 4));
        ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))))
        end [@@warning "-7-20"]
    

    method draw : 'any1. 'any1 * int * int * int -> unit = fun (gl, (x : int), (y : int), (_z : int)) ->
        let gl = Obj.repr gl in
        begin
        regionRectangleFloatArray.(0) <- (float_of_int (x));
        regionRectangleFloatArray.(7) <- (java_to_float (Obj.repr (((((DisplayInfoSingleton.getInstance ())#getLastHeight ()) - y)))));
        regionRectangleFloatArray.(1) <- (regionRectangleFloatArray.(7) -. (self#getHeight ()));
        regionRectangleFloatArray.(3) <- (java_to_float (Obj.repr (((x + (self#getWidth ()))))));
        regionRectangleFloatArray.(4) <- regionRectangleFloatArray.(1);
        regionRectangleFloatArray.(6) <- (float_of_int (x));
        regionRectangleFloatArray.(9) <- regionRectangleFloatArray.(3);
        regionRectangleFloatArray.(10) <- regionRectangleFloatArray.(7);
        ignore (glUtil#position ((Obj.magic regionRectangleVertexFloatBuffer), 0));
        ignore ((Obj.magic gl)#glVertexPointer (3, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (Obj.magic regionRectangleVertexFloatBuffer)));
        ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glEnable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glBindTexture ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ()))), (self#openGLESImageProperties)#textureID));
        ignore ((Obj.magic gl)#glEnableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
        ignore (glUtil#position ((Obj.magic textureVertexFloatBuffer), 0));
        ignore ((Obj.magic gl)#glTexCoordPointer (2, (Obj.magic (java_call_static "GL10.get_gL_FLOAT" (Obj.repr ()))), 0, (Obj.magic textureVertexFloatBuffer)));
        ignore ((Obj.magic gl)#glDrawArrays ((Obj.magic (java_call_static "GL10.get_gL_TRIANGLE_STRIP" (Obj.repr ()))), 0, 4));
        ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_VERTEX_ARRAY" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glDisableClientState ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_COORD_ARRAY" (Obj.repr ())))));
        ignore ((Obj.magic gl)#glDisable ((Obj.magic (java_call_static "GL10.get_gL_TEXTURE_2D" (Obj.repr ())))))
        end [@@warning "-7-20"]

    initializer
      begin
        glUtil <- ((GLUtil.getInstance ()) :> GLUtil.gLUtil);
        textureVertexFloatBuffer <- (Obj.repr (((ByteBuffer.allocateDirect (((4 * 4) * 2)))#order ((ByteOrder.nativeOrder ())))#asFloatBuffer ()));
        regionRectangleFloatArray <- [| 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0.; 0. |];
        regionRectangleVertexFloatBuffer <- (Obj.repr (((ByteBuffer.allocateDirect (((4 * 4) * 3)))#order ((ByteOrder.nativeOrder ())))#asFloatBuffer ()));
        regionTextureRectangleFloatArray <- (Array.make (8) 0.0);
        regionTextureVertexFloatBuffer <- (Obj.repr (((ByteBuffer.allocateDirect (((4 * 4) * 2)))#order ((ByteOrder.nativeOrder ())))#asFloatBuffer ()));
        ();
        (* super(...) is the inherit clause *) ();
        (self#initVertices ());
        ignore ((Obj.magic regionRectangleVertexFloatBuffer)#put ((FloatBuffer.wrap (regionRectangleFloatArray))));
        ignore ((Obj.magic regionTextureVertexFloatBuffer)#put ((FloatBuffer.wrap (regionTextureRectangleFloatArray))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLESGL11VBOImage" (fun arguments -> Obj.repr (new openGLESGL11VBOImage (Obj.obj arguments)))


