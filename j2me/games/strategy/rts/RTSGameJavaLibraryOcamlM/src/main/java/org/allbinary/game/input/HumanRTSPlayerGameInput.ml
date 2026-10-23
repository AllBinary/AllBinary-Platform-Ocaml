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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.layer.MultiSelectPaintable *)
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSLayerInfoPaintable *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.input.motion.button.EndLevelNoBuildingSelectedTouchButtonsBuilder *)
(* import org.allbinary.input.motion.button.EndLevelTouchButtonsBuilder *)
(* import org.allbinary.input.motion.button.NoBuildingSelectedTouchButtonsBuilder *)
(* import org.allbinary.input.motion.button.RTSTouchButtonsBuilder *)
(* import org.allbinary.media.audio.SelectBuildingSound *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.paint.NullInitUpdatePaintable *)
(* import org.allbinary.input.motion.button.TouchButtonsBuilderFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.RectangleCollisionUtil *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.view.ViewPositionBase *)

class humanRTSPlayerGameInput ((gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas), (inputList : BasicArrayList.basicArrayList), (playerInputId : int), (towerInfoPaintable : RTSLayerInfoPaintable.rTSLayerInfoPaintable), (rtsPlayerLayerInterface : RTSPlayerLayerInterface.rTSPlayerLayerInterface), (layerPositionFinderInterface : LayerPositionFinderInterface.layerPositionFinderInterface), (selectRTSLayerVisitorFactoryInterface : SelectRTSLayerVisitorFactoryInterface.selectRTSLayerVisitorFactoryInterface), (touchButtonsBuilderFactory_arg : TouchButtonsBuilderFactory.touchButtonsBuilderFactory)) =
  object (self)
    inherit RTSPlayerGameInput.rTSPlayerGameInput (gameCanvas, inputList, playerInputId, towerInfoPaintable, rtsPlayerLayerInterface, layerPositionFinderInterface, selectRTSLayerVisitorFactoryInterface) as super
    val mutable isDragging : bool = false
    method isDragging = isDragging
    method set_isDragging value' = isDragging <- value'
    val mutable gameStateFactory : GameStateFactory.gameStateFactory = (Obj.magic 0)
    method gameStateFactory = gameStateFactory
    method set_gameStateFactory value' = gameStateFactory <- value'
    val mutable rectangleCollisionUtil : Obj.t = Obj.repr 0
    method rectangleCollisionUtil : 'r. 'r = Obj.magic rectangleCollisionUtil
    method set_rectangleCollisionUtil : 'v. 'v -> unit = fun value' -> rectangleCollisionUtil <- Obj.repr value'
    val mutable touchMotionGestureFactory : Obj.t = Obj.repr 0
    method touchMotionGestureFactory : 'r. 'r = Obj.magic touchMotionGestureFactory
    method set_touchMotionGestureFactory : 'v. 'v -> unit = fun value' -> touchMotionGestureFactory <- Obj.repr value'
    val mutable pRESSED : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method pRESSED = pRESSED
    method set_pRESSED value' = pRESSED <- value'
    val mutable rELEASED : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method rELEASED = rELEASED
    method set_rELEASED value' = rELEASED <- value'
    val mutable touchButtonsBuilderFactory : TouchButtonsBuilderFactory.touchButtonsBuilderFactory = (Obj.magic 0)
    method touchButtonsBuilderFactory = touchButtonsBuilderFactory
    method set_touchButtonsBuilderFactory value' = touchButtonsBuilderFactory <- value'
    val mutable notYoursGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method notYoursGameNotificationEvent = notYoursGameNotificationEvent
    method set_notYoursGameNotificationEvent value' = notYoursGameNotificationEvent <- value'
    val mutable selectedRtsLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = (Obj.magic 0)
    method selectedRtsLayer = selectedRtsLayer
    method set_selectedRtsLayer value' = selectedRtsLayer <- value'
    val mutable startPoint : GPoint.gPoint = (Obj.magic 0)
    method startPoint = startPoint
    method set_startPoint value' = startPoint <- value'
    val mutable endPoint : GPoint.gPoint = (Obj.magic 0)
    method endPoint = endPoint
    method set_endPoint value' = endPoint <- value'
    val mutable pOSSIBLE : string = ""
    method pOSSIBLE = pOSSIBLE
    method set_pOSSIBLE value' = pOSSIBLE <- value'
    val mutable aT : string = ""
    method aT = aT
    method set_aT value' = aT <- value'
    val mutable mETHOD : string = ""
    method mETHOD = mETHOD
    method set_mETHOD value' = mETHOD <- value'
    val mutable aDDING : string = ""
    method aDDING = aDDING
    method set_aDDING value' = aDDING <- value'
    val mutable sPACE : string = ""
    method sPACE = sPACE
    method set_sPACE value' = sPACE <- value'
    val mutable multiSelectPaintable : MultiSelectPaintable.multiSelectPaintable = (Obj.magic 0)
    method multiSelectPaintable = multiSelectPaintable
    method set_multiSelectPaintable value' = multiSelectPaintable <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (notYoursGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method processDraggingMotionInput : 'any1. 'any1 -> bool = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        try
        begin
        let motionGestureEvent : MotionGestureEvent.motionGestureEvent ref = ref (((Obj.magic ((self#getMotionGestureInputList ())#get ((((self#getMotionGestureInputList ())#size ()) - 1)))) :> MotionGestureEvent.motionGestureEvent)) in ();
        let motionGestureInput : MotionGestureInput.motionGestureInput ref = ref (((!motionGestureEvent#getMotionGesture ()) :> MotionGestureInput.motionGestureInput)) in ();
        let rtsFormInput : RTSFormInput.rTSFormInput ref = ref (((self#getSelectedRtsFormInput ()) :> RTSFormInput.rTSFormInput)) in ();
        if ((Obj.repr !motionGestureInput) == (Obj.repr pRESSED)) then begin
            let point : GPoint.gPoint ref = ref (((!motionGestureEvent#getCurrentPoint ()) :> GPoint.gPoint)) in ();
            if (((self#getRtsPlayerLayerInterface ())#getCurrentScrollSelectionForm ())#isInForm (!point)) then begin
                isDragging <- (!rtsFormInput#processSticky ((self#getSelectedRtsLayer ()), (self#getRtsPlayerLayerInterface ()), (Obj.magic layerManager), !point))
            end
        end else if ((Obj.repr !motionGestureInput) == (Obj.repr rELEASED)) then begin
            let point : GPoint.gPoint ref = ref (((!motionGestureEvent#getCurrentPoint ()) :> GPoint.gPoint)) in ();
            if (((self#getRtsPlayerLayerInterface ())#getCurrentScrollSelectionForm ())#isInForm (!point)) then begin
                ignore (!rtsFormInput#processAtPoint ((self#getSelectedRtsLayer ()), (self#getRtsPlayerLayerInterface ()), (Obj.magic layerManager), !point))
            end else if (!rtsFormInput#isStickyItemSelected ()) then begin
                let previousRtsFormInput : RTSFormInput.rTSFormInput ref = ref ((!rtsFormInput :> RTSFormInput.rTSFormInput)) in ();
                ignore (self#select (!motionGestureEvent));
                ignore ((self#getSelectedBuildingPlayerGameInput ())#selectAllPreselected ());
                ignore (!previousRtsFormInput#processAtPoint ((self#getSelectedRtsLayer ()), (self#getRtsPlayerLayerInterface ()), (Obj.magic layerManager), !point));
                ignore ((self#getSelectedBuildingPlayerGameInput ())#deselectAllPreselected ())
            end else begin
                ignore (self#select (!motionGestureEvent))
            end;
            ignore (!rtsFormInput#setStickyItemSelected (false));
            ignore (!rtsFormInput#setSelectedStickyItem ((Obj.magic (java_call_static "ABCustomItem.getNullInstance" (Obj.repr ())))));
            ignore (!rtsFormInput#setSelectedStickyItemIndex ((-1)));
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method makeSelection () : unit =
        begin
        let rtsLayerList : BasicArrayList.basicArrayList ref = ref ((((self#getRtsPlayerLayerInterface ())#getPlayerOwnedRTSLayers ())#rtsLayerList :> BasicArrayList.basicArrayList)) in ();
        let rectX1 : int ref = ref ((startPoint#getX ())) in ();
        let rectY1 : int ref = ref ((startPoint#getY ())) in ();
        let rectX2 : int ref = ref ((endPoint#getX ())) in ();
        let rectY2 : int ref = ref ((endPoint#getY ())) in ();
        if (!rectX1 > !rectX2) then begin
            rectX2 := !rectX1;
            rectX1 := (endPoint#getX ())
        end;
        if (!rectY1 > !rectY2) then begin
            rectY2 := !rectY1;
            rectY1 := (endPoint#getY ())
        end;
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (aT));
        ignore (!stringBuffer#appendint (!rectX1));
        ignore (!stringBuffer#append (sPACE));
        ignore (!stringBuffer#appendint (!rectY1));
        ignore (!stringBuffer#append (sPACE));
        ignore (!stringBuffer#appendint (!rectX2));
        ignore (!stringBuffer#append (sPACE));
        ignore (!stringBuffer#appendint (!rectY2));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD));
        let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic 0) :> RTSLayer.rTSLayer)) in ();
        for index = ((!rtsLayerList#size ()) - 1) downto 0 do
            rtsLayer := (Obj.magic (!rtsLayerList#get (index)));
            ignore (!stringBuffer#delete (0, (!stringBuffer#length ())));
            let viewPosition : ViewPositionBase.viewPositionBase ref = ref (((!rtsLayer#getViewPosition ()) :> ViewPositionBase.viewPositionBase)) in ();
            ignore (!stringBuffer#append (pOSSIBLE));
            ignore (!stringBuffer#append ((!rtsLayer#getName ())));
            ignore (!stringBuffer#append (sPACE));
            ignore (!stringBuffer#append (aT));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((((!viewPosition#getX ()) + (!rtsLayer#getHalfWidth ()))))))));
            ignore (!stringBuffer#append (sPACE));
            ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((((!viewPosition#getY ()) + (!rtsLayer#getHalfHeight ()))))))));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, mETHOD));
            if ((Obj.magic rectangleCollisionUtil)#isInside (!rectX1, !rectY1, !rectX2, !rectY2, ((!viewPosition#getX ()) + (!rtsLayer#getHalfWidth ())), ((!viewPosition#getY ()) + (!rtsLayer#getHalfHeight ())))) then begin
                ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (aDDING))#append ((!rtsLayer#getName ()))))), self, mETHOD));
                ignore (!rtsLayer#select ());
                ignore ((self#getSelectedBuildingPlayerGameInput ())#addSelectedRTSLayer (!rtsLayer))
            end
        done;
        let gameLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref ((((self#getSelectedBuildingPlayerGameInput ())#getLastSelectedRtsLayer ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
        if ((Obj.repr !gameLayer) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            let lastRTSLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic !gameLayer) :> RTSLayer.rTSLayer)) in ();
            if ((Obj.repr (!lastRTSLayer#getScrollSelectionForm ())) != (Obj.repr (ScrollSelectionForm.getNullScrollSelectionForm ()))) then begin
                (self#updateForm ((!lastRTSLayer#getScrollSelectionForm ()), (!lastRTSLayer#getRTSFormInput ())));
                (self#setSelectedRtsLayer (!lastRTSLayer))
            end
        end;
        (self#updatePaintable ())
        end [@@warning "-7"]
    

    method processSelectionBoxMotionInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        for index = (((self#getMotionGestureInputList ())#size ()) - 1) downto 0 do
            let motionGestureEvent : MotionGestureEvent.motionGestureEvent ref = ref (((Obj.magic ((self#getMotionGestureInputList ())#get (index))) :> MotionGestureEvent.motionGestureEvent)) in ();
            let motionGestureInput : MotionGestureInput.motionGestureInput ref = ref (((!motionGestureEvent#getMotionGesture ()) :> MotionGestureInput.motionGestureInput)) in ();
            let point : GPoint.gPoint ref = ref (((!motionGestureEvent#getCurrentPoint ()) :> GPoint.gPoint)) in ();
            if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic touchMotionGestureFactory)#pRESSED)) then begin
                startPoint <- !point;
                endPoint <- !point
            end else if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic touchMotionGestureFactory)#rELEASED)) then begin
                endPoint <- !point;
                (self#makeSelection ());
                startPoint <- (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO;
                endPoint <- (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO
            end else begin
                endPoint <- !point
            end
        done
        end [@@warning "-7-20"]
    

    method processMotionInput : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        if (((self#getMotionGestureInputList ())#size ()) > 0) then begin
            let endDrag : bool ref = ref ((self#processDraggingMotionInput ((Obj.magic layerManager)))) in ();
            if (not isDragging) then begin
                (self#processSelectionBoxMotionInput ((Obj.magic layerManager)))
            end;
            if !endDrag then begin
                isDragging <- false
            end
        end;
        ignore ((self#getMotionGestureInputList ())#clear ())
        end [@@warning "-7-20"]
    

    method setSelectedRtsFormInput : 'any1. 'any1 -> unit = fun (selectedRtsFormInput) ->
        let selectedRtsFormInput = Obj.repr selectedRtsFormInput in
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#sTART))#append (((StringUtil.getInstance ())#toString ((Obj.magic selectedRtsFormInput))))))), self, "setSelectedRtsFormInput"));
        ignore (super#setSelectedRtsFormInput ((Obj.magic selectedRtsFormInput)));
        (self#setSelectedRtsLayer ((CollidableDestroyableDamageableLayer.getNullInstance ())))
        end [@@warning "-7-20"]
    

    method updateFormForLayer : 'any1. 'any1 -> unit = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref ((((Obj.magic rtsLayer)#getScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        if (((Obj.repr !scrollSelectionForm) != (Obj.repr (ScrollSelectionForm.getNullScrollSelectionForm ()))) && ((Obj.repr ((self#getRtsPlayerLayerInterface ())#getGroupInterface ()).(0)) == (Obj.repr ((Obj.magic rtsLayer)#getGroupInterface ()).(0)))) then begin
            (self#updateForm (!scrollSelectionForm, ((Obj.magic rtsLayer)#getRTSFormInput ())));
            ignore ((self#getSelectedBuildingPlayerGameInput ())#setSelectedRTSLayer ((CollidableDestroyableDamageableLayer.getNullInstance ())));
            (self#setSelectedRtsLayer ((Obj.magic rtsLayer)))
        end else begin
            ignore ((self#getRtsPlayerLayerInterface ())#setCurrentScrollSelectionForm (((self#getRtsPlayerLayerInterface ())#getBuildingScrollSelectionForm ())));
            (self#setSelectedRtsFormInput (((self#getRtsPlayerLayerInterface ())#getRTSFormInput ())));
            ignore ((self#getSelectedBuildingPlayerGameInput ())#setSelectedRTSLayer ((CollidableDestroyableDamageableLayer.getNullInstance ())))
        end
        end [@@warning "-7-20"]
    

    method updateForm : 'any1 'any2. 'any1 * 'any2 -> unit = fun (scrollSelectionForm, rtfFormInput) ->
        let scrollSelectionForm = Obj.repr scrollSelectionForm in
        let rtfFormInput = Obj.repr rtfFormInput in
        begin
        ignore ((self#getRtsPlayerLayerInterface ())#setCurrentScrollSelectionForm ((Obj.magic scrollSelectionForm)));
        (self#setSelectedRtsFormInput ((Obj.magic rtfFormInput)))
        end [@@warning "-7-20"]
    

    method setSelectedRTSLayer : 'any1 'any2. 'any1 * 'any2 -> unit = fun (rtSLayer, geographicMapCellPosition) ->
        let rtSLayer = Obj.repr rtSLayer in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        if (((Obj.repr (Obj.magic rtSLayer)) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) && ((Obj.repr ((self#getRtsPlayerLayerInterface ())#getGroupInterface ()).(0)) != (Obj.repr ((Obj.magic rtSLayer)#getGroupInterface ()).(0)))) then begin
            ignore ((self#getRtsPlayerLayerInterface ())#add ((ErrorSound.getInstance ())));
            ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (notYoursGameNotificationEvent));
            raise (Java_return (Obj.repr (())))
        end;
        let gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas ref = ref (((self#getGameCanvas ()) :> AllBinaryGameCanvas.allBinaryGameCanvas)) in ();
        if ((Obj.repr (Obj.magic rtSLayer)) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            ignore ((self#getRtsPlayerLayerInterface ())#add ((SelectBuildingSound.getInstance ())));
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (Obj.magic rtSLayer)) :> RTSLayer.rTSLayer)) in ();
            ignore (!rtsLayer#select ());
            (self#updateFormForLayer (!rtsLayer));
            if ((Obj.repr (!gameCanvas#getGameState ())) == (Obj.repr gameStateFactory#pLAYING_GAME_STATE)) then begin
                if (!rtsLayer#isSelfUpgradeable ()) then begin
                    ignore (!gameCanvas#updateCurrentTouchInputFactory ((new RTSTouchButtonsBuilder.rTSTouchButtonsBuilder ())))
                end else begin
                    ignore (!gameCanvas#updateCurrentTouchInputFactory ((new NoBuildingSelectedTouchButtonsBuilder.noBuildingSelectedTouchButtonsBuilder ())))
                end
            end else begin
                let endLevelTouchButtonsBuilder : EndLevelTouchButtonsBuilder.endLevelTouchButtonsBuilder ref = ref (((new EndLevelTouchButtonsBuilder.endLevelTouchButtonsBuilder ()) :> EndLevelTouchButtonsBuilder.endLevelTouchButtonsBuilder)) in ();
                if (touchButtonsBuilderFactory != (Obj.magic 0)) then begin
                    ignore (!endLevelTouchButtonsBuilder#add ((touchButtonsBuilderFactory#getInstance ())))
                end;
                ignore (!gameCanvas#updateCurrentTouchInputFactory (!endLevelTouchButtonsBuilder))
            end
        end else begin
            ignore ((self#logUtil)#putF ("Set Player Default Form", self, "setSelectedRTSLayer"));
            ignore ((self#getRtsPlayerLayerInterface ())#setCurrentScrollSelectionForm (((self#getRtsPlayerLayerInterface ())#getBuildingScrollSelectionForm ())));
            (self#setSelectedRtsFormInput (((self#getRtsPlayerLayerInterface ())#getRTSFormInput ())));
            ignore ((self#getSelectedBuildingPlayerGameInput ())#setSelectedRTSLayer ((CollidableDestroyableDamageableLayer.getNullInstance ())));
            if ((Obj.repr (!gameCanvas#getGameState ())) == (Obj.repr gameStateFactory#pLAYING_GAME_STATE)) then begin
                ignore (!gameCanvas#updateCurrentTouchInputFactory ((new NoBuildingSelectedTouchButtonsBuilder.noBuildingSelectedTouchButtonsBuilder ())))
            end else begin
                let endLevelNoBuildingSelectedTouchButtonsBuilder : EndLevelNoBuildingSelectedTouchButtonsBuilder.endLevelNoBuildingSelectedTouchButtonsBuilder ref = ref (((new EndLevelNoBuildingSelectedTouchButtonsBuilder.endLevelNoBuildingSelectedTouchButtonsBuilder ()) :> EndLevelNoBuildingSelectedTouchButtonsBuilder.endLevelNoBuildingSelectedTouchButtonsBuilder)) in ();
                if (touchButtonsBuilderFactory != (Obj.magic 0)) then begin
                    ignore (!endLevelNoBuildingSelectedTouchButtonsBuilder#add ((touchButtonsBuilderFactory#getInstance ())))
                end;
                ignore (!gameCanvas#updateCurrentTouchInputFactory (!endLevelNoBuildingSelectedTouchButtonsBuilder))
            end
        end;
        ignore ((self#getSelectedRtsFormInput ())#setSelectedGeographicCellPosition ((Obj.magic geographicMapCellPosition)));
        ignore ((self#getSelectedBuildingPlayerGameInput ())#setSelectedRTSLayer ((Obj.magic rtSLayer)));
        (self#updatePaintable ())
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method updatePaintable () : unit =
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((((self#getSelectedBuildingPlayerGameInput ())#getSelectedBasicArrayList ()) :> BasicArrayList.basicArrayList)) in ();
        if ((!list#size ()) > 1) then begin
            let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (self#getGameCanvas ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
            let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
            ignore (multiSelectPaintable#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
            ignore (multiSelectPaintable#update (!list));
            ignore ((self#getRTSLayerInfoPaintable ())#updateRTSLayerInfoSelection (multiSelectPaintable))
        end else if ((!list#size ()) = 1) then begin
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (!list#get (0))) :> RTSLayer.rTSLayer)) in ();
            ignore ((self#getRTSLayerInfoPaintable ())#updateRTSLayerInfoSelection ((!rtsLayer#createHudPaintable ())))
        end else begin
            ignore ((self#getRTSLayerInfoPaintable ())#updateRTSLayerInfoInit ((NullInitUpdatePaintable.getInstance ())))
        end
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        if (((Obj.repr startPoint) != (Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO)) && ((Obj.repr endPoint) != (Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO))) then begin
            ignore ((Obj.magic graphics)#setColor (((BasicColorFactory.getInstance ())#rED#intValue ())));
            let rectX1 : int ref = ref ((startPoint#getX ())) in ();
            let rectY1 : int ref = ref ((startPoint#getY ())) in ();
            let rectX2 : int ref = ref ((endPoint#getX ())) in ();
            let rectY2 : int ref = ref ((endPoint#getY ())) in ();
            if (!rectX1 > !rectX2) then begin
                rectX2 := !rectX1;
                rectX1 := (endPoint#getX ())
            end;
            if (!rectY1 > !rectY2) then begin
                rectY2 := !rectY1;
                rectY1 := (endPoint#getY ())
            end;
            ignore ((Obj.magic graphics)#drawRect (!rectX1, !rectY1, (!rectX2 - !rectX1), (!rectY2 - !rectY1)))
        end
        end [@@warning "-7-20"]
    

    method onMotionGestureEvent : 'any1. 'any1 -> unit = fun (motionGestureEvent) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        ignore ((self#getMotionGestureInputList ())#add ((Obj.magic motionGestureEvent)))
        end [@@warning "-7-20"]
    

    method onScrolledMotionGestureEvent : 'any1. 'any1 -> unit = fun (_motionGestureEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getSelectedRtsLayer () : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer =
        begin
        (selectedRtsLayer :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)
        end [@@warning "-7"]
    

    method setSelectedRtsLayer : 'any1. 'any1 -> unit = fun (selectedRtsLayer_arg) ->
        let selectedRtsLayer_arg = Obj.repr selectedRtsLayer_arg in
        begin
        selectedRtsLayer <- (Obj.magic selectedRtsLayer_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        isDragging <- false;
        gameStateFactory <- ((GameStateFactory.getInstance ()) :> GameStateFactory.gameStateFactory);
        rectangleCollisionUtil <- (Obj.repr (Obj.magic (java_call_static "RectangleCollisionUtil.getInstance" (Obj.repr ()))));
        touchMotionGestureFactory <- (Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ()))));
        pRESSED <- ((Obj.magic touchMotionGestureFactory)#pRESSED :> MotionGestureInput.motionGestureInput);
        rELEASED <- ((Obj.magic touchMotionGestureFactory)#rELEASED :> MotionGestureInput.motionGestureInput);
        ();
        ();
        selectedRtsLayer <- ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer);
        startPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        endPoint <- ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO :> GPoint.gPoint);
        pOSSIBLE <- "Possible: ";
        aT <- "At: ";
        mETHOD <- "makeSelection";
        aDDING <- "Adding: ";
        sPACE <- (CommonSeps.getInstance ())#sPACE;
        multiSelectPaintable <- ((new MultiSelectPaintable.multiSelectPaintable ()) :> MultiSelectPaintable.multiSelectPaintable);
        ();
        (* super(...) is the inherit clause *) ();
        touchButtonsBuilderFactory <- touchButtonsBuilderFactory_arg;
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        notYoursGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nOT_YOURS, ((SmallIntegerSingletonFactory.getInstance ())#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        ignore ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ())))#addListenerInterface (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "HumanRTSPlayerGameInput" (fun arguments -> Obj.repr (new humanRTSPlayerGameInput (Obj.obj arguments)))


