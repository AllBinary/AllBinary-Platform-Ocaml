(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
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
(* import org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers *)
(* import org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.building.event.BuildingEventHandler *)
(* import org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler *)
(* import org.allbinary.game.layer.waypoint.WaypointCellPositionHistory *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.NullPathFindingLayer *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.media.graphics.geography.map.drop.DropCellPositionHistory *)

class buildingAdvancedRTSFormInput (groupInterface, (isUnitProducer : bool)) =
  object (self)
    inherit BuildingRTSFormInput.buildingRTSFormInput (groupInterface, isUnitProducer) as super
    val mutable atLeastOneHouseGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method atLeastOneHouseGameNotificationEvent = atLeastOneHouseGameNotificationEvent
    method set_atLeastOneHouseGameNotificationEvent value' = atLeastOneHouseGameNotificationEvent <- value'
    val mutable bUILD_BUILDING_RTS_LAYER_EVENT : RTSLayerEvent.rTSLayerEvent = (Obj.magic 0)
    method bUILD_BUILDING_RTS_LAYER_EVENT = bUILD_BUILDING_RTS_LAYER_EVENT
    method set_bUILD_BUILDING_RTS_LAYER_EVENT value' = bUILD_BUILDING_RTS_LAYER_EVENT <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (atLeastOneHouseGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method isPositionBlocked () : bool =
        try
        begin
        if (((DropCellPositionHistory.getInstance ())#isCellPositionWithDrop ((self#getSelectedGeographicCellPosition ()))) || ((WaypointCellPositionHistory.getInstance ())#isCellPositionWithDrop ((self#getSelectedGeographicCellPosition ())))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isBuildAttemptValid : 'any1 'any2. 'any1 * 'any2 -> bool = fun (rtsPlayerLayerInterface, layerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerInterface = Obj.repr layerInterface in
        try
        begin
        let advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface ref = ref (((Obj.magic (Obj.magic rtsPlayerLayerInterface)) :> AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface)) in ();
        let advancedPlayerOwnedRTSLayers : AdvancedPlayerOwnedRTSLayers.advancedPlayerOwnedRTSLayers ref = ref (((!advancedRTSPlayerLayerInterface#getAdvancedPlayerOwnedRTSLayers ()) :> AdvancedPlayerOwnedRTSLayers.advancedPlayerOwnedRTSLayers)) in ();
        let totalHouses : int ref = ref (((!advancedPlayerOwnedRTSLayers#getHouseList ())#size ())) in ();
        if ((!totalHouses < 1) && ((((Obj.magic layerInterface)#getName ())#indexOf (" House")) < 0)) then begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (atLeastOneHouseGameNotificationEvent))
            end;
            raise (Java_return (Obj.repr (false)))
        end;
        (super#isBuildAttemptValid ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerInterface)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method add : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (rtsPlayerLayerInterface, layerManager, layerInterface) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (bUILD_BUILDING_RTS_LAYER_EVENT#setRtsLayer ((Obj.magic layerInterface)));
        ignore ((BuildingEventHandler.getInstance ())#fireEvent (bUILD_BUILDING_RTS_LAYER_EVENT));
        if (((Obj.magic (Obj.magic rtsPlayerLayerInterface)))#isLocalPlayer ()) then begin
            ignore ((LocalPlayerBuildingEventHandler.getInstance ())#fireEvent (bUILD_BUILDING_RTS_LAYER_EVENT))
        end;
        ignore (super#add ((Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic layerInterface)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        bUILD_BUILDING_RTS_LAYER_EVENT <- ((new RTSLayerEvent.rTSLayerEvent ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()))) :> RTSLayerEvent.rTSLayerEvent);
        ();
        (* super(...) is the inherit clause *) ();
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        atLeastOneHouseGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, "Build At Least One House First", ((SmallIntegerSingletonFactory.getInstance ())#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE))
      end
  end
let () = java_register_constructor "BuildingAdvancedRTSFormInput" (fun arguments -> Obj.repr (new buildingAdvancedRTSFormInput (Obj.obj arguments)))


