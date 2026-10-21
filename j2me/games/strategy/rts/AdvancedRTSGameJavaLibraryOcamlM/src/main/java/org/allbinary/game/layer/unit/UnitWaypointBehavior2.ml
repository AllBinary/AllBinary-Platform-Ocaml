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
(* package org.allbinary.game.layer.unit *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.layer.SteeringVisitor *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.MultipassWaypointPathRunnable *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.WaypointPathRunnable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.WaypointPathRunnableBase *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.layer.waypoint.WaypointBase *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.math.LayerDistanceUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.thread.PathFindingThreadPool *)
(* import org.allbinary.thread.ThreadPool *)
(* import org.allbinary.time.TimeDelayHelper *)

let runningWaypointPathList : BasicArrayList.basicArrayList = ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)
let get_runningWaypointPathList () = runningWaypointPathList
let () = java_register_static "UnitWaypointBehavior2.get_runningWaypointPathList" (fun _ -> Obj.repr (get_runningWaypointPathList ()))
let tARGET_DISTANCE : string = "Target Distance"
let get_tARGET_DISTANCE () = tARGET_DISTANCE
let () = java_register_static "UnitWaypointBehavior2.get_tARGET_DISTANCE" (fun _ -> Obj.repr (get_tARGET_DISTANCE ()))
let tARGET_LAYER : string = "Target Layer"
let get_tARGET_LAYER () = tARGET_LAYER
let () = java_register_static "UnitWaypointBehavior2.get_tARGET_LAYER" (fun _ -> Obj.repr (get_tARGET_LAYER ()))
class unitWaypointBehavior2 (ownerAdvancedRTSGameLayer, fakeWaypoint) =
  object (self)
    inherit UnitWaypointBehavior.unitWaypointBehavior (ownerAdvancedRTSGameLayer, fakeWaypoint) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable unitWaypointStrings : UnitWaypointStrings.unitWaypointStrings = (Obj.magic 0)
    method unitWaypointStrings = unitWaypointStrings
    method set_unitWaypointStrings value' = unitWaypointStrings <- value'
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable layerDistanceUtil : LayerDistanceUtil.layerDistanceUtil = (Obj.magic 0)
    method layerDistanceUtil = layerDistanceUtil
    method set_layerDistanceUtil value' = layerDistanceUtil <- value'
    val mutable pathFindingThreadPool : Obj.t = Obj.repr 0
    method pathFindingThreadPool : 'r. 'r = Obj.magic pathFindingThreadPool
    method set_pathFindingThreadPool : 'v. 'v -> unit = fun value' -> pathFindingThreadPool <- Obj.repr value'
    val mutable progressTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method progressTimeDelayHelper = progressTimeDelayHelper
    method set_progressTimeDelayHelper value' = progressTimeDelayHelper <- value'
    val mutable wanderPathsList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method wanderPathsList = wanderPathsList
    method set_wanderPathsList value' = wanderPathsList <- value'
    val mutable waypointPathRunnable : WaypointPathRunnableBase.waypointPathRunnableBase = (Obj.magic 0)
    method waypointPathRunnable = waypointPathRunnable
    method set_waypointPathRunnable value' = waypointPathRunnable <- value'
    val mutable sensorRange : int = 0
    method sensorRange = sensorRange
    method set_sensorRange value' = sensorRange <- value'
    val mutable closeRange : int = 0
    method closeRange = closeRange
    method set_closeRange value' = closeRange <- value'
    val mutable nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method nextUnvisitedPathGeographicMapCellPosition = nextUnvisitedPathGeographicMapCellPosition
    method set_nextUnvisitedPathGeographicMapCellPosition value' = nextUnvisitedPathGeographicMapCellPosition <- value'
    val mutable afterNextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method afterNextUnvisitedPathGeographicMapCellPosition = afterNextUnvisitedPathGeographicMapCellPosition
    method set_afterNextUnvisitedPathGeographicMapCellPosition value' = afterNextUnvisitedPathGeographicMapCellPosition <- value'
    val mutable waitingOnTargetPath : bool = false
    method waitingOnTargetPath = waitingOnTargetPath
    method set_waitingOnTargetPath value' = waitingOnTargetPath <- value'
    val mutable waitingOnWaypointPath : bool = false
    method waitingOnWaypointPath = waitingOnWaypointPath
    method set_waitingOnWaypointPath value' = waitingOnWaypointPath <- value'
    val mutable targetWithoutCachedPathLayerInterface : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = (Obj.magic 0)
    method targetWithoutCachedPathLayerInterface = targetWithoutCachedPathLayerInterface
    method set_targetWithoutCachedPathLayerInterface value' = targetWithoutCachedPathLayerInterface <- value'
    val mutable buildingSteeringVisitor : BuildingSteeringVisitor.buildingSteeringVisitor = (Obj.magic 0)
    method buildingSteeringVisitor = buildingSteeringVisitor
    method set_buildingSteeringVisitor value' = buildingSteeringVisitor <- value'
    
    

    method initRange ((weaponRange : int)) : unit =
        begin
        ignore (super#initRange (weaponRange));
        closeRange <- weaponRange;
        sensorRange <- (weaponRange * 4);
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#initRange (associatedAdvancedRTSGameLayer, closeRange, sensorRange))
        end [@@warning "-7"]
    

    method getNextUnvisitedPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (nextUnvisitedPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method isRunning () : bool =
        try
        begin
        if (waypointPathRunnable#isRunning ()) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        try
        begin
        if (waypointPathRunnable#isRunning ()) then begin
            if ((Obj.repr waypointPathsListP) != (Obj.repr runningWaypointPathList)) then begin
                ignore (waypointPathRunnable#setRunning (false));
                if waitingOnTargetPath then begin
                    (self#setTargetPath ())
                end else if waitingOnWaypointPath then begin
                    (self#setWaypointPath ((Obj.magic (waypointPathRunnable#getTargetLayer ()))))
                end else begin
                    raise (Failure ("Should not happen"))
                end
            end else begin
                raise (Java_return (Obj.repr (())))
            end
        end;
        (self#processTargetList ());
        if (not (waypointPathRunnable#isRunning ())) then begin
            (self#processWaypoint ())
        end else begin
            raise (Java_return (Obj.repr (())))
        end;
        if (not (waypointPathRunnable#isRunning ())) then begin
            (self#processTargeting ())
        end else begin
            raise (Java_return (Obj.repr (())))
        end;
        if (not (waypointPathRunnable#isRunning ())) then begin
            (self#teleportIfNoProgress ())
        end else begin
            raise (Java_return (Obj.repr (())))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method onEnemyMovement : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let anotherTargetDistance : int ref = ref ((layerDistanceUtil#getDistance (associatedAdvancedRTSGameLayer, (Obj.magic layerInterface)))) in ();
        if ((Obj.repr (Obj.magic layerInterface)) == (Obj.repr currentTargetLayerInterfaceP)) then begin
            ignore (self#setCurrentTargetDistance (!anotherTargetDistance))
        end else begin
            (self#processPossibleTarget ((Obj.magic layerInterface), !anotherTargetDistance))
        end
        end [@@warning "-7-20"]
    

    method processPossibleTarget : 'any1. 'any1 * int -> unit = fun (layerInterface, (anotherTargetDistance : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let isShorterThanCurrentTargetDistance : bool ref = ref (((self#getCurrentTargetDistance ()) > anotherTargetDistance)) in ();
        let isCurrentTargetDestroyed : bool ref = ref ((((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) && (currentTargetLayerInterfaceP#isDestroyed ()))) in ();
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processPossibleTarget (associatedAdvancedRTSGameLayer, self, (Obj.magic layerInterface), anotherTargetDistance, !isShorterThanCurrentTargetDistance, !isCurrentTargetDestroyed));
        if (((self#isWaypointListEmptyOrOnlyTargets ()) && (self#isInSensorRange ((Obj.magic layerInterface), anotherTargetDistance))) && ((!isShorterThanCurrentTargetDistance || !isCurrentTargetDestroyed))) then begin
            ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processSetTarget (associatedAdvancedRTSGameLayer, self, (Obj.magic layerInterface), anotherTargetDistance));
            (self#setTarget ((Obj.magic layerInterface), anotherTargetDistance))
        end else if ((self#isCloseRange ((Obj.magic layerInterface), anotherTargetDistance)) && ((!isShorterThanCurrentTargetDistance || !isCurrentTargetDestroyed))) then begin
            ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processPossibleTargetCloser (associatedAdvancedRTSGameLayer, self, (Obj.magic layerInterface), anotherTargetDistance));
            (self#setTarget ((Obj.magic layerInterface), anotherTargetDistance))
        end
        end [@@warning "-7-20"]
    

    method teleportIfNoProgress () : unit =
        begin
        if ((self#isTrackingWaypoint ()) || ((associatedAdvancedRTSGameLayer#getParentLayer ())#isDestroyed ())) then begin
            if ((progressTimeDelayHelper#isTimeTNT ()) && ((Obj.repr nextUnvisitedPathGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ())))) then begin
                ignore (associatedAdvancedRTSGameLayer#teleportTo (nextUnvisitedPathGeographicMapCellPosition))
            end;
            if ((self#getCompleteTimeDelayHelper ())#isTimeTNT ()) then begin
                let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic ((currentGeographicMapCellHistoryP#getTracked ())#get (((currentGeographicMapCellHistoryP#getSize ()) - 1)))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                ignore (associatedAdvancedRTSGameLayer#teleportTo (!geographicMapCellPosition))
            end
        end
        end [@@warning "-7"]
    

    method setTarget : 'any1. 'any1 * int -> unit = fun (layerInterface, (anotherTargetDistance : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#setTarget (associatedAdvancedRTSGameLayer, self, (Obj.magic layerInterface), anotherTargetDistance));
        ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#tARGET, (BasicColorFactory.getInstance ())#gREEN));
        ignore (associatedAdvancedRTSGameLayer#setLoad (0));
        ignore (self#setCurrentTargetDistance (anotherTargetDistance));
        ignore (self#setCurrentTargetLayerInterface ((Obj.magic layerInterface)));
        ignore (self#setTrackingWaypoint (false));
        ignore (targetList#clear ());
        if ((not (self#isCloseRange ((Obj.magic layerInterface), anotherTargetDistance))) && (self#canInsertWaypoint (0, currentTargetLayerInterfaceP))) then begin
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((associatedAdvancedRTSGameLayer#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let pathFindingLayerInterface : PathFindingLayerInterface.pathFindingLayerInterface ref = ref ((((Obj.magic currentTargetLayerInterfaceP)) :> PathFindingLayerInterface.pathFindingLayerInterface)) in ();
            let waypoint : WaypointBase.waypointBase ref = ref ((((!pathFindingLayerInterface#getWaypointBehavior ())#getWaypoint ()) :> WaypointBase.waypointBase)) in ();
            let list : BasicArrayList.basicArrayList ref = ref (((!waypoint#getPathsListFromCacheOnly (!geographicMapCellPosition)) :> BasicArrayList.basicArrayList)) in ();
            ignore (self#setWaypointPathsList (!list));
            if (waypointPathsListP == (Obj.magic 0)) then begin
                targetWithoutCachedPathLayerInterface <- currentTargetLayerInterfaceP
            end else if ((waypointPathsListP#size ()) <> 0) then begin
                (self#setTargetPath ())
            end
        end
        end [@@warning "-7-20"]
    

    method setTargetPath () : unit =
        try
        begin
        if ((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            if (currentTargetLayerInterfaceP#isDestroyed ()) then begin
                ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#setTargetPath (associatedAdvancedRTSGameLayer));
                ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#kILL, basicColorFactory#oRANGE));
                (self#clearTarget ());
                raise (Java_return (Obj.repr (())))
            end;
            if ((Obj.repr currentTargetLayerInterfaceP) == (Obj.repr (waypointPathRunnable#getTargetLayer ()))) then begin
                ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#setTargetPathIgnoreNewPath (associatedAdvancedRTSGameLayer, self));
                ignore (self#insertWaypoint (0, currentTargetLayerInterfaceP));
                ignore (self#setRandomGeographicMapCellHistory (waypointPathsListP))
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setGeographicMapCellHistoryPath : 'any1. 'any1 -> unit = fun (geographicMapCellPositionBasicArrayList) ->
        let geographicMapCellPositionBasicArrayList = Obj.repr geographicMapCellPositionBasicArrayList in
        begin
        ignore (self#setCurrentPathGeographicMapCellPosition ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ())));
        nextUnvisitedPathGeographicMapCellPosition <- (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ());
        ignore (super#setGeographicMapCellHistoryPath ((Obj.magic geographicMapCellPositionBasicArrayList)))
        end [@@warning "-7-20"]
    

    method processWaypoint () : unit =
        try
        begin
        let size : int ref = ref ((targetList#size ())) in ();
        if (!size > 0) then begin
            let targetLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (targetList#get (0))))) in ();
            ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processWaypoint (associatedAdvancedRTSGameLayer, self, (Obj.magic !targetLayer), !size));
            if ((Obj.magic !targetLayer)#isDestroyed ()) then begin
                ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#wAYPOINT_DESTROYED_SHORT, basicColorFactory#yELLOW));
                (self#removeWaypoint ((Obj.magic !targetLayer), unitWaypointStrings#wAYPOINT_DESTROYED))
            end else begin
                let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((associatedAdvancedRTSGameLayer#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                if (self#isTrackingWaypoint ()) then begin
                    ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processWaypointTracked (associatedAdvancedRTSGameLayer, self));
                    if (self#visitIfAtMidPoint (!geographicMapCellPosition)) then begin
                        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processWaypointTrackedVisit (associatedAdvancedRTSGameLayer, !geographicMapCellPosition))
                    end;
                    if ((currentGeographicMapCellHistoryP#isAllVisited2 ()) && ((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ())))) then begin
                        let oldWaypointLayer : Obj.t ref = ref ((Obj.repr (Obj.magic currentTargetLayerInterfaceP))) in ();
                        ignore ((((Obj.magic !oldWaypointLayer)#getWaypointBehavior ())#getWaypoint ())#visit (associatedAdvancedRTSGameLayer));
                        ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#aLL_VISITED_SHORT, basicColorFactory#gREEN));
                        (self#removeWaypoint ((Obj.magic currentTargetLayerInterfaceP), unitWaypointStrings#aLL_VISITED))
                    end
                end else if ((currentTargetLayerInterfaceP == (Obj.magic 0)) || waypointOverridesAttacking) then begin
                    let list : BasicArrayList.basicArrayList ref = ref ((((((Obj.magic !targetLayer)#getWaypointBehavior ())#getWaypoint ())#getPathsListFromCacheOnly (!geographicMapCellPosition)) :> BasicArrayList.basicArrayList)) in ();
                    ignore (self#setWaypointPathsList (!list));
                    if (waypointPathsListP == (Obj.magic 0)) then begin
                        waitingOnWaypointPath <- true;
                        ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#tHINKING, basicColorFactory#gREEN));
                        (self#runWaypointPathTask ((Obj.magic !targetLayer)));
                        raise (Java_return (Obj.repr (())))
                    end;
                    (self#setWaypointPath ((Obj.magic !targetLayer)))
                end
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method wander () : unit =
        begin
        if (currentGeographicMapCellHistoryP#isAllVisited2 ()) then begin
            ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#wander (associatedAdvancedRTSGameLayer));
            ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#wANDERING, basicColorFactory#rED));
            ignore (wanderPathsList#clear ());
            ignore (wanderPathsList#add ((associatedAdvancedRTSGameLayer#getSurroundingGeographicMapCellPositionList ())));
            ignore (self#setRandomGeographicMapCellHistory (wanderPathsList))
        end;
        ignore (self#visitIfAtMidPoint ((self#getCurrentPathGeographicMapCellPosition ())));
        (self#updateCurrentPathGeographicMapCellPosition ());
        ignore (associatedAdvancedRTSGameLayer#trackTo (unitWaypointStrings#nEXT_PATH_NODE))
        end [@@warning "-7"]
    

    method visitIfAtMidPoint : 'any1. 'any1 -> bool = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let unitLayer : Obj.t ref = ref ((Obj.repr associatedAdvancedRTSGameLayer)) in ();
        if (((Obj.repr (Obj.magic geographicMapCellPosition)) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && ((Obj.repr nextUnvisitedPathGeographicMapCellPosition) == (Obj.repr (Obj.magic geographicMapCellPosition)))) then begin
            let point : GPoint.gPoint ref = ref ((((Obj.magic geographicMapCellPosition)#getMidPoint ()) :> GPoint.gPoint)) in ();
            let afterNextPoint : GPoint.gPoint ref = ref (((afterNextUnvisitedPathGeographicMapCellPosition#getMidPoint ()) :> GPoint.gPoint)) in ();
            let beyondMidPoint : bool ref = ref (true) in ();
            if ((Obj.repr ((Obj.magic geographicMapCellPosition)#getColumn ())) == (Obj.repr (afterNextUnvisitedPathGeographicMapCellPosition#getColumn ()))) then begin
                ()
            end else if ((!point#getX ()) < (!afterNextPoint#getX ())) then begin
                if ((((Obj.magic !unitLayer)#getXP ()) + ((Obj.magic !unitLayer)#getHalfWidth ())) < (!point#getX ())) then begin
                    beyondMidPoint := false
                end
            end else begin
                if ((((Obj.magic !unitLayer)#getXP ()) + ((Obj.magic !unitLayer)#getHalfWidth ())) > (!point#getX ())) then begin
                    beyondMidPoint := false
                end
            end;
            if ((Obj.repr ((Obj.magic geographicMapCellPosition)#getRow ())) == (Obj.repr (afterNextUnvisitedPathGeographicMapCellPosition#getRow ()))) then begin
                ()
            end else if ((!point#getY ()) < (!afterNextPoint#getY ())) then begin
                if ((((Obj.magic !unitLayer)#getYP ()) + ((Obj.magic !unitLayer)#getHalfHeight ())) < (!point#getY ())) then begin
                    beyondMidPoint := false
                end
            end else begin
                if ((((Obj.magic !unitLayer)#getYP ()) + ((Obj.magic !unitLayer)#getHalfHeight ())) > (!point#getY ())) then begin
                    beyondMidPoint := false
                end
            end;
            if !beyondMidPoint then begin
                raise (Java_return (Obj.repr ((currentGeographicMapCellHistoryP#visit ((Obj.magic geographicMapCellPosition))))))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method processTargetList () : unit =
        begin
        targetWithoutCachedPathLayerInterface <- (CollidableDestroyableDamageableLayer.getNullInstance ());
        for index = (((self#getPossibleTargetList ())#size ()) - 1) downto 0 do
            let layerInterface : Obj.t ref = ref ((Obj.repr (Obj.magic ((self#getPossibleTargetList ())#get (index))))) in ();
            if ((Obj.magic !layerInterface)#isDestroyed ()) then begin
                ignore ((self#getPossibleTargetList ())#remove ((Obj.magic !layerInterface)))
            end else begin
                (self#onEnemyMovement ((Obj.magic !layerInterface)))
            end
        done;
        if ((Obj.repr targetWithoutCachedPathLayerInterface) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            waitingOnTargetPath <- true;
            ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#tHINKING_ABOUT_TARGET, basicColorFactory#gREEN));
            (self#runWaypointPathTask ((Obj.magic currentTargetLayerInterfaceP)))
        end;
        ignore ((self#getPossibleTargetList ())#clear ())
        end [@@warning "-7"]
    

    method processTargeting () : unit =
        try
        begin
        if (((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) && (((self#isInSensorRange (currentTargetLayerInterfaceP, (self#getCurrentTargetDistance ()))) || (self#isTrackingWaypoint ())))) then begin
            if (currentTargetLayerInterfaceP#isDestroyed ()) then begin
                ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#targetDestroyed (associatedAdvancedRTSGameLayer));
                ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#kILL, basicColorFactory#oRANGE));
                (self#clearTarget ());
                raise (Java_return (Obj.repr (())))
            end;
            let dx : int ref = ref (0) in ();
            let dy : int ref = ref (0) in ();
            if (self#isTrackingWaypoint ()) then begin
                (self#updateCurrentPathGeographicMapCellPosition ());
                let point : GPoint.gPoint ref = ref (((nextUnvisitedPathGeographicMapCellPosition#getMidPoint ()) :> GPoint.gPoint)) in ();
                dx := (((associatedAdvancedRTSGameLayer#getXP ()) + (associatedAdvancedRTSGameLayer#getHalfWidth ())) - (!point#getX ()));
                dy := (((associatedAdvancedRTSGameLayer#getYP ()) + (associatedAdvancedRTSGameLayer#getHalfHeight ())) - (!point#getY ()));
                ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processTargeting (associatedAdvancedRTSGameLayer, !dx, !dy))
            end else begin
                ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#processTargetingNonWayPoint (associatedAdvancedRTSGameLayer, !dx, !dy));
                dx := ((((associatedAdvancedRTSGameLayer#getXP ()) + (associatedAdvancedRTSGameLayer#getHalfWidth ()))) - (((currentTargetLayerInterfaceP#getXP ()) + (currentTargetLayerInterfaceP#getHalfWidth ()))));
                dy := ((((associatedAdvancedRTSGameLayer#getYP ()) + (associatedAdvancedRTSGameLayer#getHalfHeight ()))) - (((currentTargetLayerInterfaceP#getYP ()) + (currentTargetLayerInterfaceP#getHalfHeight ()))))
            end;
            ignore (associatedAdvancedRTSGameLayer#trackToDXY (!dx, !dy))
        end else begin
            if ((associatedAdvancedRTSGameLayer#getParentLayer ())#isDestroyed ()) then begin
                (self#wander ())
            end else begin
                if associatedAdvancedRTSGameLayer#showMoreCaptionStates then begin
                    ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#sTOP, basicColorFactory#yELLOW))
                end;
                ignore (associatedAdvancedRTSGameLayer#allStop ())
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method updateCurrentPathGeographicMapCellPosition () : unit =
        begin
        ignore (self#setLastPathGeographicMapCellPosition ((self#getCurrentPathGeographicMapCellPosition ())));
        ignore (self#setCurrentPathGeographicMapCellPosition (nextUnvisitedPathGeographicMapCellPosition));
        nextUnvisitedPathGeographicMapCellPosition <- (currentGeographicMapCellHistoryP#getFirstUnvisited ());
        afterNextUnvisitedPathGeographicMapCellPosition <- (currentGeographicMapCellHistoryP#getAfterIfNotLast (nextUnvisitedPathGeographicMapCellPosition));
        if ((Obj.repr (self#getCurrentPathGeographicMapCellPosition ())) != (Obj.repr nextUnvisitedPathGeographicMapCellPosition)) then begin
            ignore (progressTimeDelayHelper#setStartTimeTNT ())
        end
        end [@@warning "-7"]
    

    method setWaypointPath : 'any1. 'any1 -> unit = fun (waypointLayer) ->
        let waypointLayer = Obj.repr waypointLayer in
        begin
        if ((waypointPathsListP#size ()) <> 0) then begin
            ignore (self#setCurrentTargetLayerInterface ((Obj.magic waypointLayer)));
            let mAX : int ref = ref (2147483647) in ();
            ignore (self#setCurrentTargetDistance (!mAX));
            ignore (self#setRandomGeographicMapCellHistory (waypointPathsListP))
        end else begin
            ignore ((((Obj.magic waypointLayer)#getWaypointBehavior ())#getWaypoint ())#visit (associatedAdvancedRTSGameLayer));
            ignore ((associatedAdvancedRTSGameLayer#getCaptionAnimationHelper ())#update (unitWaypointStrings#aLREADY_THERE_SHORT, basicColorFactory#yELLOW));
            (self#removeWaypoint ((Obj.magic waypointLayer), unitWaypointStrings#aLREADY_THERE))
        end
        end [@@warning "-7-20"]
    

    method runWaypointPathTask : 'any1. 'any1 -> unit = fun (waypointLayer) ->
        let waypointLayer = Obj.repr waypointLayer in
        begin
        ignore (self#setWaypointPathsList (runningWaypointPathList));
        if (waypointPathRunnable#isRunning ()) then begin
            raise (Failure ("Should never be running here"))
        end;
        ignore (waypointPathRunnable#setRunning (true));
        ignore (waypointPathRunnable#setUnitLayer (associatedAdvancedRTSGameLayer));
        ignore (waypointPathRunnable#setTargetLayer ((Obj.magic waypointLayer)));
        ignore ((Obj.magic pathFindingThreadPool)#runTask (waypointPathRunnable))
        end [@@warning "-7-20"]
    

    method removeWaypoint : 'any1. 'any1 * string -> unit = fun (waypointLayer, (reason : string)) ->
        let waypointLayer = Obj.repr waypointLayer in
        begin
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#removeWaypoint (associatedAdvancedRTSGameLayer, self, (Obj.magic waypointLayer), reason));
        ignore (targetList#remove ((Obj.magic waypointLayer)));
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#removeWaypointList (associatedAdvancedRTSGameLayer, self, targetList));
        if ((Obj.repr currentTargetLayerInterfaceP) == (Obj.repr (Obj.magic waypointLayer))) then begin
            ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#removeWaypointClear (associatedAdvancedRTSGameLayer));
            (self#clearTarget ())
        end
        end [@@warning "-7-20"]
    

    method clearTarget () : unit =
        begin
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#clearTarget (associatedAdvancedRTSGameLayer));
        ignore (self#setCurrentTargetLayerInterface ((CollidableDestroyableDamageableLayer.getNullInstance ())));
        ignore (self#setTrackingWaypoint (false));
        let mAX : int ref = ref (2147483647) in ();
        ignore (self#setCurrentTargetDistance (!mAX));
        ignore ((TrackingEventHandler.getInstance ())#fireEvent ((associatedAdvancedRTSGameLayer#getTrackingEvent ())))
        end [@@warning "-7"]
    

    method isWaypointListEmptyOrOnlyTargets () : bool =
        try
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((targetList :> BasicArrayList.basicArrayList)) in ();
        if ((!list#size ()) = 0) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        for index = ((!list#size ()) - 1) downto 0 do
            let layerInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (!list#get (index))))) in ();
            if ((Obj.magic !layerInterface)#isWaypointListEmptyOrOnlyTargets ()) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isCloseRange : 'any1. 'any1 * int -> bool = fun (layerInterface, (targetDistance : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        (targetDistance < (closeRange + ((Obj.magic layerInterface)#getHalfHeight ())))
        end [@@warning "-7-20"]
    

    method isInSensorRange : 'any1. 'any1 * int -> bool = fun (layerInterface, (targetDistance : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        (targetDistance < (sensorRange + ((Obj.magic layerInterface)#getHalfHeight ())))
        end [@@warning "-7-20"]
    

    method getCurrentTargetingStateString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            ignore (!stringBuffer#append (tARGET_LAYER));
            ignore (!stringBuffer#append (commonSeps#sPACE));
            ignore (!stringBuffer#append ((currentTargetLayerInterfaceP#getName ())));
            ignore (!stringBuffer#append (" with "));
            ignore (!stringBuffer#append (tARGET_DISTANCE));
            ignore (!stringBuffer#append (commonSeps#sPACE));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((self#getCurrentTargetDistance ()))))))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method addWaypointFromUser : 'any1. 'any1 -> unit = fun (advancedRTSGameLayer) ->
        let advancedRTSGameLayer = Obj.repr advancedRTSGameLayer in
        begin
        if ((Obj.magic advancedRTSGameLayer)#isDestroyed ()) then begin
            raise (Failure (("Trying to add a dead: " ^ java_string_of (Obj.repr ((Obj.magic advancedRTSGameLayer))))))
        end;
        ignore (associatedAdvancedRTSGameLayer#waypoint2LogHelperP#addWaypointFromUser (associatedAdvancedRTSGameLayer, (Obj.magic advancedRTSGameLayer)));
        ignore (targetList#clear ());
        ignore (targetList#add ((Obj.magic advancedRTSGameLayer)));
        (self#clearTarget ())
        end [@@warning "-7-20"]
    

    method addBuildingChase : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allbinaryLayer, cellPosition) ->
        let allbinaryLayer = Obj.repr allbinaryLayer in
        let cellPosition = Obj.repr cellPosition in
        begin
        if (not ((buildingSteeringVisitor#getList ())#contains ((Obj.magic allbinaryLayer)))) then begin
            ignore ((buildingSteeringVisitor#getList ())#add ((Obj.magic allbinaryLayer)));
            ignore ((buildingSteeringVisitor#getPositionList ())#add ((Obj.magic cellPosition)))
        end;
        if (not ((self#getSteeringVisitorList ())#contains (buildingSteeringVisitor))) then begin
            ignore ((self#getSteeringVisitorList ())#add (buildingSteeringVisitor))
        end
        end [@@warning "-7-20"]
    

    method buildingChase : 'any1 'any2. 'any1 * 'any2 -> bool = fun (allbinaryLayer, cellPosition) ->
        let allbinaryLayer = Obj.repr allbinaryLayer in
        let cellPosition = Obj.repr cellPosition in
        begin
        (associatedAdvancedRTSGameLayer#buildingChase ((Obj.magic allbinaryLayer), (Obj.magic cellPosition)))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        unitWaypointStrings <- ((UnitWaypointStrings.getInstance ()) :> UnitWaypointStrings.unitWaypointStrings);
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        layerDistanceUtil <- ((LayerDistanceUtil.getInstance ()) :> LayerDistanceUtil.layerDistanceUtil);
        pathFindingThreadPool <- (Obj.repr (PathFindingThreadPool.getInstance ()));
        ();
        ();
        ();
        sensorRange <- 0;
        closeRange <- 0;
        nextUnvisitedPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        afterNextUnvisitedPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        waitingOnTargetPath <- false;
        waitingOnWaypointPath <- false;
        targetWithoutCachedPathLayerInterface <- ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer);
        buildingSteeringVisitor <- ((new BuildingSteeringVisitor.buildingSteeringVisitor ()) :> BuildingSteeringVisitor.buildingSteeringVisitor);
        ();
        (* super(...) is the inherit clause *) ();
        progressTimeDelayHelper <- (new TimeDelayHelper.timeDelayHelper (5000));
        wanderPathsList <- (new BasicArrayListD.basicArrayListD ());
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        waypointPathRunnable <- (if (J2MEUtil.isHTML ()) then (new MultipassWaypointPathRunnable.multipassWaypointPathRunnable ()) else (new WaypointPathRunnable.waypointPathRunnable ()))
      end
  end [@@warning "-20"]
let () = java_register_constructor "UnitWaypointBehavior2" (fun arguments -> Obj.repr (new unitWaypointBehavior2 (Obj.obj arguments)))


