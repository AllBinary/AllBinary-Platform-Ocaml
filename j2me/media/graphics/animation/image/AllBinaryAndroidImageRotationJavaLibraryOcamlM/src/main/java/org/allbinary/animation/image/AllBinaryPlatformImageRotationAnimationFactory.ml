(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
(* import org.allbinary.animation.AnimationBehaviorFactory *)

class allBinaryPlatformImageRotationAnimationFactory (image, (width : int), (height : int), (angleIncrement : int), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory), (resizeCanvasForRotation : bool)) =
  object
    inherit AllBinaryAndroidImageRotationAnimationFactory.allBinaryAndroidImageRotationAnimationFactory (image, width, height, angleIncrement, animationBehaviorFactory, resizeCanvasForRotation)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "AllBinaryPlatformImageRotationAnimationFactory" (fun arguments -> Obj.repr (new allBinaryPlatformImageRotationAnimationFactory (Obj.obj arguments)))


