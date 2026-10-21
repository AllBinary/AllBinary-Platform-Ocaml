(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class virtual geographicMapCellPositionAreaInterface =
  object
    method virtual getNextSurroundingGeographicMapCellPosition : unit -> GeographicMapCellPosition.geographicMapCellPosition
    method virtual getOccupyingGeographicMapCellPositionList : unit -> BasicArrayList.basicArrayList
    method virtual getSurroundingGeographicMapCellPositionList : unit -> BasicArrayList.basicArrayList
    method virtual update : 'any1 . 'any1 -> unit
  end


