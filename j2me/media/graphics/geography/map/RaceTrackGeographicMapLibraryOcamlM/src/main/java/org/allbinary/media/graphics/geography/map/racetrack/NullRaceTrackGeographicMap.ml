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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPositionFactoryInterface *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)

class nullRaceTrackGeographicMap () =
  object
    

    method getId () : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getName () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method reset () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getAllBinaryTiledLayer () : AllBinaryTiledLayer.allBinaryTiledLayer =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCellPositionsAt : 'any1. 'any1 * GeographicMapCellPosition.geographicMapCellPosition array array * GeographicMapCellPosition.geographicMapCellPosition array array -> bool = fun (_layer, (_currentCellPositionArray : GeographicMapCellPosition.geographicMapCellPosition array array), (_cellPositionArray : GeographicMapCellPosition.geographicMapCellPosition array array)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getCellPositionAtXY ((_x : int), (_y : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCellPositionAtXYNoThrow ((_x : int), (_y : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCellTypeFromMapCellTypeInt ((_cellTypeId : int)) : int =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCellTypeAtXY ((_x : int), (_y : int)) : GeographicMapCellType.geographicMapCellType =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCellTypeAt : 'any1. 'any1 -> GeographicMapCellType.geographicMapCellType = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getGeographicMapCellPositionFactory () : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGeographicMapCellPositionFactoryInterface () : GeographicMapCellPositionFactoryInterface.geographicMapCellPositionFactoryInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getForegroundBasicColor () : BasicColor.basicColor =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getBackgroundBasicColor () : BasicColor.basicColor =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getRaceTrackInfo () : RaceTrackInfo.raceTrackInfo =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setRaceTrackInfo : 'any1. 'any1 -> unit = fun (_aRaceTrackInfo) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getRaceTrackData () : RaceTrackData.raceTrackData =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setRaceTrackData : 'any1. 'any1 -> unit = fun (_raceTrackData) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullRaceTrackGeographicMap" (fun arguments -> Obj.repr (new nullRaceTrackGeographicMap (Obj.obj arguments)))

let nULL_RACE_TRACK_GEOGRAPHIC_MAP = (new nullRaceTrackGeographicMap ())
let get_nULL_RACE_TRACK_GEOGRAPHIC_MAP () = nULL_RACE_TRACK_GEOGRAPHIC_MAP
let () = java_register_static "NullRaceTrackGeographicMap.get_nULL_RACE_TRACK_GEOGRAPHIC_MAP" (fun _ -> Obj.repr (get_nULL_RACE_TRACK_GEOGRAPHIC_MAP ()))


