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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.waypoint.WaypointLayer *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)

class customMapGenerator ((raceTrackGeographicMap_arg : RaceTrackGeographicMap.raceTrackGeographicMap)) =
  object (self)
    inherit CustomMapGeneratorBase.customMapGeneratorBase ()
    val mutable customMapArray : int array array = (Obj.magic 0)
    method customMapArray = customMapArray
    method set_customMapArray value' = customMapArray <- value'
    val mutable raceTrackGeographicMap : RaceTrackGeographicMap.raceTrackGeographicMap = (Obj.magic 0)
    method raceTrackGeographicMap = raceTrackGeographicMap
    method set_raceTrackGeographicMap value' = raceTrackGeographicMap <- value'
    val mutable geographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory = (Obj.magic 0)
    method geographicMapCellTypeFactory = geographicMapCellTypeFactory
    method set_geographicMapCellTypeFactory value' = geographicMapCellTypeFactory <- value'
    val mutable dropCellPositionHistory : DropCellPositionHistory.dropCellPositionHistory = (Obj.magic 0)
    method dropCellPositionHistory = dropCellPositionHistory
    method set_dropCellPositionHistory value' = dropCellPositionHistory <- value'
    
    

    method copyMapIntoCustomMap () : unit =
        begin
        let mapArray : int array array ref = ref (((raceTrackGeographicMap#getRaceTrackData ())#getMapArray ())) in ();
        let startIndex2 : int ref = ref (((Array.length !mapArray.(0)) - 1)) in ();
        for index = ((Array.length !mapArray) - 1) downto 0 do
            for index2 = !startIndex2 downto 0 do
                customMapArray.(index).(index2) <- (self#getCustomType (index2, index, !mapArray.(index).(index2)))
            done
        done
        end [@@warning "-7"]
    

    method getCustomType ((column : int), (row : int), (currentType : int)) : int =
        try
        begin
        let emptyType : int ref = ref ((geographicMapCellTypeFactory#getEmptyType ())) in ();
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((raceTrackGeographicMap#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let cellPosition : CellPosition.cellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (column, row)) :> CellPosition.cellPosition)) in ();
        if (dropCellPositionHistory#isCellPositionWithDrop (!cellPosition)) then begin
            let layer : AllBinaryLayer.allBinaryLayer ref = ref (((dropCellPositionHistory#getLayerInterface (!cellPosition)) :> AllBinaryLayer.allBinaryLayer)) in ();
            if ((Obj.repr !layer) == (Obj.repr (AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()))) then begin
                raise (Java_return (Obj.repr (!emptyType)))
            end;
            let rtsLayer : Obj.t ref = ref ((Obj.repr (Obj.magic !layer))) in ();
            if (not (((Obj.repr ((Obj.magic !rtsLayer)#getType ())) == (Obj.repr (Obj.magic (java_call_static "WaypointLayer.getStaticType" (Obj.repr ()))))))) then begin
                raise (Java_return (Obj.repr (!emptyType)))
            end
        end;
        currentType
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getCustomMapArray () : int array array =
        begin
        customMapArray
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        dropCellPositionHistory <- ((DropCellPositionHistory.getInstance ()) :> DropCellPositionHistory.dropCellPositionHistory);
        ();
        raceTrackGeographicMap <- raceTrackGeographicMap_arg;
        geographicMapCellTypeFactory <- (raceTrackGeographicMap#getGeographicMapCellTypeFactory ());
        let mapArray : int array array ref = ref (((raceTrackGeographicMap_arg#getRaceTrackData ())#getMapArray ())) in ();
        let size2 : int ref = ref ((Array.length !mapArray.(0))) in ();
        customMapArray <- (Array.make_matrix ((Array.length !mapArray)) (!size2) 0);
        if (((Array.length !mapArray) <> (Array.length customMapArray)) || ((Array.length !mapArray.(0)) <> (Array.length customMapArray.(0)))) then begin
            raise (Failure ("Array Incorrect"))
        end
      end
  end
let () = java_register_constructor "CustomMapGenerator" (fun arguments -> Obj.repr (new customMapGenerator (Obj.obj arguments)))


