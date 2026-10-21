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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.platform.graphics.PlatformBitmapBaseFactory *)
(* import org.allbinary.platform.opengles.PlatformTextureBaseFactory *)

class openGLESGL11ExtImageFactory () =
  object
    inherit OpenGLImageFactory.openGLImageFactory ()
    

    method getInstance : 'any1 'any2 'any3 'return. 'any1 * 'any2 * 'any3 -> 'return = fun (image, bitmapFactory, textureFactory) ->
        let image = Obj.repr image in
        let bitmapFactory = Obj.repr bitmapFactory in
        let textureFactory = Obj.repr textureFactory in
        begin
        (Obj.magic ((new OpenGLESGL11ExtImage.openGLESGL11ExtImage ((Obj.magic image), (Obj.magic bitmapFactory), (Obj.magic textureFactory)))))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "OpenGLESGL11ExtImageFactory" (fun arguments -> Obj.repr (new openGLESGL11ExtImageFactory (Obj.obj arguments)))


