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
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.game.layer.AdvancedPlayerOwnedRTSLayers *)
(* import org.allbinary.game.layer.AdvancedRTSGameLayer *)
(* import org.allbinary.game.layer.AdvancedRTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.game.layer.unit.UnitLayer *)
(* import org.allbinary.game.layer.waypoint.WorkWaypoint *)
(* import org.allbinary.media.audio.BuildingSound *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.GeographicMapCellPositionAreaBase *)
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
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)

let dECAL_ID : int = ((SmallIntegerSingletonFactory.getInstance ())#getAt (23))
let get_dECAL_ID () = dECAL_ID
let () = java_register_static "UnitRTSFormInput.get_dECAL_ID" (fun _ -> Obj.repr (get_dECAL_ID ()))
class unitRTSFormInput (groupInterface) =
  object (self)
    inherit RTSFormInput.rTSFormInput (groupInterface) as super
    val mutable noMoneyGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method noMoneyGameNotificationEvent = noMoneyGameNotificationEvent
    method set_noMoneyGameNotificationEvent value' = noMoneyGameNotificationEvent <- value'
    val mutable newUnitGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method newUnitGameNotificationEvent = newUnitGameNotificationEvent
    method set_newUnitGameNotificationEvent value' = newUnitGameNotificationEvent <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (noMoneyGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())));
        ignore (newUnitGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method processGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, (itemIndex : int)) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let item = Obj.repr item in
        begin
        ignore (super#process ((Obj.magic layerManager)));
        let associatedRtsLayer2 : RTSLayer.rTSLayer ref = ref (((Obj.magic (Obj.magic associatedRtsLayer)) :> RTSLayer.rTSLayer)) in ();
        let geographicMapCellPositionArea : GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ref = ref ((!associatedRtsLayer2#geographicMapCellPositionAreaBase :> GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase)) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionArea#getNextSurroundingGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        ignore ((self#getHashtable ())#put ((Obj.magic (java_call_static "Layer.get_iD" (Obj.repr ()))), (Obj.magic associatedRtsLayer)));
        ignore ((self#getHashtable ())#put (dECAL_ID, (((Obj.magic (Obj.magic rtsPlayerLayerInterface)))#getDecalBasicColor ())));
        if ((Obj.repr newUnconstructedRTSLayerInterfaceArray.(itemIndex)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ()))) then begin
            newUnconstructedRTSLayerInterfaceArray.(itemIndex) <- (Obj.magic ((self#getInstance ((Obj.magic layerManager), (Obj.magic item), !geographicMapCellPosition))))
        end else begin
            let cellPoint : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
            let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic newUnconstructedRTSLayerInterfaceArray.(itemIndex)) :> RTSLayer.rTSLayer)) in ();
            ignore (!rtsLayer#setPosition ((!cellPoint#getX ()), (!cellPoint#getY ()), (!rtsLayer#getZP ())));
            let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic !rtsLayer#allBinaryGameLayerManagerP) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
            let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
            ignore (!rtsLayer#geographicMapCellPositionAreaBase#update (!geographicMapInterface))
        end;
        let cellPoint : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getMidPoint ()) :> GPoint.gPoint)) in ();
        let rtsLayer : RTSLayer.rTSLayer ref = ref (((Obj.magic newUnconstructedRTSLayerInterfaceArray.(itemIndex)) :> RTSLayer.rTSLayer)) in ();
        ignore (!rtsLayer#setPosition (((!cellPoint#getX ()) - (!rtsLayer#getHalfWidth ())), ((!cellPoint#getY ()) - (!rtsLayer#getHalfHeight ())), (!rtsLayer#getZP ())));
        (self#attemptBuild (!associatedRtsLayer2, (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic !rtsLayer), itemIndex))
        end [@@warning "-7-20"]
    

    method attemptBuild : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, layerInterface, (itemIndex : int)) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let layerInterface = Obj.repr layerInterface in
        begin
        let cost : int ref = ref (((Obj.magic layerInterface)#getCost ())) in ();
        let capital : Capital.capital ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCapital ()) :> Capital.capital)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Trying to Build: "));
        ignore (!stringBuffer#append (((Obj.magic layerInterface)#getName ())));
        ignore (!stringBuffer#append (" for: $"));
        ignore (!stringBuffer#appendint (!cost));
        ignore (!stringBuffer#append (" with "));
        ignore (!stringBuffer#appendint ((java_to_int (Obj.repr ((!capital#getTotalMoney ()))))));
        ignore (logUtil#putF ((java_string_of (Obj.repr !stringBuffer)), self, "attemptBuild"));
        if (!cost <= (!capital#getTotalMoney ())) then begin
            ignore ((Obj.magic layerInterface)#construct ((Obj.magic rtsPlayerLayerInterface)));
            newUnconstructedRTSLayerInterfaceArray.(itemIndex) <- (Obj.magic ((CollidableDestroyableDamageableLayer.getNullInstance ())));
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((BuildingSound.getInstance ())));
            ignore (!capital#removeMoney (!cost));
            ignore ((AssignWaypointsUtil.getInstance ())#set ((Obj.magic (Obj.magic layerInterface)), (Obj.magic (Obj.magic associatedRtsLayer))));
            ignore ((Obj.magic layerManager)#appendAt ((Obj.magic layerInterface), (PlayersSingletonFactory.get_total ())));
            let advancedRTSPlayerLayerInterface : AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface ref = ref (((Obj.magic (Obj.magic rtsPlayerLayerInterface)) :> AdvancedRTSPlayerLayerInterface.advancedRTSPlayerLayerInterface)) in ();
            let advancedPlayerOwnedRTSLayers : AdvancedPlayerOwnedRTSLayers.advancedPlayerOwnedRTSLayers ref = ref (((!advancedRTSPlayerLayerInterface#getAdvancedPlayerOwnedRTSLayers ()) :> AdvancedPlayerOwnedRTSLayers.advancedPlayerOwnedRTSLayers)) in ();
            ignore (!advancedPlayerOwnedRTSLayers#addUnit ((Obj.magic layerInterface)));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (newUnitGameNotificationEvent))
            end
        end else begin
            ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
            if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (noMoneyGameNotificationEvent))
            end
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory ref = ref (((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory)) in ();
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        noMoneyGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nO_MONEY, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        newUnitGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nEW_UNIT, (!smallIntegerSingletonFactory#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE));
        ignore ((self#getHashtable ())#put ((WorkWaypoint.get_iD ()), (!smallIntegerSingletonFactory#getAt (50))))
      end
  end
let () = java_register_constructor "UnitRTSFormInput" (fun arguments -> Obj.repr (new unitRTSFormInput (Obj.obj arguments)))


