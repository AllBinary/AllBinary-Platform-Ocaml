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

class leftToRightImageAnimationFactory (image, (sequenceArray : int array), (dx : int), (dy : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, sequenceArray, (image#getWidth ()), (image#getHeight ()), dx, dy, animationBehaviorFactory)
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        let scaledImage : Obj.t ref = ref ((Obj.repr (animationFactoryImageScaleUtil#createImage ((self#getImage ()), animationFactoryInitializationVisitor#width, animationFactoryInitializationVisitor#height, scaleProperties#scaleWidth, scaleProperties#scaleHeight)))) in ();
        if ((animationFactoryInitializationVisitor#dx != 0) || (animationFactoryInitializationVisitor#dy != 0)) then begin
            ignore (animationFactoryImageScaleUtil#processAdjust (self));
            raise (Java_return (Obj.repr ((new AdjustedLeftToRightImageAnimation.adjustedLeftToRightImageAnimation ((Obj.magic !scaledImage), (self#getSequenceArray ()), animationFactoryInitializationVisitor#dx, animationFactoryInitializationVisitor#dy, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new LeftToRightImageAnimation.leftToRightImageAnimation ((Obj.magic !scaledImage), (self#getSequenceArray ()), (animationBehaviorFactory#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "LeftToRightImageAnimationFactory" (fun arguments -> Obj.repr (new leftToRightImageAnimationFactory (Obj.obj arguments)))


