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
(* import org.allbinary.game.layer.RTSGameStrings *)
(* import org.allbinary.game.layer.RTSInterface *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.TechnologyRTSInterfaceImageItem *)
(* import org.allbinary.game.layer.capital.Capital *)
(* import org.allbinary.game.rts.technology.event.TechEventHandler *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.media.audio.BuildingSound *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)

class techRTSFormInput (groupInterface) =
  object (self)
    inherit RTSFormInput.rTSFormInput (groupInterface) as super
    val mutable eVENT : AllBinaryEventObject.allBinaryEventObject = (Obj.magic 0)
    method eVENT = eVENT
    method set_eVENT value' = eVENT <- value'
    val mutable noMoneyGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method noMoneyGameNotificationEvent = noMoneyGameNotificationEvent
    method set_noMoneyGameNotificationEvent value' = noMoneyGameNotificationEvent <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        ignore (noMoneyGameNotificationEvent#setBasicColorP ((!geographicMapInterface#getForegroundBasicColor ())))
        end [@@warning "-7-20"]
    

    method processGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (_associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, (_itemIndex : int)) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let item = Obj.repr item in
        begin
        ignore (super#process ((Obj.magic layerManager)));
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let technologyRTSInterfaceImageItem : TechnologyRTSInterfaceImageItem.technologyRTSInterfaceImageItem ref = ref (((Obj.magic (Obj.magic item)) :> TechnologyRTSInterfaceImageItem.technologyRTSInterfaceImageItem)) in ();
        let rtsInterface : RTSInterface.rTSInterface ref = ref (((!technologyRTSInterfaceImageItem#getRtsInterface ()) :> RTSInterface.rTSInterface)) in ();
        ignore (logUtil#putF ((java_string_of (Obj.repr ((!stringMaker#append ("isUpgradeable: "))#appendboolean ((!rtsInterface#isUpgradeable ()))))), self, !commonStrings#pROCESS));
        if (!rtsInterface#isUpgradeable ()) then begin
            let cost : int ref = ref ((!rtsInterface#getUpgradeCost ())) in ();
            let capital : Capital.capital ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCapital ()) :> Capital.capital)) in ();
            ignore (!stringMaker#delete (0, (!stringMaker#length ())));
            ignore (logUtil#putF ((java_string_of (Obj.repr (((!stringMaker#appendint (!cost))#append ("<="))#appendint ((java_to_int (Obj.repr ((!capital#getTotalMoney ())))))))), self, !commonStrings#pROCESS));
            if (!cost <= (!capital#getTotalMoney ())) then begin
                ignore ((Obj.magic rtsPlayerLayerInterface)#add ((BuildingSound.getInstance ())));
                ignore (!capital#removeMoney (!cost));
                ignore (!rtsInterface#upgrade ());
                ignore (!technologyRTSInterfaceImageItem#update ());
                ignore ((TechEventHandler.getInstance ())#fireEvent (eVENT))
            end else begin
                ignore ((Obj.magic rtsPlayerLayerInterface)#add ((ErrorSound.getInstance ())));
                if (not ((Obj.magic rtsPlayerLayerInterface)#implmentsArtificialIntelligenceCompositeInterface ())) then begin
                    ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (noMoneyGameNotificationEvent))
                end
            end
        end
        end [@@warning "-7-20"]

    initializer
      begin
        eVENT <- ((new AllBinaryEventObject.allBinaryEventObject (self)) :> AllBinaryEventObject.allBinaryEventObject);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let basicColorFactory : BasicColorFactory.basicColorFactory ref = ref (((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory)) in ();
        noMoneyGameNotificationEvent <- (new GameNotificationEvent.gameNotificationEvent (self, (RTSGameStrings.getInstance ())#nO_MONEY, ((SmallIntegerSingletonFactory.getInstance ())#getAt (2)), !basicColorFactory#wHITE, (BooleanFactory.getInstance ())#fALSE))
      end
  end
let () = java_register_constructor "TechRTSFormInput" (fun arguments -> Obj.repr (new techRTSFormInput (Obj.obj arguments)))


