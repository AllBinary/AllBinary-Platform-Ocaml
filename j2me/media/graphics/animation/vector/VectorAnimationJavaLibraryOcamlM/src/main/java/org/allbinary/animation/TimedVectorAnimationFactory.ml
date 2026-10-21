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

class timedVectorAnimationFactory () =
  object
    

    method getInstance : 'any2. int array array array * 'any2 -> VectorAnimation.vectorAnimation = fun ((points : int array array array), basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ((new TimedVectorAnimation.timedVectorAnimation (points, (Obj.magic basicColor), (AnimationBehavior.getInstance ()))) :> VectorAnimation.vectorAnimation)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "TimedVectorAnimationFactory" (fun arguments -> Obj.repr (new timedVectorAnimationFactory (Obj.obj arguments)))


