(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.platform.graphics.PlatformBitmapBase *)

class openGLBitmap ((bitmap_arg : Obj.t)) =
  object
    inherit PlatformBitmapBase.platformBitmapBase ()
    val mutable bitmap : Obj.t = (Obj.magic 0)
    method bitmap = bitmap
    method set_bitmap value' = bitmap <- value'
    
    

    method getPixels ((_pixels : int array), (_offset : int), (_stride : int), (_x : int), (_y : int), (_width : int), (_height : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setPixels ((_pixels : int array), (_offset : int), (_stride : int), (_x : int), (_y : int), (_width : int), (_height : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method recycle () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        bitmap <- bitmap_arg
      end
  end
let () = java_register_constructor "OpenGLBitmap" (fun arguments -> Obj.repr (new openGLBitmap (Obj.obj arguments)))


