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
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)

class imageRotationAnimationFactory (image, (width : int), (height : int), (dx : int), (dy : int), (angleIncrement_arg : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), width, height, 0, 0, animationBehaviorFactory)
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        if (((self#animationFactoryInitializationVisitor)#dx != 0) || ((self#animationFactoryInitializationVisitor)#dy != 0)) then begin
            ignore ((self#animationFactoryImageScaleUtil)#processAdjust (self));
            raise (Java_return (Obj.repr ((new AdjustedImageBaseRotationAnimation.adjustedImageBaseRotationAnimation ((self#getImage ()), (AngleInfo.getInstance (angleIncrement)), (AngleFactory.getInstance ())#tOTAL_ANGLE, (self#animationFactoryInitializationVisitor)#dx, (self#animationFactoryInitializationVisitor)#dy, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new ImageBaseRotationAnimation.imageBaseRotationAnimation ((self#getImage ()), (AngleInfo.getInstance (angleIncrement)), (AngleFactory.getInstance ())#tOTAL_ANGLE, ((self#animationBehaviorFactory)#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getAngleIncrementP () : int =
        begin
        angleIncrement
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        angleIncrement <- angleIncrement_arg;
        (self#animationFactoryInitializationVisitor)#set_dx (dx);
        (self#animationFactoryInitializationVisitor)#set_dy (dy)
      end
  end
let () = java_register_constructor "ImageRotationAnimationFactory" (fun arguments -> Obj.repr (new imageRotationAnimationFactory (Obj.obj arguments)))


