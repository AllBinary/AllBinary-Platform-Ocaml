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
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.DisposalUtil *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.image.ImageCopyUtil *)
(* import org.allbinary.media.image.ImageModifierUtil *)
(* import org.allbinary.media.image.ImageRotationUtil *)

class allBinaryJ2SEImageRotationAnimation (originalImage, image, (angleInfo : AngleInfo.angleInfo), (totalAngle : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageBaseRotationAnimation.imageBaseRotationAnimation (image, angleInfo, totalAngle, animationBehavior) as super
    val mutable imageRotationUtil : Obj.t = Obj.repr 0
    method imageRotationUtil : 'r. 'r = Obj.magic imageRotationUtil
    method set_imageRotationUtil : 'v. 'v -> unit = fun value' -> imageRotationUtil <- Obj.repr value'
    val mutable imageModifierUtil : Obj.t = Obj.repr 0
    method imageModifierUtil : 'r. 'r = Obj.magic imageModifierUtil
    method set_imageModifierUtil : 'v. 'v -> unit = fun value' -> imageModifierUtil <- Obj.repr value'
    val mutable realOriginalImage : Obj.t = Obj.repr 0
    method realOriginalImage : 'r. 'r = Obj.magic realOriginalImage
    method set_realOriginalImage : 'v. 'v -> unit = fun value' -> realOriginalImage <- Obj.repr value'
    val mutable originalImageArray : Obj.t = Obj.repr 0
    method originalImageArray : 'r. 'r = Obj.magic originalImageArray
    method set_originalImageArray : 'v. 'v -> unit = fun value' -> originalImageArray <- Obj.repr value'
    val mutable twoImages : Obj.t = Obj.repr 0
    method twoImages : 'r. 'r = Obj.magic twoImages
    method set_twoImages : 'v. 'v -> unit = fun value' -> twoImages <- Obj.repr value'
    val mutable imageToShow : Obj.t = Obj.repr 0
    method imageToShow : 'r. 'r = Obj.magic imageToShow
    method set_imageToShow : 'v. 'v -> unit = fun value' -> imageToShow <- Obj.repr value'
    val mutable bufferedImageIndex : int = 0
    method bufferedImageIndex = bufferedImageIndex
    method set_bufferedImageIndex value' = bufferedImageIndex <- value'
    val mutable lastScaleX : float = 0.0
    method lastScaleX = lastScaleX
    method set_lastScaleX value' = lastScaleX <- value'
    val mutable lastScaleY : float = 0.0
    method lastScaleY = lastScaleY
    method set_lastScaleY value' = lastScaleY <- value'
    val mutable scaleX : float = 0.0
    method scaleX = scaleX
    method set_scaleX value' = scaleX <- value'
    val mutable scaleY : float = 0.0
    method scaleY = scaleY
    method set_scaleY value' = scaleY <- value'
    val mutable maxScaleX : float = 0.0
    method maxScaleX = maxScaleX
    method set_maxScaleX value' = maxScaleX <- value'
    val mutable maxScaleY : float = 0.0
    method maxScaleY = maxScaleY
    method set_maxScaleY value' = maxScaleY <- value'
    val mutable alphaProcessor : ModifierBaseProcessor.modifierBaseProcessor = (Obj.magic 0)
    method alphaProcessor = alphaProcessor
    method set_alphaProcessor value' = alphaProcessor <- value'
    val mutable setColorProcessor : ModifierBaseProcessor.modifierBaseProcessor = (Obj.magic 0)
    method setColorProcessor = setColorProcessor
    method set_setColorProcessor value' = setColorProcessor <- value'
    val mutable changeColorProcessor : ModifierBaseProcessor.modifierBaseProcessor = (Obj.magic 0)
    method changeColorProcessor = changeColorProcessor
    method set_changeColorProcessor value' = changeColorProcessor <- value'
    val mutable scaleProcessor : ScaleBaseProcessor.scaleBaseProcessor = (Obj.magic 0)
    method scaleProcessor = scaleProcessor
    method set_scaleProcessor value' = scaleProcessor <- value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getBasicColorP ()) == (Obj.magic 0)) || ((Obj.repr ((self#getBasicColorP ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#setBasicColorP ((Obj.magic basicColor)));
        if !changed then begin
            setColorProcessor <- (SetColorProcessor.getInstance ());
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method changeBasicColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        let changed : bool ref = ref (false) in ();
        if (((self#getChangeBasicColor ()) == (Obj.magic 0)) || ((Obj.repr ((self#getChangeBasicColor ())#intValue ())) != (Obj.repr ((Obj.magic basicColor)#intValue ())))) then begin
            changed := true
        end;
        ignore (super#changeBasicColor ((Obj.magic basicColor)));
        if !changed then begin
            changeColorProcessor <- (ChangeColorProcessor.getInstance ());
            (self#updateImage ())
        end
        end [@@warning "-7-20"]
    

    method setAlpha ((alpha : int)) : unit =
        begin
        let changed : bool ref = ref (false) in ();
        if (alphaP != alpha) then begin
            changed := true
        end;
        ignore (super#setAlpha (alpha));
        if !changed then begin
            alphaProcessor <- (Obj.magic (java_call_static "AlphaProcessor.getInstance" (Obj.repr ())));
            (self#updateImage ())
        end
        end [@@warning "-7"]
    

    method setScale ((scaleX_arg : float), (scaleY_arg : float)) : unit =
        begin
        scaleX <- scaleX_arg;
        scaleY <- scaleY_arg;
        if ((scaleX <> lastScaleX) || (scaleY <> lastScaleY)) then begin
            ignore (scaleProcessor#update ((Obj.magic realOriginalImage), (Obj.magic originalImageArray), (Obj.magic twoImages), bufferedImageIndex, scaleX, scaleY, maxScaleX, maxScaleY));
            (self#updateImage ())
        end;
        lastScaleX <- scaleX;
        lastScaleY <- scaleY
        end [@@warning "-7"]
    

    method setMaxScale ((maxScaleX_arg : float), (maxScaleY_arg : float)) : unit =
        begin
        maxScaleX <- maxScaleX_arg;
        maxScaleY <- maxScaleY_arg;
        ignore (scaleProcessor#update ((Obj.magic realOriginalImage), (Obj.magic originalImageArray), (Obj.magic twoImages), bufferedImageIndex, scaleX, scaleY, maxScaleX, maxScaleY));
        (self#updateImage ())
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
        ignore ((Obj.magic imageRotationUtil)#rotateImage ((Obj.magic originalImageArray).(0), (Obj.magic twoImages).(bufferedImageIndex), ((angleInfo#getAngle ()) + 90)));
        ignore (alphaProcessor#updateAlpha ((Obj.magic imageModifierUtil), (NullImage.get_nULL_IMAGE ()), (Obj.magic twoImages).(bufferedImageIndex), 0, alphaP));
        ignore (setColorProcessor#updateColor ((Obj.magic imageModifierUtil), (NullImage.get_nULL_IMAGE ()), (Obj.magic twoImages).(bufferedImageIndex), 0, basicColor));
        ignore (changeColorProcessor#updateColor ((Obj.magic imageModifierUtil), (NullImage.get_nULL_IMAGE ()), (Obj.magic twoImages).(bufferedImageIndex), 0, changeBasicColorP));
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
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic imageToShow), x, y, anchor))
        end [@@warning "-7-20"]
    

    method close () : unit =
        begin
        ignore (super#close ());
        let disposalUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ()))))) in ();
        let size2 : int ref = ref ((Array.length (Obj.magic twoImages))) in ();
        for index = 0 to !size2 - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic twoImages).(index)))
        done;
        let size : int ref = ref ((Array.length (Obj.magic originalImageArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic originalImageArray).(index)))
        done;
        ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic realOriginalImage)));
        ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic imageToShow)))
        end [@@warning "-7"]
    

    method finalize () : unit =
        begin
        ignore (super#finalize ());
        let disposalUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ()))))) in ();
        let size2 : int ref = ref ((Array.length (Obj.magic twoImages))) in ();
        for index = 0 to !size2 - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic twoImages).(index)))
        done;
        let size : int ref = ref ((Array.length (Obj.magic originalImageArray))) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic originalImageArray).(index)))
        done;
        ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic realOriginalImage)));
        ignore ((Obj.magic !disposalUtil)#disposeImage ((Obj.magic imageToShow)))
        end [@@warning "-7"]

    initializer
      begin
        imageRotationUtil <- (Obj.repr (Obj.magic (java_call_static "ImageRotationUtil.getInstance" (Obj.repr ()))));
        imageModifierUtil <- (Obj.repr (Obj.magic (java_call_static "ImageModifierUtil.getInstanceOrCreate" (Obj.repr ()))));
        ();
        originalImageArray <- (Obj.repr (Array.make (1) (Obj.magic 0)));
        twoImages <- (Obj.repr (Array.make (2) (Obj.magic 0)));
        ();
        bufferedImageIndex <- 0;
        lastScaleX <- 1.0;
        lastScaleY <- 1.0;
        scaleX <- 1.0;
        scaleY <- 1.0;
        maxScaleX <- 0.0;
        maxScaleY <- 0.0;
        alphaProcessor <- ((ModifierBaseProcessor.getInstance ()) :> ModifierBaseProcessor.modifierBaseProcessor);
        setColorProcessor <- ((ModifierBaseProcessor.getInstance ()) :> ModifierBaseProcessor.modifierBaseProcessor);
        changeColorProcessor <- ((ModifierBaseProcessor.getInstance ()) :> ModifierBaseProcessor.modifierBaseProcessor);
        scaleProcessor <- ((ScaleProcessor.getInstance ()) :> ScaleBaseProcessor.scaleBaseProcessor);
        ();
        (* super(...) is the inherit clause *) ();
        realOriginalImage <- Obj.repr (originalImage);
        (Obj.magic originalImageArray).(0) <- originalImage;
        imageToShow <- Obj.repr (image);
        (Obj.magic twoImages).(0) <- image;
        (Obj.magic twoImages).(1) <- ((Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ())))#createImageForRotation (image))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryJ2SEImageRotationAnimation" (fun arguments -> Obj.repr (new allBinaryJ2SEImageRotationAnimation (Obj.obj arguments)))


