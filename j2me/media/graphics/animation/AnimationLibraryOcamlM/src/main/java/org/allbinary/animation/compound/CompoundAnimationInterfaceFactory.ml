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
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.media.ScaleProperties *)

class compoundAnimationInterfaceFactory ((basicAnimationInterfaceFactoryInterfaceArray : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable basicAnimationInterfaceFactoryInterfaceArrayP : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array = (Obj.magic 0)
    method basicAnimationInterfaceFactoryInterfaceArrayP = basicAnimationInterfaceFactoryInterfaceArrayP
    method set_basicAnimationInterfaceFactoryInterfaceArrayP value' = basicAnimationInterfaceFactoryInterfaceArrayP <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((instanceId : int)) ->
        begin
        let size : int ref = ref ((Array.length basicAnimationInterfaceFactoryInterfaceArrayP)) in ();
        let animationInterfaceArray : Obj.t ref = ref ((Obj.repr (self#createArray (!size)))) in ();
        for index = 0 to !size - 1 do
            (Obj.magic !animationInterfaceArray).(index) <- (basicAnimationInterfaceFactoryInterfaceArrayP.(index)#getInstance (instanceId))
        done;
        (Obj.magic ((self#createAnimation ((Obj.magic !animationInterfaceArray)))))
        end
    

    method createArray : 'return. int -> 'return = fun ((_size : int)) ->
        begin
        (Obj.magic ((NullAnimationFactory.getFactoryInstance ())#eMPTY_ARRAY))
        end
    

    method createAnimation : 'return. _ -> 'return = fun (_animationInterfaceArray) ->
        begin
        (Obj.magic (((NullAnimationFactory.getFactoryInstance ())#getInstance (0))))
        end
    

    method getBasicAnimationInterfaceFactoryInterfaceArray () : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface array =
        begin
        basicAnimationInterfaceFactoryInterfaceArrayP
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (scaleProperties) ->
        let scaleProperties = Obj.repr scaleProperties in
        begin
        let size : int ref = ref ((Array.length basicAnimationInterfaceFactoryInterfaceArrayP)) in ();
        for index = 0 to !size - 1 do
            ignore (basicAnimationInterfaceFactoryInterfaceArrayP.(index)#setInitialScale ((Obj.magic scaleProperties)))
        done
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        basicAnimationInterfaceFactoryInterfaceArrayP <- basicAnimationInterfaceFactoryInterfaceArray;
        animationBehaviorFactory <- animationBehaviorFactory_arg
      end
  end
let () = java_register_constructor "CompoundAnimationInterfaceFactory" (fun arguments -> Obj.repr (new compoundAnimationInterfaceFactory (Obj.obj arguments)))


