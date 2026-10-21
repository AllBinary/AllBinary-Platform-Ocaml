(*

  AllBinary Open License Version 1
  Copyright (c) 2023 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.microemu.device.playn.PlaynImmutableImage *)
(* import org.microemu.device.playn.PlaynMutableImage *)
(* import playn.core.CanvasImage *)
(* import playn.core.CanvasSurface *)

class imageJ2MEScaleUtil () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method scaleArray : 'return. _ * int * int -> 'return = fun (images, (width : int), (height : int)) ->
        begin
        let scaledImages : Obj.t ref = ref ((Obj.repr (Array.make ((Array.length images)) (Obj.magic 0)))) in ();
        let index : int ref = ref ((Array.length images)) in ();
        while ((index := !index - 1; !index) >= 0) do
            (Obj.magic !scaledImages).(!index) <- (self#scale (images.(!index), width, height))
        done;
        (Obj.magic ((Obj.magic !scaledImages)))
        end
    

    method scale : 'any1 'return. 'any1 * int * int -> 'return = fun (image, (width : int), (height : int)) ->
        let image = Obj.repr image in
        begin
        let originalPlayNImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if ((Obj.magic image)#isMutable ()) then begin
            let originalHTMLImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            originalPlayNImage := Obj.repr ((Obj.magic ((Obj.magic !originalHTMLImage)#getImage ())))
        end else begin
            let originalHTMLImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
            originalPlayNImage := Obj.repr ((Obj.magic ((Obj.magic !originalHTMLImage)#getImage ())))
        end;
        let scaledImage : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "Image.createImage" (Obj.repr (width, height)))))) in ();
        let htmlImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !scaledImage)))) in ();
        let canvasImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !htmlImage)#getImage ())))) in ();
        let canvasSurface : Obj.t ref = ref ((Obj.repr ((Obj.magic !htmlImage)#getCanvasSurface ((Obj.magic !canvasImage))))) in ();
        ignore ((Obj.magic !canvasSurface)#drawImage ((Obj.magic !originalPlayNImage), 0, 0, ((Obj.magic !scaledImage)#getWidth ()), ((Obj.magic !scaledImage)#getHeight ()), 0, 0, ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ())));
        (Obj.magic ((Obj.magic !scaledImage)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageJ2MEScaleUtil" (fun arguments -> Obj.repr (new imageJ2MEScaleUtil (Obj.obj arguments)))

let instance = (new imageJ2MEScaleUtil ())
let get_instance () = instance
let () = java_register_static "ImageJ2MEScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageJ2MEScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


