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
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCompositeInterface *)
(* import org.allbinary.string.CommonLabels *)

class compositeRTSFormInput (groupInterface, (isPrimaryWaypointCreator_arg : bool), (itemIndex_arg : int array)) =
  object (self)
    inherit RTSFormInput.rTSFormInput (groupInterface) as super
    val mutable rtsFormInputArray : RTSFormInput.rTSFormInput array = (Obj.magic 0)
    method rtsFormInputArray = rtsFormInputArray
    method set_rtsFormInputArray value' = rtsFormInputArray <- value'
    val mutable itemIndex : int array = (Obj.magic 0)
    method itemIndex = itemIndex
    method set_itemIndex value' = itemIndex <- value'
    val mutable isPrimaryWaypointCreator : bool = false
    method isPrimaryWaypointCreator = isPrimaryWaypointCreator
    method set_isPrimaryWaypointCreator value' = isPrimaryWaypointCreator <- value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (allBinaryGameLayerManager) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        begin
        ignore (super#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)));
        let geographicMapCompositeInterface : GeographicMapCompositeInterface.geographicMapCompositeInterface ref = ref (((Obj.magic (Obj.magic allBinaryGameLayerManager)) :> GeographicMapCompositeInterface.geographicMapCompositeInterface)) in ();
        let geographicMapInterface : BasicGeographicMap.basicGeographicMap ref = ref (((!geographicMapCompositeInterface#getGeographicMapInterface ()).(0) :> BasicGeographicMap.basicGeographicMap)) in ();
        let size : int ref = ref ((Array.length rtsFormInputArray)) in ();
        for index = 0 to !size - 1 do
            ignore (rtsFormInputArray.(index)#setAllBinaryGameLayerManager ((Obj.magic allBinaryGameLayerManager)))
        done
        end [@@warning "-7-20"]
    

    method processAtPoint : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let point = Obj.repr point in
        begin
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCurrentScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        let index : int ref = ref ((!scrollSelectionForm#getSelectedIndexForPoint ((Obj.magic point)))) in ();
        if ((self#isStickyItemSelected ()) && ((Obj.repr (Obj.magic associatedRtsLayer)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ())))) then begin
            if ((self#getSelectedStickyItemIndex ()) <= itemIndex.(0)) then begin
                ignore (rtsFormInputArray.(0)#processAtPoint ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic point)))
            end
        end else if (!index > itemIndex.(0)) then begin
            ignore (rtsFormInputArray.(1)#processAtPoint ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic point)))
        end
        end [@@warning "-7-20"]
    

    method processGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, (index : int)) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let item = Obj.repr item in
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        ignore ((self#logUtil)#putF (((java_string_of (Obj.repr (((CommonLabels.getInstance ())#iNDEX_LABEL + index))) ^ " > ") ^ java_string_of (Obj.repr (itemIndex.(0)))), self, !commonStrings#pROCESS));
        if ((self#isStickyItemSelected ()) && ((Obj.repr (Obj.magic associatedRtsLayer)) == (Obj.repr (CollidableDestroyableDamageableLayer.getNullInstance ())))) then begin
            if ((self#getSelectedStickyItemIndex ()) <= itemIndex.(0)) then begin
                ignore (rtsFormInputArray.(0)#processGameSpecific ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic item), index))
            end
        end else if (index > itemIndex.(0)) then begin
            ignore (rtsFormInputArray.(1)#processGameSpecific ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic item), index))
        end
        end [@@warning "-7-20"]
    

    method processSticky : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> bool = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let point = Obj.repr point in
        begin
        (rtsFormInputArray.(0)#processSticky ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic point)))
        end [@@warning "-7-20"]
    

    method processStickyGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, item, (index : int)) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let item = Obj.repr item in
        begin
        ignore (rtsFormInputArray.(0)#processStickyGameSpecific ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic item), index))
        end [@@warning "-7-20"]
    

    method getSelectedStickyItemIndex () : int =
        begin
        (rtsFormInputArray.(0)#getSelectedStickyItemIndex ())
        end [@@warning "-7"]
    

    method isStickyItemSelected () : bool =
        begin
        (rtsFormInputArray.(0)#isStickyItemSelected ())
        end [@@warning "-7"]
    

    method setStickyItemSelected ((stickyItemSelected : bool)) : unit =
        begin
        ignore (rtsFormInputArray.(0)#setStickyItemSelected (stickyItemSelected))
        end [@@warning "-7"]
    

    method getSelectedStickyItem : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((rtsFormInputArray.(0)#getSelectedStickyItem ())))
        end [@@warning "-7"]
    

    method setSelectedStickyItem : 'any1. 'any1 -> unit = fun (selectedStickyItem) ->
        let selectedStickyItem = Obj.repr selectedStickyItem in
        begin
        ignore (rtsFormInputArray.(0)#setSelectedStickyItem ((Obj.magic selectedStickyItem)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        itemIndex <- itemIndex_arg;
        isPrimaryWaypointCreator <- isPrimaryWaypointCreator_arg;
        rtsFormInputArray <- (Array.make (2) (Obj.magic 0));
        rtsFormInputArray.(0) <- ((new WaypointRTSFormInput.waypointRTSFormInput ((self#groupInterfaceArray), isPrimaryWaypointCreator_arg)) :> RTSFormInput.rTSFormInput);
        rtsFormInputArray.(1) <- ((new UnitRTSFormInput.unitRTSFormInput ((self#groupInterfaceArray))) :> RTSFormInput.rTSFormInput)
      end
  end
let () = java_register_constructor "CompositeRTSFormInput" (fun arguments -> Obj.repr (new compositeRTSFormInput (Obj.obj arguments)))


