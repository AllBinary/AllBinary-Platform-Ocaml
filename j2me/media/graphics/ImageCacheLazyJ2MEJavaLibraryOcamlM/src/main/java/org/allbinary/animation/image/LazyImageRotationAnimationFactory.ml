(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.image.ImageCacheFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.media.ScaleProperties *)

class lazyImageRotationAnimationFactory ((layoutIndex_arg : int), (_associatedLazyAnimationId : int), (animationInterfaceFactoryInterface_arg : BaseImageAnimationFactory.baseImageAnimationFactory)) =
  object (self)
    val mutable layoutIndex : int = 0
    method layoutIndex = layoutIndex
    method set_layoutIndex value' = layoutIndex <- value'
    val mutable animationInterfaceFactoryInterface : BaseImageAnimationFactory.baseImageAnimationFactory = (Obj.magic 0)
    method animationInterfaceFactoryInterface = animationInterfaceFactoryInterface
    method set_animationInterfaceFactoryInterface value' = animationInterfaceFactoryInterface <- value'
    val mutable scaleProperties : ScaleProperties.scaleProperties = (Obj.magic 0)
    method scaleProperties = scaleProperties
    method set_scaleProperties value' = scaleProperties <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((instanceId : int)) ->
        try
        begin
        if ((animationInterfaceFactoryInterface#getImage ())#isReady ()) then begin
            ignore (animationInterfaceFactoryInterface#setInitialScale (scaleProperties));
            raise (Java_return (Obj.repr ((animationInterfaceFactoryInterface#getInstance (instanceId)))))
        end else begin
            raise (Java_return (Obj.repr ((new LazyImageRotationAnimation.lazyImageRotationAnimation (layoutIndex, instanceId, scaleProperties, animationInterfaceFactoryInterface, (animationInterfaceFactoryInterface#animationBehaviorFactory#getOrCreateInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (scaleProperties_arg) ->
        let scaleProperties_arg = Obj.repr scaleProperties_arg in
        begin
        scaleProperties <- (Obj.magic scaleProperties_arg)
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        scaleProperties <- ((ScaleProperties.get_instance ()) :> ScaleProperties.scaleProperties);
        ();
        layoutIndex <- layoutIndex_arg;
        animationInterfaceFactoryInterface <- animationInterfaceFactoryInterface_arg;
        (ImageCacheFactory.getInstance ())#set_hasAnyLazyAnimationFactories (true);
        if ((Obj.repr animationInterfaceFactoryInterface#animationBehaviorFactory) == (Obj.repr (AnimationBehaviorFactory.getInstance ()))) then begin
            ignore (ForcedLogUtil.log ("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self))
        end
      end
  end
let () = java_register_constructor "LazyImageRotationAnimationFactory" (fun arguments -> Obj.repr (new lazyImageRotationAnimationFactory (Obj.obj arguments)))


