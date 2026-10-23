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
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)

class simultaneousCompoundRotationAnimationInterfaceFactory ((basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array), (animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    inherit CompoundAnimationInterfaceFactory.compoundAnimationInterfaceFactory (basicAnimationInterfaceFactoryInterfaceArray, animationBehaviorFactory)
    
    

    method createArray : 'return. int -> 'return = fun ((size : int)) ->
        begin
        (Obj.magic ((Array.make (size) (Obj.magic 0))))
        end [@@warning "-7"]
    

    method createAnimation : 'return. _ -> 'return = fun (animationInterfaceArray) ->
        begin
        (Obj.magic ((new SimultaneousCompoundRotationAnimation.simultaneousCompoundRotationAnimation ((Obj.magic animationInterfaceArray), ((self#animationBehaviorFactory)#getOrCreateInstance ())))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        if ((Obj.repr animationBehaviorFactory) == (Obj.repr (AnimationBehaviorFactory.getInstance ()))) then begin
            ignore (ForcedLogUtil.log ("Using default AnimationBehaviorFactory with IndexedAnimationFactory", self))
        end
      end
  end
let () = java_register_constructor "SimultaneousCompoundRotationAnimationInterfaceFactory" (fun arguments -> Obj.repr (new simultaneousCompoundRotationAnimationInterfaceFactory (Obj.obj arguments)))


