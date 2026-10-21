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
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.WaypointBehaviorBase *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class waypointLogHelper () =
  object
    

    method onWaypointEvent : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _advancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method addWaypointFromBuilding : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _advancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method addWaypointFromBuildingList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_associatedAdvancedRTSGameLayer, _advancedRTSGameLayer, _list) ->
        begin
        ()
        end [@@warning "-20"]
    

    method insertWaypoint : 'any1 'any3. 'any1 * int * 'any3 * string -> unit = fun (_associatedAdvancedRTSGameLayer, (_index : int), _rtsLayer, (_waypointName : string)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method insertWaypointList : 'any1 'any3 'any5. 'any1 * int * 'any3 * string * 'any5 -> unit = fun (_associatedAdvancedRTSGameLayer, (_index : int), _rtsLayer, (_waypointName : string), _list) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setRandomGeographicMapCellHistoryList : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _pathsList) ->
        begin
        ()
        end [@@warning "-20"]
    

    method moveAwayFromBuilding : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method needToMove : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setRandomGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setCurrentPathGeographicMapCellPosition : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_associatedAdvancedRTSGameLayer, _existingCurrentPathGeographicMapCellPosition, _currentPathGeographicMapCellPosition) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setNextUnvisitedPathGeographicMapCellPosition : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_associatedAdvancedRTSGameLayer, _existingNextUnvisitedPathGeographicMapCellPosition, _nextUnvisitedPathGeographicMapCellPosition) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "WaypointLogHelper" (fun arguments -> Obj.repr (new waypointLogHelper (Obj.obj arguments)))

let instance = (new waypointLogHelper ())
let get_instance () = instance
let () = java_register_static "WaypointLogHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "WaypointLogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


