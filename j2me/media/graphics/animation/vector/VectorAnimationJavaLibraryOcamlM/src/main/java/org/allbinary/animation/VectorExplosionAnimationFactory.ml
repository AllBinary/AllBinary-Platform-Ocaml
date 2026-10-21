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

class vectorExplosionAnimationFactory ((basicColor_arg : BasicColor.basicColor), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object (self)
    val mutable vectorExplosionGenerator : VectorExplosionGenerator.vectorExplosionGenerator = (Obj.magic 0)
    method vectorExplosionGenerator = vectorExplosionGenerator
    method set_vectorExplosionGenerator value' = vectorExplosionGenerator <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (animationInterface) ->
        let animationInterface = Obj.repr animationInterface in
        begin
        let vectorRotationAnimationInterface : VectorAnimationInterface.vectorAnimationInterface ref = ref (((Obj.magic (Obj.magic animationInterface)) :> VectorAnimationInterface.vectorAnimationInterface)) in ();
        let frame : int ref = ref ((!vectorRotationAnimationInterface#getFrame ())) in ();
        let framePoints : int array array ref = ref ((!vectorRotationAnimationInterface#getPoints (!frame))) in ();
        let points : int array array array ref = ref ((vectorExplosionGenerator#getInstance (!framePoints, 6, vectorExplosionGenerator#rOTATION))) in ();
        (Obj.magic ((new VectorRotationAnimation.vectorRotationAnimation (!points, (self#getBasicColorP ()), (animationBehaviorFactory#getOrCreateInstance ())))))
        end [@@warning "-20"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end

    initializer
      begin
        vectorExplosionGenerator <- ((VectorExplosionGenerator.getInstance ()) :> VectorExplosionGenerator.vectorExplosionGenerator);
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        ();
        ();
        animationBehaviorFactory <- animationBehaviorFactory_arg;
        (self#setBasicColorP (basicColor_arg))
      end
  end
let () = java_register_constructor "VectorExplosionAnimationFactory" (fun arguments -> Obj.repr (new vectorExplosionAnimationFactory (Obj.obj arguments)))


