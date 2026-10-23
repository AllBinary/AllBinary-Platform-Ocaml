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
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.opengles.OpenGLUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.image.ImageCopyUtil *)

class allBinaryJ2SEImageRotationAnimationFactory (image, (width : int), (height : int), (angleIncrement : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory), (resizeCanvasForRotation_arg : bool)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, animationBehaviorFactory)
    val mutable angleIncrementP : int = 0
    method angleIncrementP = angleIncrementP
    method set_angleIncrementP value' = angleIncrementP <- value'
    val mutable resizeCanvasForRotation : bool = false
    method resizeCanvasForRotation = resizeCanvasForRotation
    method set_resizeCanvasForRotation value' = resizeCanvasForRotation <- value'
    
    

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
        let imageCopyUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ImageCopyUtil.getInstance" (Obj.repr ()))))) in ();
        let canvasImage : Obj.t ref = ref ((Obj.repr (self#getCanvasImage ()))) in ();
        let scaledImage : Obj.t ref = ref ((Obj.repr ((self#animationFactoryImageScaleUtil)#createImage ((Obj.magic !canvasImage), (self#animationFactoryInitializationVisitor)#width, (self#animationFactoryInitializationVisitor)#height, (self#scaleProperties)#scaleWidth, (self#scaleProperties)#scaleHeight)))) in ();
        let openGLUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLUtil.getInstance" (Obj.repr ()))))) in ();
        scaledImage := Obj.repr (((Obj.magic !openGLUtil)#addImage ((Obj.magic !scaledImage))));
        let copyOfScaledImage : Obj.t ref = ref ((Obj.repr ((Obj.magic !imageCopyUtil)#createImageForRotation ((Obj.magic !scaledImage))))) in ();
        if (((self#animationFactoryInitializationVisitor)#dx != 0) || ((self#animationFactoryInitializationVisitor)#dy != 0)) then begin
            ignore ((self#animationFactoryImageScaleUtil)#processAdjust (self));
            raise (Java_return (Obj.repr ((new AllBinaryAdjustedJ2SEImageRotationAnimation.allBinaryAdjustedJ2SEImageRotationAnimation ((Obj.magic !scaledImage), (Obj.magic !copyOfScaledImage), (AngleInfo.getInstance (angleIncrementP)), (AngleFactory.getInstance ())#tOTAL_ANGLE, (self#animationFactoryInitializationVisitor)#dx, (self#animationFactoryInitializationVisitor)#dy, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new AllBinaryJ2SEImageRotationAnimation.allBinaryJ2SEImageRotationAnimation ((Obj.magic !scaledImage), (Obj.magic !copyOfScaledImage), (AngleInfo.getInstance (angleIncrementP)), (AngleFactory.getInstance ())#tOTAL_ANGLE, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getAngleIncrement () : int =
        begin
        angleIncrementP
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        angleIncrementP <- angleIncrement;
        resizeCanvasForRotation <- resizeCanvasForRotation_arg
      end
  end
let () = java_register_constructor "AllBinaryJ2SEImageRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinaryJ2SEImageRotationAnimationFactory (Obj.obj arguments)))

let createDXY : 'any1 'any7. 'any1 * int * int * int * int * int * 'any7 * bool -> _ = fun (image, (width : int), (height : int), (dx : int), (dy : int), (angleIncrement : int), animationBehaviorFactory, (resizeCanvasForRotation_arg : bool)) ->
        let image = Obj.repr image in
        let animationBehaviorFactory = Obj.repr animationBehaviorFactory in
        begin
        let imageRotationAnimationFactory : Obj.t ref = ref ((Obj.repr (new allBinaryJ2SEImageRotationAnimationFactory ((Obj.magic image), width, height, angleIncrement, (Obj.magic animationBehaviorFactory), resizeCanvasForRotation_arg)))) in ();
        ignore ((Obj.magic !imageRotationAnimationFactory)#animationFactoryInitializationVisitor#set_dx (dx));
        ignore ((Obj.magic !imageRotationAnimationFactory)#animationFactoryInitializationVisitor#set_dy (dy));
        ignore ((Obj.magic !imageRotationAnimationFactory)#animationFactoryInitializationVisitor#set_originalDx (dx));
        ignore ((Obj.magic !imageRotationAnimationFactory)#animationFactoryInitializationVisitor#set_originalDy (dy));
        (Obj.magic !imageRotationAnimationFactory)
        end [@@warning "-20"]
let () = java_register_static "AllBinaryJ2SEImageRotationAnimationFactory.createDXY" (fun arguments -> Obj.repr (createDXY (Obj.obj arguments)))


