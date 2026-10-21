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
(* package org.allbinary.game.health *)

open Allbinary_java [@@warning "-33"]

class virtual healthInterface =
  object
    method virtual isAlive : unit -> bool
    method virtual damage : int -> unit
    method virtual heal : int -> unit
    method virtual healMax : unit -> unit
    method virtual getMaxHealth : unit -> int
    method virtual setMaxHealth : int -> unit
    method virtual getHealth : unit -> int
    method virtual addListener : 'any1 . 'any1 -> unit
  end


