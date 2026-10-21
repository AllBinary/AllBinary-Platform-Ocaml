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
(* package org.allbinary.animation.transition.shake *)

open Allbinary_java [@@warning "-33"]

class noShakeAnimationListener () =
  object
    inherit ShakeAnimationListener.shakeAnimationListener ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoShakeAnimationListener" (fun arguments -> Obj.repr (new noShakeAnimationListener (Obj.obj arguments)))

let nO_SHAKE_ANIMATION_LISTENER : ShakeAnimationListener.shakeAnimationListener = ((new noShakeAnimationListener ()) :> ShakeAnimationListener.shakeAnimationListener)
let get_nO_SHAKE_ANIMATION_LISTENER () = nO_SHAKE_ANIMATION_LISTENER
let () = java_register_static "NoShakeAnimationListener.get_nO_SHAKE_ANIMATION_LISTENER" (fun _ -> Obj.repr (get_nO_SHAKE_ANIMATION_LISTENER ()))


