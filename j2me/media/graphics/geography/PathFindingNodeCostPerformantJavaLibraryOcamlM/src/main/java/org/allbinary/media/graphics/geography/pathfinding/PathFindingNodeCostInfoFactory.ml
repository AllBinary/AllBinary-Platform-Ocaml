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
[@@@warning "-20"]
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)

class pathFindingNodeCostInfoFactory ((_max : int)) =
  object
    inherit PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase ()
    
    

    method create : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * int -> unit = fun (_geographicMapInterface, _goingToGeographicMapCellPosition, _geographicMapCellPosition, (_costFromStart : int), (_costToEnd : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getTotalCost : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> int = fun (geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let comingFromGeographicMapCellPosition = Obj.repr comingFromGeographicMapCellPosition in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref ((((Obj.magic geographicMapInterface)#getCellTypeAt ((Obj.magic comingFromGeographicMapCellPosition))) :> GeographicMapCellType.geographicMapCellType)) in ();
        let geographicMapCellType2 : GeographicMapCellType.geographicMapCellType ref = ref ((((Obj.magic geographicMapInterface)#getCellTypeAt ((Obj.magic geographicMapCellPosition))) :> GeographicMapCellType.geographicMapCellType)) in ();
        let raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ref = ref (((Obj.magic !geographicMapCellType) :> RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType)) in ();
        let raceTrackGeographicMapCellType2 : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ref = ref (((Obj.magic !geographicMapCellType2) :> RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType)) in ();
        ((java_to_int (Obj.repr ((!raceTrackGeographicMapCellType#getTravelCost ())))) + (!raceTrackGeographicMapCellType2#getTravelCost ()))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PathFindingNodeCostInfoFactory" (fun arguments -> Obj.repr (new pathFindingNodeCostInfoFactory (Obj.obj arguments)))


