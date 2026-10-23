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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.media.image.ImageCopyUtil *)
(* import org.allbinary.media.image.ImageModifierUtil *)
(* import org.allbinary.media.image.ImageRotationUtil *)
(* import org.microemu.device.playn.PlaynMutableImage *)
(* import playn.core.CanvasImage *)
(* import playn.core.CanvasSurface *)

class allBinaryHTMLImageRotationAnimation (originalImage_arg, image, (angleInfo : AngleInfo.angleInfo), (totalAngle : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageBaseRotationAnimation.imageBaseRotationAnimation (image, angleInfo, totalAngle, animationBehavior) as super
    val mutable imageRotationUtil : Obj.t = Obj.repr 0
    method imageRotationUtil : 'r. 'r = Obj.magic imageRotationUtil
    method set_imageRotationUtil : 'v. 'v -> unit = fun value' -> imageRotationUtil <- Obj.repr value'
    val mutable imageModifierUtil : Obj.t = Obj.repr 0
    method imageModifierUtil : 'r. 'r = Obj.magic imageModifierUtil
    method set_imageModifierUtil : 'v. 'v -> unit = fun value' -> imageModifierUtil <- Obj.repr value'
    val mutable originalImage : Obj.t = Obj.repr 0
    method originalImage : 'r. 'r = Obj.magic originalImage
    method set_originalImage : 'v. 'v -> unit = fun value' -> originalImage <- Obj.repr value'
    val mutable twoImages : Obj.t = Obj.repr 0
    method twoImages : 'r. 'r = Obj.magic twoImages
    method set_twoImages : 'v. 'v -> unit = fun value' -> twoImages <- Obj.repr value'
    val mutable canvasSurfaceArray : Obj.t = Obj.repr 0
    method canvasSurfaceArray : 'r. 'r = Obj.magic canvasSurfaceArray
    method set_canvasSurfaceArray : 'v. 'v -> unit = fun value' -> canvasSurfaceArray <- Obj.repr value'
    val mutable imageToShow : Obj.t = Obj.repr 0
    method imageToShow : 'r. 'r = Obj.magic imageToShow
    method set_imageToShow : 'v. 'v -> unit = fun value' -> imageToShow <- Obj.repr value'
    val mutable bufferedImageIndex : int = 0
    method bufferedImageIndex = bufferedImageIndex
    method set_bufferedImageIndex value' = bufferedImageIndex <- value'
    val mutable alphaProcessor : AlphaBaseProcessor.alphaBaseProcessor = (Obj.magic 0)
    method alphaProcessor = alphaProcessor
    method set_alphaProcessor value' = alphaProcessor <- value'
    
    

    method getCanvasSurface : 'any1 'return. 'any1 -> 'return = fun (image) ->
        let image = Obj.repr image in
        begin
        let htmlImage : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic image)))) in ();
        let canvasImage : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !htmlImage)#getImage ())))) in ();
        let canvasSurface : Obj.t ref = ref ((Obj.repr ((Obj.magic !htmlImage)#getCanvasSurface ((Obj.magic !canvasImage))))) in ();
        ignore ((Obj.magic !canvasSurface)#translate ((((Obj.magic originalImage)#getWidth ()) / 2), (((Obj.magic originalImage)#getHeight ()) / 2)));
        (Obj.magic ((Obj.magic !canvasSurface)))
        end [@@warning "-7-20"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getBasicColorP ()) == (Obj.magic 0)) || ((Obj.repr ((self#getBasicColorP ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#setBasicColorP ((Obj.magic basicColor)));
        if !changed then begin
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        let changed : bool ref = ref (false) in ();
        if ((self#alphaP) != alpha) then begin
            changed := true
        end;
        ignore (super#setAlpha (alpha));
        if !changed then begin
            alphaProcessor <- (Obj.magic (java_call_static "AlphaProcessor.getInstance" (Obj.repr ())));
            (self#updateImage ())
        end
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        ignore (super#nextRotation ());
        (self#updateImage ())
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore (super#previousRotation ());
        (self#updateImage ())
        end [@@warning "-7"]
    

    method updateImage () : unit =
        begin
        let canvasSurface : Obj.t ref = ref ((Obj.repr (Obj.magic canvasSurfaceArray).(bufferedImageIndex))) in ();
        ignore ((Obj.magic !canvasSurface)#save ());
        ignore ((Obj.magic imageRotationUtil)#rotateImageCanvasSurfaceClear ((Obj.magic originalImage), (Obj.magic twoImages).(bufferedImageIndex), (Obj.magic !canvasSurface), (((self#angleInfo)#getAngle ()) + 90)));
        ignore (alphaProcessor#setAlpha ((Obj.magic imageModifierUtil), (Obj.magic originalImage), (Obj.magic twoImages).(bufferedImageIndex), (self#alphaP)));
        ignore ((Obj.magic imageRotationUtil)#drawImage ((Obj.magic originalImage), (Obj.magic imageToShow), (Obj.magic !canvasSurface)));
        ignore ((Obj.magic !canvasSurface)#restore ());
        (self#swap ())
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (super#setFrame (index));
        (self#updateImage ())
        end [@@warning "-7"]
    

    method swap () : unit =
        begin
        imageToShow <- Obj.repr ((Obj.magic twoImages).(bufferedImageIndex));
        if (bufferedImageIndex = 0) then begin
            bufferedImageIndex <- 1
        end else begin
            bufferedImageIndex <- 0
        end
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic imageToShow), x, y, (self#anchor)))
        end [@@warning "-7-20"]

    initializer
      begin
        imageRotationUtil <- (Obj.repr (Obj.magic (java_call_static "ImageRotationUtil.getInstance" (Obj.repr ()))));
        imageModifierUtil <- (Obj.repr (Obj.magic (java_call_static "ImageModifierUtil.getInstanceOrCreate" (Obj.repr ()))));
        ();
        twoImages <- (Obj.repr (Array.make (2) (Obj.magic 0)));
        canvasSurfaceArray <- (Obj.repr (Array.make (2) (Obj.magic 0)));
        ();
        bufferedImageIndex <- 0;
        alphaProcessor <- ((AlphaBaseProcessor.getInstance ()) :> AlphaBaseProcessor.alphaBaseProcessor);
        ();
        (* super(...) is the inherit clause *) ();
        originalImage <- Obj.repr (originalImage_arg);
        imageToShow <- Obj.repr (image);
        (Obj.magic twoImages).(0) <- image;
        (Obj.magic twoImages).(1) <- ((Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ())))#createImage (image));
        (Obj.magic canvasSurfaceArray).(0) <- (self#getCanvasSurface ((Obj.magic twoImages).(0)));
        (Obj.magic canvasSurfaceArray).(1) <- (self#getCanvasSurface ((Obj.magic twoImages).(1)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryHTMLImageRotationAnimation" (fun arguments -> Obj.repr (new allBinaryHTMLImageRotationAnimation (Obj.obj arguments)))


