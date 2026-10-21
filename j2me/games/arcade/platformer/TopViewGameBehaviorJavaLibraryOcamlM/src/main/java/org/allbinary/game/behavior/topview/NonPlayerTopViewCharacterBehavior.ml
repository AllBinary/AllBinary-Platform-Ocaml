(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.behavior.topview *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.media.graphics.geography.map.MultiGeographicMapBehavior *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.terrain.BasicTerrainInfo *)
(* import org.allbinary.game.terrain.TerrainEvent *)
(* import org.allbinary.game.terrain.TerrainEventCircularStaticPool *)
(* import org.allbinary.game.terrain.TerrainEventHandler *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)

class nonPlayerTopViewCharacterBehavior () =
  object (self)
    inherit TopViewCharacterBehavior.topViewCharacterBehavior ()
    val mutable geographicMapBehavior : MultiGeographicMapBehavior.multiGeographicMapBehavior = (Obj.magic 0)
    method geographicMapBehavior = geographicMapBehavior
    method set_geographicMapBehavior value' = geographicMapBehavior <- value'
    val mutable cLIFF : BasicTerrainInfo.basicTerrainInfo = (Obj.magic 0)
    method cLIFF = cLIFF
    method set_cLIFF value' = cLIFF <- value'
    

    method terrainEvent : 'any1 'any2 'any7. 'any1 * 'any2 * int * int * BasicGeographicMap.basicGeographicMap array * GeographicMapCellType.geographicMapCellType array * 'any7 -> unit = fun (layer, direction, (_x : int), (_y : int), (geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (geographicMapCellTypeArray : GeographicMapCellType.geographicMapCellType array), geographicMapCellPosition) ->
        let layer = Obj.repr layer in
        let direction = Obj.repr direction in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let maxColumns : int ref = ref (((geographicMapInterfaceArray.(0)#getAllBinaryTiledLayer ())#getColumns ())) in ();
        if ((((Obj.magic geographicMapCellPosition)#getColumn ()) > 0) && (((Obj.magic geographicMapCellPosition)#getColumn ()) < !maxColumns)) then begin
            let nextTerrainGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((geographicMapInterfaceArray.(0)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
            if ((Obj.repr (Obj.magic direction)) == (Obj.repr (DirectionFactory.getInstance ())#lEFT)) then begin
                nextTerrainGeographicMapCellPosition := (!geographicMapCellPositionFactory#getAt ((((Obj.magic geographicMapCellPosition)#getColumn ()) - 1), ((Obj.magic geographicMapCellPosition)#getRow ())))
            end else if ((Obj.repr (Obj.magic direction)) == (Obj.repr (DirectionFactory.getInstance ())#rIGHT)) then begin
                nextTerrainGeographicMapCellPosition := (!geographicMapCellPositionFactory#getAt ((((Obj.magic geographicMapCellPosition)#getColumn ()) + 1), ((Obj.magic geographicMapCellPosition)#getRow ())))
            end;
            ignore (geographicMapBehavior#getCellTypeAt (geographicMapInterfaceArray, geographicMapCellTypeArray, !nextTerrainGeographicMapCellPosition));
            let hasSolidBlock : bool ref = ref ((self#hasSolidBlock (geographicMapInterfaceArray, geographicMapCellTypeArray))) in ();
            if (not !hasSolidBlock) then begin
                let terrainEvent : TerrainEvent.terrainEvent ref = ref ((((TerrainEventCircularStaticPool.getInstance ())#getNext (cLIFF)) :> TerrainEvent.terrainEvent)) in ();
                ignore ((TerrainEventHandler.getInstance ((Obj.magic layer)))#fireEvent (!terrainEvent))
            end
        end
        end [@@warning "-7-20"]
    

    method terrainMove : 'any1. 'any1 * BasicGeographicMap.basicGeographicMap array * int * int -> unit = fun (layer, (_geographicMapInterfaceArray : BasicGeographicMap.basicGeographicMap array), (x : int), (y : int)) ->
        let layer = Obj.repr layer in
        begin
        ignore ((Obj.magic layer)#moveDXY (x, y))
        end [@@warning "-7-20"]

    initializer
      begin
        geographicMapBehavior <- ((new MultiGeographicMapBehavior.multiGeographicMapBehavior ()) :> MultiGeographicMapBehavior.multiGeographicMapBehavior);
        cLIFF <- ((new BasicTerrainInfo.basicTerrainInfo ((AngleFactory.getInstance ())#dOWN)) :> BasicTerrainInfo.basicTerrainInfo);
        ()
      end
  end
let () = java_register_constructor "NonPlayerTopViewCharacterBehavior" (fun arguments -> Obj.repr (new nonPlayerTopViewCharacterBehavior (Obj.obj arguments)))


