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
(* package org.allbinary.game.ag.life *)

open Allbinary_java [@@warning "-33"]

class virtual lifeInterface =
  object
    method virtual get : unit -> int
    method virtual set : int -> unit
    method virtual reset : unit -> unit
    method virtual add : int -> unit
    method virtual deaths : int -> unit
    method virtual getMaxlives : unit -> int
    method virtual isAlive : unit -> bool
  end


