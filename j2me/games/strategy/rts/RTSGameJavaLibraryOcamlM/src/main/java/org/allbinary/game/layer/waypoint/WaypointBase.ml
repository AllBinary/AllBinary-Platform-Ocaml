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
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.audio.NoSound *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.pathfinding.MultipassState *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class waypointBase (sound_arg) =
  object (self)
    val mutable connectedWaypointList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method connectedWaypointList = connectedWaypointList
    method set_connectedWaypointList value' = connectedWaypointList <- value'
    val mutable sound : Obj.t = Obj.repr 0
    method sound : 'r. 'r = Obj.magic sound
    method set_sound : 'v. 'v -> unit = fun value' -> sound <- Obj.repr value'
    val mutable allBinaryGameLayerManagerP : AllBinaryGameLayerManager.allBinaryGameLayerManager = (Obj.magic 0)
    method allBinaryGameLayerManagerP = allBinaryGameLayerManagerP
    method set_allBinaryGameLayerManagerP value' = allBinaryGameLayerManagerP <- value'
    
    

    method getSound : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic sound)))
        end
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        allBinaryGameLayerManagerP <- (Obj.magic allBinaryGameLayerManager)
        end [@@warning "-20"]
    

    method getConnectedWaypointList () : BasicArrayList.basicArrayList =
        begin
        (connectedWaypointList :> BasicArrayList.basicArrayList)
        end
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method getPathFindingInfo : 'any1. 'any1 -> PathFindingInfo.pathFindingInfo = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getPathsList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (_geographicMapCellPosition, _pathFindingInfo, _multipassState) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getPathsListRunnable : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getPathsListFromCacheOnly : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method visit : 'any1. 'any1 -> unit = fun (_unitLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method reset () : unit =
        begin
        ()
        end
    

    method getType () : int =
        begin
        0
        end

    initializer
      begin
        connectedWaypointList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        allBinaryGameLayerManagerP <- ((AllBinaryGameLayerManager.getNullInstance ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager);
        ();
        sound <- Obj.repr (sound_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "WaypointBase" (fun arguments -> Obj.repr (new waypointBase (Obj.obj arguments)))

let nULL_WAYPOINT_BASE = ref ((new waypointBase ((NoSound.getInstance ()))))
let get_nULL_WAYPOINT_BASE () = !nULL_WAYPOINT_BASE
let set_nULL_WAYPOINT_BASE value' = nULL_WAYPOINT_BASE := value'
let () = java_register_static "WaypointBase.get_nULL_WAYPOINT_BASE" (fun _ -> Obj.repr (get_nULL_WAYPOINT_BASE ()))


