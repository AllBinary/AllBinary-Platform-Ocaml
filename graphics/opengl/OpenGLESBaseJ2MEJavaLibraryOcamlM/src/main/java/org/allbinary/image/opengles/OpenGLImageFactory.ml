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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)

class openGLImageFactory () =
  object
    

    method getInstance : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 -> 'return = fun (_image, _bitmapFactory, _textureFactory) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLImageFactory" (fun arguments -> Obj.repr (new openGLImageFactory (Obj.obj arguments)))

let nULL_OPENGL_IMAGE_FACTORY = (new openGLImageFactory ())
let get_nULL_OPENGL_IMAGE_FACTORY () = nULL_OPENGL_IMAGE_FACTORY
let () = java_register_static "OpenGLImageFactory.get_nULL_OPENGL_IMAGE_FACTORY" (fun _ -> Obj.repr (get_nULL_OPENGL_IMAGE_FACTORY ()))


