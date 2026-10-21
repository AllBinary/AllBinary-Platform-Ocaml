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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.layer.Layer *)

class virtual geographicMapInterface =
  object
    method virtual getId : unit -> int
    method virtual getName : unit -> string
    method virtual reset : unit -> unit
    method virtual getAllBinaryTiledLayer : unit -> AllBinaryTiledLayer.allBinaryTiledLayer
    method virtual getCellPositionsAt : 'any1 . 'any1 * GeographicMapCellPosition.geographicMapCellPosition array array * GeographicMapCellPosition.geographicMapCellPosition array array -> bool
    method virtual getCellPositionAtXY : int * int -> GeographicMapCellPosition.geographicMapCellPosition
    method virtual getCellPositionAtXYNoThrow : int * int -> GeographicMapCellPosition.geographicMapCellPosition
    method virtual getCellTypeFromMapCellTypeInt : int -> int
    method virtual getCellTypeAtXY : int * int -> GeographicMapCellType.geographicMapCellType
    method virtual getCellTypeAt : 'any1 . 'any1 -> GeographicMapCellType.geographicMapCellType
    method virtual getGeographicMapCellPositionFactory : 'return . unit -> 'return
    method virtual getGeographicMapCellPositionFactoryInterface : 'return . unit -> 'return
    method virtual getForegroundBasicColor : unit -> BasicColor.basicColor
    method virtual getBackgroundBasicColor : unit -> BasicColor.basicColor
  end


