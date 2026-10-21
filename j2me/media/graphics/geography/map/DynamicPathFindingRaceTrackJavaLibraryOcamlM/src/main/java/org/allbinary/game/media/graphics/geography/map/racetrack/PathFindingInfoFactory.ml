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
(* package org.allbinary.game.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactoryBase *)
(* import org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapGraph *)
(* import org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapPathFinder *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorFactoryBase *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory *)
(* import org.allbinary.util.BasicArrayListS *)

let instance = ref ((Obj.magic 0))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "PathFindingInfoFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end

let () = java_register_static "PathFindingInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class pathFindingInfoFactory ((pathFinderGraphVisitorFactoryInterface_arg : PathFinderGraphVisitorFactoryBase.pathFinderGraphVisitorFactoryBase), (max : int)) =
  object (self)
    inherit BasePathFindingInfoFactory.basePathFindingInfoFactory () as super
    val mutable mAX_DIRECTIONS : int = 0
    method mAX_DIRECTIONS = mAX_DIRECTIONS
    method set_mAX_DIRECTIONS value' = mAX_DIRECTIONS <- value'
    val mutable pathFindingInfo : PathFindingInfo.pathFindingInfo = (Obj.magic 0)
    method pathFindingInfo = pathFindingInfo
    method set_pathFindingInfo value' = pathFindingInfo <- value'
    val mutable basicGeographicMapGraph : Obj.t = Obj.repr 0
    method basicGeographicMapGraph : 'r. 'r = Obj.magic basicGeographicMapGraph
    method set_basicGeographicMapGraph : 'v. 'v -> unit = fun value' -> basicGeographicMapGraph <- Obj.repr value'
    val mutable basicGeographicMapPathFinder : Obj.t = Obj.repr 0
    method basicGeographicMapPathFinder : 'r. 'r = Obj.magic basicGeographicMapPathFinder
    method set_basicGeographicMapPathFinder : 'v. 'v -> unit = fun value' -> basicGeographicMapPathFinder <- Obj.repr value'
    val mutable pathFinderGraphVisitorFactoryInterface : PathFinderGraphVisitorFactoryBase.pathFinderGraphVisitorFactoryBase = (Obj.magic 0)
    method pathFinderGraphVisitorFactoryInterface = pathFinderGraphVisitorFactoryInterface
    method set_pathFinderGraphVisitorFactoryInterface value' = pathFinderGraphVisitorFactoryInterface <- value'
    
    

    method getInstancePathFindingInfo : 'any1. 'any1 * int array array -> PathFindingInfo.pathFindingInfo = fun (geographicMapInterface, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        let pathFindingInfo_arg : PathFindingInfo.pathFindingInfo ref = ref (((new PathFindingInfo.pathFindingInfo ((pathFindingInfo#getPathFindingNodeCostInfoFactoryInterface ()), (new BasicArrayListS.basicArrayListS (1)), (new BasicArrayListS.basicArrayListS (1)))) :> PathFindingInfo.pathFindingInfo)) in ();
        ignore ((RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance ())#init ());
        (self#init ((Obj.magic geographicMapInterface), !pathFindingInfo_arg, mapArray));
        ignore ((Obj.magic basicGeographicMapPathFinder)#init ((Obj.magic geographicMapInterface), (Obj.magic basicGeographicMapGraph), (pathFinderGraphVisitorFactoryInterface#getInstance ((Obj.magic geographicMapInterface)))));
        ignore (!pathFindingInfo_arg#setPathFinder ((Obj.magic basicGeographicMapPathFinder)));
        (!pathFindingInfo_arg :> PathFindingInfo.pathFindingInfo)
        end [@@warning "-7-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 * int array array -> unit = fun (geographicMapInterface, pathFindingInfo_arg, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo_arg = Obj.repr pathFindingInfo_arg in
        begin
        ignore (super#init ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo_arg), mapArray));
        (self#buildPathFindingNodes ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo_arg), mapArray))
        end [@@warning "-7-20"]
    

    method buildPathFindingNodesForCellPosition : 'any1 'any2 'any4. 'any1 * 'any2 * int array array * 'any4 -> unit = fun (geographicMapInterface, pathFindingInfo_arg, (mapArray : int array array), cellPosition) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo_arg = Obj.repr pathFindingInfo_arg in
        let cellPosition = Obj.repr cellPosition in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let cellTypeId : int ref = ref (mapArray.(((Obj.magic cellPosition)#getRow ())).(((Obj.magic cellPosition)#getColumn ()))) in ();
        let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref ((((GeographicMapCellTypeFactory.getInstance ())#get (((Obj.magic geographicMapInterface)#getCellTypeFromMapCellTypeInt (!cellTypeId)))) :> GeographicMapCellType.geographicMapCellType)) in ();
        let raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ref = ref (((Obj.magic !geographicMapCellType) :> RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase ref = ref ((((Obj.magic pathFindingInfo_arg)#getPathFindingNodeCostInfoFactoryInterface ()) :> PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase)) in ();
        let basicGeographicMapUtil : BasicGeographicMapUtil.basicGeographicMapUtil ref = ref (((BasicGeographicMapUtil.getInstance ()) :> BasicGeographicMapUtil.basicGeographicMapUtil)) in ();
        let row : int ref = ref (0) in ();
        let column : int ref = ref (0) in ();
        let goingToGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let costFromStart : int ref = ref (0) in ();
        let costToEnd : int ref = ref (0) in ();
        for index = 0 to mAX_DIRECTIONS - 1 do
            row := (!basicGeographicMapUtil#getBorderingRow (index, (Obj.magic cellPosition)));
            column := (!basicGeographicMapUtil#getBorderingColumn (index, (Obj.magic cellPosition)));
            if ((((!row < (!allBinaryTiledLayer#getRows ())) && (!column < (!allBinaryTiledLayer#getColumns ()))) && (!row >= 0)) && (!column >= 0)) then begin
                goingToGeographicMapCellPosition := (!geographicMapCellPositionFactory#getAt (!column, !row));
                costFromStart := (!raceTrackGeographicMapCellType#getTravelCost ());
                costToEnd := !costFromStart;
                ignore (!pathFindingNodeCostInfoFactoryInterface#create ((Obj.magic geographicMapInterface), !goingToGeographicMapCellPosition, (Obj.magic cellPosition), !costFromStart, !costToEnd))
            end
        done
        end [@@warning "-7-20"]
    

    method buildPathFindingNodes : 'any1 'any2. 'any1 * 'any2 * int array array -> unit = fun (geographicMapInterface, pathFindingInfo_arg, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo_arg = Obj.repr pathFindingInfo_arg in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let totalColumns : int ref = ref ((!allBinaryTiledLayer#getColumns ())) in ();
        let totalRows : int ref = ref ((!allBinaryTiledLayer#getRows ())) in ();
        for column = 0 to !totalColumns - 1 do
            for row = 0 to !totalRows - 1 do
                (self#buildPathFindingNodesForCellPosition ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo_arg), mapArray, (!geographicMapCellPositionFactory#getAt (column, row))))
            done
        done
        end [@@warning "-7-20"]

    initializer
      begin
        mAX_DIRECTIONS <- 4;
        ();
        ();
        ();
        ();
        ();
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ("Using Dynamic Path Finding", self, !commonStrings#gET_INSTANCE))));
        basicGeographicMapPathFinder <- Obj.repr ((Obj.obj (java_new "BasicGeographicMapPathFinder" (Obj.repr (max)))));
        pathFindingInfo <- (new PathFindingInfo.pathFindingInfo ((Obj.obj (java_new "PathFindingNodeCostInfoFactory" (Obj.repr (max)))), (new BasicArrayListS.basicArrayListS (1)), (new BasicArrayListS.basicArrayListS (1))));
        basicGeographicMapGraph <- Obj.repr ((Obj.obj (java_new "BasicGeographicMapGraph" (Obj.repr ((Obj.magic (pathFindingInfo#getPathFindingNodeCostInfoFactoryInterface ())))))));
        pathFinderGraphVisitorFactoryInterface <- pathFinderGraphVisitorFactoryInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathFindingInfoFactory" (fun arguments -> Obj.repr (new pathFindingInfoFactory (Obj.obj arguments)))

let initMax ((max : int)) : unit =
        begin
        instance := (new pathFindingInfoFactory ((new SimplePathFinderGraphVisitorFactory.simplePathFinderGraphVisitorFactory (1, 1, 2147483647)), max))
        end
let () = java_register_static "PathFindingInfoFactory.initMax" (fun arguments -> Obj.repr (initMax (Obj.obj arguments)))


