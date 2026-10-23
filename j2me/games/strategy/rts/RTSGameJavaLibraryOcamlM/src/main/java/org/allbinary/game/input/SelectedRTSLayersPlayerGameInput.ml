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
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSLayerInfoPaintable *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.media.audio.DowngradeSound *)
(* import org.allbinary.media.audio.UpgradeSound *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.util.visitor.Visitor *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)

class selectedRTSLayersPlayerGameInput ((_towerInfoPaintable : RTSLayerInfoPaintable.rTSLayerInfoPaintable), (rtsPlayerLayerInterface_arg : RTSPlayerLayerInterface.rTSPlayerLayerInterface), (list_arg : BasicArrayList.basicArrayList), (playerInputId : int), selectRTSLayerVisitorFactoryInterface) =
  object (self)
    inherit PlayerGameInput.playerGameInput (list_arg, (new BasicArrayListD.basicArrayListD ()), playerInputId)
    val mutable inputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method inputProcessorArray = inputProcessorArray
    method set_inputProcessorArray value' = inputProcessorArray <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable isSingleKeyProcessing : bool = false
    method isSingleKeyProcessing = isSingleKeyProcessing
    method set_isSingleKeyProcessing value' = isSingleKeyProcessing <- value'
    val mutable selectedRTSLayersList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method selectedRTSLayersList = selectedRTSLayersList
    method set_selectedRTSLayersList value' = selectedRTSLayersList <- value'
    val mutable preSelectedRTSLayersList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method preSelectedRTSLayersList = preSelectedRTSLayersList
    method set_preSelectedRTSLayersList value' = preSelectedRTSLayersList <- value'
    val mutable paintSelectedRTSLayersList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method paintSelectedRTSLayersList = paintSelectedRTSLayersList
    method set_paintSelectedRTSLayersList value' = paintSelectedRTSLayersList <- value'
    val mutable rtsPlayerLayerInterface : RTSPlayerLayerInterface.rTSPlayerLayerInterface = (Obj.magic 0)
    method rtsPlayerLayerInterface = rtsPlayerLayerInterface
    method set_rtsPlayerLayerInterface value' = rtsPlayerLayerInterface <- value'
    val mutable selectRTSLayerVisitorInterface : Visitor.visitor = (Obj.magic 0)
    method selectRTSLayerVisitorInterface = selectRTSLayerVisitorInterface
    method set_selectRTSLayerVisitorInterface value' = selectRTSLayerVisitorInterface <- value'
    val mutable upgradeGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method upgradeGameNotificationEvent = upgradeGameNotificationEvent
    method set_upgradeGameNotificationEvent value' = upgradeGameNotificationEvent <- value'
    val mutable noMoneyGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method noMoneyGameNotificationEvent = noMoneyGameNotificationEvent
    method set_noMoneyGameNotificationEvent value' = noMoneyGameNotificationEvent <- value'
    val mutable downgradeGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method downgradeGameNotificationEvent = downgradeGameNotificationEvent
    method set_downgradeGameNotificationEvent value' = downgradeGameNotificationEvent <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (upgradeGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (noMoneyGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (downgradeGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method isSelected : 'any1. 'any1 -> bool = fun (rtsLayer) ->
        let rtsLayer = Obj.repr rtsLayer in
        try
        begin
        if (selectedRTSLayersList#contains ((Obj.magic rtsLayer))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method upgrade () : unit =
        begin
        let anyChanged : bool ref = ref (false) in ();
        for index = ((selectedRTSLayersList#size ()) - 1) downto 0 do
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (selectedRTSLayersList#get (index))) :> RTSLayer.rTSLayer)) in ();
            if (!rtsLayer#isUpgradeable ()) then begin
                let capital : Capital.capital ref = ref (((rtsPlayerLayerInterface#getCapital ()) :> Capital.capital)) in ();
                let upgradeCost : int ref = ref ((!rtsLayer#getUpgradeCost ())) in ();
                if (!upgradeCost <= (!capital#getTotalMoney ())) then begin
                    anyChanged := true;
                    ignore (rtsPlayerLayerInterface#add ((UpgradeSound.getInstance ())));
                    ignore (!rtsLayer#upgrade ());
                    ignore (!capital#removeMoney (!upgradeCost));
                    if (not (rtsPlayerLayerInterface#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                        ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (upgradeGameNotificationEvent))
                    end
                end else begin
                    ignore (rtsPlayerLayerInterface#add ((ErrorSound.getInstance ())));
                    if (not (rtsPlayerLayerInterface#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                        ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (noMoneyGameNotificationEvent))
                    end
                end
            end
        done;
        if !anyChanged then begin
            let rtsPlayerGameInput : Obj.t ref = ref ((Obj.repr ((Obj.magic (rtsPlayerLayerInterface#getPlayerGameInput ()))))) in ();
            ignore ((Obj.magic !rtsPlayerGameInput)#updatePaintable ())
        end
        end [@@warning "-7"]
    

    method downgrade () : unit =
        begin
        let anyChanged : bool ref = ref (false) in ();
        let index : int ref = ref ((selectedRTSLayersList#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (selectedRTSLayersList#get (!index))) :> RTSLayer.rTSLayer)) in ();
            if (!rtsLayer#isDowngradeable ()) then begin
                anyChanged := true;
                ignore (rtsPlayerLayerInterface#add ((DowngradeSound.getInstance ())));
                let downgradeCost : int ref = ref ((!rtsLayer#getDowngradeCost ())) in ();
                ignore (!rtsLayer#downgrade ());
                let capital : Capital.capital ref = ref (((rtsPlayerLayerInterface#getCapital ()) :> Capital.capital)) in ();
                ignore (!capital#addMoney (!downgradeCost));
                if (not (rtsPlayerLayerInterface#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                    ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (downgradeGameNotificationEvent))
                end
            end
        done;
        if !anyChanged then begin
            let rtsPlayerGameInput : Obj.t ref = ref ((Obj.repr ((Obj.magic (rtsPlayerLayerInterface#getPlayerGameInput ()))))) in ();
            ignore ((Obj.magic !rtsPlayerGameInput)#updatePaintable ())
        end
        end [@@warning "-7"]
    

    method initInputProcessors () : unit =
        begin
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM1" (Obj.repr ())))) <- ((Obj.obj (java_new "SelectedRTSLayersPlayerUpgradeGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM3" (Obj.repr ())))) <- ((Obj.obj (java_new "SelectedRTSLayersPlayerDowngradeGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        ignore (GameInputProcessorUtil.init (inputProcessorArray))
        end [@@warning "-7"]
    

    method processInputKey ((key : int)) : unit =
        begin
        if (selectedRTSLayersList != (Obj.magic 0)) then begin
            ignore (inputProcessorArray.(key)#processEvent ((AllBinaryGameLayerManager.getNullInstance ()), (GameKeyEvent.get_nONE ())))
        end
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        (try
            let size : int ref = ref ((list#size ())) in ();
            let key : int ref = ref (0) in ();
            for index = 0 to !size - 1 do
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic (list#get (index))) :> GameKeyEvent.gameKeyEvent)) in ();
                key := (!gameKeyEvent#getKey ());
                (self#processInputKey (!key))
            done;
            if isSingleKeyProcessing then begin
                ignore (self#clear ())
            end else begin
                ignore (self#update ())
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#gameInputStrings)#pROCESS_INPUT, e))
        end)
        end [@@warning "-7-20"]
    

    method getSelectedBasicArrayList () : BasicArrayList.basicArrayList =
        begin
        (selectedRTSLayersList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method addSelectedRTSLayer : 'any1. 'any1 -> unit = fun (selectedLayer) ->
        let selectedLayer = Obj.repr selectedLayer in
        begin
        paintSelectedRTSLayersList <- ((BasicArrayListUtil.getInstance ())#getImmutableInstance ());
        if ((Obj.repr (Obj.magic selectedLayer)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            (self#deselectAll ());
            ignore (selectedRTSLayersList#clear ())
        end else begin
            if (not (selectedRTSLayersList#contains ((Obj.magic selectedLayer)))) then begin
                ignore (selectedRTSLayersList#add ((Obj.magic selectedLayer)))
            end
        end;
        paintSelectedRTSLayersList <- selectedRTSLayersList
        end [@@warning "-7-20"]
    

    method setSelectedRTSLayer : 'any1. 'any1 -> unit = fun (selectedLayer) ->
        let selectedLayer = Obj.repr selectedLayer in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Selected Layer: "));
        if ((Obj.magic selectedLayer) != (Obj.magic 0)) then begin
            ignore (!stringBuffer#append (((Obj.magic selectedLayer)#getName ())))
        end;
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "setSelectedRTSLayer"));
        paintSelectedRTSLayersList <- ((BasicArrayListUtil.getInstance ())#getImmutableInstance ());
        ignore (selectRTSLayerVisitorInterface#visit ((Obj.magic selectedLayer)));
        (self#deselectAll ());
        if ((selectedRTSLayersList#size ()) > 0) then begin
            ignore ((self#getPreSelectedRTSLayersList ())#clear ());
            let tempList : BasicArrayList.basicArrayList ref = ref (((self#getPreSelectedRTSLayersList ()) :> BasicArrayList.basicArrayList)) in ();
            preSelectedRTSLayersList <- selectedRTSLayersList;
            selectedRTSLayersList <- !tempList;
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Preselected: "))#append ((java_string_of (Obj.repr preSelectedRTSLayersList)))))), self, "setSelectedRTSLayer"))
        end;
        if ((Obj.repr (Obj.magic selectedLayer)) != (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            ignore (selectedRTSLayersList#add ((Obj.magic selectedLayer)))
        end;
        paintSelectedRTSLayersList <- selectedRTSLayersList
        end [@@warning "-7-20"]
    

    method getLastSelectedRtsLayer () : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer =
        try
        begin
        if (self#isAnyRTSLayerSelected ()) then begin
            raise (Java_return (Obj.repr ((Obj.magic (selectedRTSLayersList#get (((selectedRTSLayersList#size ()) - 1)))))))
        end else begin
            raise (Java_return (Obj.repr ((CollidableDestroyableDamageableLayer.getNullInstance ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method selectAllPreselected () : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Select all Preselected: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr preSelectedRTSLayersList))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "selectAllPreselected"));
        for index = ((preSelectedRTSLayersList#size ()) - 1) downto 0 do
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (preSelectedRTSLayersList#get (index))) :> RTSLayer.rTSLayer)) in ();
            ignore (!rtsLayer#select ())
        done
        end [@@warning "-7"]
    

    method deselectAllPreselected () : unit =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Deselect all Preselected: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr preSelectedRTSLayersList))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "deselectAllPreselected"));
        for index = ((preSelectedRTSLayersList#size ()) - 1) downto 0 do
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (preSelectedRTSLayersList#get (index))) :> RTSLayer.rTSLayer)) in ();
            ignore (!rtsLayer#deselect ())
        done;
        ignore (preSelectedRTSLayersList#clear ())
        end [@@warning "-7"]
    

    method deselectAll () : unit =
        begin
        for index = ((selectedRTSLayersList#size ()) - 1) downto 0 do
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (selectedRTSLayersList#get (index))) :> RTSLayer.rTSLayer)) in ();
            ignore (!rtsLayer#deselect ())
        done
        end [@@warning "-7"]
    

    method isAnyRTSLayerSelected () : bool =
        try
        begin
        if ((selectedRTSLayersList#size ()) = 0) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getPaintSelectedRTSLayersList () : BasicArrayList.basicArrayList =
        begin
        (paintSelectedRTSLayersList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getPreSelectedRTSLayersList () : BasicArrayList.basicArrayList =
        begin
        (preSelectedRTSLayersList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]

    initializer
      begin
        inputProcessorArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        ();
        isSingleKeyProcessing <- (((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_REPEAT_PRESS)) || ((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_PRESS)));
        selectedRTSLayersList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        preSelectedRTSLayersList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        paintSelectedRTSLayersList <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        (self#initInputProcessors ());
        rtsPlayerLayerInterface <- rtsPlayerLayerInterface_arg;
        list <- list_arg;
        selectRTSLayerVisitorInterface <- (selectRTSLayerVisitorFactoryInterface#create (self));
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        upgradeGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#uPGRADE, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        noMoneyGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nO_MONEY, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        downgradeGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#dOWNGRADE, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE))
      end
  end
let () = java_register_constructor "SelectedRTSLayersPlayerGameInput" (fun arguments -> Obj.repr (new selectedRTSLayersPlayerGameInput (Obj.obj arguments)))


