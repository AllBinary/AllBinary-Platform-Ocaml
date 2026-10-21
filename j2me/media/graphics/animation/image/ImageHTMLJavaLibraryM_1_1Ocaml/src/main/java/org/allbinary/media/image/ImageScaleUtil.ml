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
(* import org.allbinary.image.ImageCache *)
(* import org.microemu.device.playn.PlaynImmutableImage *)
(* import org.microemu.device.playn.PlaynMutableImage *)
(* import playn.core.CanvasImage *)
(* import playn.core.CanvasSurface *)

class imageScaleUtil () =
  object (self)
    
    

    method createImage2 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool -> 'return = fun (imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (cached : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((self#createImage3 ((Obj.magic imageCache), (Obj.magic originalImage), scaleNominatorX, scaleDenominatorX, scaleNominatorY, scaleDenominatorY, cached, true))))
        end [@@warning "-20"]
    

    method createImage3 : 'any1 'any2 'return. 'any1 * 'any2 * float * float * float * float * bool * bool -> 'return = fun (imageCache, originalImage, (scaleNominatorX : float), (scaleDenominatorX : float), (scaleNominatorY : float), (scaleDenominatorY : float), (cached : bool), (_mutable_ : bool)) ->
        let imageCache = Obj.repr imageCache in
        let originalImage = Obj.repr originalImage in
        begin
        let scaleX : float ref = ref ((scaleNominatorX /. scaleDenominatorX)) in ();
        let scaleY : float ref = ref ((scaleNominatorY /. scaleDenominatorY)) in ();
        (Obj.magic ((self#createImage ((Obj.magic imageCache), (Obj.magic originalImage), !scaleX, !scaleY, cached))))
        end [@@warning "-20"]
    

    method createImage : 'any1 'any2 'return. 'any1 * 'any2 * float * float * bool -> 'return = fun (_imageCache, originalImage, (scaleX : float), (scaleY : float), (_cached : bool)) ->
        let originalImage = Obj.repr originalImage in
        begin
        (Obj.magic ((self#createImageInternal ((Obj.magic originalImage), scaleX, scaleY))))
        end [@@warning "-20"]
    

    method createImageInternal : 'any1 'return. 'any1 * float * float -> 'return = fun (originalImage, (scaleX : float), (scaleY : float)) ->
        let originalImage = Obj.repr originalImage in
        try
        begin
        let image : Obj.t ref = ref ((Obj.repr ((ImageCreationUtil.getInstance ())#createImageWH ((java_to_int (Obj.repr (((((Obj.magic originalImage)#getWidth ()) *. scaleX))))), (java_to_int (Obj.repr (((((Obj.magic originalImage)#getHeight ()) *. scaleY))))))))) in ();
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
            ignore ((Obj.magic !canvasSurface)#drawImage ((Obj.magic !originalPlayNImage), 0, 0, ((Obj.magic !image)#getWidth ()), ((Obj.magic !image)#getHeight ()), 0, 0, ((Obj.magic originalImage)#getWidth ()), ((Obj.magic originalImage)#getHeight ())));
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
let () = java_register_constructor "ImageScaleUtil" (fun arguments -> Obj.repr (new imageScaleUtil (Obj.obj arguments)))

let instance = (new imageScaleUtil ())
let get_instance () = instance
let () = java_register_static "ImageScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


