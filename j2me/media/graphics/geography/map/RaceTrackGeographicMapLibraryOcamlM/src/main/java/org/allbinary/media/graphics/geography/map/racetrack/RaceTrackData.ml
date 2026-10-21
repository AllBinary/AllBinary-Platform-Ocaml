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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.logic.NullUtil *)

class raceTrackData ((id_arg : int), (cellWidth_arg : int), (cellHeight_arg : int), (miniCellWidth_arg : int), (miniCellHeight_arg : int), (cellTypeIdToGeographicMapCellTypeArray_arg : int array), (mapArray_arg : int array array)) =
  object
    val mutable tileSetImage : Obj.t = Obj.repr 0
    method tileSetImage : 'r. 'r = Obj.magic tileSetImage
    method set_tileSetImage : 'v. 'v -> unit = fun value' -> tileSetImage <- Obj.repr value'
    val mutable miniTileSetImage : Obj.t = Obj.repr 0
    method miniTileSetImage : 'r. 'r = Obj.magic miniTileSetImage
    method set_miniTileSetImage : 'v. 'v -> unit = fun value' -> miniTileSetImage <- Obj.repr value'
    val mutable cellWidth : int = 0
    method cellWidth = cellWidth
    method set_cellWidth value' = cellWidth <- value'
    val mutable cellHeight : int = 0
    method cellHeight = cellHeight
    method set_cellHeight value' = cellHeight <- value'
    val mutable miniCellWidth : int = 0
    method miniCellWidth = miniCellWidth
    method set_miniCellWidth value' = miniCellWidth <- value'
    val mutable miniCellHeight : int = 0
    method miniCellHeight = miniCellHeight
    method set_miniCellHeight value' = miniCellHeight <- value'
    val mutable mapArray : int array array = (Obj.magic 0)
    method mapArray = mapArray
    method set_mapArray value' = mapArray <- value'
    val mutable cellTypeIdToGeographicMapCellTypeArray : int array = (Obj.magic 0)
    method cellTypeIdToGeographicMapCellTypeArray = cellTypeIdToGeographicMapCellTypeArray
    method set_cellTypeIdToGeographicMapCellTypeArray value' = cellTypeIdToGeographicMapCellTypeArray <- value'
    val mutable nO_OVER_PASSES_ARRAY : CellPosition.cellPosition array = (Obj.magic 0)
    method nO_OVER_PASSES_ARRAY = nO_OVER_PASSES_ARRAY
    method set_nO_OVER_PASSES_ARRAY value' = nO_OVER_PASSES_ARRAY <- value'
    val mutable overPassGeographicMapCellPositionArray : CellPosition.cellPosition array = (Obj.magic 0)
    method overPassGeographicMapCellPositionArray = overPassGeographicMapCellPositionArray
    method set_overPassGeographicMapCellPositionArray value' = overPassGeographicMapCellPositionArray <- value'
    val mutable id : int = (Obj.magic 0)
    method id = id
    method set_id value' = id <- value'
    
    

    method setMapArray ((mapArray_arg : int array array)) : unit =
        begin
        mapArray <- mapArray_arg
        end
    

    method getMapArray () : int array array =
        begin
        mapArray
        end
    

    method setCellTypeIdToGeographicMapCellTypeArray ((cellTypeIdToGeographicMapCellTypeArray_arg : int array)) : unit =
        begin
        cellTypeIdToGeographicMapCellTypeArray <- cellTypeIdToGeographicMapCellTypeArray_arg
        end
    

    method getCellTypeIdToGeographicMapCellTypeArray () : int array =
        begin
        cellTypeIdToGeographicMapCellTypeArray
        end
    

    method setCellWidth ((cellWidth_arg : int)) : unit =
        begin
        cellWidth <- cellWidth_arg
        end
    

    method getCellWidth () : int =
        begin
        cellWidth
        end
    

    method setCellHeight ((cellHeight_arg : int)) : unit =
        begin
        cellHeight <- cellHeight_arg
        end
    

    method getCellHeight () : int =
        begin
        cellHeight
        end
    

    method getOverPassGeographicMapCellPositionArray () : CellPosition.cellPosition array =
        begin
        overPassGeographicMapCellPositionArray
        end
    

    method setOverPassGeographicMapCellPositionArray ((overPassGeographicMapCellPositionArray_arg : CellPosition.cellPosition array)) : unit =
        begin
        overPassGeographicMapCellPositionArray <- overPassGeographicMapCellPositionArray_arg
        end
    

    method getTileSetImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic tileSetImage)))
        end
    

    method setTileSetImage : 'any1. 'any1 -> unit = fun (tileSetImage_arg) ->
        let tileSetImage_arg = Obj.repr tileSetImage_arg in
        begin
        tileSetImage <- Obj.repr ((Obj.magic tileSetImage_arg))
        end [@@warning "-20"]
    

    method getMiniTileSetImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic miniTileSetImage)))
        end
    

    method setMiniTileSetImage : 'any1. 'any1 -> unit = fun (miniTileSetImage_arg) ->
        let miniTileSetImage_arg = Obj.repr miniTileSetImage_arg in
        begin
        miniTileSetImage <- Obj.repr ((Obj.magic miniTileSetImage_arg))
        end [@@warning "-20"]
    

    method getMiniCellWidth () : int =
        begin
        miniCellWidth
        end
    

    method setMiniCellWidth ((miniCellWidth_arg : int)) : unit =
        begin
        miniCellWidth <- miniCellWidth_arg
        end
    

    method getMiniCellHeight () : int =
        begin
        miniCellHeight
        end
    

    method setMiniCellHeight ((miniCellHeight_arg : int)) : unit =
        begin
        miniCellHeight <- miniCellHeight_arg
        end
    

    method setId ((id_arg : int)) : unit =
        begin
        id <- id_arg
        end
    

    method getId () : int =
        begin
        id
        end

    initializer
      begin
        tileSetImage <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        miniTileSetImage <- (Obj.repr (NullImage.get_nULL_IMAGE ()));
        cellWidth <- 0;
        cellHeight <- 0;
        miniCellWidth <- 0;
        miniCellHeight <- 0;
        mapArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY_ARRAY;
        cellTypeIdToGeographicMapCellTypeArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        nO_OVER_PASSES_ARRAY <- (Array.make (0) (Obj.magic 0));
        overPassGeographicMapCellPositionArray <- nO_OVER_PASSES_ARRAY;
        ();
        ();
        id <- id_arg;
        cellWidth <- cellWidth_arg;
        cellHeight <- cellHeight_arg;
        miniCellWidth <- miniCellWidth_arg;
        miniCellHeight <- miniCellHeight_arg;
        mapArray <- mapArray_arg;
        cellTypeIdToGeographicMapCellTypeArray <- cellTypeIdToGeographicMapCellTypeArray_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "RaceTrackData" (fun arguments -> Obj.repr (new raceTrackData (Obj.obj arguments)))


