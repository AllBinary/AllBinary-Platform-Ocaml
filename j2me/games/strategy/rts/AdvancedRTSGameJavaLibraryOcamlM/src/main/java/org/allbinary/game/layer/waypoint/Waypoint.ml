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
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.building.event.BuildingEventListenerInterface *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.layer.unit.UnitWaypointBehavior *)
(* import org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap *)
(* import org.allbinary.media.graphics.geography.pathfinding.BasicGeographicMapExtractedPathsCacheFactory *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathGenerator *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class waypoint ((ownerLayer_arg : PathFindingLayerInterface.pathFindingLayerInterface), sound) =
  object (self)
    inherit WaypointBase.waypointBase (sound) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable ownerLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method ownerLayer = ownerLayer
    method set_ownerLayer value' = ownerLayer <- value'
    val mutable endList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method endList = endList
    method set_endList value' = endList <- value'
    val mutable paths : BasicArrayList.basicArrayList array array = (Obj.magic 0)
    method paths = paths
    method set_paths value' = paths <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        if ((Obj.repr paths) != (Obj.repr basicArrayListUtil#nULL_ARRAY_OF_ARRAY)) then begin
            raise (Failure ("RuntimeException"))
        end;
        endList <- (ownerLayer#getEndGeographicMapCellPositionList ());
        paths <- (Array.make_matrix ((!tiledLayer#getColumns ())) ((!tiledLayer#getRows ())) (Obj.magic 0));
        (self#clearPaths ())
        end [@@warning "-7-20"]
    

    method releaseCachedPaths () : unit =
        begin
        let columnIndex : int ref = ref ((Array.length paths)) in ();
        while ((columnIndex := !columnIndex - 1; !columnIndex) >= 0) do
            let rowIndex : int ref = ref ((Array.length paths)) in ();
            while ((rowIndex := !rowIndex - 1; !rowIndex) >= 0) do
                let pathsList : BasicArrayList.basicArrayList ref = ref ((paths.(!columnIndex).(!rowIndex) :> BasicArrayList.basicArrayList)) in ();
                if ((Obj.repr !pathsList) != (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
                    ignore ((BasicGeographicMapExtractedPathsCacheFactory.getInstance ())#release (!pathsList))
                end
            done
        done
        end [@@warning "-7"]
    

    method getPathsListFromCacheOnly : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        (paths.(((Obj.magic geographicMapCellPosition)#getColumn ())).(((Obj.magic geographicMapCellPosition)#getRow ())) :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getPathsListRunnable : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let pathsList : BasicArrayList.basicArrayList ref = ref ((paths.(((Obj.magic geographicMapCellPosition)#getColumn ())).(((Obj.magic geographicMapCellPosition)#getRow ())) :> BasicArrayList.basicArrayList)) in ();
        if ((Obj.repr !pathsList) == (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
            pathsList := (self#createPaths ((Obj.magic geographicMapCellPosition)));
            paths.(((Obj.magic geographicMapCellPosition)#getColumn ())).(((Obj.magic geographicMapCellPosition)#set_getRow ())) (!pathsList)
        end;
        (!pathsList :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getEndGeographicMapCellPosition : 'any1. 'any1 -> GeographicMapCellPosition.geographicMapCellPosition = fun (startGeographicMapCellPosition) ->
        let startGeographicMapCellPosition = Obj.repr startGeographicMapCellPosition in
        begin
        let endGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (basicArrayListUtil#getRandom (endList))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr (Obj.magic startGeographicMapCellPosition)) == (Obj.repr !endGeographicMapCellPosition)) then begin
            for index = ((endList#size ()) - 1) downto 0 do
                endGeographicMapCellPosition := (Obj.magic (endList#get (index)));
                if ((Obj.repr (Obj.magic startGeographicMapCellPosition)) != (Obj.repr !endGeographicMapCellPosition)) then begin
                    raise Java_break
                end
            done
        end;
        (!endGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7-20"]
    

    method createPaths : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (startGeographicMapCellPosition) ->
        let startGeographicMapCellPosition = Obj.repr startGeographicMapCellPosition in
        try
        begin
        if ((endList#size ()) = 0) then begin
            raise (Java_return (Obj.repr ((basicArrayListUtil#getImmutableInstance ()))))
        end;
        let endGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getEndGeographicMapCellPosition ((Obj.magic startGeographicMapCellPosition))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if (!endGeographicMapCellPosition == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((basicArrayListUtil#getImmutableInstance ()))))
        end;
        if ((Obj.repr (Obj.magic startGeographicMapCellPosition)) == (Obj.repr !endGeographicMapCellPosition)) then begin
            if (ownerLayer#shouldHandleStartSameAsEnd ()) then begin
                raise (Java_return (Obj.repr ((basicArrayListUtil#getImmutableInstance ()))))
            end else begin
                raise (Failure (("Start should not be End: " ^ java_string_of (Obj.repr ((endList#size ()))))))
            end
        end;
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let raceTrackGeographicMap : RaceTrackGeographicMap.raceTrackGeographicMap ref = ref (((Obj.magic !geographicMapInterface) :> RaceTrackGeographicMap.raceTrackGeographicMap)) in ();
        let raceTrackGeographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory ref = ref (((!raceTrackGeographicMap#getGeographicMapCellTypeFactory ()) :> GeographicMapCellTypeFactory.geographicMapCellTypeFactory)) in ();
        let customMapGenerator : Obj.t ref = ref ((Obj.repr (Obj.magic (!raceTrackGeographicMap#getCustomMapGenerator ())))) in ();
        ignore ((Obj.magic !customMapGenerator)#copyMapIntoCustomMap ());
        let customMapArray : int array array ref = ref (((Obj.magic !customMapGenerator)#getCustomMapArray ())) in ();
        !customMapArray.(((Obj.magic startGeographicMapCellPosition)#getRow ())).(((Obj.magic startGeographicMapCellPosition)#set_getColumn ())) ((!raceTrackGeographicMapCellTypeFactory#getStartType ()));
        !customMapArray.((!endGeographicMapCellPosition#getRow ())).((!endGeographicMapCellPosition#set_getColumn ())) ((!raceTrackGeographicMapCellTypeFactory#getEndType ()));
        let pathFindingInfo : PathFindingInfo.pathFindingInfo ref = ref ((((Obj.magic (java_call_static "PathFindingInfoFactory.getInstance" (Obj.repr ())))#getInstancePathFindingInfo (!raceTrackGeographicMap, !customMapArray)) :> PathFindingInfo.pathFindingInfo)) in ();
        let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic (java_call_static "PathGenerator.getInstance" (Obj.repr ())))#getInstanceNoCache (!geographicMapInterface, !pathFindingInfo, 2)) :> BasicArrayList.basicArrayList)) in ();
        if ((!list#size ()) < 1) then begin
            raise (Failure ("Path may have been cleared by clearing caching"))
        end;
        (!list :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onBuildingEvent : 'any1. 'any1 -> unit = fun (_event) ->
        begin
        (self#clearPaths ())
        end [@@warning "-7-20"]
    

    method clearPaths () : unit =
        begin
        let columnIndex : int ref = ref ((Array.length paths)) in ();
        while ((columnIndex := !columnIndex - 1; !columnIndex) >= 0) do
            let rowIndex : int ref = ref ((Array.length paths)) in ();
            while ((rowIndex := !rowIndex - 1; !rowIndex) >= 0) do
                paths.(!columnIndex).(!rowIndex) <- (basicArrayListUtil#getImmutableInstance ())
            done
        done
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        ignore ((self#getConnectedWaypointList ())#clear ());
        (self#releaseCachedPaths ())
        end [@@warning "-7"]
    

    method visit : 'any1. 'any1 -> unit = fun (unitLayer) ->
        let unitLayer = Obj.repr unitLayer in
        try
        begin
        if ((Obj.repr ((Obj.magic unitLayer)#getGroupInterface ()).(0)) != (Obj.repr (ownerLayer#getGroupInterface ()).(0))) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let size : int ref = ref (((self#getConnectedWaypointList ())#size ())) in ();
        if (!size > 0) then begin
            let unitWaypointBehavior : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic unitLayer)#getWaypointBehavior ())))) in ();
            while (((self#getConnectedWaypointList ())#size ()) > 0) do
                let rtsLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic ((self#getConnectedWaypointList ())#get (0))) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
                if (!rtsLayer#isDestroyed ()) then begin
                    ignore ((self#getConnectedWaypointList ())#remove (!rtsLayer))
                end else begin
                    ignore ((Obj.magic unitLayer)#handleCost (ownerLayer));
                    ignore ((Obj.magic !unitWaypointBehavior)#insertWaypoint (0, !rtsLayer));
                    raise Java_break
                end
            done
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        ();
        endList <- ((basicArrayListUtil#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        paths <- basicArrayListUtil#nULL_ARRAY_OF_ARRAY;
        ();
        (* super(...) is the inherit clause *) ();
        ownerLayer <- ownerLayer_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "Waypoint" (fun arguments -> Obj.repr (new waypoint (Obj.obj arguments)))


