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
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class virtual pathFindingNodeCostInfoFactoryBaseInterface =
  object
    method virtual create : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 * int * int -> unit
    method virtual getTotalCost : 'any1 'any2 'any3 . 'any1 * 'any2 * 'any3 -> int
  end


