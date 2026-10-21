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
(* import org.allbinary.animation.AnimationInterface *)
(* import org.allbinary.animation.IndexedAnimation *)

class virtual compoundAnimationInterface =
  object
    inherit AnimationInterface.animationInterface
    method virtual nextAnimation : unit -> unit
    method virtual previousAnimation : unit -> unit
    method virtual setAnimation : int -> unit
    method virtual getCurrentAnimation : unit -> IndexedAnimation.indexedAnimation
  end


