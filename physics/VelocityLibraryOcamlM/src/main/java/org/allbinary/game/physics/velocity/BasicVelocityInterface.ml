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
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.math.Angle *)

class virtual basicVelocityInterface =
  object
    method virtual getVelocityXBasicDecimalP : unit -> BasicDecimal.basicDecimal
    method virtual getVelocityYBasicDecimalP : unit -> BasicDecimal.basicDecimal
    method virtual zero : unit -> unit
    method virtual setVelocityWithBigDecimalAndDirection : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> unit
    method virtual addVelocityWithBigDecimalAndDirection : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> unit
    method virtual setVelocityWithDirection : 'any2 'any3 . int * 'any2 * 'any3 -> unit
    method virtual addVelocityWithDirection : 'any2 'any3 . int * 'any2 * 'any3 -> unit
    method virtual setVelocityWithBigDecimal : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> unit
    method virtual addVelocityWithBigDecimal : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> unit
    method virtual setVelocity : 'any2 'any3 . int * 'any2 * 'any3 -> unit
    method virtual addVelocity : 'any2 'any3 . int * 'any2 * 'any3 -> unit
    method virtual addVelocityi : int * int * int -> unit
  end


