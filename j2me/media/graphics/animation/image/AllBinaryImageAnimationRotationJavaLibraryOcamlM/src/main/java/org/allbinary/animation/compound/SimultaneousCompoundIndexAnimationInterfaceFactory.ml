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
(* package org.allbinary.animation.compound *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.media.ScaleProperties *)

class simultaneousCompoundIndexAnimationInterfaceFactory ((basicAnimationInterfaceFactoryInterfaceArray_arg : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array = (Obj.magic 0)
    method basicAnimationInterfaceFactoryInterfaceArray = basicAnimationInterfaceFactoryInterfaceArray
    method set_basicAnimationInterfaceFactoryInterfaceArray value' = basicAnimationInterfaceFactoryInterfaceArray <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((instanceId : int)) ->
        begin
        let size : int ref = ref ((Array.length basicAnimationInterfaceFactoryInterfaceArray)) in ();
        let animationInterfaceArray : IndexedAnimation.indexedAnimation array ref = ref ((Array.make (!size) (Obj.magic 0))) in ();
        for index = 0 to !size - 1 do
            !animationInterfaceArray.(index) <- ((Obj.magic (basicAnimationInterfaceFactoryInterfaceArray.(index)#getInstance (instanceId))) :> IndexedAnimation.indexedAnimation)
        done;
        (Obj.magic ((self#getOrCreate (!animationInterfaceArray))))
        end
    

    method getOrCreate : 'return. IndexedAnimation.indexedAnimation array -> 'return = fun ((animationInterfaceArray : IndexedAnimation.indexedAnimation array)) ->
        begin
        (Obj.magic ((new SimultaneousCompoundIndexAnimation.simultaneousCompoundIndexAnimation (animationInterfaceArray, (animationBehaviorFactory#getOrCreateInstance ())))))
        end
    

    method getBasicAnimationInterfaceFactoryInterfaceArray () : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array =
        begin
        basicAnimationInterfaceFactoryInterfaceArray
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        basicAnimationInterfaceFactoryInterfaceArray <- basicAnimationInterfaceFactoryInterfaceArray_arg;
        animationBehaviorFactory <- animationBehaviorFactory_arg
      end
  end
let () = java_register_constructor "SimultaneousCompoundIndexAnimationInterfaceFactory" (fun arguments -> Obj.repr (new simultaneousCompoundIndexAnimationInterfaceFactory (Obj.obj arguments)))


