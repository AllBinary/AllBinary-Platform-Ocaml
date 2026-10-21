(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.graphics.Bitmap *)
(* import org.allbinary.platform.graphics.PlatformBitmapBase *)

class openGLBitmap ((bitmap_arg : Obj.t)) =
  object
    inherit PlatformBitmapBase.platformBitmapBase ()
    val mutable bitmap : Obj.t = Obj.repr 0
    method bitmap : 'r. 'r = Obj.magic bitmap
    method set_bitmap : 'v. 'v -> unit = fun value' -> bitmap <- Obj.repr value'
    
    

    method getPixels ((pixels : int array), (offset : int), (stride : int), (x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        ignore ((Obj.magic bitmap)#getPixels (pixels, offset, stride, x, y, width, height))
        end [@@warning "-7"]
    

    method setPixels ((pixels : int array), (offset : int), (stride : int), (x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        ignore ((Obj.magic bitmap)#setPixels (pixels, offset, stride, x, y, width, height))
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        ((Obj.magic bitmap)#getWidth ())
        end [@@warning "-7"]
    

    method getHeight () : int =
        begin
        ((Obj.magic bitmap)#getHeight ())
        end [@@warning "-7"]
    

    method recycle () : unit =
        begin
        ignore ((Obj.magic bitmap)#recycle ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        bitmap <- Obj.repr ((Obj.magic bitmap_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLBitmap" (fun arguments -> Obj.repr (new openGLBitmap (Obj.obj arguments)))


