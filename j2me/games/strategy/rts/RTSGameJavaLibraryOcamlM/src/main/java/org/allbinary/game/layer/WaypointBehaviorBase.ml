(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.layer.waypoint.WaypointBase *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayListS *)

class waypointBehaviorBase () =
  object (self)
    val mutable ownedWaypointList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method ownedWaypointList = ownedWaypointList
    method set_ownedWaypointList value' = ownedWaypointList <- value'
    val mutable waypointOverridesAttacking : bool = false
    method waypointOverridesAttacking = waypointOverridesAttacking
    method set_waypointOverridesAttacking value' = waypointOverridesAttacking <- value'
    val mutable waypoint : WaypointBase.waypointBase = (Obj.magic 0)
    method waypoint = waypoint
    method set_waypoint value' = waypoint <- value'
    val mutable steeringVisitorList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method steeringVisitorList = steeringVisitorList
    method set_steeringVisitorList value' = steeringVisitorList <- value'
    
    

    method getName () : string =
        begin
        (java_get_class (Obj.repr self))
        end
    

    method isRunning () : bool =
        begin
        false
        end
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getOwnedWaypointList () : BasicArrayList.basicArrayList =
        begin
        (ownedWaypointList :> BasicArrayList.basicArrayList)
        end
    

    method getWaypoint () : WaypointBase.waypointBase =
        begin
        (waypoint :> WaypointBase.waypointBase)
        end
    

    method setWaypoint : 'any1. 'any1 -> unit = fun (waypoint_arg) ->
        let waypoint_arg = Obj.repr waypoint_arg in
        begin
        waypoint <- (Obj.magic waypoint_arg)
        end [@@warning "-20"]
    

    method getSteeringVisitorList () : BasicArrayList.basicArrayList =
        begin
        (steeringVisitorList :> BasicArrayList.basicArrayList)
        end
    

    method getMovementLogicAsString () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isWaypointListEmptyOrOnlyTargets () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isInSensorRange : 'any1. 'any1 * int -> bool = fun (_layerInterface, (_targetDistance : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getCurrentTargetLayerInterface () : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCurrentTargetingStateString () : string =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isTrackingWaypoint () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCurrentPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method getCurrentGeographicMapCellHistory () : GeographicMapCellHistory.geographicMapCellHistory =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method isWaypointOverridesAttacking () : bool =
        begin
        waypointOverridesAttacking
        end
    

    method getNextUnvisitedPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method needToMove () : bool =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setWaypointPathsList : 'any1. 'any1 -> unit = fun (_waypointPathsList) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getWaypointPathsList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method setTarget : 'any1. 'any1 -> unit = fun (_layerInterface) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method setTargetWithDistance : 'any1. 'any1 * int -> unit = fun (_layerInterface, (_anotherTargetDistance : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method clearTarget () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method updatePathOnTargetMove ((_reason : string)) : unit =
        begin
        ()
        end

    initializer
      begin
        ();
        waypointOverridesAttacking <- true;
        waypoint <- ((WaypointBase.get_nULL_WAYPOINT_BASE ()) :> WaypointBase.waypointBase);
        steeringVisitorList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ownedWaypointList <- (new BasicArrayListS.basicArrayListS (1))
      end
  end
let () = java_register_constructor "WaypointBehaviorBase" (fun arguments -> Obj.repr (new waypointBehaviorBase (Obj.obj arguments)))


