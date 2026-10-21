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
(* import org.allbinary.animation.caption.CaptionAnimationHelperBase *)
(* import org.allbinary.game.layer.WaypointBehaviorBase *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayList *)

class virtual waypointLayerInterface =
  object
    method virtual init : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual getMoveOutOfBuildAreaPath : 'any1 . 'any1 -> BasicArrayList.basicArrayList
    method virtual setClosestGeographicMapCellHistory : 'any1 . 'any1 -> unit
    method virtual teleportTo : 'any1 . 'any1 -> unit
    method virtual setLoad : int -> unit
    method virtual getSurroundingGeographicMapCellPositionList : unit -> BasicArrayList.basicArrayList
    method virtual isSelected : unit -> bool
    method virtual shouldAddWaypointFromBuilding : unit -> bool
    method virtual isShowMoreCaptionStates : unit -> bool
    method virtual trackTo : string -> unit
    method virtual trackToDXY : int * int -> unit
    method virtual buildingChase : 'any1 'any2 . 'any1 * 'any2 -> bool
    method virtual getTrackingEvent : unit -> TrackingEvent.trackingEvent
    method virtual allStop : unit -> unit
    method virtual isWaypointListEmptyOrOnlyTargets : unit -> bool
    method virtual getCurrentGeographicMapCellPosition : unit -> GeographicMapCellPosition.geographicMapCellPosition
    method virtual getTopLeftGeographicMapCellPosition : unit -> GeographicMapCellPosition.geographicMapCellPosition
    method virtual getCaptionAnimationHelper : unit -> CaptionAnimationHelperBase.captionAnimationHelperBase
    method virtual getWaypointBehavior : 'return . unit -> 'return
    method virtual getWaypointLogHelper : 'return . unit -> 'return
    method virtual getWaypoint2LogHelper : 'return . unit -> 'return
    method virtual getWaypointRunnableLogHelper : 'return . unit -> 'return
  end


