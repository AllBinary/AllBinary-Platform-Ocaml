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
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class bottomToTopImageAnimationFactory (image, (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit BaseImageAnimationFactory.baseImageAnimationFactory (image, (PrimitiveIntUtil.getArrayInstance ()), (image#getWidth ()), (image#getHeight ()), 0, 0, animationBehaviorFactory)
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        let scaledImage : Obj.t ref = ref ((Obj.repr ((self#animationFactoryImageScaleUtil)#createImage ((self#getImage ()), (self#animationFactoryInitializationVisitor)#width, (self#animationFactoryInitializationVisitor)#height, (self#scaleProperties)#scaleWidth, (self#scaleProperties)#scaleHeight)))) in ();
        (Obj.magic ((new BottomToTopImageAnimation.bottomToTopImageAnimation ((Obj.magic !scaledImage), ((self#animationBehaviorFactory)#getOrCreateInstance ())))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "BottomToTopImageAnimationFactory" (fun arguments -> Obj.repr (new bottomToTopImageAnimationFactory (Obj.obj arguments)))


