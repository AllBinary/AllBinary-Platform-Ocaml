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

class openGLFeatureFactory () =
  object
    val mutable oPENGL_OPTIONS : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_OPTIONS = oPENGL_OPTIONS
    method set_oPENGL_OPTIONS value' = oPENGL_OPTIONS <- value'
    val mutable oPENGL : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL = oPENGL
    method set_oPENGL value' = oPENGL <- value'
    val mutable oPENGL_SURFACE_VIEW : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_SURFACE_VIEW = oPENGL_SURFACE_VIEW
    method set_oPENGL_SURFACE_VIEW value' = oPENGL_SURFACE_VIEW <- value'
    val mutable oPENGL_2D : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_2D = oPENGL_2D
    method set_oPENGL_2D value' = oPENGL_2D <- value'
    val mutable oPENGL_3D : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_3D = oPENGL_3D
    method set_oPENGL_3D value' = oPENGL_3D <- value'
    val mutable oPENGL_2D_AND_3D : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_2D_AND_3D = oPENGL_2D_AND_3D
    method set_oPENGL_2D_AND_3D value' = oPENGL_2D_AND_3D <- value'
    val mutable oPENGL_AUTO_SELECT : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_AUTO_SELECT = oPENGL_AUTO_SELECT
    method set_oPENGL_AUTO_SELECT value' = oPENGL_AUTO_SELECT <- value'
    val mutable oPENGL_MINIMUM : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_MINIMUM = oPENGL_MINIMUM
    method set_oPENGL_MINIMUM value' = oPENGL_MINIMUM <- value'
    val mutable oPENGL_AS_GAME_THREAD : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_AS_GAME_THREAD = oPENGL_AS_GAME_THREAD
    method set_oPENGL_AS_GAME_THREAD value' = oPENGL_AS_GAME_THREAD <- value'
    val mutable oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS = oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS
    method set_oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS value' = oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS <- value'
    val mutable iMAGE_COLOR_DEPTH_4444 : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method iMAGE_COLOR_DEPTH_4444 = iMAGE_COLOR_DEPTH_4444
    method set_iMAGE_COLOR_DEPTH_4444 value' = iMAGE_COLOR_DEPTH_4444 <- value'
    val mutable iMAGE_COLOR_DEPTH_8888 : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method iMAGE_COLOR_DEPTH_8888 = iMAGE_COLOR_DEPTH_8888
    method set_iMAGE_COLOR_DEPTH_8888 value' = iMAGE_COLOR_DEPTH_8888 <- value'
    val mutable iMAGE_COLOR_DEPTH_565 : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method iMAGE_COLOR_DEPTH_565 = iMAGE_COLOR_DEPTH_565
    method set_iMAGE_COLOR_DEPTH_565 value' = iMAGE_COLOR_DEPTH_565 <- value'
    val mutable oPENGL_COLOR_DEPTH_4444 : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_COLOR_DEPTH_4444 = oPENGL_COLOR_DEPTH_4444
    method set_oPENGL_COLOR_DEPTH_4444 value' = oPENGL_COLOR_DEPTH_4444 <- value'
    val mutable oPENGL_COLOR_DEPTH_8888 : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_COLOR_DEPTH_8888 = oPENGL_COLOR_DEPTH_8888
    method set_oPENGL_COLOR_DEPTH_8888 value' = oPENGL_COLOR_DEPTH_8888 <- value'
    val mutable oPENGL_COLOR_DEPTH_565 : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_COLOR_DEPTH_565 = oPENGL_COLOR_DEPTH_565
    method set_oPENGL_COLOR_DEPTH_565 value' = oPENGL_COLOR_DEPTH_565 <- value'
    val mutable oPENGL_DRAW_TEXTURE : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_DRAW_TEXTURE = oPENGL_DRAW_TEXTURE
    method set_oPENGL_DRAW_TEXTURE value' = oPENGL_DRAW_TEXTURE <- value'
    val mutable oPENGL_VERTEX_BUFFER_OBJECT : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_VERTEX_BUFFER_OBJECT = oPENGL_VERTEX_BUFFER_OBJECT
    method set_oPENGL_VERTEX_BUFFER_OBJECT value' = oPENGL_VERTEX_BUFFER_OBJECT <- value'
    val mutable oPENGL_SIMPLE_OBJECT3D_PROCESSOR : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_SIMPLE_OBJECT3D_PROCESSOR = oPENGL_SIMPLE_OBJECT3D_PROCESSOR
    method set_oPENGL_SIMPLE_OBJECT3D_PROCESSOR value' = oPENGL_SIMPLE_OBJECT3D_PROCESSOR <- value'
    val mutable oPENGL_COMPLEX_OBJECT3D_PROCESSOR : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_COMPLEX_OBJECT3D_PROCESSOR = oPENGL_COMPLEX_OBJECT3D_PROCESSOR
    method set_oPENGL_COMPLEX_OBJECT3D_PROCESSOR value' = oPENGL_COMPLEX_OBJECT3D_PROCESSOR <- value'
    val mutable oPENGL_SIMPLE_TEXTURE_PROCESSOR : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_SIMPLE_TEXTURE_PROCESSOR = oPENGL_SIMPLE_TEXTURE_PROCESSOR
    method set_oPENGL_SIMPLE_TEXTURE_PROCESSOR value' = oPENGL_SIMPLE_TEXTURE_PROCESSOR <- value'
    val mutable oPENGL_COMPLEX_TEXTURE_PROCESSOR : OpenGLFeature.openGLFeature = (Obj.magic 0)
    method oPENGL_COMPLEX_TEXTURE_PROCESSOR = oPENGL_COMPLEX_TEXTURE_PROCESSOR
    method set_oPENGL_COMPLEX_TEXTURE_PROCESSOR value' = oPENGL_COMPLEX_TEXTURE_PROCESSOR <- value'
    

    initializer
      begin
        oPENGL_OPTIONS <- ((new OpenGLFeature.openGLFeature ("OpenGL Options")) :> OpenGLFeature.openGLFeature);
        oPENGL <- ((new OpenGLFeature.openGLFeature ("OpenGL")) :> OpenGLFeature.openGLFeature);
        oPENGL_SURFACE_VIEW <- ((new OpenGLFeature.openGLFeature ("GLSurfaceView")) :> OpenGLFeature.openGLFeature);
        oPENGL_2D <- ((new OpenGLFeature.openGLFeature ("OpenGL 2D")) :> OpenGLFeature.openGLFeature);
        oPENGL_3D <- ((new OpenGLFeature.openGLFeature ("OpenGL 3D")) :> OpenGLFeature.openGLFeature);
        oPENGL_2D_AND_3D <- ((new OpenGLFeature.openGLFeature ("OpenGL 2D/3D")) :> OpenGLFeature.openGLFeature);
        oPENGL_AUTO_SELECT <- ((new OpenGLFeature.openGLFeature ("Auto Select")) :> OpenGLFeature.openGLFeature);
        oPENGL_MINIMUM <- ((new OpenGLFeature.openGLFeature ("Minimum")) :> OpenGLFeature.openGLFeature);
        oPENGL_AS_GAME_THREAD <- ((new OpenGLFeature.openGLFeature ("As game thread")) :> OpenGLFeature.openGLFeature);
        oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS <- ((new OpenGLFeature.openGLFeature ("As different threads")) :> OpenGLFeature.openGLFeature);
        iMAGE_COLOR_DEPTH_4444 <- ((new OpenGLFeature.openGLFeature ("4444")) :> OpenGLFeature.openGLFeature);
        iMAGE_COLOR_DEPTH_8888 <- ((new OpenGLFeature.openGLFeature ("8888")) :> OpenGLFeature.openGLFeature);
        iMAGE_COLOR_DEPTH_565 <- ((new OpenGLFeature.openGLFeature ("565")) :> OpenGLFeature.openGLFeature);
        oPENGL_COLOR_DEPTH_4444 <- ((new OpenGLFeature.openGLFeature ("4444")) :> OpenGLFeature.openGLFeature);
        oPENGL_COLOR_DEPTH_8888 <- ((new OpenGLFeature.openGLFeature ("8888")) :> OpenGLFeature.openGLFeature);
        oPENGL_COLOR_DEPTH_565 <- ((new OpenGLFeature.openGLFeature ("565")) :> OpenGLFeature.openGLFeature);
        oPENGL_DRAW_TEXTURE <- ((new OpenGLFeature.openGLFeature ("GL_OES_draw_texture")) :> OpenGLFeature.openGLFeature);
        oPENGL_VERTEX_BUFFER_OBJECT <- ((new OpenGLFeature.openGLFeature ("vertex_buffer_object")) :> OpenGLFeature.openGLFeature);
        oPENGL_SIMPLE_OBJECT3D_PROCESSOR <- ((new OpenGLFeature.openGLFeature ("Simple Object3d Processor")) :> OpenGLFeature.openGLFeature);
        oPENGL_COMPLEX_OBJECT3D_PROCESSOR <- ((new OpenGLFeature.openGLFeature ("Complex Object3d Processor")) :> OpenGLFeature.openGLFeature);
        oPENGL_SIMPLE_TEXTURE_PROCESSOR <- ((new OpenGLFeature.openGLFeature ("Simple Texture Processor")) :> OpenGLFeature.openGLFeature);
        oPENGL_COMPLEX_TEXTURE_PROCESSOR <- ((new OpenGLFeature.openGLFeature ("Complex Texture Processor")) :> OpenGLFeature.openGLFeature);
        ();
        ()
      end
  end
let () = java_register_constructor "OpenGLFeatureFactory" (fun arguments -> Obj.repr (new openGLFeatureFactory (Obj.obj arguments)))

let instance = (new openGLFeatureFactory ())
let get_instance () = instance
let () = java_register_static "OpenGLFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OpenGLFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


