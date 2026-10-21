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
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.form.RTSFormInput *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSLayerInfoPaintable *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.form.NullRTSFormInputFactory *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.layer.NullRTSLayer *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SelectSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.string.CommonLabels *)

class rTSPlayerGameInput ((gameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas), (inputList_arg : BasicArrayList.basicArrayList), (playerInputId : int), (towerInfoPaintable_arg : RTSLayerInfoPaintable.rTSLayerInfoPaintable), (rtsPlayerLayerInterface_arg : RTSPlayerLayerInterface.rTSPlayerLayerInterface), (layerPositionFinderInterface_arg : LayerPositionFinderInterface.layerPositionFinderInterface), selectRTSLayerVisitorFactoryInterface) =
  object (self)
    inherit PlayerGameInput.playerGameInput (inputList_arg, (new BasicArrayListD.basicArrayListD ()), playerInputId)
    val mutable inputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method inputProcessorArray = inputProcessorArray
    method set_inputProcessorArray value' = inputProcessorArray <- value'
    val mutable removeInputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method removeInputProcessorArray = removeInputProcessorArray
    method set_removeInputProcessorArray value' = removeInputProcessorArray <- value'
    val mutable inputList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method inputList = inputList
    method set_inputList value' = inputList <- value'
    val mutable isSingleKeyProcessing : bool = false
    method isSingleKeyProcessing = isSingleKeyProcessing
    method set_isSingleKeyProcessing value' = isSingleKeyProcessing <- value'
    val mutable gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method gameCanvas = gameCanvas
    method set_gameCanvas value' = gameCanvas <- value'
    val mutable motionGestureInputList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method motionGestureInputList = motionGestureInputList
    method set_motionGestureInputList value' = motionGestureInputList <- value'
    val mutable scrollPlayerGameInput : ScrollMapPlayerGameInput.scrollMapPlayerGameInput = (Obj.magic 0)
    method scrollPlayerGameInput = scrollPlayerGameInput
    method set_scrollPlayerGameInput value' = scrollPlayerGameInput <- value'
    val mutable selectedRTSLayerPlayerGameInput : SelectedRTSLayersPlayerGameInput.selectedRTSLayersPlayerGameInput = (Obj.magic 0)
    method selectedRTSLayerPlayerGameInput = selectedRTSLayerPlayerGameInput
    method set_selectedRTSLayerPlayerGameInput value' = selectedRTSLayerPlayerGameInput <- value'
    val mutable towerInfoPaintable : RTSLayerInfoPaintable.rTSLayerInfoPaintable = (Obj.magic 0)
    method towerInfoPaintable = towerInfoPaintable
    method set_towerInfoPaintable value' = towerInfoPaintable <- value'
    val mutable rtsPlayerLayerInterface : RTSPlayerLayerInterface.rTSPlayerLayerInterface = (Obj.magic 0)
    method rtsPlayerLayerInterface = rtsPlayerLayerInterface
    method set_rtsPlayerLayerInterface value' = rtsPlayerLayerInterface <- value'
    val mutable layerPositionFinderInterface : LayerPositionFinderInterface.layerPositionFinderInterface = (Obj.magic 0)
    method layerPositionFinderInterface = layerPositionFinderInterface
    method set_layerPositionFinderInterface value' = layerPositionFinderInterface <- value'
    val mutable selectedRtsFormInput : RTSFormInput.rTSFormInput = (Obj.magic 0)
    method selectedRtsFormInput = selectedRtsFormInput
    method set_selectedRtsFormInput value' = selectedRtsFormInput <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (selectedRTSLayerPlayerGameInput#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        if ((Obj.repr selectedRtsFormInput) != (Obj.repr (NullRTSFormInputFactory.getInstance ()))) then begin
            ignore (selectedRtsFormInput#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)))
        end
        end [@@warning "-7-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        (try
            ignore (logUtil#putF (commonStrings#sTART, self, "onDisplayChangeEvent"));
            ignore ((self#getRTSLayerInfoPaintable ())#update ())
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "onDisplayChangeEvent", e))
        end)
        end [@@warning "-7-20"]
    

    method left () : unit =
        begin
        ignore ((rtsPlayerLayerInterface#getCurrentScrollSelectionForm ())#processInputKey ((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method right () : unit =
        begin
        ignore ((rtsPlayerLayerInterface#getCurrentScrollSelectionForm ())#processInputKey ((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method initInputProcessors () : unit =
        begin
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- ((Obj.obj (java_new "RTSPlayerLeftGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))) <- (inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- ((Obj.obj (java_new "RTSPlayerRightGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_POUND" (Obj.repr ())))) <- (inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) <- ((Obj.obj (java_new "RTSPlayerFireGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM3" (Obj.repr ())))) <- (removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM3" (Obj.repr ())))) <- (removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) <- (removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ())))) <- (removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))) <- (removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_POUND" (Obj.repr ())))) <- (removeInputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) :> GameInputProcessor.gameInputProcessor);
        ignore (GameInputProcessorUtil.init (inputProcessorArray));
        ignore (GameInputProcessorUtil.init (removeInputProcessorArray))
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        (try
            (self#processMotionInput ((Obj.magic layerManager)));
            let size : int ref = ref ((inputList#size ())) in ();
            let key : int ref = ref (0) in ();
            for index = 0 to !size - 1 do
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic (inputList#get (index))) :> GameKeyEvent.gameKeyEvent)) in ();
                key := (!gameKeyEvent#getKey ());
                ignore ((self#getScrollPlayerGameInput ())#processInputKey (!key));
                ignore ((self#getSelectedBuildingPlayerGameInput ())#processInputKey (!key));
                ignore (inputProcessorArray.(!key)#processEvent ((Obj.magic layerManager), !gameKeyEvent));
                ignore (removeInputProcessorArray.(!key)#processEvent ((Obj.magic layerManager), !gameKeyEvent))
            done;
            if (self#isIsSingleKeyProcessing ()) then begin
                ignore (self#clear ())
            end else begin
                ignore (self#update ())
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, gameInputStrings#pROCESS_INPUT, e))
        end)
        end [@@warning "-7-20"]
    

    method processMotionInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method select : 'any1. 'any1 -> unit = fun (motionGestureEvent) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        let point : GPoint.gPoint ref = ref ((((Obj.magic motionGestureEvent)#getCurrentPoint ()) :> GPoint.gPoint)) in ();
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (gameCanvas#getLayerManager ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let x : int ref = ref (((!point#getX ()) + (!allBinaryTiledLayer#getXP ()))) in ();
        let y : int ref = ref (((!point#getY ()) + (!allBinaryTiledLayer#getYP ()))) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapInterface#getCellPositionAtXYNoThrow (!x, !y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !geographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
            let layer : AllBinaryLayer.allBinaryLayer ref = ref (((layerPositionFinderInterface#getLayerInterface (!geographicMapCellPosition)) :> AllBinaryLayer.allBinaryLayer)) in ();
            if ((Obj.repr !layer) == (Obj.repr (AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()))) then begin
                layer := (CollidableDestroyableDamageableLayer.getNullInstance ())
            end else begin
                geographicMapCellPosition := (!geographicMapInterface#getCellPositionAtXY ((!layer#getXP ()), (!layer#getYP ())))
            end;
            let foundRTSLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic !layer) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
            (self#setSelectedRTSLayer (!foundRTSLayer, !geographicMapCellPosition))
        end else begin
            let commonLabels : CommonLabels.commonLabels ref = ref (((CommonLabels.getInstance ()) :> CommonLabels.commonLabels)) in ();
            ignore (logUtil#putF ((java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append ("Off Of Map -"))#append (!commonLabels#wIDTH_LABEL))#appendint ((java_to_int (Obj.repr ((!allBinaryTiledLayer#getWidth ()))))))#append (!commonLabels#hEIGHT_LABEL))#appendint ((java_to_int (Obj.repr ((!allBinaryTiledLayer#getHeight ())))))))), self, "select"))
        end
        end [@@warning "-7-20"]
    

    method setSelectedRTSLayer : 'any1 'any2. 'any1 * 'any2 -> unit = fun (rtsLayer, _geographicMapCellPosition) ->
        let rtsLayer = Obj.repr rtsLayer in
        begin
        ignore ((self#getSelectedBuildingPlayerGameInput ())#setSelectedRTSLayer ((Obj.magic rtsLayer)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((self#getSelectedRtsFormInput ())#getSelectedGeographicCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (gameCanvas#getLayerManager ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        ignore ((Obj.magic graphics)#setColor (((BasicColorFactory.getInstance ())#gREEN#intValue ())));
        let list : BasicArrayList.basicArrayList ref = ref ((((self#getSelectedBuildingPlayerGameInput ())#getPaintSelectedRTSLayersList ()) :> BasicArrayList.basicArrayList)) in ();
        let width : int ref = ref (0) in ();
        let height : int ref = ref (0) in ();
        if ((!list#size ()) > 0) then begin
            for index = ((!list#size ()) - 1) downto 0 do
                let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (!list#get (index))) :> RTSLayer.rTSLayer)) in ();
                width := (!rtsLayer#getWidth ());
                height := (!rtsLayer#getHeight ());
                ignore ((Obj.magic graphics)#drawRect (((!rtsLayer#getXP ()) - (!allBinaryTiledLayer#getXP ())), ((!rtsLayer#getYP ()) - (!allBinaryTiledLayer#getYP ())), !width, !height))
            done
        end else if ((Obj.repr !geographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            let point : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
            width := (!allBinaryTiledLayer#getCellWidth ());
            height := (!allBinaryTiledLayer#getCellHeight ());
            ignore ((Obj.magic graphics)#drawRect (((!point#getX ()) - (!allBinaryTiledLayer#getXP ())), ((!point#getY ()) - (!allBinaryTiledLayer#getYP ())), !width, !height))
        end
        end [@@warning "-7-20"]
    

    method updatePaintable () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSelectedBuildingPlayerGameInput () : SelectedRTSLayersPlayerGameInput.selectedRTSLayersPlayerGameInput =
        begin
        (selectedRTSLayerPlayerGameInput :> SelectedRTSLayersPlayerGameInput.selectedRTSLayersPlayerGameInput)
        end [@@warning "-7"]
    

    method getSelectedRtsFormInput () : RTSFormInput.rTSFormInput =
        begin
        (selectedRtsFormInput :> RTSFormInput.rTSFormInput)
        end [@@warning "-7"]
    

    method setSelectedRtsFormInput : 'any1. 'any1 -> unit = fun (selectedRtsFormInput_arg) ->
        let selectedRtsFormInput_arg = Obj.repr selectedRtsFormInput_arg in
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("RTSFormInput: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic selectedRtsFormInput_arg))))))), self, "setSelectedRtsFormInput"));
        selectedRtsFormInput <- (Obj.magic selectedRtsFormInput_arg)
        end [@@warning "-7-20"]
    

    method getRtsPlayerLayerInterface () : RTSPlayerLayerInterface.rTSPlayerLayerInterface =
        begin
        (rtsPlayerLayerInterface :> RTSPlayerLayerInterface.rTSPlayerLayerInterface)
        end [@@warning "-7"]
    

    method getRTSLayerInfoPaintable () : RTSLayerInfoPaintable.rTSLayerInfoPaintable =
        begin
        (towerInfoPaintable :> RTSLayerInfoPaintable.rTSLayerInfoPaintable)
        end [@@warning "-7"]
    

    method getMotionGestureInputList () : BasicArrayList.basicArrayList =
        begin
        (motionGestureInputList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getGameCanvas () : AllBinaryGameCanvas.allBinaryGameCanvas =
        begin
        (gameCanvas :> AllBinaryGameCanvas.allBinaryGameCanvas)
        end [@@warning "-7"]
    

    method isIsSingleKeyProcessing () : bool =
        begin
        isSingleKeyProcessing
        end [@@warning "-7"]
    

    method getScrollPlayerGameInput () : ScrollMapPlayerGameInput.scrollMapPlayerGameInput =
        begin
        (scrollPlayerGameInput :> ScrollMapPlayerGameInput.scrollMapPlayerGameInput)
        end [@@warning "-7"]

    initializer
      begin
        inputProcessorArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        removeInputProcessorArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        ();
        isSingleKeyProcessing <- (((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_REPEAT_PRESS)) || ((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_PRESS)));
        ();
        motionGestureInputList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        ();
        ();
        ();
        selectedRtsFormInput <- ((NullRTSFormInputFactory.getInstance ()) :> RTSFormInput.rTSFormInput);
        ();
        (* super(...) is the inherit clause *) ();
        (self#initInputProcessors ());
        gameCanvas <- gameCanvas_arg;
        inputList <- inputList_arg;
        towerInfoPaintable <- towerInfoPaintable_arg;
        rtsPlayerLayerInterface <- rtsPlayerLayerInterface_arg;
        selectedRTSLayerPlayerGameInput <- (new SelectedRTSLayersPlayerGameInput.selectedRTSLayersPlayerGameInput ((self#getRTSLayerInfoPaintable ()), (self#getRtsPlayerLayerInterface ()), inputList, playerInputId, selectRTSLayerVisitorFactoryInterface));
        if ((Obj.repr rtsPlayerLayerInterface) != (Obj.repr (NullRTSLayer.get_nULL_RTS_LAYER ()))) then begin
            (self#setSelectedRtsFormInput ((rtsPlayerLayerInterface#getRTSFormInput ())))
        end;
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (gameCanvas#getLayerManager ())) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        scrollPlayerGameInput <- (new ScrollMapPlayerGameInput.scrollMapPlayerGameInput (!geographicMapInterface, inputList, playerInputId));
        layerPositionFinderInterface <- layerPositionFinderInterface_arg
      end
  end
let () = java_register_constructor "RTSPlayerGameInput" (fun arguments -> Obj.repr (new rTSPlayerGameInput (Obj.obj arguments)))


