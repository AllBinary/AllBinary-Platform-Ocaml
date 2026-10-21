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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.media.ScaleProperties *)

class vectorRotationAnimationInterfaceFactory ((currentPoints_arg : int array array array), (basicColor_arg : BasicColor.basicColor), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable currentPoints : int array array array = (Obj.magic 0)
    method currentPoints = currentPoints
    method set_currentPoints value' = currentPoints <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((new VectorRotationAnimation.vectorRotationAnimation (currentPoints, (self#getBasicColorP ()), (animationBehaviorFactory#getOrCreateInstance ())))))
        end
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        currentPoints <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY_ARRAY;
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        ();
        ();
        currentPoints <- currentPoints_arg;
        (self#setBasicColorP (basicColor_arg));
        animationBehaviorFactory <- animationBehaviorFactory_arg
      end
  end
let () = java_register_constructor "VectorRotationAnimationInterfaceFactory" (fun arguments -> Obj.repr (new vectorRotationAnimationInterfaceFactory (Obj.obj arguments)))


