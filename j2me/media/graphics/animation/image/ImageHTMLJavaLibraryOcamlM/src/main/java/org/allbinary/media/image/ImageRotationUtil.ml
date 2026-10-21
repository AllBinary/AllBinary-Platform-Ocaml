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
(* package org.allbinary.media.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.microemu.device.playn.PlaynImmutableImage *)
(* import org.microemu.device.playn.PlaynMutableImage *)
(* import playn.core.CanvasImage *)
(* import playn.core.CanvasSurface *)

class imageRotationUtil () =
  object
    
    

    method createRotatedImage : 'any1 'return. 'any1 * int -> 'return = fun (originalImage, (rotationInDegrees : int)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr ((ImageCreationUtil.getInstance ())#getInstance (((Obj.magic originalImage)#getWidth ()), ((Obj.magic originalImage)#getHeight ()))))) in ();
        if ((Obj.magic !image)#isMutable ()) then begin
            let originalPlayNImage : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            if ((Obj.magic originalImage)#isMutable ()) then begin
                let originalHTMLImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
                originalPlayNImage := Obj.repr ((Obj.magic ((Obj.magic !originalHTMLImage)#getImage ())))
            end else begin
                let originalHTMLImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic originalImage)))) in ();
                originalPlayNImage := Obj.repr ((Obj.magic ((Obj.magic !originalHTMLImage)#getImage ())))
            end;
            let htmlImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !image)))) in ();
            let canvasImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !htmlImage)#getImage ())))) in ();
            let canvasSurface : Obj.t ref = ref ((Obj.repr ((Obj.magic !htmlImage)#getCanvasSurface ((Obj.magic !canvasImage))))) in ();
            ignore ((Obj.magic !canvasSurface)#translate ((((Obj.magic !originalPlayNImage)#width ()) / 2), (((Obj.magic !originalPlayNImage)#height ()) / 2)));
            ignore ((Obj.magic !canvasSurface)#rotate ((java_to_float (Obj.repr (((rotationInDegrees) *. Float.pi /. 180.0))))));
            ignore ((Obj.magic !canvasSurface)#drawImage ((Obj.magic !originalPlayNImage), ((-((Obj.magic !originalPlayNImage)#width ())) / 2), ((-((Obj.magic !originalPlayNImage)#height ())) / 2)));
            raise (Java_return (Obj.repr ((Obj.magic !image))))
        end else begin
            raise (Failure ("Not Mutable"))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ImageRotationUtil" (fun arguments -> Obj.repr (new imageRotationUtil (Obj.obj arguments)))

let instance = (new imageRotationUtil ())
let get_instance () = instance
let () = java_register_static "ImageRotationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageRotationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


