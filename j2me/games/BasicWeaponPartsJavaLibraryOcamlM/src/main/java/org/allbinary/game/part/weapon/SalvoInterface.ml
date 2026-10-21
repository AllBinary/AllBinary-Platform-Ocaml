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
(* package org.allbinary.game.part.weapon *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class virtual salvoInterface =
  object
    method virtual process : 'any1 . 'any1 * int * int -> unit
    method virtual processScore : 'any1 'any4 'any5 . 'any1 * int * int * 'any4 * 'any5 -> unit
  end


