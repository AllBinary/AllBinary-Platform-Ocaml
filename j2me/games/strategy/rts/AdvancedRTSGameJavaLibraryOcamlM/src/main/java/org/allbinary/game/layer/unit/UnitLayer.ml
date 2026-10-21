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
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.ag.weapon.media.audio.ExplosionBasicSound *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.NullIndexedAnimationFactory *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.animation.caption.CaptionAnimationHelper *)
(* import org.allbinary.animation.caption.CaptionAnimationHelperBase *)
(* import org.allbinary.animation.vector.AdjustedCircleAnimation *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.game.combat.damage.DamageFloaters *)
(* import org.allbinary.game.combat.damage.PtsDamageFloaters *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.health.HealthBar *)
(* import org.allbinary.game.health.HealthBarTwodAnimation *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.identification.GroupCommonFactory *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.event.GameKeyEventUtil *)
(* import org.allbinary.game.input.form.VisibleCellPositionsSingleton *)
(* import org.allbinary.game.input.form.WaypointRTSFormInput *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.AdvancedRTSProperties *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.layer.CaptionResources *)
(* import org.allbinary.game.layer.LinePathRelativeAnimation *)
(* import org.allbinary.game.layer.PathAnimation *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.RTSLayer2LogHelper *)
(* import org.allbinary.game.layer.RTSLayer2SelectedLogHelper *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.RTSLayerHudPaintable *)
(* import org.allbinary.game.layer.RTSLayerLogHelper *)
(* import org.allbinary.game.layer.RTSLayerSelectedLogHelper *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.SelectionHudPaintable *)
(* import org.allbinary.game.layer.SensorActionFactory *)
(* import org.allbinary.game.layer.SteeringVisitor *)
(* import org.allbinary.game.layer.TiledLayerUtil *)
(* import org.allbinary.game.layer.VehicleFrictionProperties *)
(* import org.allbinary.game.layer.VehicleProperties *)
(* import org.allbinary.game.layer.WaypointBehaviorBase *)
(* import org.allbinary.game.layer.building.BuildingLayer *)
(* import org.allbinary.game.layer.building.event.BuildingEventHandler *)
(* import org.allbinary.game.layer.building.event.BuildingEventListenerInterface *)
(* import org.allbinary.game.layer.capital.event.CapitalEvent *)
(* import org.allbinary.game.layer.capital.event.CapitalEventHandlerFactory *)
(* import org.allbinary.game.layer.geographic.map.LayerPartialCellPositionsUtil *)
(* import org.allbinary.game.layer.special.SpecialDownGameInputProcessor *)
(* import org.allbinary.game.layer.special.SpecialFireGameInputProcessor *)
(* import org.allbinary.game.layer.special.SpecialLeftGameInputProcessor *)
(* import org.allbinary.game.layer.special.SpecialRightGameInputProcessor *)
(* import org.allbinary.game.layer.special.SpecialUpGameInputProcessor *)
(* import org.allbinary.game.layer.waypoint.MultipassNoCacheWaypoint *)
(* import org.allbinary.game.layer.waypoint.NoCacheWaypoint *)
(* import org.allbinary.game.layer.waypoint.WaypointBase *)
(* import org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.game.part.weapon.BasicWeaponPart *)
(* import org.allbinary.game.part.weapon.SalvoInterface *)
(* import org.allbinary.game.physics.velocity.VelocityProperties *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.game.tracking.TrackingEventListenerInterface *)
(* import org.allbinary.graphics.CellPositionFactory *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.layer.LayerInterfaceFactoryInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.math.FrameUtil *)
(* import org.allbinary.math.LayerDistanceUtil *)
(* import org.allbinary.math.NamedAngle *)
(* import org.allbinary.media.audio.AttackSound *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.Sound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap *)
(* import org.allbinary.string.CommonPhoneStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListS *)
(* import org.allbinary.view.ViewPositionBase *)

let partialPositionList : BasicArrayList.basicArrayList = ((new BasicArrayListS.basicArrayListS (4)) :> BasicArrayList.basicArrayList)
let get_partialPositionList () = partialPositionList
let () = java_register_static "UnitLayer.get_partialPositionList" (fun _ -> Obj.repr (get_partialPositionList ()))
let sENSOR_RANGE_MULTIPLIER : int = 6
let get_sENSOR_RANGE_MULTIPLIER () = sENSOR_RANGE_MULTIPLIER
let () = java_register_static "UnitLayer.get_sENSOR_RANGE_MULTIPLIER" (fun _ -> Obj.repr (get_sENSOR_RANGE_MULTIPLIER ()))
let mOVE : string = "Moving"
let get_mOVE () = mOVE
let () = java_register_static "UnitLayer.get_mOVE" (fun _ -> Obj.repr (get_mOVE ()))

let getStaticType () : int =
        begin
        1
        end

and getPartialpositionlist () : BasicArrayList.basicArrayList =
        begin
        (partialPositionList :> BasicArrayList.basicArrayList)
        end

let () = java_register_static "UnitLayer.getStaticType" (fun arguments -> Obj.repr (getStaticType (Obj.obj arguments)))
let () = java_register_static "UnitLayer.getPartialpositionlist" (fun arguments -> Obj.repr (getPartialpositionlist (Obj.obj arguments)))
class unitLayer (remoteInfo, (parentLayer : PathFindingLayerInterface.pathFindingLayerInterface), (advancedRTSProperties : AdvancedRTSProperties.advancedRTSProperties), groupInterface, (rootName : string), (name : string), (vehicleProperties_arg : VehicleProperties.vehicleProperties), (healthInterface : Health.health), (maxResourceLoad_arg : int), moveSoundInterface_arg, (waypointLayerInterfaceFactoryInterface_arg : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface), (animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (decalAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (resourceAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface), rectangle, (direction : Direction.direction), (x : int), (y : int), (_z : int), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit AdvancedRTSGameLayer.advancedRTSGameLayer (remoteInfo, parentLayer, advancedRTSProperties, groupInterface, rootName, name, healthInterface, (new WaypointRTSFormInput.waypointRTSFormInput (groupInterface, true)), animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition) as super
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable groupCommonFactory : GroupCommonFactory.groupCommonFactory = (Obj.magic 0)
    method groupCommonFactory = groupCommonFactory
    method set_groupCommonFactory value' = groupCommonFactory <- value'
    val mutable layerPartialCellPositionsUtil : LayerPartialCellPositionsUtil.layerPartialCellPositionsUtil = (Obj.magic 0)
    method layerPartialCellPositionsUtil = layerPartialCellPositionsUtil
    method set_layerPartialCellPositionsUtil value' = layerPartialCellPositionsUtil <- value'
    val mutable layerDistanceUtil : LayerDistanceUtil.layerDistanceUtil = (Obj.magic 0)
    method layerDistanceUtil = layerDistanceUtil
    method set_layerDistanceUtil value' = layerDistanceUtil <- value'
    val mutable angleFactory : AngleFactory.angleFactory = (Obj.magic 0)
    method angleFactory = angleFactory
    method set_angleFactory value' = angleFactory <- value'
    val mutable cellPositionFactory : CellPositionFactory.cellPositionFactory = (Obj.magic 0)
    method cellPositionFactory = cellPositionFactory
    method set_cellPositionFactory value' = cellPositionFactory <- value'
    val mutable maxResourceLoad : int = 0
    method maxResourceLoad = maxResourceLoad
    method set_maxResourceLoad value' = maxResourceLoad <- value'
    val mutable vehicleProperties : VehicleProperties.vehicleProperties = (Obj.magic 0)
    method vehicleProperties = vehicleProperties
    method set_vehicleProperties value' = vehicleProperties <- value'
    val mutable accelerationBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method accelerationBasicDecimal = accelerationBasicDecimal
    method set_accelerationBasicDecimal value' = accelerationBasicDecimal <- value'
    val mutable decelerationBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method decelerationBasicDecimal = decelerationBasicDecimal
    method set_decelerationBasicDecimal value' = decelerationBasicDecimal <- value'
    val mutable trackingEvent : TrackingEvent.trackingEvent = (Obj.magic 0)
    method trackingEvent = trackingEvent
    method set_trackingEvent value' = trackingEvent <- value'
    val mutable damageFloaters : DamageFloaters.damageFloaters = (Obj.magic 0)
    method damageFloaters = damageFloaters
    method set_damageFloaters value' = damageFloaters <- value'
    val mutable damageFloatersPaintableInterface : Paintable.paintable = (Obj.magic 0)
    method damageFloatersPaintableInterface = damageFloatersPaintableInterface
    method set_damageFloatersPaintableInterface value' = damageFloatersPaintableInterface <- value'
    val mutable healthBar : Paintable.paintable = (Obj.magic 0)
    method healthBar = healthBar
    method set_healthBar value' = healthBar <- value'
    val mutable moveSoundInterface : Obj.t = Obj.repr 0
    method moveSoundInterface : 'r. 'r = Obj.magic moveSoundInterface
    method set_moveSoundInterface : 'v. 'v -> unit = fun value' -> moveSoundInterface <- Obj.repr value'
    val mutable initResourceAnimation : RotationAnimation.rotationAnimation = (Obj.magic 0)
    method initResourceAnimation = initResourceAnimation
    method set_initResourceAnimation value' = initResourceAnimation <- value'
    val mutable resourceAnimation : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method resourceAnimation = resourceAnimation
    method set_resourceAnimation value' = resourceAnimation <- value'
    val mutable initPathAnimation : PathAnimation.pathAnimation = (Obj.magic 0)
    method initPathAnimation = initPathAnimation
    method set_initPathAnimation value' = initPathAnimation <- value'
    val mutable pathAnimation : Obj.t = Obj.repr 0
    method pathAnimation : 'r. 'r = Obj.magic pathAnimation
    method set_pathAnimation : 'v. 'v -> unit = fun value' -> pathAnimation <- Obj.repr value'
    val mutable captionAnimationHelper : CaptionAnimationHelperBase.captionAnimationHelperBase = (Obj.magic 0)
    method captionAnimationHelper = captionAnimationHelper
    method set_captionAnimationHelper value' = captionAnimationHelper <- value'
    val mutable decalAnimation : RotationAnimation.rotationAnimation = (Obj.magic 0)
    method decalAnimation = decalAnimation
    method set_decalAnimation value' = decalAnimation <- value'
    val mutable waypointLayerInterfaceFactoryInterface : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface = (Obj.magic 0)
    method waypointLayerInterfaceFactoryInterface = waypointLayerInterfaceFactoryInterface
    method set_waypointLayerInterfaceFactoryInterface value' = waypointLayerInterfaceFactoryInterface <- value'
    val mutable resourceLoad : int = 0
    method resourceLoad = resourceLoad
    method set_resourceLoad value' = resourceLoad <- value'
    val mutable weaponRange : int = 0
    method weaponRange = weaponRange
    method set_weaponRange value' = weaponRange <- value'
    val mutable rtsLogHelper : RTSLayerLogHelper.rTSLayerLogHelper = (Obj.magic 0)
    method rtsLogHelper = rtsLogHelper
    method set_rtsLogHelper value' = rtsLogHelper <- value'
    val mutable rotationAnimationInterfaceP : RotationAnimation.rotationAnimation = (Obj.magic 0)
    method rotationAnimationInterfaceP = rotationAnimationInterfaceP
    method set_rotationAnimationInterfaceP value' = rotationAnimationInterfaceP <- value'
    val mutable movementAngle : NamedAngle.namedAngle = (Obj.magic 0)
    method movementAngle = movementAngle
    method set_movementAngle value' = movementAngle <- value'
    val mutable steeringInsideGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method steeringInsideGeographicMapCellPosition = steeringInsideGeographicMapCellPosition
    method set_steeringInsideGeographicMapCellPosition value' = steeringInsideGeographicMapCellPosition <- value'
    val mutable sensorGeographicMapCellPositionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method sensorGeographicMapCellPositionList = sensorGeographicMapCellPositionList
    method set_sensorGeographicMapCellPositionList value' = sensorGeographicMapCellPositionList <- value'
    val mutable cAPITAL_EVENT : CapitalEvent.capitalEvent = (Obj.magic 0)
    method cAPITAL_EVENT = cAPITAL_EVENT
    method set_cAPITAL_EVENT value' = cAPITAL_EVENT <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        ignore (initPathAnimation#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)))
        end [@@warning "-7-20"]
    

    method updateWaypointBehavior : 'any1. 'any1 -> unit = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        ignore ((Obj.magic !hashtable)#put (groupCommonFactory#iD, (self#getGroupInterface ())));
        ignore ((Obj.magic !hashtable)#put ((Obj.magic (java_call_static "Layer.get_iD" (Obj.repr ()))), self));
        ignore ((Obj.magic !hashtable)#put ((AllBinaryGameLayerManager.get_iD ()), allBinaryGameLayerManagerP));
        ignore (self#setWaypointBehavior ((Obj.obj (java_new "UnitWaypointBehavior2" (Obj.repr (self, (Obj.magic (waypointLayerInterfaceFactoryInterface#getNextInstance ((Obj.magic !hashtable), x, y, z)))))))));
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let waypoint : WaypointBase.waypointBase ref = ref (((if (J2MEUtil.isHTML ()) then (Obj.obj (java_new "MultipassNoCacheWaypoint" (Obj.repr (self, (AttackSound.getInstance ()))))) else (Obj.obj (java_new "NoCacheWaypoint" (Obj.repr (self, (AttackSound.getInstance ())))))) :> WaypointBase.waypointBase)) in ();
        ignore ((self#getWaypointBehavior ())#setWaypoint (!waypoint));
        ignore (super#updateWaypointBehavior ((Obj.magic geographicMapInterface)));
        (self#initRangeHack ())
        end [@@warning "-7-20"]
    

    method construct : 'any1. 'any1 -> unit = fun (rtsPlayerLayerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        begin
        ignore (super#construct ((Obj.magic rtsPlayerLayerInterface)));
        ignore ((TrackingEventHandler.getInstance ())#addListenerInterface (self));
        ignore ((WaypointEventHandlerFactory.getInstance ((self#getGroupInterface ()).(0)))#addListenerInterface ((self#getUnitWaypointBehavior ())));
        ignore ((BuildingEventHandler.getInstance ())#addListenerInterface (self));
        ignore ((self#getUnitWaypointBehavior ())#setCurrentPathGeographicMapCellPosition ((self#getCurrentGeographicMapCellPosition ())));
        (self#updateSensorGeographicMapCellPositionList ());
        ignore ((self#getUnitWaypointBehavior ())#setLastPathGeographicMapCellPosition (((self#getUnitWaypointBehavior ())#getCurrentPathGeographicMapCellPosition ())))
        end [@@warning "-7-20"]
    

    method updateSensorGeographicMapCellPositionList () : unit =
        begin
        if ((VisibleCellPositionsSingleton.getInstance ())#shouldProcess ()) then begin
            let currentGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            ignore (sensorGeographicMapCellPositionList#clear ());
            ignore (sensorGeographicMapCellPositionList#add (!currentGeographicMapCellPosition));
            let sensorRange : int ref = ref ((weaponRange * sENSOR_RANGE_MULTIPLIER)) in ();
            let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
            let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
            let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
            let totalCells : int ref = ref ((((!sensorRange / (!tiledLayer#getCellHeight ()))) / 2)) in ();
            let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((!geographicMapInterface#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
            let column : int ref = ref ((!currentGeographicMapCellPosition#getColumn ())) in ();
            let row : int ref = ref ((!currentGeographicMapCellPosition#getRow ())) in ();
            let lastColumn : int ref = ref ((!column + !totalCells)) in ();
            let lastRow : int ref = ref ((!row + !totalCells)) in ();
            if (!lastColumn > (!tiledLayer#getColumns ())) then begin
                lastColumn := (!tiledLayer#getColumns ())
            end;
            if (!lastRow > (!tiledLayer#getRows ())) then begin
                lastRow := (!tiledLayer#getRows ())
            end;
            let firstColumn : int ref = ref ((!column - !totalCells)) in ();
            let firstRow : int ref = ref ((!row - !totalCells)) in ();
            if (!firstColumn < 0) then begin
                firstColumn := 0
            end;
            if (!firstRow < 0) then begin
                firstRow := 0
            end;
            for index = (!lastColumn - 1) downto !firstColumn do
                for index2 = (!lastRow - 1) downto !firstRow do
                    let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (index, index2)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                    if (not (sensorGeographicMapCellPositionList#contains (!geographicMapCellPosition))) then begin
                        ignore (sensorGeographicMapCellPositionList#add (!geographicMapCellPosition))
                    end
                done
            done
        end
        end [@@warning "-7"]
    

    method getSensorGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        (sensorGeographicMapCellPositionList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method select () : unit =
        begin
        pathAnimation <- Obj.repr (initPathAnimation);
        ignore (super#select ())
        end [@@warning "-7"]
    

    method deselect () : unit =
        begin
        pathAnimation <- Obj.repr (((NullAnimationFactory.getFactoryInstance ())#getInstance (0)));
        ignore (super#deselect ())
        end [@@warning "-7"]
    

    method setSelected ((selected : bool)) : unit =
        begin
        ignore (super#setSelected (selected));
        if selected then begin
            if debug then begin
                rtsLogHelper <- (RTSLayerSelectedLogHelper.getInstance ())
            end;
            rtsLayer2LogHelper <- (RTSLayer2SelectedLogHelper.getInstance ())
        end else begin
            if debug then begin
                rtsLogHelper <- (RTSLayerLogHelper.getInstance ())
            end;
            rtsLayer2LogHelper <- (RTSLayer2LogHelper.getInstance ())
        end
        end [@@warning "-7"]
    

    method setClosestGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (pathsList) ->
        let pathsList = Obj.repr pathsList in
        begin
        ignore (rtsLogHelper#setClosestGeographicMapCellHistory (self, (Obj.magic pathsList)));
        let closestIndex : int ref = ref ((-1)) in ();
        let shortestDistance : int ref = ref (2147483647) in ();
        let currentDistance : int ref = ref (2147483647) in ();
        for index = (((Obj.magic pathsList)#size ()) - 1) downto 0 do
            let geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic ((Obj.magic pathsList)#get (index))) :> BasicArrayList.basicArrayList)) in ();
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (!geographicMapCellPositionBasicArrayList#get (((!geographicMapCellPositionBasicArrayList#size ()) - 1)))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            currentDistance := (layerDistanceUtil#getDistanceAt (self, (!geographicMapCellPosition#getMidPoint ())));
            if (!currentDistance < !shortestDistance) then begin
                shortestDistance := !currentDistance;
                closestIndex := index
            end
        done;
        if (!closestIndex >= 0) then begin
            let geographicMapCellPositionBasicArrayList : BasicArrayList.basicArrayList ref = ref (((Obj.magic ((Obj.magic pathsList)#get (!closestIndex))) :> BasicArrayList.basicArrayList)) in ();
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (!geographicMapCellPositionBasicArrayList#get (0))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            (self#teleportTo (!geographicMapCellPosition))
        end
        end [@@warning "-7-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (geographicMapCellHistory, geographicMapCellPositionBasicArrayList) ->
        let geographicMapCellHistory = Obj.repr geographicMapCellHistory in
        let geographicMapCellPositionBasicArrayList = Obj.repr geographicMapCellPositionBasicArrayList in
        begin
        ignore ((Obj.magic geographicMapCellHistory)#trackAll ((Obj.magic geographicMapCellPositionBasicArrayList)))
        end [@@warning "-7-20"]
    

    method onMovement : 'any1. 'any1 -> unit = fun (trackingEvent_arg) ->
        let trackingEvent_arg = Obj.repr trackingEvent_arg in
        begin
        (try
            let layerInterface : AdvancedRTSGameLayer.advancedRTSGameLayer ref = ref (((Obj.magic ((Obj.magic trackingEvent_arg)#getLayerInterface ())) :> AdvancedRTSGameLayer.advancedRTSGameLayer)) in ();
            if ((Obj.repr (!layerInterface#getGroupInterface ()).(0)) != (Obj.repr (self#getGroupInterface ()).(0))) then begin
                ignore (((self#getUnitWaypointBehavior ())#getPossibleTargetList ())#add (!layerInterface));
                ignore (!layerInterface#onMovementFound ((self#getTrackingEvent ())))
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "onMovement", e))
        end)
        end [@@warning "-7-20"]
    

    method onMovementFound : 'any1. 'any1 -> unit = fun (trackingEvent_arg) ->
        let trackingEvent_arg = Obj.repr trackingEvent_arg in
        begin
        let layerInterface : AdvancedRTSGameLayer.advancedRTSGameLayer ref = ref (((Obj.magic ((Obj.magic trackingEvent_arg)#getLayerInterface ())) :> AdvancedRTSGameLayer.advancedRTSGameLayer)) in ();
        if ((Obj.repr (!layerInterface#getGroupInterface ()).(0)) != (Obj.repr (self#getGroupInterface ()).(0))) then begin
            ignore (((self#getUnitWaypointBehavior ())#getPossibleTargetList ())#add (!layerInterface))
        end
        end [@@warning "-7-20"]
    

    method initRangeHack () : unit =
        begin
        let basicWeaponPart : BasicWeaponPart.basicWeaponPart ref = ref (((Obj.magic (self#getPartInterfaceArray ()).(0)) :> BasicWeaponPart.basicWeaponPart)) in ();
        let weaponProperties : WeaponProperties.weaponProperties ref = ref (((!basicWeaponPart#getWeaponProperties ()) :> WeaponProperties.weaponProperties)) in ();
        weaponRange <- (!weaponProperties#getRange ());
        initRangeAnimation <- (AdjustedCircleAnimation.createW (weaponRange, weaponRange, (self#getWidth ()), basicColorFactory#gREEN));
        let sensorRange : int ref = ref ((weaponRange * sENSOR_RANGE_MULTIPLIER)) in ();
        initSensorRangeAnimation <- (AdjustedCircleAnimation.createW (!sensorRange, !sensorRange, (self#getWidth ()), basicColorFactory#rED));
        ignore ((self#getUnitWaypointBehavior ())#initRange (weaponRange));
        fireTimeHelper#set_delay (((java_to_int (Obj.repr ((!weaponProperties#getReloadTime ()))))))
        end [@@warning "-7"]
    

    method processBuiltTick : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        if (not ((self#getHealthInterface ())#isAlive ())) then begin
            if (self#isReadyForExplosion ()) then begin
                let currentFrame : int ref = ref ((destroyAnimationInterface#getFrame ())) in ();
                let size : int ref = ref (((destroyAnimationInterface#getSize ()) - 1)) in ();
                if (!currentFrame = !size) then begin
                    if (not ((self#getHealthInterface ())#isAlive ())) then begin
                        (self#setDestroyed (true))
                    end
                end else begin
                    ignore (destroyAnimationInterface#nextFrame ())
                end
            end else begin
                ignore (self#setAnimationInterface (destroyAnimationInterface));
                ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((ExplosionBasicSound.getInstance ())));
                ignore (shakeListener#onSmallShakeEvent ());
                ignore (vibration#vibrate (duration, 0, 0));
                ignore (self#setReadyForExplosion (true))
            end
        end else begin
            ignore (super#processBuiltTick ((Obj.magic allBinaryLayerManager)))
        end;
        ignore (captionAnimationHelper#tick ());
        ignore ((self#getUnitWaypointBehavior ())#processTick ((Obj.magic allBinaryLayerManager)))
        end [@@warning "-7-20"]
    

    method teleportTo : 'any1. 'any1 -> unit = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let point : GPoint.gPoint ref = ref ((((Obj.magic geographicMapCellPosition)#getMidPoint ()) :> GPoint.gPoint)) in ();
        ignore (self#setPosition (((!point#getX ()) - (self#getHalfWidth ())), ((!point#getY ()) - (self#getHalfHeight ())), z))
        end [@@warning "-7-20"]
    

    method getCurrentGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapInterface#getCellPositionAtXY ((x + (self#getHalfWidth ())), (y + (self#getHalfHeight ())))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let raceTrackGeographicMap : RaceTrackGeographicMap.raceTrackGeographicMap ref = ref (((Obj.magic !geographicMapInterface) :> RaceTrackGeographicMap.raceTrackGeographicMap)) in ();
        if (not (!raceTrackGeographicMap#isValid (!geographicMapCellPosition))) then begin
            raise (Failure (("Position is not really on the map: " ^ java_string_of (Obj.repr (!geographicMapCellPosition)))))
        end;
        (!geographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method fire : 'any1 'any2. 'any1 * 'any2 -> unit = fun (layerManager, _gameKeyEvent) ->
        let layerManager = Obj.repr layerManager in
        begin
        if (fireTimeHelper#isTimeTNT ()) then begin
            (self#fireAll ((Obj.magic layerManager)))
        end else begin
            ignore (self#reload ())
        end
        end [@@warning "-7-20"]
    

    method left () : unit =
        begin
        ignore (initResourceAnimation#previousRotation ());
        ignore (decalAnimation#previousRotation ());
        ignore (rotationAnimationInterfaceP#previousRotation ())
        end [@@warning "-7"]
    

    method right () : unit =
        begin
        ignore (initResourceAnimation#nextRotation ());
        ignore (decalAnimation#nextRotation ());
        ignore (rotationAnimationInterfaceP#nextRotation ())
        end [@@warning "-7"]
    

    method down () : unit =
        begin
        let velocityProperties : VelocityProperties.velocityProperties ref = ref ((((self#getVehicleProperties ())#getVelocityProperties ()) :> VelocityProperties.velocityProperties)) in ();
        if (not (!velocityProperties#isOverXYMaxForwardVelocity ())) then begin
            (self#accelerate (decelerationBasicDecimal))
        end
        end [@@warning "-7"]
    

    method up () : unit =
        begin
        let velocityProperties : VelocityProperties.velocityProperties ref = ref ((((self#getVehicleProperties ())#getVelocityProperties ()) :> VelocityProperties.velocityProperties)) in ();
        if (not (!velocityProperties#isOverXYMaxForwardVelocity ())) then begin
            (self#accelerate (accelerationBasicDecimal))
        end
        end [@@warning "-7"]
    

    method initInputProcessors () : unit =
        begin
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- (Obj.magic ((new SpecialRightGameInputProcessor.specialRightGameInputProcessor (self))));
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- (Obj.magic ((new SpecialLeftGameInputProcessor.specialLeftGameInputProcessor (self))));
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))) <- (Obj.magic ((new SpecialFireGameInputProcessor.specialFireGameInputProcessor (self))));
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_POUND" (Obj.repr ())))) <- (Obj.magic (inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ()))))));
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) <- (Obj.magic ((new SpecialDownGameInputProcessor.specialDownGameInputProcessor (self))));
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) <- (Obj.magic ((new SpecialUpGameInputProcessor.specialUpGameInputProcessor (self))));
        ignore (super#initInputProcessors ())
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#getGameKeyEventList ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!list#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr (!list#get (index)))) in ();
            let key : int ref = ref ((GameKeyEventUtil.getKey (!anyType))) in ();
            ignore (inputProcessorArray.(!key)#processEvent ((Obj.magic layerManager), (GameKeyEvent.get_nONE ())))
        done;
        ignore (!list#clear ());
        (self#groundFriction ());
        (self#move ())
        end [@@warning "-7-20"]
    

    method accelerate : 'any1. 'any1 -> unit = fun (accelerate) ->
        let accelerate = Obj.repr accelerate in
        begin
        ignore (((self#getVehicleProperties ())#getVelocityProperties ())#addVelocityi (((Obj.magic accelerate)#getUnscaled ()), (java_to_int (Obj.repr (((rotationAnimationInterfaceP#getAngleInfoP ())#getAngle ())))), 90))
        end [@@warning "-7-20"]
    

    method fireAll : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        let angleInfo : AngleInfo.angleInfo ref = ref (((rotationAnimationInterfaceP#getAngleInfoP ()) :> AngleInfo.angleInfo)) in ();
        let angle : int ref = ref ((java_to_int (Obj.repr ((((!angleInfo#getAngle ()) + slightAngle)))))) in ();
        ignore (hashtable#put (((SmallIntegerSingletonFactory.getInstance ())#getAt (1)), ((SmallIntegerSingletonFactory.getInstance ())#getAt ((java_to_int (Obj.repr ((((AngleFactory.getInstance ())#getAt (!angle))#getValue ()))))))));
        let salvoInterface : SalvoInterface.salvoInterface ref = ref (((Obj.magic (self#getPartInterfaceArray ()).(0)) :> SalvoInterface.salvoInterface)) in ();
        ignore (!salvoInterface#process ((Obj.magic layerManager), !angle, 90))
        end [@@warning "-7-20"]
    

    method downgrade () : unit =
        begin
        if ((self#getLevel ()) > 1) then begin
            ignore (super#downgrade ())
        end
        end [@@warning "-7"]
    

    method upgrade () : unit =
        begin
        ignore (super#upgrade ());
        (self#initRangeHack ())
        end [@@warning "-7"]
    

    method groundFriction () : unit =
        begin
        let vehicleFrictionProperties : VehicleFrictionProperties.vehicleFrictionProperties ref = ref ((((self#getVehicleProperties ())#getVehicleFrictionProperties ()) :> VehicleFrictionProperties.vehicleFrictionProperties)) in ();
        ignore (((self#getVehicleProperties ())#getVehicleFrictionProperties ())#friction (((self#getVehicleProperties ())#getVelocityProperties ()), (!vehicleFrictionProperties#getTireFrictionNominator ())))
        end [@@warning "-7"]
    

    method trackTo ((reason : string)) : unit =
        begin
        let waypointBehaviorBase : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((Obj.magic waypointBehaviorBase) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
        let nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!waypointBehaviorBase#getNextUnvisitedPathGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let point : GPoint.gPoint ref = ref (((!nextUnvisitedPathGeographicMapCellPosition#getMidPoint ()) :> GPoint.gPoint)) in ();
        let dx : int ref = ref (((((self#getXP ()) + (self#getHalfWidth ()))) - (!point#getX ()))) in ();
        let dy : int ref = ref (((((self#getYP ()) + (self#getHalfHeight ()))) - (!point#getY ()))) in ();
        ignore (rtsLogHelper#trackTo (self, !nextUnvisitedPathGeographicMapCellPosition, !dx, !dy, reason));
        (self#trackToDXY (!dx, !dy))
        end [@@warning "-7"]
    

    method trackToDXY ((dx : int), (dy : int)) : unit =
        begin
        let angleOfTarget : int ref = ref (0) in ();
        (self#trackToDXYTargetAngle (dx, dy, !angleOfTarget))
        end [@@warning "-7"]
    

    method turnTo ((dx : int), (dy : int), (targetAngle : int)) : bool =
        let targetAngle = ref targetAngle in
        try
        begin
        let waypointBehaviorBase : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((Obj.magic waypointBehaviorBase) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
        let nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!waypointBehaviorBase#getNextUnvisitedPathGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let evading : bool ref = ref (false) in ();
        if ((Obj.repr ((self#getUnitWaypointBehavior ())#getSensorAction ())) == (Obj.repr (SensorActionFactory.getInstance ())#eVADE)) then begin
            ignore (rtsLogHelper#evade (self));
            evading := true;
            targetAngle := (!targetAngle + 180)
        end;
        let angleInfo : AngleInfo.angleInfo ref = ref (((rotationAnimationInterfaceP#getAngleInfoP ()) :> AngleInfo.angleInfo)) in ();
        let angle : int ref = ref (((FrameUtil.getInstance ())#adjustAngleToFrameAngle (((!angleInfo#getAngle ()) - 270)))) in ();
        ignore (rtsLogHelper#turnTo (self, dx, dy, !angleInfo, !angle, movementAngle, !evading, !targetAngle));
        let gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory ref = ref (((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory)) in ();
        if ((dx = 0) && (dy = 0)) then begin
            ignore (rtsLogHelper#doneMoving (self));
            raise (Java_return (Obj.repr (true)))
        end else if (((java_to_int (Obj.repr ((movementAngle#getValue ()))))) = !angle) then begin
            if ((dx > 0) && ((Obj.repr movementAngle) == (Obj.repr angleFactory#lEFT))) then begin
                ignore (rtsLogHelper#movingLeft (self));
                raise (Java_return (Obj.repr (false)))
            end;
            if ((dx < 0) && ((Obj.repr movementAngle) == (Obj.repr angleFactory#rIGHT))) then begin
                ignore (rtsLogHelper#movingRight (self));
                raise (Java_return (Obj.repr (false)))
            end;
            if ((dy > 0) && ((Obj.repr movementAngle) == (Obj.repr angleFactory#uP))) then begin
                ignore (rtsLogHelper#movingUp (self));
                raise (Java_return (Obj.repr (false)))
            end;
            if ((dy < 0) && ((Obj.repr movementAngle) == (Obj.repr angleFactory#dOWN))) then begin
                ignore (rtsLogHelper#movingDown (self));
                raise (Java_return (Obj.repr (false)))
            end;
            ignore (rtsLogHelper#currentMoveEnded (self));
            if (((Obj.repr movementAngle) == (Obj.repr angleFactory#lEFT)) || ((Obj.repr movementAngle) == (Obj.repr angleFactory#rIGHT))) then begin
                (self#handleDeltalY (dx, dy))
            end else if (((Obj.repr movementAngle) == (Obj.repr angleFactory#uP)) || ((Obj.repr movementAngle) == (Obj.repr angleFactory#dOWN))) then begin
                (self#handleDeltalX (dx, dy))
            end;
            raise (Java_return (Obj.repr (true)))
        end else begin
            if ((Obj.repr !nextUnvisitedPathGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
                if ((Obj.repr steeringInsideGeographicMapCellPosition) != (Obj.repr !nextUnvisitedPathGeographicMapCellPosition)) then begin
                    if (((abs (dx)) > (abs (dy))) && (dy <> 0)) then begin
                        (self#handleDeltalY (dx, dy))
                    end else if (dx <> 0) then begin
                        (self#handleDeltalX (dx, dy))
                    end else begin
                        (self#handleDeltalY (dx, dy))
                    end
                end;
                let deltaAngle2 : int ref = ref (((movementAngle#getValue ()) - !angle)) in ();
                if (!deltaAngle2 > 0) then begin
                    ignore (rtsLogHelper#rotateRight (self));
                    ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))))
                end else begin
                    ignore (rtsLogHelper#rotateLeft (self));
                    ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))))
                end;
                raise (Java_return (Obj.repr (true)))
            end else begin
                ignore (rtsLogHelper#noRotation (self))
            end;
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method handleDeltalX ((dx : int), (_dy : int)) : unit =
        begin
        let waypointBehaviorBase : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((Obj.magic waypointBehaviorBase) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
        let nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!waypointBehaviorBase#getNextUnvisitedPathGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if (dx > 0) then begin
            movementAngle <- angleFactory#lEFT;
            steeringInsideGeographicMapCellPosition <- !nextUnvisitedPathGeographicMapCellPosition
        end else begin
            movementAngle <- angleFactory#rIGHT;
            steeringInsideGeographicMapCellPosition <- !nextUnvisitedPathGeographicMapCellPosition
        end;
        ignore (rtsLogHelper#handle (self, movementAngle))
        end [@@warning "-7"]
    

    method handleDeltalY ((_dx : int), (dy : int)) : unit =
        begin
        let waypointBehaviorBase : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((Obj.magic waypointBehaviorBase) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
        let nextUnvisitedPathGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!waypointBehaviorBase#getNextUnvisitedPathGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if (dy > 0) then begin
            movementAngle <- angleFactory#uP;
            steeringInsideGeographicMapCellPosition <- !nextUnvisitedPathGeographicMapCellPosition
        end else begin
            movementAngle <- angleFactory#dOWN;
            steeringInsideGeographicMapCellPosition <- !nextUnvisitedPathGeographicMapCellPosition
        end;
        ignore (rtsLogHelper#handle (self, movementAngle))
        end [@@warning "-7"]
    

    method trackToDXYTargetAngle ((dx : int), (dy : int), (targetAngle : int)) : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((((self#getUnitWaypointBehavior ())#getSteeringVisitorList ()) :> BasicArrayList.basicArrayList)) in ();
        if ((!list#size ()) > 0) then begin
            for index = ((!list#size ()) - 1) downto 0 do
                let steeringVisitor : SteeringVisitor.steeringVisitor ref = ref (((Obj.magic (!list#get (index))) :> SteeringVisitor.steeringVisitor)) in ();
                let anyType : Obj.t ref = ref ((Obj.repr (!steeringVisitor#visit (self)))) in ();
                if (!anyType == (Obj.magic 0)) then begin
                    ignore (!list#removeAt (index))
                end
            done;
            (self#fireOrMove ())
        end else if (not (self#turnTo (dx, dy, targetAngle))) then begin
            (self#fireOrMove ())
        end
        end [@@warning "-7"]
    

    method fireOrMove () : unit =
        begin
        let gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory ref = ref (((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory)) in ();
        if ((self#getUnitWaypointBehavior ())#needToMove ()) then begin
            ignore (rtsLayer2LogHelper#steeringUp (self));
            if (showMoreCaptionStates && (not (captionAnimationHelper#isShowing ()))) then begin
                ignore (captionAnimationHelper#update (mOVE, basicColorFactory#gREEN))
            end;
            ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))))))
        end else begin
            ignore (captionAnimationHelper#update ((CommonPhoneStrings.getInstance ())#fIRE, basicColorFactory#rED));
            ignore (rtsLayer2LogHelper#steeringFireOrStop (self));
            (self#allStop ());
            ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))))));
            ignore ((TrackingEventHandler.getInstance ())#fireEvent ((self#getTrackingEvent ())))
        end
        end [@@warning "-7"]
    

    method move () : unit =
        begin
        (try
            let velocityProperties : VelocityProperties.velocityProperties ref = ref ((((self#getVehicleProperties ())#getVelocityProperties ()) :> VelocityProperties.velocityProperties)) in ();
            let velocityXScaled : int ref = ref ((java_to_int (Obj.repr (((!velocityProperties#getVelocityXBasicDecimalP ())#getScaled ()))))) in ();
            let velocityYScaled : int ref = ref ((java_to_int (Obj.repr (((!velocityProperties#getVelocityYBasicDecimalP ())#getScaled ()))))) in ();
            ignore ((self#getUnitWaypointBehavior ())#move ());
            if ((!velocityXScaled <> 0) || (!velocityYScaled <> 0)) then begin
                ignore ((self#getUnitWaypointBehavior ())#setMoving (true));
                let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
                let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
                ignore (layerPartialCellPositionsUtil#getAllDXY (!geographicMapInterface, self, !velocityXScaled, !velocityYScaled, (getPartialpositionlist ())));
                let cellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic ((DropCellPositionHistory.getInstance ())#getCellPositionWithDrop ((getPartialpositionlist ())))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                if ((Obj.repr !cellPosition) == (Obj.repr cellPositionFactory#nONE)) then begin
                    let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
                    let tiledLayerUtil : TiledLayerUtil.tiledLayerUtil ref = ref (((TiledLayerUtil.getInstance ()) :> TiledLayerUtil.tiledLayerUtil)) in ();
                    let x : int ref = ref ((x + !velocityXScaled)) in ();
                    let y : int ref = ref ((y + !velocityYScaled)) in ();
                    x := (!tiledLayerUtil#keepOnMapX (!tiledLayer, !x, (self#getWidth ())));
                    y := (!tiledLayerUtil#keepOnMapY (!tiledLayer, !y, (self#getHeight ())));
                    ignore (self#setPosition (!x, !y, z))
                end else begin
                    let allbinaryLayer : AllBinaryLayer.allBinaryLayer ref = ref ((((DropCellPositionHistory.getInstance ())#getLayerInterface (!cellPosition)) :> AllBinaryLayer.allBinaryLayer)) in ();
                    ignore ((self#getUnitWaypointBehavior ())#setMovingFromStopped (false));
                    ignore ((self#getUnitWaypointBehavior ())#addBuildingChase (!allbinaryLayer, !cellPosition))
                end
            end;
            if ((self#getUnitWaypointBehavior ())#isMoving ()) then begin
                ignore ((TrackingEventHandler.getInstance ())#fireEvent ((self#getTrackingEvent ())))
            end else begin
                ignore ((self#getUnitWaypointBehavior ())#setMovingFromStopped (false))
            end;
            if (((self#getUnitWaypointBehavior ())#isMovingFromStopped ()) && (self#isVisible ())) then begin
                ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((Obj.magic moveSoundInterface)))
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "move", e))
        end)
        end [@@warning "-7"]
    

    method allStop () : unit =
        begin
        let velocityProperties : VelocityProperties.velocityProperties ref = ref ((((self#getVehicleProperties ())#getVelocityProperties ()) :> VelocityProperties.velocityProperties)) in ();
        ignore ((!velocityProperties#getVelocityXBasicDecimalP ())#setint (0));
        ignore ((!velocityProperties#getVelocityYBasicDecimalP ())#setint (0))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        if (self#isVisible ()) then begin
            ignore (super#paint ((Obj.magic graphics)));
            let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
            let viewX : int ref = ref ((!viewPosition#getX ())) in ();
            let viewY : int ref = ref ((!viewPosition#getY ())) in ();
            ignore (decalAnimation#paintXY ((Obj.magic graphics), !viewX, !viewY));
            ignore (rangeAnimation#paintXY ((Obj.magic graphics), !viewX, !viewY));
            ignore (sensorRangeAnimation#paintXY ((Obj.magic graphics), !viewX, !viewY));
            ignore (damageFloatersPaintableInterface#paint ((Obj.magic graphics)));
            ignore (healthBar#paint ((Obj.magic graphics)));
            ignore (captionAnimationHelper#paintXY ((Obj.magic graphics), !viewX, !viewY));
            ignore ((Obj.magic pathAnimation)#paintXY ((Obj.magic graphics), !viewX, !viewY));
            ignore (resourceAnimation#paintXY ((Obj.magic graphics), !viewX, !viewY))
        end
        end [@@warning "-7-20"]
    

    method onBuildingEvent : 'any1. 'any1 -> unit = fun (event) ->
        let event = Obj.repr event in
        begin
        let buildingLayer : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic event)#getRtsLayer ())))) in ();
        ignore ((self#getUnitWaypointBehavior ())#moveAwayFromBuilding ((Obj.magic !buildingLayer)))
        end [@@warning "-7-20"]
    

    method getVehicleProperties () : VehicleProperties.vehicleProperties =
        begin
        (vehicleProperties :> VehicleProperties.vehicleProperties)
        end [@@warning "-7"]
    

    method damage ((damage : int), (damageType : int)) : unit =
        begin
        ignore (super#damage (damage, damageType));
        ignore (damageFloaters#add (damage));
        if (damage > 0) then begin
            ignore ((self#getHealthInterface ())#damage (damage))
        end
        end [@@warning "-7"]
    

    method getDamage ((_damageType : int)) : int =
        begin
        0
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, "setDestroyed"));
        ignore (super#setDestroyed (destroyed));
        if (self#isDestroyed ()) then begin
            ignore ((WaypointEventHandlerFactory.getInstance ((self#getGroupInterface ()).(0)))#removeListener ((self#getUnitWaypointBehavior ())));
            ignore ((TrackingEventHandler.getInstance ())#removeListener (self));
            ignore ((BuildingEventHandler.getInstance ())#removeListener (self));
            if (not ((self#getHealthInterface ())#isAlive ())) then begin
                let damage : int ref = ref (((self#getHealthInterface ())#getMaxHealth ())) in ();
                if (!damage > 10) then begin
                    ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((ExplosionBasicSound.getInstance ())));
                    if (!damage < 100) then begin
                        ignore (shakeListener#onSmallShakeEvent ());
                        ignore (vibration#vibrate (duration, 0, 0))
                    end else if (!damage < 1000) then begin
                        ignore (shakeListener#onMediumShakeEvent ());
                        ignore (vibration#vibrate ((duration * 2), 0, 0))
                    end else if (!damage < 3000) then begin
                        ignore (shakeListener#onLargeShakeEvent ());
                        ignore (vibration#vibrate ((duration * 4), 0, 0))
                    end
                end
            end
        end
        end [@@warning "-7"]
    

    method getLoad () : int =
        begin
        resourceLoad
        end [@@warning "-7"]
    

    method clearResourceAnimation () : unit =
        begin
        resourceAnimation <- (Obj.magic ((NullIndexedAnimationFactory.getFactoryInstance ())#getInstance (0)))
        end [@@warning "-7"]
    

    method setLoad ((resource : int)) : unit =
        begin
        if (resource > 0) then begin
            resourceAnimation <- initResourceAnimation
        end else begin
            (self#clearResourceAnimation ())
        end;
        resourceLoad <- resource
        end [@@warning "-7"]
    

    method addLoad ((resource : int)) : unit =
        begin
        resourceLoad <- (resourceLoad + resource)
        end [@@warning "-7"]
    

    method handleCost : 'any1. 'any1 -> unit = fun (ownerLayer) ->
        let ownerLayer = Obj.repr ownerLayer in
        begin
        if ((self#getLoad ()) > 0) then begin
            ignore (cAPITAL_EVENT#setValue ((self#getLoad ())));
            ignore ((CapitalEventHandlerFactory.getInstance (((Obj.magic ownerLayer)#getGroupInterface ()).(0)))#fireEvent (cAPITAL_EVENT));
            (self#setLoad (0))
        end
        end [@@warning "-7-20"]
    

    method createHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        let rtsLayerHudPaintable : RTSLayerHudPaintable.rTSLayerHudPaintable ref = ref (((RTSLayerHudPaintable.getInstance ()) :> RTSLayerHudPaintable.rTSLayerHudPaintable)) in ();
        ignore (!rtsLayerHudPaintable#setBasicColorP ((allBinaryGameLayerManagerP#getForegroundBasicColor ())));
        ignore (!rtsLayerHudPaintable#setRtsLayer (self));
        (!rtsLayerHudPaintable :> SelectionHudPaintable.selectionHudPaintable)
        end [@@warning "-7"]
    

    method getHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        let rtsLayerHudPaintable : RTSLayerHudPaintable.rTSLayerHudPaintable ref = ref (((RTSLayerHudPaintable.getInstance ()) :> RTSLayerHudPaintable.rTSLayerHudPaintable)) in ();
        (!rtsLayerHudPaintable :> SelectionHudPaintable.selectionHudPaintable)
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        (getStaticType ())
        end [@@warning "-7"]
    

    method getUnitWaypointBehavior : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (self#getWaypointBehavior ()))))
        end [@@warning "-7"]
    

    method getTrackingEvent () : TrackingEvent.trackingEvent =
        begin
        (trackingEvent :> TrackingEvent.trackingEvent)
        end [@@warning "-7"]
    

    method getCaptionAnimationHelper () : CaptionAnimationHelperBase.captionAnimationHelperBase =
        begin
        (captionAnimationHelper :> CaptionAnimationHelperBase.captionAnimationHelperBase)
        end [@@warning "-7"]
    

    method isSelfUpgradeable () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method getMaxResourceLoad () : int =
        begin
        maxResourceLoad
        end [@@warning "-7"]

    initializer
      begin
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        groupCommonFactory <- ((GroupCommonFactory.getInstance ()) :> GroupCommonFactory.groupCommonFactory);
        layerPartialCellPositionsUtil <- ((LayerPartialCellPositionsUtil.getInstance ()) :> LayerPartialCellPositionsUtil.layerPartialCellPositionsUtil);
        layerDistanceUtil <- ((LayerDistanceUtil.getInstance ()) :> LayerDistanceUtil.layerDistanceUtil);
        angleFactory <- ((AngleFactory.getInstance ()) :> AngleFactory.angleFactory);
        cellPositionFactory <- ((CellPositionFactory.getInstance ()) :> CellPositionFactory.cellPositionFactory);
        ();
        ();
        accelerationBasicDecimal <- ((new BasicDecimal.basicDecimal (1600)) :> BasicDecimal.basicDecimal);
        decelerationBasicDecimal <- ((new BasicDecimal.basicDecimal ((-1000))) :> BasicDecimal.basicDecimal);
        ();
        damageFloaters <- ((Obj.magic 0) :> DamageFloaters.damageFloaters);
        damageFloatersPaintableInterface <- ((Obj.magic 0) :> Paintable.paintable);
        healthBar <- ((Obj.magic 0) :> Paintable.paintable);
        ();
        ();
        resourceAnimation <- ((Obj.magic ((NullIndexedAnimationFactory.getFactoryInstance ())#getInstance (0))) :> IndexedAnimation.indexedAnimation);
        ();
        pathAnimation <- (Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)));
        captionAnimationHelper <- ((new CaptionAnimationHelper.captionAnimationHelper ((((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((Obj.magic (java_call_static "CaptionResources.getInstance" (Obj.repr ())))#rESOURCE))#getInstance (0)), (-23), (-25), 6, 0)) :> CaptionAnimationHelperBase.captionAnimationHelperBase);
        ();
        ();
        resourceLoad <- 0;
        weaponRange <- 0;
        rtsLogHelper <- ((RTSLayerLogHelper.getInstance ()) :> RTSLayerLogHelper.rTSLayerLogHelper);
        ();
        movementAngle <- (angleFactory#nOT_ANGLE :> NamedAngle.namedAngle);
        steeringInsideGeographicMapCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        sensorGeographicMapCellPositionList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        cAPITAL_EVENT <- ((new CapitalEvent.capitalEvent (self)) :> CapitalEvent.capitalEvent);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setCollidableInferface ((new CollidableUnitBehavior.collidableUnitBehavior (true))));
        waypointLayerInterfaceFactoryInterface <- waypointLayerInterfaceFactoryInterface_arg;
        maxResourceLoad <- (maxResourceLoad_arg#shortValue ());
        moveSoundInterface <- Obj.repr (moveSoundInterface_arg);
        if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#dAMAGE_FLOATERS)) then begin
            damageFloaters <- (new PtsDamageFloaters.ptsDamageFloaters (self));
            damageFloatersPaintableInterface <- damageFloaters
        end else begin
            damageFloatersPaintableInterface <- (NullPaintable.getInstance ());
            damageFloaters <- (new DamageFloaters.damageFloaters ())
        end;
        if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#hEALTH_BARS)) then begin
            healthBar <- (new HealthBar.healthBar (self, (self#getHealthInterface ()), (new HealthBarTwodAnimation.healthBarTwodAnimation ((Obj.magic self), (BasicHudFactory.getInstance ())#bOTTOMLEFT)), (-1)))
        end else begin
            healthBar <- (NullPaintable.getInstance ())
        end;
        decalAnimation <- (Obj.magic (decalAnimationInterfaceFactoryInterface#getInstance (0)));
        initResourceAnimation <- (Obj.magic (resourceAnimationInterfaceFactoryInterface#getInstance (0)));
        ignore (initResourceAnimation#setFrameByDirection (direction));
        ignore (decalAnimation#setFrameByDirection (direction));
        rotationAnimationInterfaceP <- (Obj.magic indexedButShouldBeRotationAnimationInterface);
        ignore (rotationAnimationInterfaceP#setFrameByDirection (direction));
        ignore (self#setMaxLevel (12));
        vehicleProperties <- vehicleProperties_arg;
        trackingEvent <- (new TrackingEvent.trackingEvent (self));
        initPathAnimation <- (new PathAnimation.pathAnimation (self, (LinePathRelativeAnimation.getInstance ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "UnitLayer" (fun arguments -> Obj.repr (new unitLayer (Obj.obj arguments)))


