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
(* package org.allbinary.animation.image.sprite *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)
(* import javax.microedition.media.Player *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.caption.CaptionIndexedAnimation *)
(* import org.allbinary.animation.image.ImageAnimation *)
(* import org.allbinary.graphics.color.BasicColorUtil *)
(* import org.allbinary.image.AnimationFactoryImageScaleUtil *)
(* import org.allbinary.image.sprite.AnimationFactorySpriteScaleUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.media.ScaleProperties *)
(* import org.allbinary.media.audio.Sound *)

class imageCaptionIndexedAnimationFactory (captionImage_arg, spriteMovieImage_arg, soundInterface_arg, (frameWidth_arg : int), (frameHeight_arg : int), (captionDx_arg : int), (captionDy_arg : int), (dx_arg : int), (dy_arg : int), (time_arg : int), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable animationFactoryImageScaleUtil : AnimationFactoryImageScaleUtil.animationFactoryImageScaleUtil = (Obj.magic 0)
    method animationFactoryImageScaleUtil = animationFactoryImageScaleUtil
    method set_animationFactoryImageScaleUtil value' = animationFactoryImageScaleUtil <- value'
    val mutable animationFactorySpriteScaleUtil : AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil = (Obj.magic 0)
    method animationFactorySpriteScaleUtil = animationFactorySpriteScaleUtil
    method set_animationFactorySpriteScaleUtil value' = animationFactorySpriteScaleUtil <- value'
    val mutable captionImage : Obj.t = Obj.repr 0
    method captionImage : 'r. 'r = Obj.magic captionImage
    method set_captionImage : 'v. 'v -> unit = fun value' -> captionImage <- Obj.repr value'
    val mutable spriteMovieImage : Obj.t = Obj.repr 0
    method spriteMovieImage : 'r. 'r = Obj.magic spriteMovieImage
    method set_spriteMovieImage : 'v. 'v -> unit = fun value' -> spriteMovieImage <- Obj.repr value'
    val mutable frameWidth : int = 0
    method frameWidth = frameWidth
    method set_frameWidth value' = frameWidth <- value'
    val mutable frameHeight : int = 0
    method frameHeight = frameHeight
    method set_frameHeight value' = frameHeight <- value'
    val mutable captionDx : int = 0
    method captionDx = captionDx
    method set_captionDx value' = captionDx <- value'
    val mutable captionDy : int = 0
    method captionDy = captionDy
    method set_captionDy value' = captionDy <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable time : int = 0
    method time = time
    method set_time value' = time <- value'
    val mutable soundInterface : Obj.t = Obj.repr 0
    method soundInterface : 'r. 'r = Obj.magic soundInterface
    method set_soundInterface : 'v. 'v -> unit = fun value' -> soundInterface <- Obj.repr value'
    val mutable scaleProperties : ScaleProperties.scaleProperties = (Obj.magic 0)
    method scaleProperties = scaleProperties
    method set_scaleProperties value' = scaleProperties <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        let scaledImage : Obj.t ref = ref ((Obj.repr (animationFactoryImageScaleUtil#createImage ((Obj.magic captionImage), ((Obj.magic captionImage)#getWidth ()), ((Obj.magic captionImage)#getHeight ()), scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        let animationInterface : Obj.t ref = ref ((Obj.repr (new ImageAnimation.imageAnimation ((Obj.magic !scaledImage), (animationBehaviorFactory#getOrCreateInstance ()))))) in ();
        let sprite : Obj.t ref = ref ((Obj.repr (animationFactorySpriteScaleUtil#createImage ((Obj.magic spriteMovieImage), frameWidth, frameHeight, scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        let movieIndexedAnimationInterface : IndexedAnimation.indexedAnimation ref = ref (((new SpriteIndexedAnimation.spriteIndexedAnimation ((Obj.magic !sprite), (Obj.magic spriteMovieImage), (BasicColorUtil.getInstance ())#zERO_ARRAY, (animationBehaviorFactory#getOrCreateInstance ()))) :> IndexedAnimation.indexedAnimation)) in ();
        let player : Obj.t ref = ref ((Obj.repr ((Obj.magic soundInterface)#getPlayerP ()))) in ();
        if ((Obj.magic !player) == (Obj.magic 0)) then begin
            raise (Failure ("Sound Was not Initialized"))
        end;
        (Obj.magic ((new CaptionIndexedAnimation.captionIndexedAnimation ((Obj.magic !animationInterface), !movieIndexedAnimationInterface, (Obj.magic !player), captionDx, captionDy, dx, dy, time, (animationBehaviorFactory#getOrCreateInstance ())))))
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (scaleProperties_arg) ->
        let scaleProperties_arg = Obj.repr scaleProperties_arg in
        begin
        scaleProperties <- (Obj.magic scaleProperties_arg)
        end [@@warning "-20"]

    initializer
      begin
        animationFactoryImageScaleUtil <- ((AnimationFactoryImageScaleUtil.getInstance ()) :> AnimationFactoryImageScaleUtil.animationFactoryImageScaleUtil);
        animationFactorySpriteScaleUtil <- ((AnimationFactorySpriteScaleUtil.getInstance ()) :> AnimationFactorySpriteScaleUtil.animationFactorySpriteScaleUtil);
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        scaleProperties <- ((ScaleProperties.get_instance ()) :> ScaleProperties.scaleProperties);
        ();
        ();
        if ((Obj.repr animationBehaviorFactory_arg) == (Obj.repr (AnimationBehaviorFactory.getInstance ()))) then begin
            ignore (ForcedLogUtil.log ("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self))
        end;
        captionImage <- Obj.repr (captionImage_arg);
        spriteMovieImage <- Obj.repr (spriteMovieImage_arg);
        frameWidth <- frameWidth_arg;
        frameHeight <- frameHeight_arg;
        captionDx <- captionDx_arg;
        captionDy <- captionDy_arg;
        dx <- dx_arg;
        dy <- dy_arg;
        time <- time_arg;
        soundInterface <- Obj.repr (soundInterface_arg);
        animationBehaviorFactory <- animationBehaviorFactory_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageCaptionIndexedAnimationFactory" (fun arguments -> Obj.repr (new imageCaptionIndexedAnimationFactory (Obj.obj arguments)))


