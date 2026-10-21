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
(* import java.awt.Graphics2D *)
(* import java.awt.geom.AffineTransform *)
(* import java.awt.image.BufferedImage *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.image.ImageCache *)

class imageScaleUtil () =
  object (self)
    val mutable imageUtil : Obj.t = Obj.repr 0
    method imageUtil : 'r. 'r = Obj.magic imageUtil
    method set_imageUtil : 'v. 'v -> unit = fun value' -> imageUtil <- Obj.repr value'
    val mutable imageJ2SEUtil : ImageJ2SEUtil.imageJ2SEUtil = (Obj.magic 0)
    method imageJ2SEUtil = imageJ2SEUtil
    method set_imageJ2SEUtil value' = imageJ2SEUtil <- value'
    val mutable imageCreationUtil : ImageCreationUtil.imageCreationUtil = (Obj.magic 0)
    method imageCreationUtil = imageCreationUtil
    method set_imageCreationUtil value' = imageCreationUtil <- value'
    
    

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
        let width : int ref = ref (((Obj.magic originalImage)#getWidth ())) in ();
        let height : int ref = ref (((Obj.magic originalImage)#getHeight ())) in ();
        let scaleX : float ref = ref ((scaleNominatorX /. scaleDenominatorX)) in ();
        let scaleY : float ref = ref ((scaleNominatorY /. scaleDenominatorY)) in ();
        let image : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        if cached then begin
            image := Obj.repr (((Obj.magic imageCache)#get ((java_get_class (Obj.repr self)), (int_of_float ((((float_of_int (!width)) *. !scaleX)))), (int_of_float ((((float_of_int (!height)) *. !scaleY)))))))
        end else begin
            image := Obj.repr (((Obj.magic imageCache)#get ("createImage", (int_of_float ((((float_of_int (!width)) *. !scaleX)))), (int_of_float ((((float_of_int (!height)) *. !scaleY)))))))
        end;
        (self#scale ((Obj.magic originalImage), (Obj.magic !image), !scaleX, !scaleY, true));
        (Obj.magic ((Obj.magic !image)))
        end [@@warning "-20"]
    

    method scale2 : 'any1. 'any1 * _ * _ * int * float * float * float * float -> unit = fun (originalImage, originalImageArray, _ximageToShowArray, (_unused : int), (scaleX : float), (scaleY : float), (maxScaleX : float), (maxScaleY : float)) ->
        let originalImage = Obj.repr originalImage in
        begin
        if (((maxScaleX *. ((Obj.magic originalImage)#getWidth ())) > (originalImageArray.(0)#getWidth ())) || ((maxScaleY *. ((Obj.magic originalImage)#getHeight ())) > (originalImageArray.(0)#getHeight ()))) then begin
            originalImageArray.(0) <- (imageCreationUtil#createImage (((Obj.magic originalImage)#getWidth ()), ((Obj.magic originalImage)#getHeight ()), maxScaleX, maxScaleY))
        end;
        (self#scale ((Obj.magic originalImage), originalImageArray.(0), scaleX, scaleY, false))
        end [@@warning "-20"]
    

    method scale : 'any1 'any2. 'any1 * 'any2 * float * float * bool -> unit = fun (originalImage, newMaxSizeImage, (scaleX : float), (scaleY : float), (clear : bool)) ->
        let originalImage = Obj.repr originalImage in
        let newMaxSizeImage = Obj.repr newMaxSizeImage in
        begin
        let bufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#getBufferedImage ((Obj.magic originalImage))))) in ();
        let newBufferedImage : Obj.t ref = ref ((Obj.repr ((Obj.magic imageUtil)#getBufferedImage ((Obj.magic newMaxSizeImage))))) in ();
        let at : Obj.t ref = ref ((Obj.repr (AffineTransform.getScaleInstance (scaleX, scaleY)))) in ();
        let g : Obj.t ref = ref ((Obj.repr ((Obj.magic !newBufferedImage)#createGraphics ()))) in ();
        if clear then begin
            ignore ((Obj.magic !g)#setBackground (imageJ2SEUtil#tRANSPARENT_COLOR));
            ignore ((Obj.magic !g)#clearRect (0, 0, ((Obj.magic !newBufferedImage)#getWidth ()), ((Obj.magic !newBufferedImage)#getHeight ())))
        end;
        ignore ((Obj.magic !g)#drawRenderedImage ((Obj.magic !bufferedImage), (Obj.magic !at)));
        ignore ((Obj.magic !g)#dispose ())
        end [@@warning "-20"]

    initializer
      begin
        imageUtil <- (Obj.repr (Obj.magic (java_call_static "ImageUtil.getInstance" (Obj.repr ()))));
        imageJ2SEUtil <- ((ImageJ2SEUtil.getInstance ()) :> ImageJ2SEUtil.imageJ2SEUtil);
        imageCreationUtil <- ((ImageCreationUtil.getInstance ()) :> ImageCreationUtil.imageCreationUtil);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageScaleUtil" (fun arguments -> Obj.repr (new imageScaleUtil (Obj.obj arguments)))

let instance = (new imageScaleUtil ())
let get_instance () = instance
let () = java_register_static "ImageScaleUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ImageScaleUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


