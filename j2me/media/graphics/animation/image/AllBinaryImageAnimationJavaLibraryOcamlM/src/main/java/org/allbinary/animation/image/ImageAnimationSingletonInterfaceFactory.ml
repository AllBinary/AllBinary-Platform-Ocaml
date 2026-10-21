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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.SingletonAnimationInterfaceFactory *)
(* import org.allbinary.image.AnimationFrameToImageUtil *)

class imageAnimationSingletonInterfaceFactory (animationInterface, (width : int), (height : int)) =
  object
    inherit SingletonAnimationInterfaceFactory.singletonAnimationInterfaceFactory ((new ImageAnimation.imageAnimation (((AnimationFrameToImageUtil.getInstance ())#getInstanceWH (width, height, animationInterface)), (AnimationBehavior.getInstance ()))))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "ImageAnimationSingletonInterfaceFactory" (fun arguments -> Obj.repr (new imageAnimationSingletonInterfaceFactory (Obj.obj arguments)))


