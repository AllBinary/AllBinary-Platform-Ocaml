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
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class waypoint2LogHelper () =
  object
    

    method initRange : 'any1. 'any1 * int * int -> unit = fun (_associatedAdvancedRTSGameLayer, (_closeRange : int), (_sensorRange : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processPossibleTarget : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * bool * bool -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _layerInterface, (_anotherTargetDistance : int), (_isShorterThanCurrentTargetDistance : bool), (_isCurrentTargetDestroyed : bool)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processSetTarget : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _layerInterface, (_anotherTargetDistance : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processPossibleTargetCloser : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _layerInterface, (_anotherTargetDistance : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setTarget : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _layerInterface, (_anotherTargetDistance : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setTargetPath : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method setTargetPathIgnoreNewPath : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processWaypoint : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _targetLayer, (_size : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processWaypointTracked : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processWaypointTrackedVisit : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _geographicMapCellPosition) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processWaypointTrackedWithoutProgress : 'any1. 'any1 * string -> unit = fun (_associatedAdvancedRTSGameLayer, (_reason : string)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method wander : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method targetDestroyed : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processTargeting : 'any1. 'any1 * int * int -> unit = fun (_associatedAdvancedRTSGameLayer, (_dx : int), (_dy : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processTargetingNonWayPoint : 'any1. 'any1 * int * int -> unit = fun (_associatedAdvancedRTSGameLayer, (_dx : int), (_dy : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method removeWaypoint : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * string -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _waypointLayer, (_reason : string)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method removeWaypointList : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_associatedAdvancedRTSGameLayer, _unitWaypointBehavior2, _list) ->
        begin
        ()
        end [@@warning "-20"]
    

    method removeWaypointClear : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method clearTarget : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method addWaypointFromUser : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_associatedAdvancedRTSGameLayer, _advancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]
    

    method targetMovedSoRetarget : 'any1. 'any1 -> unit = fun (_associatedAdvancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "Waypoint2LogHelper" (fun arguments -> Obj.repr (new waypoint2LogHelper (Obj.obj arguments)))

let instance = (new waypoint2LogHelper ())
let get_instance () = instance
let () = java_register_static "Waypoint2LogHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "Waypoint2LogHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


