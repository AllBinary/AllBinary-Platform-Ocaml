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
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.media.image.ImageCopyUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.ScaleProperties *)

class allBinaryFlickerAndroidImageRotationAnimationFactory (image_arg, (_width : int), (_height : int), (angleIncrement_arg : int), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        let image_arg : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ())))#createImage ((self#getImage ()))))) in ();
        (Obj.magic ((new AllBinaryFlickerAndroidImageRotationAnimation.allBinaryFlickerAndroidImageRotationAnimation ((self#getImage ()), (Obj.magic !image_arg), (AngleInfo.getInstance (angleIncrement)), (AngleFactory.getInstance ())#tOTAL_ANGLE, (animationBehaviorFactory#getOrCreateInstance ())))))
        end
    

    method getAngleIncrement () : int =
        begin
        angleIncrement
        end
    

    method setImage : 'any1. 'any1 -> unit = fun (image_arg) ->
        let image_arg = Obj.repr image_arg in
        begin
        image <- Obj.repr ((Obj.magic image_arg))
        end [@@warning "-20"]
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic image)))
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        image <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        ();
        ();
        ();
        (self#setImage (image_arg));
        angleIncrement <- angleIncrement_arg;
        animationBehaviorFactory <- animationBehaviorFactory_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryFlickerAndroidImageRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinaryFlickerAndroidImageRotationAnimationFactory (Obj.obj arguments)))


