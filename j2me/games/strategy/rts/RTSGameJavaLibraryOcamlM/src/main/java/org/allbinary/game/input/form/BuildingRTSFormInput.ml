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
(* package org.allbinary.game.input.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.RTSPlayerGameInput *)
(* import org.allbinary.game.layer.DemoLockedWithCostLayerInterfaceFactoryInterface *)
(* import org.allbinary.game.layer.GeographicMapCellPositionAreaBase *)
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.media.audio.BuildingSound *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil *)
(* import org.allbinary.logic.system.security.licensing.LockedUtil *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory *)

class buildingRTSFormInput (groupInterface, (isUnitProducer_arg : bool)) =
  object (self)
    inherit RTSFormInput.rTSFormInput (groupInterface) as super
    val mutable isUnitProducer : bool = false
    method isUnitProducer = isUnitProducer
    method set_isUnitProducer value' = isUnitProducer <- value'
    val mutable buildOnPathGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method buildOnPathGameNotificationEvent = buildOnPathGameNotificationEvent
    method set_buildOnPathGameNotificationEvent value' = buildOnPathGameNotificationEvent <- value'
    val mutable spotTakenGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method spotTakenGameNotificationEvent = spotTakenGameNotificationEvent
    method set_spotTakenGameNotificationEvent value' = spotTakenGameNotificationEvent <- value'
    val mutable selectBuildSpotGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method selectBuildSpotGameNotificationEvent = selectBuildSpotGameNotificationEvent
    method set_selectBuildSpotGameNotificationEvent value' = selectBuildSpotGameNotificationEvent <- value'
    val mutable roadCollisionGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method roadCollisionGameNotificationEvent = roadCollisionGameNotificationEvent
    method set_roadCollisionGameNotificationEvent value' = roadCollisionGameNotificationEvent <- value'
    val mutable noMoneyGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method noMoneyGameNotificationEvent = noMoneyGameNotificationEvent
    method set_noMoneyGameNotificationEvent value' = noMoneyGameNotificationEvent <- value'
    val mutable buildingCollisionGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method buildingCollisionGameNotificationEvent = buildingCollisionGameNotificationEvent
    method set_buildingCollisionGameNotificationEvent value' = buildingCollisionGameNotificationEvent <- value'
    val mutable structureToCloseCollisionGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method structureToCloseCollisionGameNotificationEvent = structureToCloseCollisionGameNotificationEvent
    method set_structureToCloseCollisionGameNotificationEvent value' = structureToCloseCollisionGameNotificationEvent <- value'
    val mutable buildingGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method buildingGameNotificationEvent = buildingGameNotificationEvent
    method set_buildingGameNotificationEvent value' = buildingGameNotificationEvent <- value'
    val mutable mapEdgeGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method mapEdgeGameNotificationEvent = mapEdgeGameNotificationEvent
    method set_mapEdgeGameNotificationEvent value' = mapEdgeGameNotificationEvent <- value'
    val mutable dropCellPositionHistory : DropCellPositionHistory.dropCellPositionHistory = (Obj.magic 0)
    method dropCellPositionHistory = dropCellPositionHistory
    method set_dropCellPositionHistory value' = dropCellPositionHistory <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (buildOnPathGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (spotTakenGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (selectBuildSpotGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (roadCollisionGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (noMoneyGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (buildingCollisionGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (structureToCloseCollisionGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (buildingGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (mapEdgeGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method processGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (_associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, (itemIndex : int)) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let item = Obj.repr item in
        begin
        ignore (super#process ((Obj.magic layerManager)));
        (self#buildFromMotionInput ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic item), itemIndex))
        end [@@warning "-7-20"]
    

    method isPositionBlocked () : bool =
        begin
        (dropCellPositionHistory#isCellPositionWithDrop ((self#getSelectedGeographicCellPosition ())))
        end [@@warning "-7"]
    

    method isDemoLocked : 'any1. 'any1 -> bool = fun (item) ->
        let item = Obj.repr item in
        try
        begin
        let factoryItem : LayerInterfaceFactoryImageItem.layerInterfaceFactoryImageItem ref = ref (((Obj.magic (Obj.magic item)) :> LayerInterfaceFactoryImageItem.layerInterfaceFactoryImageItem)) in ();
        let layerInterfaceFactoryInterface : DemoLockedWithCostLayerInterfaceFactoryInterface.demoLockedWithCostLayerInterfaceFactoryInterface ref = ref (((Obj.magic (!factoryItem#getLayerInterfaceFactoryInterface ())) :> DemoLockedWithCostLayerInterfaceFactoryInterface.demoLockedWithCostLayerInterfaceFactoryInterface)) in ();
        if (((Obj.magic (java_call_static "LockedUtil.getInstance" (Obj.repr ())))#isLocked ()) && (!layerInterfaceFactoryInterface#isDemoLocked ())) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method buildFromMotionInput : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> unit = fun (rtsPlayerLayerInterface, layerManager, item, (itemIndex : int)) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let item = Obj.repr item in
        try
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((self#logUtil)#putF (!commonStrings#sTART, self, "buildFromMotionInput"));
        if ((Obj.magic layerManager) == (Obj.magic 0)) then begin
            raise (Failure ("RuntimeException"))
        end;
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic layerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        if (self#isDemoLocked ((Obj.magic item))) then begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            ignore ((LockedFeatureNotificationUtil.getInstance ())#fireWithColor ((!geographicMapInterface#getForegroundBasicColor ())));
            raise (Java_return (Obj.repr (())))
        end;
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getSelectedGeographicCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !geographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            if (not (self#isPositionBlocked ())) then begin
                let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref (((!geographicMapInterface#getCellTypeAt (!geographicMapCellPosition)) :> GeographicMapCellType.geographicMapCellType)) in ();
                let raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ref = ref (((Obj.magic (!geographicMapInterface#getGeographicMapCellTypeFactory ())) :> RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory)) in ();
                if (not (!raceTrackGeographicMapCellTypeFactory#isPath (!geographicMapCellType))) then begin
                    if ((Obj.repr (self#newUnconstructedRTSLayerInterfaceArray).(itemIndex)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
                        (self#newUnconstructedRTSLayerInterfaceArray).(itemIndex) <- (Obj.magic ((self#getInstance ((Obj.magic layerManager), (Obj.magic item), !geographicMapCellPosition))))
                    end else begin
                        let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (self#newUnconstructedRTSLayerInterfaceArray).(itemIndex)) :> RTSLayer.rTSLayer)) in ();
                        let cellPoint : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
                        ignore (!rtsLayer#setPosition ((!cellPoint#getX ()), (!cellPoint#getY ()), (!cellPoint#getZ ())));
                        ignore (!rtsLayer#geographicMapCellPositionAreaBase#update (!geographicMapInterface))
                    end;
                    let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (self#newUnconstructedRTSLayerInterfaceArray).(itemIndex)) :> RTSLayer.rTSLayer)) in ();
                    ignore (self#attemptBuild ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), !rtsLayer, itemIndex))
                end else begin
                    ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
                    if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                        ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (buildOnPathGameNotificationEvent))
                    end
                end
            end else begin
                ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
                if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                    ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (spotTakenGameNotificationEvent))
                end
            end
        end else begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (selectBuildSpotGameNotificationEvent))
            end
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method attemptBuild : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> bool = fun (rtsPlayerLayerInterface, layerManager, layerInterface, (itemIndex : int)) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Layer: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic layerInterface))))))), self, "attemptBuild"));
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref (((Obj.magic layerInterface)#geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let occupyList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        if (not (self#isBuildAttemptValid ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerInterface)))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref (((Obj.magic 0) :> GeographicMapCellType.geographicMapCellType)) in ();
        for index = ((!occupyList#size ()) - 1) downto 0 do
            let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic layerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
            let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
            geographicMapCellType := (!geographicMapInterface#getCellTypeAt ((Obj.magic (!occupyList#get (index)))));
            let raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ref = ref (((Obj.magic (!geographicMapInterface#getGeographicMapCellTypeFactory ())) :> RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory)) in ();
            if (!raceTrackGeographicMapCellTypeFactory#isPath (!geographicMapCellType)) then begin
                ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
                if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                    ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (roadCollisionGameNotificationEvent))
                end;
                raise (Java_return (Obj.repr (false)))
            end
        done;
        let cost : int ref = ref (((Obj.magic layerInterface)#getCost ())) in ();
        let capital : Capital.capital ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCapital ()) :> Capital.capital)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Trying to Build: "));
        ignore (!stringBuffer#append (((Obj.magic layerInterface)#getName ())));
        ignore (!stringBuffer#append (" for: $"));
        ignore (!stringBuffer#appendint (!cost));
        ignore (!stringBuffer#append (" with "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((!capital#getTotalMoney ()))))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "attemptBuild"));
        if (!cost <= (!capital#getTotalMoney ())) then begin
            ignore ((Obj.magic layerInterface)#construct ((Obj.magic rtsPlayerLayerInterface)));
            (self#newUnconstructedRTSLayerInterfaceArray).(itemIndex) <- (Obj.magic ((CollidableDestroyableDamageableLayer.getNullInstance ())));
            ignore (!capital#removeMoney (!cost));
            (self#add ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic layerInterface)));
            raise (Java_return (Obj.repr (true)))
        end else begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (noMoneyGameNotificationEvent))
            end;
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isBuildAttemptValid : 'any1 'any2. 'any1 * 'any2 -> bool = fun (rtsPlayerLayerInterface, layerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref (((Obj.magic layerInterface)#geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let occupyList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        if (dropCellPositionHistory#anyCellPositionWithDrop (!occupyList)) then begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (buildingCollisionGameNotificationEvent))
            end;
            raise (Java_return (Obj.repr (false)))
        end;
        if (isUnitProducer && (dropCellPositionHistory#anyCellPositionWithDrop ((!geographicMapCellPositionArea#getSurroundingGeographicMapCellPositionList ())))) then begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (structureToCloseCollisionGameNotificationEvent))
            end;
            raise (Java_return (Obj.repr (false)))
        end else begin
            if (self#isSurroundingCellsOffMap ((Obj.magic layerInterface))) then begin
                ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
                if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                    ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (mapEdgeGameNotificationEvent))
                end;
                raise (Java_return (Obj.repr (false)))
            end
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method add : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (rtsPlayerLayerInterface, layerManager, layerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let layerInterface = Obj.repr layerInterface in
        begin
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref (((Obj.magic layerInterface)#geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let occupyList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (dropCellPositionHistory#addAll (!occupyList, (Obj.magic layerInterface)));
        let rtsPlayerGameInput : RTSPlayerGameInput.rTSPlayerGameInput ref = ref (((Obj.magic ((Obj.magic rtsPlayerLayerInterface)#getPlayerGameInput ())) :> RTSPlayerGameInput.rTSPlayerGameInput)) in ();
        ignore (!rtsPlayerGameInput#setSelectedRTSLayer ((Obj.magic layerInterface), (self#getSelectedGeographicCellPosition ())));
        ignore ((Obj.magic layerManager)#append ((Obj.magic layerInterface)));
        ignore ((Obj.magic rtsPlayerLayerInterface)#add ((BuildingSound.getInstance ())));
        if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
            ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (buildingGameNotificationEvent))
        end
        end [@@warning "-7-20"]
    

    method isSurroundingCellsOffMap : 'any1. 'any1 -> bool = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref (((Obj.magic layerInterface)#geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let occupyList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        let surroundList : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getSurroundingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        let occupySize : int ref = ref ((!occupyList#size ())) in ();
        let surroundSize : int ref = ref ((!surroundList#size ())) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("occupySize: "));
        ignore (!stringBuffer#appendint (!occupySize));
        ignore (!stringBuffer#append (" surroundSize: "));
        ignore (!stringBuffer#appendint (!surroundSize));
        ignore (!stringBuffer#append (" surroundList: "));
        ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (!surroundList))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "isSurroundingCellsOffMap"));
        let isSurroundOffMap : bool ref = ref (false) in ();
        if ((!occupySize = 1) && (!surroundSize <> 8)) then begin
            isSurroundOffMap := true
        end else if ((!occupySize = 4) && (!surroundSize <> 12)) then begin
            isSurroundOffMap := true
        end;
        if ((!occupySize = 0) || !isSurroundOffMap) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        dropCellPositionHistory <- ((DropCellPositionHistory.getInstance ()) :> DropCellPositionHistory.dropCellPositionHistory);
        ();
        (* super(...) is the inherit clause *) ();
        isUnitProducer <- isUnitProducer_arg;
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        buildOnPathGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#bUILD_ON_PATH, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        spotTakenGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#sPOT_TAKEN, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        selectBuildSpotGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#sELECT_BUILD_SPOT, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        roadCollisionGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#rOAD_COLLISION, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        noMoneyGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nO_MONEY, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        buildingCollisionGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#bUILDING_COLLISION, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        structureToCloseCollisionGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#sTRUCTURE_TO_CLOSE, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        buildingGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#bUILDING, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE));
        mapEdgeGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#mAP_EDGE, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#pINK, (BooleanFactory.getInstance ())#fALSE))
      end
  end
let () = java_register_constructor "BuildingRTSFormInput" (fun arguments -> Obj.repr (new buildingRTSFormInput (Obj.obj arguments)))


