(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.DisposalUtil *)
(* import org.allbinary.platform.graphics.PlatformBitmapBase *)
(* import org.microemu.device.swt.SwtImmutableImage *)
(* import org.microemu.device.swt.SwtMutableImage *)

class openGLBitmap ((bitmap : Obj.t)) =
  object
    inherit PlatformBitmapBase.platformBitmapBase ()
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic image)))
        end [@@warning "-7"]
    

    method getDepth () : int =
        try
        begin
        if ((Obj.magic image)#isMutable ()) then begin
            let mutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            raise (Java_return (Obj.repr (((Obj.magic !mutableImage)#getDepth ()))))
        end else begin
            let immutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            raise (Java_return (Obj.repr (((Obj.magic !immutableImage)#getDepth ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getPixels ((pixels : int array), (offset : int), (stride : int), (x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        if ((Obj.magic image)#isMutable ()) then begin
            let mutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            ignore ((Obj.magic !mutableImage)#getRGB (pixels, offset, stride, x, y, width, height))
        end else begin
            let immutableImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            ignore ((Obj.magic !immutableImage)#getRGB (pixels, offset, stride, x, y, width, height))
        end
        end [@@warning "-7"]
    

    method setPixels ((pixels : int array), (offset : int), (_stride : int), (x : int), (y : int), (width : int), (height : int)) : unit =
        begin
        ignore ((Obj.magic image)#setRGB2 (pixels, offset, height, x, y, width, height))
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        ((Obj.magic image)#getWidth ())
        end [@@warning "-7"]
    

    method getHeight () : int =
        begin
        ((Obj.magic image)#getHeight ())
        end [@@warning "-7"]
    

    method recycle () : unit =
        begin
        ignore ((Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ())))#disposeImage ((Obj.magic image)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        image <- Obj.repr ((Obj.magic bitmap))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OpenGLBitmap" (fun arguments -> Obj.repr (new openGLBitmap (Obj.obj arguments)))


