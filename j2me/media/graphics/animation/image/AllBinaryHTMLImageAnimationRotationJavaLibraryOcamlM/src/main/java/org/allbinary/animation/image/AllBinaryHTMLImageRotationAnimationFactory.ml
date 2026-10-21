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
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.media.image.ImageCopyUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)

class allBinaryHTMLImageRotationAnimationFactory (image, (width : int), (height : int), (angleIncrement_arg : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, animationBehaviorFactory)
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    
    

    method init ((dx : int), (dy : int)) : unit =
        begin
        animationFactoryInitializationVisitor#set_dx (dx);
        animationFactoryInitializationVisitor#set_dy (dy);
        animationFactoryInitializationVisitor#set_originalDx (dx);
        animationFactoryInitializationVisitor#set_originalDy (dy)
        end [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let scaledImage : Obj.t ref = ref ((Obj.repr (animationFactoryImageScaleUtil#createImage ((self#getImage ()), animationFactoryInitializationVisitor#width, animationFactoryInitializationVisitor#height, scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        let copyOfScaledImage : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ())))#createImage ((Obj.magic !scaledImage))))) in ();
        if ((animationFactoryInitializationVisitor#dx != 0) || (animationFactoryInitializationVisitor#dy != 0)) then begin
            ignore (animationFactoryImageScaleUtil#processAdjust (self));
            raise (Java_return (Obj.repr ((new AllBinaryAdjustedHTMLImageRotationAnimation.allBinaryAdjustedHTMLImageRotationAnimation ((Obj.magic !scaledImage), (Obj.magic !copyOfScaledImage), (AngleInfo.getInstance ((self#getAngleIncrement ()))), (AngleFactory.getInstance ())#tOTAL_ANGLE, animationFactoryInitializationVisitor#dx, animationFactoryInitializationVisitor#dy, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.obj (java_new "AllBinaryHTMLImageRotationAnimation" (Obj.repr ((Obj.magic !scaledImage), (Obj.magic !copyOfScaledImage), (AngleInfo.getInstance (angleIncrement)), (AngleFactory.getInstance ())#tOTAL_ANGLE, (animationBehaviorFactory#getOrCreateInstance ()))))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getAngleIncrement () : int =
        begin
        angleIncrement
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        angleIncrement <- angleIncrement_arg
      end
  end
let () = java_register_constructor "AllBinaryHTMLImageRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinaryHTMLImageRotationAnimationFactory (Obj.obj arguments)))

let createFactoryADXY : 'any1 'any7. 'any1 * int * int * int * int * int * 'any7 -> _ = fun (image, (width : int), (height : int), (dx : int), (dy : int), (angleIncrement_arg : int), animationBehaviorFactory) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let htmlImageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryHTMLImageRotationAnimationFactory ((Obj.magic image), width, height, angleIncrement_arg, (Obj.magic animationBehaviorFactory))))) in ();
        ignore ((Obj.magic !htmlImageRotationAnimationFactory)#init (dx, dy));
        (Obj.magic !htmlImageRotationAnimationFactory)
        end [@@warning "-20"]
let () = java_register_static "AllBinaryHTMLImageRotationAnimationFactory.createFactoryADXY" (fun arguments -> Obj.repr (createFactoryADXY (Obj.obj arguments)))


