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
(* package org.allbinary.animation.special *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.IndexedAnimationBehavior *)

class specialAnimation ((animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    
    

    method nextFrame () : unit =
        begin
        let indexedAnimationBehavior : IndexedAnimationBehavior.indexedAnimationBehavior ref = ref ((((Obj.magic animationBehaviorP)) :> IndexedAnimationBehavior.indexedAnimationBehavior)) in ();
        !indexedAnimationBehavior#set_loopIndex (!indexedAnimationBehavior#loopIndex + 1)
        end [@@warning "-7"]
    

    method setLastFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method isComplete () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method open_ () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SpecialAnimation" (fun arguments -> Obj.repr (new specialAnimation (Obj.obj arguments)))

let nULL_SPECIAL_ANIMATION = (new specialAnimation ((new IndexedAnimationBehavior.indexedAnimationBehavior (1, 250))))
let get_nULL_SPECIAL_ANIMATION () = nULL_SPECIAL_ANIMATION
let () = java_register_static "SpecialAnimation.get_nULL_SPECIAL_ANIMATION" (fun _ -> Obj.repr (get_nULL_SPECIAL_ANIMATION ()))

let getInstance () =
        begin
        nULL_SPECIAL_ANIMATION
        end
let () = java_register_static "SpecialAnimation.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


