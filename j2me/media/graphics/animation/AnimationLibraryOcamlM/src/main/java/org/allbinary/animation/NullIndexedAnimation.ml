(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]

class nullIndexedAnimation ((animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    
    

    method getAnimationSize () : int =
        begin
        0
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NullIndexedAnimation" (fun arguments -> Obj.repr (new nullIndexedAnimation (Obj.obj arguments)))


