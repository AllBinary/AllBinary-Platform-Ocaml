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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class indexedAnimationBehaviorFactory ((loopTotal_arg : int), (frameDelayTime_arg : int)) =
  object
    inherit AnimationBehaviorFactory.animationBehaviorFactory ()
    val mutable frameDelayTime : int = 0
    method frameDelayTime = frameDelayTime
    method set_frameDelayTime value' = frameDelayTime <- value'
    val mutable loopTotal : int = 0
    method loopTotal = loopTotal
    method set_loopTotal value' = loopTotal <- value'
    
    

    method getOrCreateInstance () : AnimationBehavior.animationBehavior =
        begin
        ((new IndexedAnimationBehavior.indexedAnimationBehavior (loopTotal, frameDelayTime)) :> AnimationBehavior.animationBehavior)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        loopTotal <- loopTotal_arg;
        frameDelayTime <- frameDelayTime_arg
      end
  end
let () = java_register_constructor "IndexedAnimationBehaviorFactory" (fun arguments -> Obj.repr (new indexedAnimationBehaviorFactory (Obj.obj arguments)))


