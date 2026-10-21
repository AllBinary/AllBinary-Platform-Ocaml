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
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.media.image.ImageCopyUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)

class allBinaryAndroidImageRotationAnimationFactory (image, (width : int), (height : int), (angleIncrement_arg : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory), (resizeCanvasForRotation_arg : bool)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, animationBehaviorFactory)
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    val mutable resizeCanvasForRotation : bool = false
    method resizeCanvasForRotation = resizeCanvasForRotation
    method set_resizeCanvasForRotation value' = resizeCanvasForRotation <- value'
    

    method init ((dx : int), (dy : int)) : unit =
        begin
        animationFactoryInitializationVisitor#set_dx (dx);
        animationFactoryInitializationVisitor#set_dy (dy);
        animationFactoryInitializationVisitor#set_originalDx (dx);
        animationFactoryInitializationVisitor#set_originalDy (dy)
        end [@@warning "-7"]
    
    

    method getCanvasImage : 'return. unit -> 'return = fun () ->
        try
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (resizeCanvasForRotation && (not (!features#isDefault ((OpenGLFeatureFactory.getInstance ())#oPENGL)))) then begin
            raise (Java_return (Obj.repr (((Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ())))#createImageScale ((self#getImage ()), 1.44, false)))))
        end else begin
            raise (Java_return (Obj.repr ((self#getImage ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let canvasImage : Obj.t ref = ref ((Obj.repr (self#getCanvasImage ()))) in ();
        let scaledImage : Obj.t ref = ref ((Obj.repr (animationFactoryImageScaleUtil#createImage ((Obj.magic !canvasImage), animationFactoryInitializationVisitor#width, animationFactoryInitializationVisitor#height, scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        let copyOfScaledImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ())))#createImage ((Obj.magic !scaledImage))))) in ();
        if ((animationFactoryInitializationVisitor#dx != 0) || (animationFactoryInitializationVisitor#dy != 0)) then begin
            ignore (animationFactoryImageScaleUtil#processAdjust (self));
            raise (Java_return (Obj.repr ((new AllBinaryAdjustedAndroidImageRotationAnimation.allBinaryAdjustedAndroidImageRotationAnimation ((Obj.magic !scaledImage), (Obj.magic !copyOfScaledImage), (AngleInfo.getInstance (angleIncrement)), (AngleFactory.getInstance ())#tOTAL_ANGLE, animationFactoryInitializationVisitor#dx, animationFactoryInitializationVisitor#dy, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new AllBinaryFlickerAndroidImageRotationAnimation.allBinaryFlickerAndroidImageRotationAnimation ((Obj.magic !scaledImage), (Obj.magic !copyOfScaledImage), (AngleInfo.getInstance (angleIncrement)), (AngleFactory.getInstance ())#tOTAL_ANGLE, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        angleIncrement <- angleIncrement_arg;
        resizeCanvasForRotation <- resizeCanvasForRotation_arg
      end
  end
let () = java_register_constructor "AllBinaryAndroidImageRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinaryAndroidImageRotationAnimationFactory (Obj.obj arguments)))

let createFactory : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (width : int), (height : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new allBinaryAndroidImageRotationAnimationFactory ((Obj.magic image), width, height, (java_to_int (Obj.repr ((((AngleFactory.getInstance ())#tOTAL_ANGLE / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ())))))), (Obj.magic animationBehaviorFactory), false))
        end [@@warning "-20"]

and createFactoryA : 'any1 'any5. 'any1 * int * int * int * 'any5 -> _ = fun (image, (width : int), (height : int), (angleIncrement_arg : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        (new allBinaryAndroidImageRotationAnimationFactory ((Obj.magic image), width, height, angleIncrement_arg, (Obj.magic animationBehaviorFactory), false))
        end [@@warning "-20"]

and createFactoryU : 'any1 'any2. 'any1 * 'any2 -> _ = fun (image, animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let androidImageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryAndroidImageRotationAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), (java_to_int (Obj.repr ((((AngleFactory.getInstance ())#tOTAL_ANGLE / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ())))))), (Obj.magic animationBehaviorFactory), false)))) in ();
        ignore ((Obj.magic !androidImageRotationAnimationFactory)#init ((-((((Obj.magic image)#getWidth ()) asr 2))), (-((((Obj.magic image)#getHeight ()) asr 2)))));
        (Obj.magic !androidImageRotationAnimationFactory)
        end [@@warning "-20"]

and createFactoryDXYU : 'any1 'any4. 'any1 * int * int * 'any4 -> _ = fun (image, (dx : int), (dy : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let androidImageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryAndroidImageRotationAnimationFactory ((Obj.magic image), ((Obj.magic image)#getWidth ()), ((Obj.magic image)#getHeight ()), (java_to_int (Obj.repr ((((AngleFactory.getInstance ())#tOTAL_ANGLE / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ())))))), (Obj.magic animationBehaviorFactory), false)))) in ();
        ignore ((Obj.magic !androidImageRotationAnimationFactory)#init (dx, dy));
        (Obj.magic !androidImageRotationAnimationFactory)
        end [@@warning "-20"]

and createFactoryADXY : 'any1 'any7. 'any1 * int * int * int * int * int * 'any7 * bool -> _ = fun (image, (width : int), (height : int), (dx : int), (dy : int), (angleIncrement_arg : int), animationBehaviorFactory, (resizeCanvasForRotation_arg : bool)) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let androidImageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryAndroidImageRotationAnimationFactory ((Obj.magic image), width, height, angleIncrement_arg, (Obj.magic animationBehaviorFactory), resizeCanvasForRotation_arg)))) in ();
        ignore ((Obj.magic !androidImageRotationAnimationFactory)#init (dx, dy));
        (Obj.magic !androidImageRotationAnimationFactory)
        end [@@warning "-20"]
let () = java_register_static "AllBinaryAndroidImageRotationAnimationFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))
let () = java_register_static "AllBinaryAndroidImageRotationAnimationFactory.createFactoryA" (fun arguments -> Obj.repr (createFactoryA (Obj.obj arguments)))
let () = java_register_static "AllBinaryAndroidImageRotationAnimationFactory.createFactoryU" (fun arguments -> Obj.repr (createFactoryU (Obj.obj arguments)))
let () = java_register_static "AllBinaryAndroidImageRotationAnimationFactory.createFactoryDXYU" (fun arguments -> Obj.repr (createFactoryDXYU (Obj.obj arguments)))
let () = java_register_static "AllBinaryAndroidImageRotationAnimationFactory.createFactoryADXY" (fun arguments -> Obj.repr (createFactoryADXY (Obj.obj arguments)))


