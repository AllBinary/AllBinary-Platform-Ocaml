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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.animation.caption.CaptionAnimationHelperBase *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.waypoint.Waypoint2LogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointLogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class nullPathFindingLayer () =
  object
    

    method getName () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getEndGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method shouldHandleStartSameAsEnd () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGeographicMapCellPositionArea () : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method handleCost : 'any1. 'any1 -> unit = fun (_ownerLayer) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getParentLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getRTSLayer2LogHelper () : RTSLayer2LogHelper.rTSLayer2LogHelper =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setTarget : 'any1. 'any1 -> unit = fun (_targetGameLayer) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_geographicMapCellHistory, _geographicMapCellPositionBasicArrayList) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getMoveOutOfBuildAreaPath : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method setClosestGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (_pathsList) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method teleportTo : 'any1. 'any1 -> unit = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method setLoad ((_resource : int)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getSurroundingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isSelected () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method shouldAddWaypointFromBuilding () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isShowMoreCaptionStates () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method trackTo ((_reason : string)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method trackToDXY ((_dx : int), (_dy : int)) : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method buildingChase : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_allbinaryLayer, _cellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getTrackingEvent () : TrackingEvent.trackingEvent =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method allStop () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isWaypointListEmptyOrOnlyTargets () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCurrentGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getTopLeftGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCaptionAnimationHelper () : CaptionAnimationHelperBase.captionAnimationHelperBase =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWaypointBehavior () : WaypointBehaviorBase.waypointBehaviorBase =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWaypointLogHelper () : WaypointLogHelper.waypointLogHelper =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWaypoint2LogHelper () : Waypoint2LogHelper.waypoint2LogHelper =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getWaypointRunnableLogHelper () : WaypointRunnableLogHelper.waypointRunnableLogHelper =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getGroupInterface : 'return. unit -> 'return = fun () ->
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isDestroyed () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getSourceId () : int =
        begin
        raise (Failure ("RuntimeException"))
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullPathFindingLayer" (fun arguments -> Obj.repr (new nullPathFindingLayer (Obj.obj arguments)))

let nULL_PATH_FINDING_LAYER = (new nullPathFindingLayer ())
let get_nULL_PATH_FINDING_LAYER () = nULL_PATH_FINDING_LAYER
let () = java_register_static "NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER" (fun _ -> Obj.repr (get_nULL_PATH_FINDING_LAYER ()))


