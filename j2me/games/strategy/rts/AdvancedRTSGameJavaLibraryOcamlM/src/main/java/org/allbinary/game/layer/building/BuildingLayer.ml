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
(* package org.allbinary.game.layer.building *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.ag.weapon.media.audio.ExplosionBasicSound *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.NullIndexedAnimationFactory *)
(* import org.allbinary.game.identification.GroupFactory *)
(* import org.allbinary.game.input.form.NullRTSFormInputFactory *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.input.form.VisibleCellPositionsSingleton *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.AdvancedRTSProperties *)
(* import org.allbinary.game.layer.CollidableRTSBehavior *)
(* import org.allbinary.game.layer.RTSLayerUtil *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.SelectionHudPaintable *)
(* import org.allbinary.game.layer.waypoint.Waypoint *)
(* import org.allbinary.game.view.TileLayerPositionIntoViewPosition *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.RotationAnimationInterfaceCompositeInterface *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.combat.damage.DamageFloaters *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.GeographicMapCellPositionAreaBase *)
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.game.tracking.TrackingEventListenerInterface *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SelectSound *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayListS *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.util.ABHashtable *)


let getStaticType () : int =
        begin
        2
        end

let () = java_register_static "BuildingLayer.getStaticType" (fun arguments -> Obj.repr (getStaticType (Obj.obj arguments)))
class buildingLayer (remoteInfo, buildingPropertiesFactory, (advancedRTSProperties : AdvancedRTSProperties.advancedRTSProperties), groupInterface, (rootName : string), (name : string), (healthInterface : Health.health), (rtsFormInput : RTSFormInput.rTSFormInput), (animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface), rectangle, (x : int), (y : int)) =
  object (self)
    inherit AdvancedRTSGameLayer.advancedRTSGameLayer (remoteInfo, (NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()), advancedRTSProperties, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, (new TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ())) as super
    val mutable buildingLevelCost : int = 0
    method buildingLevelCost = buildingLevelCost
    method set_buildingLevelCost value' = buildingLevelCost <- value'
    val mutable productivity : int = 0
    method productivity = productivity
    method set_productivity value' = productivity <- value'
    val mutable efficiency : int = 0
    method efficiency = efficiency
    method set_efficiency value' = efficiency <- value'
    val mutable efficiencyPerLevel : int = 0
    method efficiencyPerLevel = efficiencyPerLevel
    method set_efficiencyPerLevel value' = efficiencyPerLevel <- value'
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
    val mutable pathsHashtable : Obj.t = Obj.repr 0
    method pathsHashtable : 'r. 'r = Obj.magic pathsHashtable
    method set_pathsHashtable : 'v. 'v -> unit = fun value' -> pathsHashtable <- Obj.repr value'
    val mutable local : bool = false
    method local = local
    method set_local value' = local <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    
    

    method initVisibility : 'any1. 'any1 -> unit = fun (rtsPlayerLayerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        begin
        let advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface ref = ref (((Obj.magic (Obj.magic rtsPlayerLayerInterface)) :> AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface)) in ();
        if (!advancedRTSPlayerLayerInterface#isLocalPlayer ()) then begin
            local <- true;
            (self#addVisibility ())
        end else begin
            local <- false
        end;
        ignore (super#initVisibility ((Obj.magic rtsPlayerLayerInterface)))
        end [@@warning "-7-20"]
    

    method construct : 'any1. 'any1 -> unit = fun (rtsPlayerLayerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        begin
        ignore (super#construct ((Obj.magic rtsPlayerLayerInterface)));
        ignore ((TrackingEventHandler.getInstance ())#addListenerInterface (self))
        end [@@warning "-7-20"]
    

    method onMovement : 'any1. 'any1 -> unit = fun (trackingEvent_arg) ->
        let trackingEvent_arg = Obj.repr trackingEvent_arg in
        begin
        (try
            let layerInterface : AdvancedRTSGameLayer.advancedRTSGameLayer ref = ref (((Obj.magic ((Obj.magic trackingEvent_arg)#getLayerInterface ())) :> AdvancedRTSGameLayer.advancedRTSGameLayer)) in ();
            if ((Obj.repr (!layerInterface#getGroupInterface ()).(0)) != (Obj.repr (self#getGroupInterface ()).(0))) then begin
                ignore (!layerInterface#onMovementFound (trackingEvent))
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "onMovement", e))
        end)
        end [@@warning "-7-20"]
    

    method processBuiltTick : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        if ((self#getHealthInterface ())#isDamaged ()) then begin
            ignore (self#setAnimationInterface (destroyAnimationInterface))
        end;
        if (not ((self#getHealthInterface ())#isAlive ())) then begin
            if (self#isReadyForExplosion ()) then begin
                let currentFrame : int ref = ref ((destroyAnimationInterface#getFrame ())) in ();
                let size : int ref = ref (((destroyAnimationInterface#getSize ()) - 1)) in ();
                if ((!currentFrame = !size) && (not (timeDelayHelper#isTimeTNT ()))) then begin
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
                ignore (timeDelayHelper#setStartTimeTNT ());
                ignore (self#setReadyForExplosion (true))
            end
        end else begin
            ignore (super#processBuiltTick ((Obj.magic allBinaryLayerManager)))
        end;
        ignore (indexedButShouldBeRotationAnimationInterface#nextFrame ())
        end [@@warning "-7-20"]
    

    method calculateEfficiency () : int =
        begin
        efficiencyPerLevel
        end [@@warning "-7"]
    

    method getCost () : int =
        begin
        let total : int ref = ref (((RTSLayerUtil.getInstance ())#getCostExponential ((java_to_int (Obj.repr ((((self#getLevel ()) * (self#getBuildingLevelCost ()))))))))) in ();
        !total
        end [@@warning "-7"]
    

    method getDowngradeCost () : int =
        begin
        let downgradeCost : int ref = ref (((RTSLayerUtil.getInstance ())#getCostExponential ((java_to_int (Obj.repr ((((((self#getLevel ()) - 1)) * (self#getBuildingLevelCost ()))))))))) in ();
        ignore (logUtil#putF (("Cost: " ^ java_string_of (Obj.repr (!downgradeCost))), self, "getDowngradeCost"));
        ((!downgradeCost * 9) / 10)
        end [@@warning "-7"]
    

    method getUpgradeCost () : int =
        begin
        let upgradeCost : int ref = ref (((RTSLayerUtil.getInstance ())#getCostExponential ((java_to_int (Obj.repr ((((((self#getLevel ()) + 1)) * (self#getBuildingLevelCost ()))))))))) in ();
        !upgradeCost
        end [@@warning "-7"]
    

    method downgrade () : unit =
        begin
        ignore (super#downgrade ());
        (self#setProductivity (((self#getProductivity ()) - 1)));
        (self#setEfficiency (((self#getEfficiency ()) - (self#calculateEfficiency ()))));
        ignore ((self#getHealthInterface ())#setMaxHealth ((((self#getHealthInterface ())#getMaxHealth ()) - (((((self#getLevel ()) + 1)) * 100)))))
        end [@@warning "-7"]
    

    method upgrade () : unit =
        begin
        ignore (super#upgrade ());
        (self#setProductivity (((self#getProductivity ()) + 1)));
        (self#setEfficiency (((self#getEfficiency ()) + (self#calculateEfficiency ()))));
        ignore ((self#getHealthInterface ())#setMaxHealth ((((self#getHealthInterface ())#getMaxHealth ()) + (((self#getLevel ()) * 100)))))
        end [@@warning "-7"]
    

    method getBuildingLevelCost () : int =
        begin
        buildingLevelCost
        end [@@warning "-7"]
    

    method setBuildingLevelCost ((buildingLevelCost_arg : int)) : unit =
        begin
        buildingLevelCost <- buildingLevelCost_arg
        end [@@warning "-7"]
    

    method getProductivity () : int =
        begin
        productivity
        end [@@warning "-7"]
    

    method setProductivity ((productivity_arg : int)) : unit =
        begin
        productivity <- productivity_arg
        end [@@warning "-7"]
    

    method getEfficiency () : int =
        begin
        efficiency
        end [@@warning "-7"]
    

    method setEfficiency ((efficiency_arg : int)) : unit =
        begin
        efficiency <- efficiency_arg
        end [@@warning "-7"]
    

    method generateMoveOutOfBuildAreaPaths () : unit =
        begin
        let occupyList : BasicArrayList.basicArrayList ref = ref (((geographicMapCellPositionAreaBase#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        let surroundList : BasicArrayList.basicArrayList ref = ref (((geographicMapCellPositionAreaBase#getSurroundingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        let nO_DIRECTION : Direction.direction ref = ref (((DirectionFactory.getInstance ())#nO_DIRECTION :> Direction.direction)) in ();
        let geographicMapDirectionUtil : GeographicMapDirectionUtil.geographicMapDirectionUtil ref = ref (((GeographicMapDirectionUtil.getInstance ()) :> GeographicMapDirectionUtil.geographicMapDirectionUtil)) in ();
        let pathsList : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        let occupyGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let surroundGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic 0) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((Obj.magic 0) :> BasicArrayList.basicArrayList)) in ();
        for index2 = ((!occupyList#size ()) - 1) downto 0 do
            pathsList := (new BasicArrayListD.basicArrayListD ());
            occupyGeographicMapCellPosition := (Obj.magic (!occupyList#get (index2)));
            for index = ((!surroundList#size ()) - 1) downto 0 do
                surroundGeographicMapCellPosition := (Obj.magic (!surroundList#get (index)));
                if ((Obj.repr (!geographicMapDirectionUtil#getEightDirectionFromCellPositionToAdjacentCellPosition (!surroundGeographicMapCellPosition, !occupyGeographicMapCellPosition))) != (Obj.repr !nO_DIRECTION)) then begin
                    list := (new BasicArrayListS.basicArrayListS (1));
                    ignore (!list#add (!surroundGeographicMapCellPosition));
                    ignore (!pathsList#add (!list))
                end
            done;
            ignore ((Obj.magic pathsHashtable)#put (!occupyGeographicMapCellPosition, !pathsList))
        done
        end [@@warning "-7"]
    

    method getMoveOutOfBuildAreaPath : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let pathsList : BasicArrayList.basicArrayList ref = ref (((Obj.magic ((Obj.magic pathsHashtable)#get ((Obj.magic geographicMapCellPosition)))) :> BasicArrayList.basicArrayList)) in ();
        (!pathsList :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getEndGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        ((geographicMapCellPositionAreaBase#getSurroundingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method shouldHandleStartSameAsEnd () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        if (self#isVisible ()) then begin
            ignore (super#paint ((Obj.magic graphics)));
            ignore (damageFloatersPaintableInterface#paint ((Obj.magic graphics)));
            ignore (healthBar#paint ((Obj.magic graphics)))
        end
        end [@@warning "-7-20"]
    

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
    

    method addVisibility () : unit =
        begin
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref ((geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let occupyList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((VisibleCellPositionsSingleton.getInstance ())#addStationaryCellPositions (!occupyList));
        let surroundList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getSurroundingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((VisibleCellPositionsSingleton.getInstance ())#addStationaryCellPositions (!surroundList))
        end [@@warning "-7"]
    

    method removeVisibility () : unit =
        begin
        let occupyList : BasicArrayList.basicArrayList ref = ref (((geographicMapCellPositionAreaBase#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((VisibleCellPositionsSingleton.getInstance ())#removeStationaryCellPositions (!occupyList));
        let surroundList : BasicArrayList.basicArrayList ref = ref (((geographicMapCellPositionAreaBase#getSurroundingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((VisibleCellPositionsSingleton.getInstance ())#removeStationaryCellPositions (!surroundList))
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        ignore (super#setDestroyed (destroyed));
        if (self#isDestroyed ()) then begin
            ignore ((DropCellPositionHistory.getInstance ())#removeAll (self));
            ignore ((TrackingEventHandler.getInstance ())#removeListener (self));
            if local then begin
                (self#removeVisibility ())
            end;
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
    

    method createHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        let buildingInfoHudPaintable : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BuildingInfoHudPaintable.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !buildingInfoHudPaintable)#setBasicColorP ((allBinaryGameLayerManagerP#getForegroundBasicColor ())));
        ignore ((Obj.magic !buildingInfoHudPaintable)#setRtsLayer (self));
        ((Obj.magic !buildingInfoHudPaintable) :> SelectionHudPaintable.selectionHudPaintable)
        end [@@warning "-7"]
    

    method getHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        let buildingInfoHudPaintable : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BuildingInfoHudPaintable.getInstance" (Obj.repr ()))))) in ();
        ((Obj.magic !buildingInfoHudPaintable) :> SelectionHudPaintable.selectionHudPaintable)
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        (getStaticType ())
        end [@@warning "-7"]

    initializer
      begin
        buildingLevelCost <- 0;
        productivity <- 0;
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        local <- false;
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (3000)) :> TimeDelayHelper.timeDelayHelper);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setCollidableInferface ((new CollidableRTSBehavior.collidableRTSBehavior (true))));
        ignore ((self#getWaypointBehavior ())#setWaypoint ((new Waypoint.waypoint (self, (SelectSound.getInstance ())))));
        damageFloaters <- (buildingPropertiesFactory#getDamageFloaters (self));
        damageFloatersPaintableInterface <- buildingPropertiesFactory#damageFloatersPaintableInterface;
        healthBar <- (buildingPropertiesFactory#getHealthBar (self));
        pathsHashtable <- Obj.repr ((buildingPropertiesFactory#getHashtable ()));
        ignore (self#setMaxLevel (30));
        (self#setProductivity (1));
        (self#setEfficiency ((self#calculateEfficiency ())));
        efficiencyPerLevel <- (buildingPropertiesFactory#getEfficiencyPerLevel (self));
        efficiency <- efficiencyPerLevel;
        (self#generateMoveOutOfBuildAreaPaths ());
        trackingEvent <- (buildingPropertiesFactory#getTrackingEvent (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BuildingLayer" (fun arguments -> Obj.repr (new buildingLayer (Obj.obj arguments)))

let createSimulated () =
        begin
        let nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((NullAnimationFactory.getFactoryInstance ()) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        let nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((NullIndexedAnimationFactory.getFactoryInstance ()) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        (new buildingLayer ((Obj.magic (java_call_static "RemoteInfo.get_rEMOTE_INFO" (Obj.repr ()))), (Obj.magic (java_call_static "SimulatedBuildingPropertiesFactory.getInstance" (Obj.repr ()))), (AdvancedRTSProperties.createPropertiesSimulated ()), (GroupFactory.getInstance ())#nULL_GROUP_ARRAY, (StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING, (Health.get_nULL_HEALTH ()), (NullRTSFormInputFactory.getInstance ()), !nullAnimationInterfaceFactoryInterface, !nullIndexedAnimationInterfaceFactoryInterface, !nullAnimationInterfaceFactoryInterface, !nullAnimationInterfaceFactoryInterface, !nullIndexedAnimationInterfaceFactoryInterface, (NullIndexedAnimationFactory.getFactoryInstance ()), (RectangleFactory.get_sINGLETON ()), 0, 0))
        end
let () = java_register_static "BuildingLayer.createSimulated" (fun arguments -> Obj.repr (createSimulated (Obj.obj arguments)))


