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
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.building.event.BuildingEventListenerInterface *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.layer.unit.UnitWaypointBehavior *)
(* import org.allbinary.game.media.graphics.geography.map.racetrack.PathFindingInfoFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellTypeFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.racetrack.CustomMapGenerator *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathGenerator *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class noCacheWaypoint ((ownerLayer_arg : PathFindingLayerInterface.pathFindingLayerInterface), sound) =
  object (self)
    inherit WaypointBase.waypointBase (sound) as super
    val mutable ownerLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method ownerLayer = ownerLayer
    method set_ownerLayer value' = ownerLayer <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)))
        end [@@warning "-7-20"]
    

    method releaseCachedPaths () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getPathsListFromCacheOnly : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (_geographicMapCellPosition) ->
        begin
        (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getPathsListRunnable : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        ((self#createPaths ((Obj.magic geographicMapCellPosition))) :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getEndGeographicMapCellPosition : 'any1. 'any1 -> GeographicMapCellPosition.geographicMapCellPosition = fun (startGeographicMapCellPosition) ->
        let startGeographicMapCellPosition = Obj.repr startGeographicMapCellPosition in
        begin
        let endList : BasicArrayList.basicArrayList ref = ref (((ownerLayer#getEndGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        let endGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic ((BasicArrayListUtil.getInstance ())#getRandom (!endList))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr (Obj.magic startGeographicMapCellPosition)) == (Obj.repr !endGeographicMapCellPosition)) then begin
            for index = ((!endList#size ()) - 1) downto 0 do
                endGeographicMapCellPosition := (Obj.magic (!endList#get (index)));
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
        let endGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getEndGeographicMapCellPosition ((Obj.magic startGeographicMapCellPosition))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if (!endGeographicMapCellPosition == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()))))
        end;
        if ((Obj.repr (Obj.magic startGeographicMapCellPosition)) == (Obj.repr !endGeographicMapCellPosition)) then begin
            if (ownerLayer#shouldHandleStartSameAsEnd ()) then begin
                raise (Java_return (Obj.repr (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()))))
            end else begin
                raise (Failure (("Start should not be End: " ^ java_string_of (Obj.repr (!endGeographicMapCellPosition)))))
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
        ()
        end [@@warning "-7-20"]
    

    method reset () : unit =
        begin
        ignore ((self#getConnectedWaypointList ())#clear ())
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
        ();
        ();
        (* super(...) is the inherit clause *) ();
        ownerLayer <- ownerLayer_arg
      end
  end
let () = java_register_constructor "NoCacheWaypoint" (fun arguments -> Obj.repr (new noCacheWaypoint (Obj.obj arguments)))


