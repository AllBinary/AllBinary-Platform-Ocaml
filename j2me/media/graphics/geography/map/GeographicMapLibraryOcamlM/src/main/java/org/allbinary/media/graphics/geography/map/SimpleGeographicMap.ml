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
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.string.CommonStrings *)

class simpleGeographicMap ((id_arg : int), (name_arg : string), (cellTypeIdToGeographicMapCellType_arg : int array), (tiledLayer_arg : AllBinaryTiledLayer.allBinaryTiledLayer), (foregroundBasicColor_arg : BasicColor.basicColor), (backgroundBasicColor_arg : BasicColor.basicColor)) =
  object (self)
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable id : int = (Obj.magic 0)
    method id = id
    method set_id value' = id <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable cellTypeIdToGeographicMapCellType : int array = (Obj.magic 0)
    method cellTypeIdToGeographicMapCellType = cellTypeIdToGeographicMapCellType
    method set_cellTypeIdToGeographicMapCellType value' = cellTypeIdToGeographicMapCellType <- value'
    val mutable tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer = (Obj.magic 0)
    method tiledLayer = tiledLayer
    method set_tiledLayer value' = tiledLayer <- value'
    val mutable foregroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method foregroundBasicColor = foregroundBasicColor
    method set_foregroundBasicColor value' = foregroundBasicColor <- value'
    val mutable backgroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method backgroundBasicColor = backgroundBasicColor
    method set_backgroundBasicColor value' = backgroundBasicColor <- value'
    val mutable geographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory = (Obj.magic 0)
    method geographicMapCellTypeFactory = geographicMapCellTypeFactory
    method set_geographicMapCellTypeFactory value' = geographicMapCellTypeFactory <- value'
    
    

    method getId () : int =
        begin
        id
        end
    

    method getName () : string =
        begin
        name
        end
    

    method reset () : unit =
        begin
        ()
        end
    

    method getAllBinaryTiledLayer () : AllBinaryTiledLayer.allBinaryTiledLayer =
        begin
        (tiledLayer :> AllBinaryTiledLayer.allBinaryTiledLayer)
        end
    

    method getCellTypeAt : 'any1. 'any1 -> GeographicMapCellType.geographicMapCellType = fun (cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        begin
        let i_column : int ref = ref (((Obj.magic cellPosition)#getColumn ())) in ();
        let i_row : int ref = ref (((Obj.magic cellPosition)#getRow ())) in ();
        let cellTypeId : int ref = ref ((tiledLayer#getCell (!i_column, !i_row))) in ();
        if (!cellTypeId < 0) then begin
            cellTypeId := (tiledLayer#getAnimatedTile (!cellTypeId))
        end;
        ((geographicMapCellTypeFactory#get (cellTypeIdToGeographicMapCellType.(!cellTypeId))) :> GeographicMapCellType.geographicMapCellType)
        end [@@warning "-20"]
    

    method getCellTypeFromMapCellTypeInt ((cellTypeId : int)) : int =
        begin
        cellTypeIdToGeographicMapCellType.(cellTypeId)
        end
    

    method getForegroundBasicColor () : BasicColor.basicColor =
        begin
        (foregroundBasicColor :> BasicColor.basicColor)
        end
    

    method setForegroundBasicColor : 'any1. 'any1 -> unit = fun (foregroundBasicColor_arg) ->
        let foregroundBasicColor_arg = Obj.repr foregroundBasicColor_arg in
        begin
        foregroundBasicColor <- (Obj.magic foregroundBasicColor_arg)
        end [@@warning "-20"]
    

    method getBackgroundBasicColor () : BasicColor.basicColor =
        begin
        (backgroundBasicColor :> BasicColor.basicColor)
        end
    

    method setBackgroundBasicColor : 'any1. 'any1 -> unit = fun (backgroundBasicColor_arg) ->
        let backgroundBasicColor_arg = Obj.repr backgroundBasicColor_arg in
        begin
        backgroundBasicColor <- (Obj.magic backgroundBasicColor_arg)
        end [@@warning "-20"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        ();
        ();
        foregroundBasicColor <- ((BasicColorFactory.getInstance ())#nULL_COLOR :> BasicColor.basicColor);
        backgroundBasicColor <- ((BasicColorFactory.getInstance ())#nULL_COLOR :> BasicColor.basicColor);
        geographicMapCellTypeFactory <- ((GeographicMapCellTypeFactory.getInstance ()) :> GeographicMapCellTypeFactory.geographicMapCellTypeFactory);
        ();
        id <- id_arg;
        name <- name_arg;
        cellTypeIdToGeographicMapCellType <- cellTypeIdToGeographicMapCellType_arg;
        tiledLayer <- tiledLayer_arg;
        (self#setBackgroundBasicColor (backgroundBasicColor_arg));
        (self#setForegroundBasicColor (foregroundBasicColor_arg))
      end
  end
let () = java_register_constructor "SimpleGeographicMap" (fun arguments -> Obj.repr (new simpleGeographicMap (Obj.obj arguments)))


