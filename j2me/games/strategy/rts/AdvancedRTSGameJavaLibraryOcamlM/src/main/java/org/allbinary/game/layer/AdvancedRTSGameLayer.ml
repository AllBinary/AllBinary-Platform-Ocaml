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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.NullIndexedAnimationFactory *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.transition.shake.ShakeAnimationListener *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.GameTypeFactory *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEvent *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventHandler *)
(* import org.allbinary.game.combat.destroy.event.DestroyedEventListenerInterface *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.identification.GroupFactory *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.form.NullRTSFormInputFactory *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.layer.building.event.BuildingEventHandler *)
(* import org.allbinary.game.layer.unit.UnitLayer *)
(* import org.allbinary.game.layer.waypoint.Waypoint2LogHelper *)
(* import org.allbinary.game.layer.waypoint.Waypoint2SelectedLogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointBase *)
(* import org.allbinary.game.layer.waypoint.WaypointLogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointSelectedLogHelper *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.game.tick.NullTickable *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.game.view.TileLayerPositionIntoViewPosition *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.math.FrameUtil *)
(* import org.allbinary.media.AllBinaryVibrationME *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapDirectionUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.view.ViewPositionBase *)

class advancedRTSGameLayer (remoteInfo, (parentLayer_arg : PathFindingLayerInterface.pathFindingLayerInterface), (advancedRTSProperties : AdvancedRTSProperties.advancedRTSProperties), groupInterface, (rootName : string), (name : string), (healthInterface : Health.health), (rtsFormInput : RTSFormInput.rTSFormInput), (animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface), rectangle, (x : int), (y : int), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit RTSLayer.rTSLayer (remoteInfo, groupInterface, rootName, name, healthInterface, rtsFormInput, animationInterfaceFactoryInterface, emptyAnimationInterfaceFactoryInterface, baseAnimationInterfaceFactoryInterface, buildAnimationInterfaceFactoryInterface, verticleBuildAnimationInterfaceFactoryInterface, proceduralAnimationInterfaceFactoryInterface, rectangle, x, y, viewPosition) as super
    val mutable shakeListener : ShakeAnimationListener.shakeAnimationListener = (Obj.magic 0)
    method shakeListener = shakeListener
    method set_shakeListener value' = shakeListener <- value'
    val mutable vibration : AllBinaryVibrationME.allBinaryVibrationME = (Obj.magic 0)
    method vibration = vibration
    method set_vibration value' = vibration <- value'
    val mutable duration : int = 0
    method duration = duration
    method set_duration value' = duration <- value'
    val mutable parentLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method parentLayer = parentLayer
    method set_parentLayer value' = parentLayer <- value'
    val mutable waypointBehaviorBase : TickableInterface.tickableInterface = (Obj.magic 0)
    method waypointBehaviorBase = waypointBehaviorBase
    method set_waypointBehaviorBase value' = waypointBehaviorBase <- value'
    
    

    method updateWaypointBehavior : 'any1. 'any1 -> unit = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        ignore (super#updateWaypointBehavior ((Obj.magic geographicMapInterface)));
        ignore (((self#getWaypointBehavior ())#getWaypoint ())#setAllBinaryGameLayerManager ((self#allBinaryGameLayerManagerP)))
        end [@@warning "-7-20"]
    

    method initVisibility : 'any1. 'any1 -> unit = fun (rtsPlayerLayerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        begin
        let advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface ref = ref (((Obj.magic (Obj.magic rtsPlayerLayerInterface)) :> AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface)) in ();
        if ((!advancedRTSPlayerLayerInterface#isLocalPlayer ()) || ((Obj.repr (!advancedRTSPlayerLayerInterface#getGameType ())) == (Obj.repr (GameTypeFactory.getInstance ())#bOT))) then begin
            ignore (self#setVisible (true))
        end else begin
            ignore (self#setVisible (false))
        end
        end [@@warning "-7-20"]
    

    method construct : 'any1. 'any1 -> unit = fun (rtsPlayerLayerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        begin
        ignore (super#construct ((Obj.magic rtsPlayerLayerInterface)));
        (self#initVisibility ((Obj.magic rtsPlayerLayerInterface)));
        ignore ((BuildingEventHandler.getInstance ())#addListenerInterface (((self#getWaypointBehavior ())#getWaypoint ())))
        end [@@warning "-7-20"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        ignore (super#setDestroyed (destroyed));
        if (self#isDestroyed ()) then begin
            ignore ((BuildingEventHandler.getInstance ())#removeListener (((self#getWaypointBehavior ())#getWaypoint ())));
            ignore ((BuildingEventHandler.getInstance ())#removeListener (self));
            ignore ((DestroyedEventHandler.getInstance ())#addListener (self));
            ignore ((RTSLayerUtil.getInstance ())#destroyAndClear (((self#getWaypointBehavior ())#getOwnedWaypointList ())))
        end
        end [@@warning "-7"]
    

    method getParentLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        (parentLayer :> PathFindingLayerInterface.pathFindingLayerInterface)
        end [@@warning "-7"]
    

    method setParentLayer : 'any1. 'any1 -> unit = fun (parentLayer_arg) ->
        let parentLayer_arg = Obj.repr parentLayer_arg in
        begin
        parentLayer <- (Obj.magic parentLayer_arg)
        end [@@warning "-7-20"]
    

    method getWaypointBehavior () : WaypointBehaviorBase.waypointBehaviorBase =
        begin
        ((Obj.magic waypointBehaviorBase) :> WaypointBehaviorBase.waypointBehaviorBase)
        end [@@warning "-7"]
    

    method setWaypointBehavior : 'any1. 'any1 -> unit = fun (unitWaypointHelper) ->
        let unitWaypointHelper = Obj.repr unitWaypointHelper in
        begin
        waypointBehaviorBase <- (Obj.magic unitWaypointHelper)
        end [@@warning "-7-20"]
    

    method getWaypointLogHelper () : WaypointLogHelper.waypointLogHelper =
        begin
        ((self#waypointLogHelperP) :> WaypointLogHelper.waypointLogHelper)
        end [@@warning "-7"]
    

    method getWaypoint2LogHelper () : Waypoint2LogHelper.waypoint2LogHelper =
        begin
        ((self#waypoint2LogHelperP) :> Waypoint2LogHelper.waypoint2LogHelper)
        end [@@warning "-7"]
    

    method getWaypointRunnableLogHelper () : WaypointRunnableLogHelper.waypointRunnableLogHelper =
        begin
        ((self#waypointRunnableLogHelperP) :> WaypointRunnableLogHelper.waypointRunnableLogHelper)
        end [@@warning "-7"]
    

    method shouldAddWaypointFromBuilding () : bool =
        try
        begin
        if ((Obj.repr parentLayer) != (Obj.repr (NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()))) then begin
            let parentAdvancedRTSGameLayer : Obj.t ref = ref ((Obj.repr (Obj.magic parentLayer))) in ();
            if ((Obj.repr ((Obj.magic !parentAdvancedRTSGameLayer)#getType ())) != (Obj.repr (Obj.magic (java_call_static "UnitLayer.getStaticType" (Obj.repr ()))))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isWaypointListEmptyOrOnlyTargets () : bool =
        try
        begin
        if ((Obj.repr (self#getType ())) != (Obj.repr (Obj.magic (java_call_static "UnitLayer.getStaticType" (Obj.repr ()))))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method buildingChase : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_allbinaryLayer, cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        try
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let buildingDirection : Direction.direction ref = ref ((((GeographicMapDirectionUtil.getInstance ())#getDirectionFromCellPositionToAdjacentCellPosition (!geographicMapCellPosition, (Obj.magic cellPosition))) :> Direction.direction)) in ();
        let angleInfo : AngleInfo.angleInfo ref = ref ((((self#getRotationAnimationInterface ())#getAngleInfoP ()) :> AngleInfo.angleInfo)) in ();
        let angle : int ref = ref (((FrameUtil.getInstance ())#adjustAngleToFrameAngle (((!angleInfo#getAngle ()) + 90)))) in ();
        let gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory ref = ref (((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory)) in ();
        if ((Obj.repr !buildingDirection) == (Obj.repr (DirectionFactory.getInstance ())#uP)) then begin
            ignore ((self#rtsLayer2LogHelper)#buildingAbove (self));
            if ((!angle > 180) && (!angle < 360)) then begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseLeft (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))));
                if (!angle <= 190) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end else begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseRight (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))));
                if (!angle >= 170) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end
        end else if ((Obj.repr !buildingDirection) == (Obj.repr (DirectionFactory.getInstance ())#dOWN)) then begin
            ignore ((self#rtsLayer2LogHelper)#buildingDown (self));
            if ((!angle > 180) && (!angle < 360)) then begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseLeft (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))));
                if (!angle > 315) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end else begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseRight (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))));
                if (!angle < 45) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end
        end else if ((Obj.repr !buildingDirection) == (Obj.repr (DirectionFactory.getInstance ())#lEFT)) then begin
            ignore ((self#rtsLayer2LogHelper)#buildingLeft ());
            if ((!angle > 90) && (!angle < 270)) then begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseDown (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))));
                if (!angle < 135) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end else begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseUp (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))));
                if (!angle > 45) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end
        end else if ((Obj.repr !buildingDirection) == (Obj.repr (DirectionFactory.getInstance ())#rIGHT)) then begin
            ignore ((self#rtsLayer2LogHelper)#buildingRight ());
            if ((!angle > 90) && (!angle < 270)) then begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseDown (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))));
                if (!angle > 225) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end else begin
                ignore ((self#rtsLayer2LogHelper)#buildingChaseUp (self, !angle));
                ignore ((self#getGameKeyEventList ())#add ((!gameKeyEventFactory#getInstanceForKey (self, (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))));
                if ((!angle < 315) && (!angle > 180)) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end
        end else begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getSurroundingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (self#allBinaryGameLayerManagerP)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore ((self#geographicMapCellPositionAreaBase)#update (!geographicMapInterface));
        (((self#geographicMapCellPositionAreaBase)#getSurroundingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method setSelected ((selected : bool)) : unit =
        begin
        ignore (super#setSelected (selected));
        if (self#debug) then begin
            if selected then begin
                (self#set_waypointLogHelperP) ((WaypointSelectedLogHelper.getInstance ()));
                (self#set_waypoint2LogHelperP) ((Waypoint2SelectedLogHelper.getInstance ()));
                (self#set_waypointRunnableLogHelperP) ((WaypointRunnableSelectedLogHelper.getInstance ()))
            end else begin
                (self#set_waypointLogHelperP) ((WaypointLogHelper.getInstance ()));
                (self#set_waypoint2LogHelperP) ((Waypoint2LogHelper.getInstance ()));
                (self#set_waypointRunnableLogHelperP) ((WaypointRunnableLogHelper.getInstance ()))
            end
        end
        end [@@warning "-7"]
    

    method onDestroyed : 'any1. 'any1 -> unit = fun (destroyedEvent) ->
        let destroyedEvent = Obj.repr destroyedEvent in
        begin
        (try
            let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref ((((Obj.magic destroyedEvent)#getLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
            if ((Obj.repr !layerInterface) == (Obj.repr self)) then begin
                ignore ((DestroyedEventHandler.getInstance ())#removeListener (self));
                let waypoint : WaypointBase.waypointBase ref = ref (((Obj.magic ((self#getWaypointBehavior ())#getWaypoint ())) :> WaypointBase.waypointBase)) in ();
                ignore (!waypoint#reset ())
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "onDestroyed", e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        parentLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        waypointBehaviorBase <- ((NullTickable.getInstance ()) :> TickableInterface.tickableInterface);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setVisible (false));
        (self#setWaypointBehavior ((new WaypointBehaviorBase.waypointBehaviorBase ())));
        shakeListener <- advancedRTSProperties#shakeListener;
        vibration <- advancedRTSProperties#vibration;
        duration <- advancedRTSProperties#duration;
        (self#setParentLayer (parentLayer_arg))
      end
  end
let () = java_register_constructor "AdvancedRTSGameLayer" (fun arguments -> Obj.repr (new advancedRTSGameLayer (Obj.obj arguments)))

let createSimulated () =
        begin
        let nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((NullAnimationFactory.getFactoryInstance ()) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        let nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((NullIndexedAnimationFactory.getFactoryInstance ()) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        (new advancedRTSGameLayer ((Obj.magic (java_call_static "RemoteInfo.get_rEMOTE_INFO" (Obj.repr ()))), (NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()), (AdvancedRTSProperties.createPropertiesSimulated ()), (GroupFactory.getInstance ())#nULL_GROUP_ARRAY, (StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING, (Health.get_nULL_HEALTH ()), (NullRTSFormInputFactory.getInstance ()), !nullAnimationInterfaceFactoryInterface, !nullIndexedAnimationInterfaceFactoryInterface, !nullAnimationInterfaceFactoryInterface, !nullAnimationInterfaceFactoryInterface, !nullIndexedAnimationInterfaceFactoryInterface, (NullIndexedAnimationFactory.getFactoryInstance ()), (RectangleFactory.get_sINGLETON ()), 0, 0, (new TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ())))
        end
let () = java_register_static "AdvancedRTSGameLayer.createSimulated" (fun arguments -> Obj.repr (createSimulated (Obj.obj arguments)))


