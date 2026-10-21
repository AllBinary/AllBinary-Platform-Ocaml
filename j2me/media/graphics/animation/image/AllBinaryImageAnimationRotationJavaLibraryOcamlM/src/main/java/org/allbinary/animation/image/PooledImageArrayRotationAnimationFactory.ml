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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.media.ScaleProperties *)
(* import org.allbinary.media.image.ImageToRotationImageArrayUtil *)

class pooledImageArrayRotationAnimationFactory (image, (_width : int), (_height : int), (dx : int), (dy : int), (angleIncrement : int), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object
    val mutable allBinaryImageRotationAnimationInfo : Obj.t = (Obj.magic 0)
    method allBinaryImageRotationAnimationInfo = allBinaryImageRotationAnimationInfo
    method set_allBinaryImageRotationAnimationInfo value' = allBinaryImageRotationAnimationInfo <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((AdjustedImageArrayRotationAnimation.createAdjustedImageArrayRotationAnimationInfo (allBinaryImageRotationAnimationInfo, (animationBehaviorFactory#getOrCreateInstance ())))))
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        allBinaryImageRotationAnimationInfo <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        ();
        ();
        animationBehaviorFactory <- animationBehaviorFactory_arg;
        let totalAngle : int ref = ref ((java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE)))) in ();
        let imageArray : Obj.t ref = ref ((Obj.repr ((ImageToRotationImageArrayUtil.getInstance ())#generate (image, angleIncrement, !totalAngle)))) in ();
        allBinaryImageRotationAnimationInfo <- (new ImageArrayRotationAnimationInfo.imageArrayRotationAnimationInfo ((Obj.magic !imageArray), angleIncrement, !totalAngle, dx, dy))
      end
  end
let () = java_register_constructor "PooledImageArrayRotationAnimationFactory" (fun arguments -> Obj.repr (new pooledImageArrayRotationAnimationFactory (Obj.obj arguments)))

let createFactory : 'any1 'any2. 'any1 * 'any2 -> _ = fun (image, animationBehaviorFactory_arg) ->
        let image = Obj.repr image in
        let animationBehaviorFactory_arg = Obj.repr animationBehaviorFactory_arg in
        begin
        let totalAngle : int ref = ref ((java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE)))) in ();
        let angleIncrement : int ref = ref (((!totalAngle / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ())))) in ();
        (new pooledImageArrayRotationAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), (-((((Obj.magic image)#getWidth ()) asr 2))), (-((((Obj.magic image)#getHeight ()) asr 2))), !angleIncrement, (Obj.magic animationBehaviorFactory_arg)))
        end [@@warning "-20"]

and createDXY : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (dx : int), (dy : int), animationBehaviorFactory_arg) ->
        let image = Obj.repr image in
        let animationBehaviorFactory_arg = Obj.repr animationBehaviorFactory_arg in
        begin
        let totalAngle : int ref = ref ((java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE)))) in ();
        let angleIncrement : int ref = ref (((!totalAngle / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ())))) in ();
        (new pooledImageArrayRotationAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), dx, dy, !angleIncrement, (Obj.magic animationBehaviorFactory_arg)))
        end [@@warning "-20"]
let () = java_register_static "PooledImageArrayRotationAnimationFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))
let () = java_register_static "PooledImageArrayRotationAnimationFactory.createDXY" (fun arguments -> Obj.repr (createDXY (Obj.obj arguments)))


