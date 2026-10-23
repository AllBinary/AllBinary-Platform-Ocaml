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
(* package org.allbinary.game.input.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.game.input.RTSPlayerGameInput *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.RTSLayerUtil *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.game.layer.waypoint.WaypointCellPositionHistory *)
(* import org.allbinary.game.layer.waypoint.WaypointLayer *)
(* import org.allbinary.game.layer.waypoint.event.WaypointEventHandlerFactory *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.layer.GeographicMapCellPositionAreaBase *)
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.layer.NullRTSLayer *)
(* import org.allbinary.game.layer.PathFindingLayerInterface *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellTypeFactory *)

class waypointRTSFormInput (groupInterface, (isPrimaryWaypointCreator_arg : bool)) =
  object (self)
    inherit RTSFormInput.rTSFormInput (groupInterface) as super
    val mutable wAYPOINT_EVENT : RTSLayerEvent.rTSLayerEvent = (Obj.magic 0)
    method wAYPOINT_EVENT = wAYPOINT_EVENT
    method set_wAYPOINT_EVENT value' = wAYPOINT_EVENT <- value'
    val mutable dragToSpotGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method dragToSpotGameNotificationEvent = dragToSpotGameNotificationEvent
    method set_dragToSpotGameNotificationEvent value' = dragToSpotGameNotificationEvent <- value'
    val mutable spotTakenGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method spotTakenGameNotificationEvent = spotTakenGameNotificationEvent
    method set_spotTakenGameNotificationEvent value' = spotTakenGameNotificationEvent <- value'
    val mutable buildingCollisionGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method buildingCollisionGameNotificationEvent = buildingCollisionGameNotificationEvent
    method set_buildingCollisionGameNotificationEvent value' = buildingCollisionGameNotificationEvent <- value'
    val mutable roadCollisionGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method roadCollisionGameNotificationEvent = roadCollisionGameNotificationEvent
    method set_roadCollisionGameNotificationEvent value' = roadCollisionGameNotificationEvent <- value'
    val mutable newWaypointGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method newWaypointGameNotificationEvent = newWaypointGameNotificationEvent
    method set_newWaypointGameNotificationEvent value' = newWaypointGameNotificationEvent <- value'
    val mutable noMoneyGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method noMoneyGameNotificationEvent = noMoneyGameNotificationEvent
    method set_noMoneyGameNotificationEvent value' = noMoneyGameNotificationEvent <- value'
    val mutable isPrimaryWaypointCreator : bool = false
    method isPrimaryWaypointCreator = isPrimaryWaypointCreator
    method set_isPrimaryWaypointCreator value' = isPrimaryWaypointCreator <- value'
    val mutable stickyAssociatedRtsLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method stickyAssociatedRtsLayer = stickyAssociatedRtsLayer
    method set_stickyAssociatedRtsLayer value' = stickyAssociatedRtsLayer <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (dragToSpotGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (spotTakenGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (buildingCollisionGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (roadCollisionGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (newWaypointGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (noMoneyGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method processAtPoint : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let point = Obj.repr point in
        begin
        ignore (super#process ((Obj.magic layerManager)));
        if ((self#isStickyItemSelected ()) || ((Obj.repr (Obj.magic associatedRtsLayer)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ())))) then begin
            if ((self#isStickyItemSelected ()) && ((Obj.repr (Obj.magic associatedRtsLayer)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ())))) then begin
                let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic layerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
                let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
                let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
                let x : int ref = ref ((((Obj.magic point)#getX ()) + (!allBinaryTiledLayer#getXP ()))) in ();
                let y : int ref = ref ((((Obj.magic point)#getY ()) + (!allBinaryTiledLayer#getYP ()))) in ();
                let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapInterface#getCellPositionAtXY (!x, !y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                (self#processCellPosition ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), !geographicMapCellPosition))
            end else begin
                if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                    ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (dragToSpotGameNotificationEvent))
                end
            end
        end else begin
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (spotTakenGameNotificationEvent))
            end
        end
        end [@@warning "-7-20"]
    

    method processCellPosition : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (rtsPlayerLayerInterface, layerManager, geographicMapCellPosition) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let itemIndex : int ref = ref ((self#getSelectedStickyItemIndex ())) in ();
        if ((Obj.repr (self#newUnconstructedRTSLayerInterfaceArray).(!itemIndex)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            (self#newUnconstructedRTSLayerInterfaceArray).(!itemIndex) <- (Obj.magic ((self#getInstance ((Obj.magic layerManager), (self#getSelectedStickyItem ()), (Obj.magic geographicMapCellPosition)))))
        end else begin
            let cellPoint : GPoint.gPoint ref = ref ((((Obj.magic geographicMapCellPosition)#getPoint ()) :> GPoint.gPoint)) in ();
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic (self#newUnconstructedRTSLayerInterfaceArray).(!itemIndex)) :> RTSLayer.rTSLayer)) in ();
            ignore (!rtsLayer#setPosition ((!cellPoint#getX ()), (!cellPoint#getY ()), (!rtsLayer#getZP ())));
            let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic !rtsLayer#allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
            let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
            ignore (!rtsLayer#geographicMapCellPositionAreaBase#update (!geographicMapInterface))
        end;
        ignore (self#attemptBuild ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic (self#newUnconstructedRTSLayerInterfaceArray).(!itemIndex)), !itemIndex))
        end [@@warning "-7-20"]
    

    method processStickyGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (associatedRtsLayer, _rtsPlayerLayerInterface, _layerManager, item, (index : int)) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let item = Obj.repr item in
        begin
        ignore ((self#logUtil)#putF (("Set Sticking Item: " ^ java_string_of (Obj.repr ((Obj.magic item)))), self, "processSticky"));
        ignore (self#setSelectedStickyItem ((Obj.magic item)));
        ignore (self#setSelectedStickyItemIndex (index));
        ignore (self#setStickyItemSelected (true));
        stickyAssociatedRtsLayer <- (Obj.magic (Obj.magic associatedRtsLayer));
        ignore ((self#getHashtable ())#put ((Obj.magic (java_call_static "Layer.get_iD" (Obj.repr ()))), (Obj.magic associatedRtsLayer)))
        end [@@warning "-7-20"]
    

    method attemptBuild : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int -> bool = fun (rtsPlayerLayerInterface, layerManager, layerInterface, (itemIndex : int)) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        ignore ((self#logUtil)#putF (("Layer: " ^ java_string_of (Obj.repr ((Obj.magic layerInterface)))), self, "attemptBuild"));
        if ((Obj.magic layerInterface) == (Obj.magic 0)) then begin
            ignore ((self#logUtil)#put ("Layer was null", self, "attemptBuild", (Failure ("Exception"))));
            raise (Java_return (Obj.repr (false)))
        end;
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref (((Obj.magic layerInterface)#geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((!geographicMapCellPositionArea#getOccupyingGeographicMapCellPositionList ()) :> BasicArrayList.basicArrayList)) in ();
        if (((DropCellPositionHistory.getInstance ())#anyCellPositionWithDrop (!list)) || ((WaypointCellPositionHistory.getInstance ())#anyCellPositionWithDrop (!list))) then begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (buildingCollisionGameNotificationEvent))
            end;
            raise (Java_return (Obj.repr (false)))
        end;
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic layerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let raceTrackGeographicMapCellTypeFactory : RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory ref = ref (((Obj.magic (!geographicMapInterface#getGeographicMapCellTypeFactory ())) :> RaceTrackGeographicMapCellTypeFactory.raceTrackGeographicMapCellTypeFactory)) in ();
        let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref (((Obj.magic 0) :> GeographicMapCellType.geographicMapCellType)) in ();
        let index : int ref = ref ((!list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            geographicMapCellType := (!geographicMapInterface#getCellTypeAt ((Obj.magic (!list#get (!index)))));
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
            ignore ((WaypointCellPositionHistory.getInstance ())#addList (!list, (Obj.magic layerInterface)));
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapInterface#getCellPositionAtXY (((Obj.magic layerInterface)#getXP ()), ((Obj.magic layerInterface)#getYP ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let waypointLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic layerInterface)))) in ();
            (self#addWayPoint ((Obj.magic !waypointLayer)));
            let rtsPlayerGameInput : RTSPlayerGameInput.rTSPlayerGameInput ref = ref (((Obj.magic ((Obj.magic rtsPlayerLayerInterface)#getPlayerGameInput ())) :> RTSPlayerGameInput.rTSPlayerGameInput)) in ();
            ignore (!rtsPlayerGameInput#setSelectedRTSLayer ((Obj.magic layerInterface), !geographicMapCellPosition));
            let advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface ref = ref (((Obj.magic (Obj.magic rtsPlayerLayerInterface)) :> AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface)) in ();
            ignore ((!advancedRTSPlayerLayerInterface#getAdvancedPlayerOwnedRTSLayers ())#addWaypoint ((Obj.magic layerInterface)));
            ignore ((Obj.magic layerManager)#append ((Obj.magic layerInterface)));
            let waypointAvancedRTSGameLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !waypointLayer)))) in ();
            ignore ((Obj.magic rtsPlayerLayerInterface)#add (((((Obj.magic !waypointAvancedRTSGameLayer)#getWaypointBehavior ())#getWaypoint ())#getSound ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (newWaypointGameNotificationEvent))
            end;
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
    

    method addWayPoint : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let stickyAssociatedAdvandedRtsLayer : Obj.t ref = ref ((Obj.repr (Obj.magic stickyAssociatedRtsLayer))) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((((Obj.magic !stickyAssociatedAdvandedRtsLayer)#getWaypointBehavior ())#getOwnedWaypointList ()) :> BasicArrayList.basicArrayList)) in ();
        ignore ((RTSLayerUtil.getInstance ())#destroyAndClear (!list));
        ignore (!list#add ((Obj.magic layerInterface)));
        if isPrimaryWaypointCreator then begin
            ignore ((Obj.magic (java_call_static "PrimaryWaypointHelper.getInstance" (Obj.repr ())))#setWaypointLayer ((Obj.magic layerInterface)))
        end;
        ignore (wAYPOINT_EVENT#setRtsLayer ((Obj.magic layerInterface)));
        ignore ((WaypointEventHandlerFactory.getInstance (((Obj.magic layerInterface)#getGroupInterface ()).(0)))#fireEvent (wAYPOINT_EVENT))
        end [@@warning "-7-20"]

    initializer
      begin
        wAYPOINT_EVENT <- ((new RTSLayerEvent.rTSLayerEvent ((NullRTSLayer.get_nULL_RTS_LAYER ()))) :> RTSLayerEvent.rTSLayerEvent);
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        stickyAssociatedRtsLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        ();
        (* super(...) is the inherit clause *) ();
        isPrimaryWaypointCreator <- isPrimaryWaypointCreator_arg;
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        dragToSpotGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#dRAG_TO_SPOT, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        spotTakenGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#sPOT_TAKEN, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        buildingCollisionGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#bUILDING_COLLISION, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        roadCollisionGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#rOAD_COLLISION, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        newWaypointGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nEW_WAYPOINT, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        noMoneyGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nO_MONEY, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE))
      end
  end
let () = java_register_constructor "WaypointRTSFormInput" (fun arguments -> Obj.repr (new waypointRTSFormInput (Obj.obj arguments)))


