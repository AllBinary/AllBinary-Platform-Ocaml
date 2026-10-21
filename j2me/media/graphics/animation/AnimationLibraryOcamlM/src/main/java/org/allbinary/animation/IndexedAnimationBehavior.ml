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

class indexedAnimationBehavior ((loopTotal_arg : int), (frameDelayTime_arg : int)) =
  object
    inherit AnimationBehavior.animationBehavior ()
    val mutable frameDelayTime : int = 0
    method frameDelayTime = frameDelayTime
    method set_frameDelayTime value' = frameDelayTime <- value'
    val mutable loopTotal : int = 0
    method loopTotal = loopTotal
    method set_loopTotal value' = loopTotal <- value'
    val mutable elapsedTime : int = 0
    method elapsedTime = elapsedTime
    method set_elapsedTime value' = elapsedTime <- value'
    val mutable loopIndex : int = 0
    method loopIndex = loopIndex
    method set_loopIndex value' = loopIndex <- value'
    
    

    method reset () : unit =
        begin
        loopIndex <- 0
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        elapsedTime <- 0;
        loopIndex <- 0;
        ();
        loopTotal <- loopTotal_arg;
        frameDelayTime <- frameDelayTime_arg
      end
  end
let () = java_register_constructor "IndexedAnimationBehavior" (fun arguments -> Obj.repr (new indexedAnimationBehavior (Obj.obj arguments)))


