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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.multiplayer.layer.MultiPlayerGameLayer *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.animation.NullIndexedAnimationFactory *)
(* import org.allbinary.animation.ProceduralAnimationInterfaceFactoryInterface *)
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.animation.caption.CaptionAnimationHelperBase *)
(* import org.allbinary.game.combat.destroy.DestroyedLayerProcessor *)
(* import org.allbinary.game.health.Health *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.identification.GroupFactory *)
(* import org.allbinary.game.input.GameInputInterface *)
(* import org.allbinary.game.input.GameInputProcessor *)
(* import org.allbinary.game.input.GameInputProcessorUtil *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.game.input.form.NullRTSFormInputFactory *)
(* import org.allbinary.game.layer.waypoint.Waypoint2LogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointLogHelper *)
(* import org.allbinary.game.layer.waypoint.WaypointRunnableLogHelper *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.game.view.TileLayerPositionIntoViewPosition *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.RectangleFactory *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.view.event.ViewPositionEventHandler *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.LayerDistanceUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellHistory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.view.ViewPositionBase *)

let id : int = 0
let get_id () = id
let () = java_register_static "RTSLayer.get_id" (fun _ -> Obj.repr (get_id ()))
let mAIN_INDEX : int = 0
let get_mAIN_INDEX () = mAIN_INDEX
let () = java_register_static "RTSLayer.get_mAIN_INDEX" (fun _ -> Obj.repr (get_mAIN_INDEX ()))
let sECONDARY_INDEX : int = 1
let get_sECONDARY_INDEX () = sECONDARY_INDEX
let () = java_register_static "RTSLayer.get_sECONDARY_INDEX" (fun _ -> Obj.repr (get_sECONDARY_INDEX ()))

let getMinStaticType () : int =
        begin
        1
        end

and getMaxStaticType () : int =
        begin
        4
        end

let () = java_register_static "RTSLayer.getMinStaticType" (fun arguments -> Obj.repr (getMinStaticType (Obj.obj arguments)))
let () = java_register_static "RTSLayer.getMaxStaticType" (fun arguments -> Obj.repr (getMaxStaticType (Obj.obj arguments)))
class rTSLayer (remoteInfo, groupInterface, (rootName_arg : string), (name : string), (healthInterface_arg : Health.health), rtsFormInput_arg, (animationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (emptyAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (baseAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (buildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (verticleBuildAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface), (proceduralAnimationInterfaceFactoryInterface : ProceduralAnimationInterfaceFactoryInterface.proceduralAnimationInterfaceFactoryInterface), rectangle, (x : int), (y : int), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit MultiPlayerGameLayer.multiPlayerGameLayer (remoteInfo, groupInterface, name, rectangle, viewPosition) as super
    val mutable debug : bool = false
    method debug = debug
    method set_debug value' = debug <- value'
    val mutable showMoreCaptionStates : bool = false
    method showMoreCaptionStates = showMoreCaptionStates
    method set_showMoreCaptionStates value' = showMoreCaptionStates <- value'
    val mutable inputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method inputProcessorArray = inputProcessorArray
    method set_inputProcessorArray value' = inputProcessorArray <- value'
    val mutable rtsLayer2LogHelper : RTSLayer2LogHelper.rTSLayer2LogHelper = (Obj.magic 0)
    method rtsLayer2LogHelper = rtsLayer2LogHelper
    method set_rtsLayer2LogHelper value' = rtsLayer2LogHelper <- value'
    val mutable waypointLogHelperP : WaypointLogHelper.waypointLogHelper = (Obj.magic 0)
    method waypointLogHelperP = waypointLogHelperP
    method set_waypointLogHelperP value' = waypointLogHelperP <- value'
    val mutable waypoint2LogHelperP : Waypoint2LogHelper.waypoint2LogHelper = (Obj.magic 0)
    method waypoint2LogHelperP = waypoint2LogHelperP
    method set_waypoint2LogHelperP value' = waypoint2LogHelperP <- value'
    val mutable waypointRunnableLogHelperP : WaypointRunnableLogHelper.waypointRunnableLogHelper = (Obj.magic 0)
    method waypointRunnableLogHelperP = waypointRunnableLogHelperP
    method set_waypointRunnableLogHelperP value' = waypointRunnableLogHelperP <- value'
    val mutable rtsFormInput : Obj.t = Obj.repr 0
    method rtsFormInput : 'r. 'r = Obj.magic rtsFormInput
    method set_rtsFormInput : 'v. 'v -> unit = fun value' -> rtsFormInput <- Obj.repr value'
    val mutable verticleBuildAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method verticleBuildAnimationInterface = verticleBuildAnimationInterface
    method set_verticleBuildAnimationInterface value' = verticleBuildAnimationInterface <- value'
    val mutable rangeAnimation : Obj.t = Obj.repr 0
    method rangeAnimation : 'r. 'r = Obj.magic rangeAnimation
    method set_rangeAnimation : 'v. 'v -> unit = fun value' -> rangeAnimation <- Obj.repr value'
    val mutable initRangeAnimation : Obj.t = Obj.repr 0
    method initRangeAnimation : 'r. 'r = Obj.magic initRangeAnimation
    method set_initRangeAnimation : 'v. 'v -> unit = fun value' -> initRangeAnimation <- Obj.repr value'
    val mutable sensorRangeAnimation : Obj.t = Obj.repr 0
    method sensorRangeAnimation : 'r. 'r = Obj.magic sensorRangeAnimation
    method set_sensorRangeAnimation : 'v. 'v -> unit = fun value' -> sensorRangeAnimation <- Obj.repr value'
    val mutable initSensorRangeAnimation : Obj.t = Obj.repr 0
    method initSensorRangeAnimation : 'r. 'r = Obj.magic initSensorRangeAnimation
    method set_initSensorRangeAnimation : 'v. 'v -> unit = fun value' -> initSensorRangeAnimation <- Obj.repr value'
    val mutable baseAnimationInterface : Obj.t = Obj.repr 0
    method baseAnimationInterface : 'r. 'r = Obj.magic baseAnimationInterface
    method set_baseAnimationInterface : 'v. 'v -> unit = fun value' -> baseAnimationInterface <- Obj.repr value'
    val mutable buildFrameTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method buildFrameTimeHelper = buildFrameTimeHelper
    method set_buildFrameTimeHelper value' = buildFrameTimeHelper <- value'
    val mutable buildAnimationInterface : Obj.t = Obj.repr 0
    method buildAnimationInterface : 'r. 'r = Obj.magic buildAnimationInterface
    method set_buildAnimationInterface : 'v. 'v -> unit = fun value' -> buildAnimationInterface <- Obj.repr value'
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable initAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method initAnimationInterface = initAnimationInterface
    method set_initAnimationInterface value' = initAnimationInterface <- value'
    val mutable indexedButShouldBeRotationAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method indexedButShouldBeRotationAnimationInterface = indexedButShouldBeRotationAnimationInterface
    method set_indexedButShouldBeRotationAnimationInterface value' = indexedButShouldBeRotationAnimationInterface <- value'
    val mutable emptyAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method emptyAnimationInterface = emptyAnimationInterface
    method set_emptyAnimationInterface value' = emptyAnimationInterface <- value'
    val mutable destroyAnimationInterface : IndexedAnimation.indexedAnimation = (Obj.magic 0)
    method destroyAnimationInterface = destroyAnimationInterface
    method set_destroyAnimationInterface value' = destroyAnimationInterface <- value'
    val mutable fireTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method fireTimeHelper = fireTimeHelper
    method set_fireTimeHelper value' = fireTimeHelper <- value'
    val mutable rootName : string = ""
    method rootName = rootName
    method set_rootName value' = rootName <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable bUILD_VALUE : int = 0
    method bUILD_VALUE = bUILD_VALUE
    method set_bUILD_VALUE value' = bUILD_VALUE <- value'
    val mutable geographicMapCellPositionAreaBase : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase = (Obj.magic 0)
    method geographicMapCellPositionAreaBase = geographicMapCellPositionAreaBase
    method set_geographicMapCellPositionAreaBase value' = geographicMapCellPositionAreaBase <- value'
    val mutable healthInterface : Health.health = (Obj.magic 0)
    method healthInterface = healthInterface
    method set_healthInterface value' = healthInterface <- value'
    val mutable level : int = 0
    method level = level
    method set_level value' = level <- value'
    val mutable maxLevel : int = 0
    method maxLevel = maxLevel
    method set_maxLevel value' = maxLevel <- value'
    val mutable hackVerticleBuild : int = 0
    method hackVerticleBuild = hackVerticleBuild
    method set_hackVerticleBuild value' = hackVerticleBuild <- value'
    val mutable slightAngle : int = 0
    method slightAngle = slightAngle
    method set_slightAngle value' = slightAngle <- value'
    val mutable percentCompleteP : int = 0
    method percentCompleteP = percentCompleteP
    method set_percentCompleteP value' = percentCompleteP <- value'
    val mutable destroyed : bool = false
    method destroyed = destroyed
    method set_destroyed value' = destroyed <- value'
    val mutable selected : bool = false
    method selected = selected
    method set_selected value' = selected <- value'
    val mutable rtsLayerUtil : RTSLayerUtil.rTSLayerUtil = (Obj.magic 0)
    method rtsLayerUtil = rtsLayerUtil
    method set_rtsLayerUtil value' = rtsLayerUtil <- value'
    val mutable layerDistanceUtil : LayerDistanceUtil.layerDistanceUtil = (Obj.magic 0)
    method layerDistanceUtil = layerDistanceUtil
    method set_layerDistanceUtil value' = layerDistanceUtil <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let viewPosition2 : TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ref = ref (((Obj.magic (self#getViewPosition ())) :> TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition)) in ();
        ignore (!viewPosition2#setTiledLayer (!tiledLayer));
        (self#updateWaypointBehavior (!geographicMapInterface))
        end [@@warning "-7-20"]
    

    method updateWaypointBehavior : 'any1. 'any1 -> unit = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        ignore (geographicMapCellPositionAreaBase#update ((Obj.magic geographicMapInterface)))
        end [@@warning "-7-20"]
    

    method construct : 'any1. 'any1 -> unit = fun (_rtsPlayerLayerInterface) ->
        begin
        ignore ((ViewPositionEventHandler.getInstance ())#addListener ((Obj.magic self)));
        animationInterface <- Obj.repr ((Obj.magic buildAnimationInterface));
        hackVerticleBuild <- 0
        end [@@warning "-7-20"]
    

    method select () : unit =
        begin
        rangeAnimation <- Obj.repr ((Obj.magic initRangeAnimation));
        sensorRangeAnimation <- Obj.repr ((Obj.magic initSensorRangeAnimation));
        (self#setSelected (true))
        end [@@warning "-7"]
    

    method deselect () : unit =
        begin
        let animation : Obj.t ref = ref ((Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))) in ();
        rangeAnimation <- Obj.repr ((Obj.magic !animation));
        sensorRangeAnimation <- Obj.repr ((Obj.magic !animation));
        (self#setSelected (false))
        end [@@warning "-7"]
    

    method setSelected ((selected_arg : bool)) : unit =
        begin
        selected <- selected_arg
        end [@@warning "-7"]
    

    method isSelected () : bool =
        begin
        selected
        end [@@warning "-7"]
    

    method getPercentComplete () : int =
        begin
        percentCompleteP
        end [@@warning "-7"]
    

    method getScrollSelectionForm () : ScrollSelectionForm.scrollSelectionForm =
        begin
        ((ScrollSelectionForm.getNullScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)
        end [@@warning "-7"]
    

    method initInputProcessors () : unit =
        begin
        ignore (GameInputProcessorUtil.init (inputProcessorArray))
        end [@@warning "-7"]
    

    method processBuiltTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        animationInterface <- Obj.repr (indexedButShouldBeRotationAnimationInterface)
        end [@@warning "-7-20"]
    

    method processTick : 'any1. 'any1 -> unit = fun (allBinaryLayerManager) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        (try
            if (self#isCompleted ()) then begin
                (self#processBuiltTick ((Obj.magic allBinaryLayerManager)))
            end else begin
                (self#build ())
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "processTick", e))
        end)
        end [@@warning "-7-20"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method reload () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onMovement : 'any1. 'any1 -> unit = fun (_trackingEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onMovementFound : 'any1. 'any1 -> unit = fun (_trackingEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintFirst ((Obj.magic graphics)));
        let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((self#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
        let viewX : int ref = ref ((!viewPosition#getX ())) in ();
        let viewY : int ref = ref ((!viewPosition#getY ())) in ();
        ignore ((self#getAnimationInterface ())#paintXY ((Obj.magic graphics), !viewX, !viewY))
        end [@@warning "-7-20"]
    

    method damage ((_damage : int), (_damageType : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSourceId () : int =
        begin
        id
        end [@@warning "-7"]
    

    method downgrade () : unit =
        begin
        ignore (rtsLayerUtil#downgrade (self))
        end [@@warning "-7"]
    

    method upgrade () : unit =
        begin
        ignore (rtsLayerUtil#upgrade (self))
        end [@@warning "-7"]
    

    method isCompleted () : bool =
        try
        begin
        if (hackVerticleBuild < bUILD_VALUE) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method build () : unit =
        begin
        if (buildFrameTimeHelper#isTimeTNT ()) then begin
            animationInterface <- Obj.repr ((Obj.magic buildAnimationInterface));
            ignore (verticleBuildAnimationInterface#nextFrame ());
            hackVerticleBuild <- hackVerticleBuild + 1
        end;
        percentCompleteP <- ((100 * hackVerticleBuild) / bUILD_VALUE);
        ignore ((self#getHudPaintable ())#updateInfo ())
        end [@@warning "-7"]
    

    method isSelfUpgradeable () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method getCost () : int =
        begin
        (rtsLayerUtil#getCost (self))
        end [@@warning "-7"]
    

    method getDowngradeCost () : int =
        begin
        (rtsLayerUtil#getDowngradeCost (self))
        end [@@warning "-7"]
    

    method getUpgradeCost () : int =
        begin
        (rtsLayerUtil#getUpgradeCost (self))
        end [@@warning "-7"]
    

    method isUpgradeable () : bool =
        try
        begin
        if ((self#getLevel ()) < (self#getMaxLevel ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isDowngradeable () : bool =
        try
        begin
        if ((self#getLevel ()) > 1) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getLevel () : int =
        begin
        level
        end [@@warning "-7"]
    

    method setLevel ((level_arg : int)) : unit =
        begin
        level <- level_arg
        end [@@warning "-7"]
    

    method getVerticleBuildAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (verticleBuildAnimationInterface))
        end [@@warning "-7"]
    

    method getAnimationInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animationInterface)))
        end [@@warning "-7"]
    

    method setAnimationInterface : 'any1. 'any1 -> unit = fun (animationInterface_arg) ->
        let animationInterface_arg = Obj.repr animationInterface_arg in
        begin
        animationInterface <- Obj.repr ((Obj.magic animationInterface_arg))
        end [@@warning "-7-20"]
    

    method setTarget : 'any1. 'any1 -> unit = fun (targetGameLayer) ->
        let targetGameLayer = Obj.repr targetGameLayer in
        begin
        let anotherTargetDistance : int ref = ref ((layerDistanceUtil#getDistance ((Obj.magic self), (Obj.magic (Obj.magic targetGameLayer))))) in ();
        let waypointBehaviorBase : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((self#getWaypointBehavior ()) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
        ignore (!waypointBehaviorBase#setTargetWithDistance ((Obj.magic (Obj.magic targetGameLayer)), !anotherTargetDistance))
        end [@@warning "-7-20"]
    

    method createHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getHudPaintable () : SelectionHudPaintable.selectionHudPaintable =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getMaxLevel () : int =
        begin
        maxLevel
        end [@@warning "-7"]
    

    method setMaxLevel ((maxLevel_arg : int)) : unit =
        begin
        maxLevel <- maxLevel_arg
        end [@@warning "-7"]
    

    method getHealthInterface () : Health.health =
        begin
        (healthInterface :> Health.health)
        end [@@warning "-7"]
    

    method setHealthInterface : 'any1. 'any1 -> unit = fun (healthInterface_arg) ->
        let healthInterface_arg = Obj.repr healthInterface_arg in
        begin
        healthInterface <- (Obj.magic healthInterface_arg)
        end [@@warning "-7-20"]
    

    method getRTSFormInput : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic rtsFormInput)))
        end [@@warning "-7"]
    

    method isDestroyed () : bool =
        begin
        destroyed
        end [@@warning "-7"]
    

    method setDestroyed ((destroyed_arg : bool)) : unit =
        begin
        destroyed <- destroyed_arg;
        if (self#isDestroyed ()) then begin
            ignore ((DestroyedLayerProcessor.getInstance ())#add (self));
            ignore ((ViewPositionEventHandler.getInstance ())#removeListener (self))
        end
        end [@@warning "-7"]
    

    method getEndGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        ((geographicMapCellPositionAreaBase#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getGeographicMapCellPositionArea () : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase =
        begin
        (geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)
        end [@@warning "-7"]
    

    method shouldHandleStartSameAsEnd () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method handleCost : 'any1. 'any1 -> unit = fun (_ownerLayer) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getWaypointBehavior () : WaypointBehaviorBase.waypointBehaviorBase =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getParentLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getRTSLayer2LogHelper () : RTSLayer2LogHelper.rTSLayer2LogHelper =
        begin
        (rtsLayer2LogHelper :> RTSLayer2LogHelper.rTSLayer2LogHelper)
        end [@@warning "-7"]
    

    method getWaypointLogHelper () : WaypointLogHelper.waypointLogHelper =
        begin
        (waypointLogHelperP :> WaypointLogHelper.waypointLogHelper)
        end [@@warning "-7"]
    

    method getWaypoint2LogHelper () : Waypoint2LogHelper.waypoint2LogHelper =
        begin
        (waypoint2LogHelperP :> Waypoint2LogHelper.waypoint2LogHelper)
        end [@@warning "-7"]
    

    method getWaypointRunnableLogHelper () : WaypointRunnableLogHelper.waypointRunnableLogHelper =
        begin
        (waypointRunnableLogHelperP :> WaypointRunnableLogHelper.waypointRunnableLogHelper)
        end [@@warning "-7"]
    

    method shouldAddWaypointFromBuilding () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method getCaptionAnimationHelper () : CaptionAnimationHelperBase.captionAnimationHelperBase =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method isShowMoreCaptionStates () : bool =
        begin
        showMoreCaptionStates
        end [@@warning "-7"]
    

    method init : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_geographicMapCellHistory, _geographicMapCellPositionBasicArrayList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getCurrentGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getTopLeftGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method getMoveOutOfBuildAreaPath : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (_geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7-20"]
    

    method setClosestGeographicMapCellHistory : 'any1. 'any1 -> unit = fun (_pathsList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method teleportTo : 'any1. 'any1 -> unit = fun (_geographicMapCellPosition) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method setLoad ((_resource : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSurroundingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method trackTo ((_reason : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method trackToDXY ((_dx : int), (_dy : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method isWaypointListEmptyOrOnlyTargets () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method getTrackingEvent () : TrackingEvent.trackingEvent =
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-7"]
    

    method buildingChase : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_allbinaryLayer, _cellPosition) ->
        begin
        false
        end [@@warning "-7-20"]
    

    method allStop () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method implmentsTickableInterface () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method implmentsGameInputInterface () : bool =
        begin
        true
        end [@@warning "-7"]
    

    method getRootName () : string =
        begin
        rootName
        end [@@warning "-7"]
    

    method getRotationAnimationInterface () : RotationAnimation.rotationAnimation =
        begin
        ((Obj.magic indexedButShouldBeRotationAnimationInterface) :> RotationAnimation.rotationAnimation)
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore ((self#getRotationAnimationInterface ())#setFrame (index))
        end [@@warning "-7"]
    

    method setRotationAnimationInterface : 'any1. 'any1 -> unit = fun (rotationAnimationInterface) ->
        let rotationAnimationInterface = Obj.repr rotationAnimationInterface in
        begin
        indexedButShouldBeRotationAnimationInterface <- (Obj.magic rotationAnimationInterface)
        end [@@warning "-7-20"]

    initializer
      begin
        debug <- true;
        showMoreCaptionStates <- debug;
        inputProcessorArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        rtsLayer2LogHelper <- ((RTSLayer2LogHelper.getInstance ()) :> RTSLayer2LogHelper.rTSLayer2LogHelper);
        waypointLogHelperP <- ((WaypointLogHelper.getInstance ()) :> WaypointLogHelper.waypointLogHelper);
        waypoint2LogHelperP <- ((Waypoint2LogHelper.getInstance ()) :> Waypoint2LogHelper.waypoint2LogHelper);
        waypointRunnableLogHelperP <- ((WaypointRunnableLogHelper.getInstance ()) :> WaypointRunnableLogHelper.waypointRunnableLogHelper);
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        buildFrameTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (50)) :> TimeDelayHelper.timeDelayHelper);
        ();
        ();
        ();
        ();
        ();
        ();
        fireTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (700)) :> TimeDelayHelper.timeDelayHelper);
        ();
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        bUILD_VALUE <- 63;
        ();
        healthInterface <- ((Health.get_nULL_HEALTH ()) :> Health.health);
        level <- 1;
        maxLevel <- 1;
        hackVerticleBuild <- bUILD_VALUE;
        slightAngle <- 0;
        percentCompleteP <- 0;
        destroyed <- false;
        selected <- false;
        rtsLayerUtil <- ((RTSLayerUtil.getInstance ()) :> RTSLayerUtil.rTSLayerUtil);
        layerDistanceUtil <- ((LayerDistanceUtil.getInstance ()) :> LayerDistanceUtil.layerDistanceUtil);
        ();
        (* super(...) is the inherit clause *) ();
        (self#initInputProcessors ());
        rootName <- rootName_arg;
        healthInterface <- healthInterface_arg;
        rtsFormInput <- Obj.repr (rtsFormInput_arg);
        ignore (self#setPosition (x, y, z));
        verticleBuildAnimationInterface <- (Obj.magic (verticleBuildAnimationInterfaceFactoryInterface#getInstance (0)));
        buildAnimationInterface <- Obj.repr ((buildAnimationInterfaceFactoryInterface#getInstance (0)));
        baseAnimationInterface <- Obj.repr ((baseAnimationInterfaceFactoryInterface#getInstance (0)));
        emptyAnimationInterface <- (Obj.magic (emptyAnimationInterfaceFactoryInterface#getInstance (0)));
        indexedButShouldBeRotationAnimationInterface <- (Obj.magic (animationInterfaceFactoryInterface#getInstance (0)));
        initAnimationInterface <- indexedButShouldBeRotationAnimationInterface;
        destroyAnimationInterface <- (Obj.magic (proceduralAnimationInterfaceFactoryInterface#getInstanceAnimation (indexedButShouldBeRotationAnimationInterface)));
        let animation : Obj.t ref = ref ((Obj.repr ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)))) in ();
        rangeAnimation <- Obj.repr ((Obj.magic !animation));
        initRangeAnimation <- Obj.repr ((Obj.magic !animation));
        sensorRangeAnimation <- Obj.repr ((Obj.magic !animation));
        initSensorRangeAnimation <- Obj.repr ((Obj.magic !animation));
        animationInterface <- Obj.repr (initAnimationInterface);
        geographicMapCellPositionAreaBase <- (new GeographicMapCellPositionArea.geographicMapCellPositionArea (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSLayer" (fun arguments -> Obj.repr (new rTSLayer (Obj.obj arguments)))

let createSimulatedInstance : 'any1. 'any1 -> _ = fun (_remoteInfo) ->
        begin
        let nullAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((NullAnimationFactory.getFactoryInstance ()) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        let nullIndexedAnimationInterfaceFactoryInterface : AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface ref = ref (((NullIndexedAnimationFactory.getFactoryInstance ()) :> AnimationInterfaceFactoryInterface.animationInterfaceFactoryInterface)) in ();
        (new rTSLayer ((Obj.magic (java_call_static "RemoteInfo.get_rEMOTE_INFO" (Obj.repr ()))), (GroupFactory.getInstance ())#nULL_GROUP_ARRAY, (StringUtil.getInstance ())#eMPTY_STRING, (StringUtil.getInstance ())#eMPTY_STRING, (Health.get_nULL_HEALTH ()), (Obj.magic (java_call_static "NullRTSFormInputFactory.getInstance" (Obj.repr ()))), !nullAnimationInterfaceFactoryInterface, !nullIndexedAnimationInterfaceFactoryInterface, !nullAnimationInterfaceFactoryInterface, !nullAnimationInterfaceFactoryInterface, !nullIndexedAnimationInterfaceFactoryInterface, (NullIndexedAnimationFactory.getFactoryInstance ()), (RectangleFactory.get_sINGLETON ()), 0, 0, (new TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ())))
        end [@@warning "-20"]

and isRTSLayer : 'any1. 'any1 -> bool = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        if ((((Obj.magic layerInterface)#getType ()) >= (getMinStaticType ())) && (((Obj.magic layerInterface)#getType ()) <= (getMaxStaticType ()))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
let () = java_register_static "RTSLayer.createSimulatedInstance" (fun arguments -> Obj.repr (createSimulatedInstance (Obj.obj arguments)))
let () = java_register_static "RTSLayer.isRTSLayer" (fun arguments -> Obj.repr (isRTSLayer (Obj.obj arguments)))


