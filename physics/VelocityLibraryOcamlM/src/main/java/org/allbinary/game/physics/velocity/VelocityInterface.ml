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
(* package org.allbinary.game.physics.velocity *)

open Allbinary_java [@@warning "-33"]

class virtual velocityInterface =
  object
    inherit BasicVelocityInterface.basicVelocityInterface
    method virtual getMaxForwardVelocity : unit -> int
    method virtual getMaxReverseVelocity : unit -> int
    method virtual limitMaxXYForwardVelocity : unit -> unit
    method virtual limitMaxXYReverseVelocity : unit -> unit
    method virtual limitXYToForwardAndReverseMaxVelocity : unit -> unit
    method virtual limitMaxXYVelocity : int -> unit
    method virtual setMaxForwardVelocity : int -> unit
    method virtual setMaxReverseVelocity : int -> unit
  end


