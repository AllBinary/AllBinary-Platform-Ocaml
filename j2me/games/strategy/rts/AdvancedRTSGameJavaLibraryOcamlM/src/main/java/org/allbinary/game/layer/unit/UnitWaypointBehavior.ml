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
(* import org.allbinary.game.input.form.PrimaryWaypointHelper *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.SensorAction *)
(* import org.allbinary.game.layer.SensorActionFactory *)
(* import org.allbinary.game.layer.WaypointBehaviorBase *)
(* import org.allbinary.game.layer.building.BuildingLayer *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.game.layer.waypoint.event.WaypointEventListenerInterface *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

let pATHING : string = "Pathing"
let get_pATHING () = pATHING
let () = java_register_static "UnitWaypointBehavior.get_pATHING" (fun _ -> Obj.repr (get_pATHING ()))
class unitWaypointBehavior (associatedAdvancedRTSGameLayer_arg, (fakeWaypoint : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) =
  object (self)
    inherit WaypointBehaviorBase.waypointBehaviorBase ()
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable longWeaponRange : int = 0
    method longWeaponRange = longWeaponRange
    method set_longWeaponRange value' = longWeaponRange <- value'
    val mutable sensorAction : SensorAction.sensorAction = (Obj.magic 0)
    method sensorAction = sensorAction
    method set_sensorAction value' = sensorAction <- value'
    val mutable completeTimeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method completeTimeDelayHelper = completeTimeDelayHelper
    method set_completeTimeDelayHelper value' = completeTimeDelayHelper <- value'
    val mutable currentGeographicMapCellHistoryP : GeographicMapCellHistory.geographicMapCellHistory = (Obj.magic 0)
    method currentGeographicMapCellHistoryP = currentGeographicMapCellHistoryP
    method set_currentGeographicMapCellHistoryP value' = currentGeographicMapCellHistoryP <- value'
    val mutable lastPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method lastPathGeographicMapCellPosition = lastPathGeographicMapCellPosition
    method set_lastPathGeographicMapCellPosition value' = lastPathGeographicMapCellPosition <- value'
    val mutable currentPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method currentPathGeographicMapCellPosition = currentPathGeographicMapCellPosition
    method set_currentPathGeographicMapCellPosition value' = currentPathGeographicMapCellPosition <- value'
    val mutable fAKE_WAYPOINT_LAYER : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = (Obj.magic 0)
    method fAKE_WAYPOINT_LAYER = fAKE_WAYPOINT_LAYER
    method set_fAKE_WAYPOINT_LAYER value' = fAKE_WAYPOINT_LAYER <- value'
    val mutable targetList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method targetList = targetList
    method set_targetList value' = targetList <- value'
    val mutable possibleTargetList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method possibleTargetList = possibleTargetList
    method set_possibleTargetList value' = possibleTargetList <- value'
    val mutable associatedAdvancedRTSGameLayer : Obj.t = Obj.repr 0
    method associatedAdvancedRTSGameLayer : 'r. 'r = Obj.magic associatedAdvancedRTSGameLayer
    method set_associatedAdvancedRTSGameLayer : 'v. 'v -> unit = fun value' -> associatedAdvancedRTSGameLayer <- Obj.repr value'
    val mutable moving : bool = false
    method moving = moving
    method set_moving value' = moving <- value'
    val mutable movingFromStopped : bool = false
    method movingFromStopped = movingFromStopped
    method set_movingFromStopped value' = movingFromStopped <- value'
    val mutable waypointPathsListP : BasicArrayList.basicArrayList = (Obj.magic 0)
    method waypointPathsListP = waypointPathsListP
    method set_waypointPathsListP value' = waypointPathsListP <- value'
    val mutable currentTargetDistance : int = 0
    method currentTargetDistance = currentTargetDistance
    method set_currentTargetDistance value' = currentTargetDistance <- value'
    val mutable currentTargetLayerInterfaceP : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = (Obj.magic 0)
    method currentTargetLayerInterfaceP = currentTargetLayerInterfaceP
    method set_currentTargetLayerInterfaceP value' = currentTargetLayerInterfaceP <- value'
    val mutable trackingWaypoint : bool = false
    method trackingWaypoint = trackingWaypoint
    method set_trackingWaypoint value' = trackingWaypoint <- value'
    val mutable repeatedToLong : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method repeatedToLong = repeatedToLong
    method set_repeatedToLong value' = repeatedToLong <- value'
    
    

    method initRange ((weaponRange : int)) : unit =
        begin
        longWeaponRange <- (weaponRange / 2)
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onWaypointEvent : 'any1. 'any1 -> unit = fun (event) ->
        let event = Obj.repr event in
        begin
        let advancedRTSGameLayer : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic event)#getRtsLayer ())))) in ();
        ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#onWaypointEvent ((Obj.magic associatedAdvancedRTSGameLayer), (Obj.magic !advancedRTSGameLayer)));
        if ((Obj.magic associatedAdvancedRTSGameLayer)#isSelected ()) then begin
            (self#addWaypointFromUser ((Obj.magic !advancedRTSGameLayer)))
        end else if ((Obj.magic !advancedRTSGameLayer)#shouldAddWaypointFromBuilding ()) then begin
            (self#addWaypointFromBuilding ((Obj.magic !advancedRTSGameLayer)))
        end
        end [@@warning "-7-20"]
    

    method addWaypointFromUser : 'any1. 'any1 -> unit = fun (_advancedRTSGameLayer) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method addWaypointFromBuilding : 'any1. 'any1 -> unit = fun (advancedRTSGameLayer) ->
        let advancedRTSGameLayer = Obj.repr advancedRTSGameLayer in
        begin
        if (((Obj.repr (Obj.magic advancedRTSGameLayer)) == (Obj.repr ((Obj.magic (java_call_static "PrimaryWaypointHelper.getInstance" (Obj.repr ())))#getWaypointLayer ()))) || ((Obj.repr ((Obj.magic advancedRTSGameLayer)#getParentLayer ())) == (Obj.repr ((Obj.magic associatedAdvancedRTSGameLayer)#getParentLayer ())))) then begin
            if (not (targetList#contains ((Obj.magic advancedRTSGameLayer)))) then begin
                ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#addWaypointFromBuilding ((Obj.magic associatedAdvancedRTSGameLayer), (Obj.magic advancedRTSGameLayer)));
                if ((Obj.magic advancedRTSGameLayer)#isDestroyed ()) then begin
                    raise (Failure (("Trying to add a dead: " ^ java_string_of (Obj.repr ((Obj.magic advancedRTSGameLayer))))))
                end;
                ignore (targetList#add ((Obj.magic advancedRTSGameLayer)));
                ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#addWaypointFromBuildingList ((Obj.magic associatedAdvancedRTSGameLayer), (Obj.magic advancedRTSGameLayer), targetList))
            end
        end
        end [@@warning "-7-20"]
    

    method isWaypointListEmptyOrOnlyTargets () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method insertWaypoint : 'any2. int * 'any2 -> bool = fun ((index : int), rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        try
        begin
        if (self#canInsertWaypoint (index, (Obj.magic rtsLayer))) then begin
            ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#insertWaypoint ((Obj.magic associatedAdvancedRTSGameLayer), index, (Obj.magic rtsLayer), (self#getName ())));
            if ((Obj.magic rtsLayer)#isDestroyed ()) then begin
                raise (Failure (("Trying to add a dead: " ^ java_string_of (Obj.repr ((Obj.magic rtsLayer))))))
            end;
            ignore (targetList#addAt (index, (Obj.magic rtsLayer)));
            ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#insertWaypointList ((Obj.magic associatedAdvancedRTSGameLayer), index, (Obj.magic rtsLayer), (self#getName ()), targetList));
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method move () : unit =
        begin
        if (self#isMoving ()) then begin
            (self#setMovingFromStopped (false))
        end else begin
            (self#setMovingFromStopped (true))
        end;
        (self#setMoving (false))
        end [@@warning "-7"]
    

    method setRandomGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (pathsList) ->
        let pathsList = Obj.repr pathsList in
        begin
        let size : int ref = ref (((Obj.magic pathsList)#size ())) in ();
        ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#setRandomGeographicMapCellHistoryList ((Obj.magic associatedAdvancedRTSGameLayer), (Obj.magic pathsList)));
        if (!size > 0) then begin
            let geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic ((BasicArrayListUtil.getInstance ())#getRandom ((Obj.magic pathsList)))) :> BasicArrayList.basicArrayList)) in ();
            (self#setGeographicMapCellHistoryPath (!geographicMapCellPositionBasicArrayList))
        end
        end [@@warning "-7-20"]
    

    method setGeographicMapCellHistoryPath : 'any1. 'any1 -> unit = fun (geographicMapCellPositionBasicArrayList) ->
        let geographicMapCellPositionBasicArrayList = Obj.repr geographicMapCellPositionBasicArrayList in
        begin
        lastPathGeographicMapCellPosition <- (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ());
        if (Obj.magic associatedAdvancedRTSGameLayer)#showMoreCaptionStates then begin
            ignore (((Obj.magic associatedAdvancedRTSGameLayer)#getCaptionAnimationHelper ())#update (pATHING, (BasicColorFactory.getInstance ())#gREEN))
        end;
        ignore (currentGeographicMapCellHistoryP#init ());
        ignore ((Obj.magic associatedAdvancedRTSGameLayer)#init (currentGeographicMapCellHistoryP, (Obj.magic geographicMapCellPositionBasicArrayList)));
        (self#setTrackingWaypoint (true));
        ignore ((self#getCompleteTimeDelayHelper ())#setStartTimeTNT ())
        end [@@warning "-7-20"]
    

    method canInsertWaypoint : 'any2. int * 'any2 -> bool = fun ((_index : int), rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        try
        begin
        if ((targetList#size ()) > 4) then begin
            ()
        end else if (targetList#contains ((Obj.magic rtsLayer))) then begin
            ()
        end else begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method addBuildingChase : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_allbinaryLayer, _cellPosition) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method moveAwayFromBuilding : 'any1. 'any1 -> unit = fun (buildingLayer) ->
        let buildingLayer = Obj.repr buildingLayer in
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic associatedAdvancedRTSGameLayer)#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic buildingLayer)#geographicMapCellPositionAreaBase#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        if (!list#contains (!geographicMapCellPosition)) then begin
            if (self#insertWaypoint (0, fAKE_WAYPOINT_LAYER)) then begin
                ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#moveAwayFromBuilding ((Obj.magic associatedAdvancedRTSGameLayer)));
                (self#setCurrentTargetLayerInterface ((Obj.magic fAKE_WAYPOINT_LAYER)));
                let pathsList : BasicArrayList.basicArrayList ref = ref ((((Obj.magic buildingLayer)#getMoveOutOfBuildAreaPath (!geographicMapCellPosition)) :> BasicArrayList.basicArrayList)) in ();
                ignore ((Obj.magic associatedAdvancedRTSGameLayer)#setClosestGeographicMapCellHistory (!pathsList))
            end
        end
        end [@@warning "-7-20"]
    

    method needToMove () : bool =
        try
        begin
        ignore ((Obj.magic associatedAdvancedRTSGameLayer)#waypointLogHelperP#needToMove ((Obj.magic associatedAdvancedRTSGameLayer), self));
        if (((self#isTrackingWaypoint ()) || ((Obj.repr sensorAction) == (Obj.repr (SensorActionFactory.getInstance ())#eVADE))) || ((((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) && ((self#getCurrentTargetDistance ()) >= (longWeaponRange + (currentTargetLayerInterfaceP#getHalfHeight ())))))) then begin
            ignore (repeatedToLong#setStartTimeTNT ());
            raise (Java_return (Obj.repr (true)))
        end;
        if (repeatedToLong#isTimeTNT ()) then begin
            let message : string ref = ref (("Repeating too long: " ^ java_string_of (Obj.repr ((self#getMovementLogicAsString ()))))) in ();
            ignore (ForcedLogUtil.log (!message, (Obj.magic associatedAdvancedRTSGameLayer)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getMovementLogicAsString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("isTrackingWaypoint: "));
        ignore (!stringBuffer#appendboolean ((self#isTrackingWaypoint ())));
        ignore (!stringBuffer#append (" sensorAction: "));
        ignore (!stringBuffer#append (sensorAction#name));
        ignore (!stringBuffer#append (" getCurrentTargetLayerInterface: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (currentTargetLayerInterfaceP))));
        if ((Obj.repr currentTargetLayerInterfaceP) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            ignore (!stringBuffer#append (" Target Range: "));
            ignore (!stringBuffer#appendint ((self#getCurrentTargetDistance ())));
            ignore (!stringBuffer#append (" >= "));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((longWeaponRange + (currentTargetLayerInterfaceP#getHalfHeight ())))))))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method isMovingFromStopped () : bool =
        begin
        movingFromStopped
        end [@@warning "-7"]
    

    method setMovingFromStopped ((movingFromStopped_arg : bool)) : unit =
        begin
        movingFromStopped <- movingFromStopped_arg
        end [@@warning "-7"]
    

    method setWaypointPathsList : 'any1. 'any1 -> unit = fun (waypointPathsList) ->
        let waypointPathsList = Obj.repr waypointPathsList in
        begin
        waypointPathsListP <- (Obj.magic waypointPathsList)
        end [@@warning "-7-20"]
    

    method getWaypointPathsList () : BasicArrayList.basicArrayList =
        begin
        (waypointPathsListP :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method isMoving () : bool =
        begin
        moving
        end [@@warning "-7"]
    

    method setMoving ((moving_arg : bool)) : unit =
        begin
        moving <- moving_arg
        end [@@warning "-7"]
    

    method isTrackingWaypoint () : bool =
        begin
        trackingWaypoint
        end [@@warning "-7"]
    

    method getPossibleTargetList () : BasicArrayList.basicArrayList =
        begin
        (possibleTargetList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method setLastPathGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (lastPathGeographicMapCellPosition_arg) ->
        let lastPathGeographicMapCellPosition_arg = Obj.repr lastPathGeographicMapCellPosition_arg in
        begin
        lastPathGeographicMapCellPosition <- (Obj.magic lastPathGeographicMapCellPosition_arg)
        end [@@warning "-7-20"]
    

    method getLastPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (lastPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method setCurrentPathGeographicMapCellPosition : 'any1. 'any1 -> unit = fun (currentPathGeographicMapCellPosition_arg) ->
        let currentPathGeographicMapCellPosition_arg = Obj.repr currentPathGeographicMapCellPosition_arg in
        begin
        currentPathGeographicMapCellPosition <- (Obj.magic currentPathGeographicMapCellPosition_arg)
        end [@@warning "-7-20"]
    

    method getCurrentPathGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (currentPathGeographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method setSensorAction : 'any1. 'any1 -> unit = fun (sensorAction_arg) ->
        let sensorAction_arg = Obj.repr sensorAction_arg in
        begin
        sensorAction <- (Obj.magic sensorAction_arg)
        end [@@warning "-7-20"]
    

    method getSensorAction () : SensorAction.sensorAction =
        begin
        (sensorAction :> SensorAction.sensorAction)
        end [@@warning "-7"]
    

    method setCurrentTargetLayerInterface : 'any1. 'any1 -> unit = fun (currentTargetLayerInterface) ->
        let currentTargetLayerInterface = Obj.repr currentTargetLayerInterface in
        begin
        currentTargetLayerInterfaceP <- (Obj.magic currentTargetLayerInterface)
        end [@@warning "-7-20"]
    

    method getCurrentTargetLayerInterface () : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer =
        begin
        (currentTargetLayerInterfaceP :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)
        end [@@warning "-7"]
    

    method setCurrentTargetDistance ((currentTargetDistance_arg : int)) : unit =
        begin
        currentTargetDistance <- currentTargetDistance_arg
        end [@@warning "-7"]
    

    method getCurrentTargetDistance () : int =
        begin
        currentTargetDistance
        end [@@warning "-7"]
    

    method getCompleteTimeDelayHelper () : TimeDelayHelper.timeDelayHelper =
        begin
        (completeTimeDelayHelper :> TimeDelayHelper.timeDelayHelper)
        end [@@warning "-7"]
    

    method getCurrentGeographicMapCellHistory () : GeographicMapCellHistory.geographicMapCellHistory =
        begin
        (currentGeographicMapCellHistoryP :> GeographicMapCellHistory.geographicMapCellHistory)
        end [@@warning "-7"]
    

    method setTrackingWaypoint ((trackingWaypoint_arg : bool)) : unit =
        begin
        trackingWaypoint <- trackingWaypoint_arg
        end [@@warning "-7"]

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        longWeaponRange <- 0;
        sensorAction <- ((SensorActionFactory.getInstance ())#aTTACK :> SensorAction.sensorAction);
        ();
        ();
        lastPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        currentPathGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        ();
        ();
        ();
        ();
        moving <- false;
        movingFromStopped <- false;
        waypointPathsListP <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        currentTargetDistance <- 2147483647;
        currentTargetLayerInterfaceP <- ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer);
        trackingWaypoint <- false;
        repeatedToLong <- ((new TimeDelayHelper.timeDelayHelper (22000)) :> TimeDelayHelper.timeDelayHelper);
        ();
        associatedAdvancedRTSGameLayer <- Obj.repr (associatedAdvancedRTSGameLayer_arg);
        completeTimeDelayHelper <- (new TimeDelayHelper.timeDelayHelper (30000));
        targetList <- (new BasicArrayListD.basicArrayListD ());
        possibleTargetList <- (new BasicArrayListD.basicArrayListD ());
        (self#setWaypointPathsList (((BasicArrayListUtil.getInstance ())#getImmutableInstance ())));
        currentGeographicMapCellHistoryP <- (new GeographicMapCellHistory.geographicMapCellHistory ());
        fAKE_WAYPOINT_LAYER <- fakeWaypoint
      end
  end [@@warning "-20"]
let () = java_register_constructor "UnitWaypointBehavior" (fun arguments -> Obj.repr (new unitWaypointBehavior (Obj.obj arguments)))


