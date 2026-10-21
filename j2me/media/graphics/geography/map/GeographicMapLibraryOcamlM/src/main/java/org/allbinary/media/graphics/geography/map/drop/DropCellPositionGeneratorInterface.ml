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
(* package org.allbinary.media.graphics.geography.map.drop *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class virtual dropCellPositionGeneratorInterface =
  object
    method virtual getName : unit -> string
    method virtual update : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual processTick : 'any1 . 'any1 -> unit
    method virtual isDropAllowedAt : 'any1 . 'any1 -> bool
  end


