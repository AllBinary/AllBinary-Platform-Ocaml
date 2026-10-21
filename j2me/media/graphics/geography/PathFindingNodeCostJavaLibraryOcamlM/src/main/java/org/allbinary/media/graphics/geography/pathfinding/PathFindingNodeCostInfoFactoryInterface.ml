(*

  AllBinary Open License Version 1
  Copyright (c) 2006 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class virtual pathFindingNodeCostInfoFactoryInterface =
  object
    inherit PathFindingNodeCostInfoFactoryBaseInterface.pathFindingNodeCostInfoFactoryBaseInterface
    method virtual getInstance : 'any1 'any2 . 'any1 * 'any2 * int * int -> PathFindingNodeCostInfo.pathFindingNodeCostInfo
    (* Java overload getInstance(GeographicMapCellPosition, GeographicMapCellPosition) is not converted: OCaml has one method per name *)
    method virtual getTotalCost : 'any1 'any2 . 'any1 * 'any2 -> int
  end


