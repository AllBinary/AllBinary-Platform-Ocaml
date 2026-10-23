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
(* import org.allbinary.animation.VectorAnimation *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.image.AnimationFrameToImageUtil *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.ScaleProperties *)
(* import org.allbinary.media.image.ImageToRotationImageArrayUtil *)
(* import org.allbinary.vector.VectorInfo *)

class vectorToImageArrayRotationAnimationFactory ((vectorInfo : VectorInfo.vectorInfo), (basicColor : BasicColor.basicColor), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (((AnimationFrameToImageUtil.getInstance ())#getInstanceTranslate ((vectorInfo#getWidth ()), (vectorInfo#getHeight ()), (VectorAnimation.createVectorAnimation ((vectorInfo#getPoints ()), basicColor, (animationBehaviorFactory#getOrCreateInstance ()))))), (PrimitiveIntUtil.getArrayInstance ()), 0, 0, 0, 0, animationBehaviorFactory)
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    
    

    method init () : unit =
        begin
        let angleFactory : AngleFactory.angleFactory ref = ref (((AngleFactory.getInstance ()) :> AngleFactory.angleFactory)) in ();
        angleIncrement <- (!angleFactory#tOTAL_ANGLE / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ()));
        imageArray <- Obj.repr (((ImageToRotationImageArrayUtil.getInstance ())#generate ((self#getImage ()), (self#getAngleIncrement ()), (java_to_int (Obj.repr (!angleFactory#tOTAL_ANGLE))))))
        end [@@warning "-7"]
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        if (((self#animationFactoryInitializationVisitor)#dx != 0) || ((self#animationFactoryInitializationVisitor)#dy != 0)) then begin
            raise (Java_return (Obj.repr ((new AdjustedImageArrayRotationAnimation.adjustedImageArrayRotationAnimation ((Obj.magic imageArray), (AngleInfo.getInstance ((self#getAngleIncrement ()))), (java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE))), (self#animationFactoryInitializationVisitor)#dx, (self#animationFactoryInitializationVisitor)#dy, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((AdjustedImageArrayRotationAnimation.createAnimation ((Obj.magic imageArray), (AngleInfo.getInstance (angleIncrement)), (java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE))), ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getAngleIncrement () : int =
        begin
        angleIncrement
        end [@@warning "-7"]
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        imageArray <- (Obj.repr (NullImage.get_nULL_IMAGE_ARRAY ()));
        angleIncrement <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "VectorToImageArrayRotationAnimationFactory" (fun arguments -> Obj.repr (new vectorToImageArrayRotationAnimationFactory (Obj.obj arguments)))


