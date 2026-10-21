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
(* import org.allbinary.game.identification.GroupCommonFactory *)
(* import org.allbinary.game.layer.RTSLayer *)
(* import org.allbinary.game.layer.RTSPlayerLayerInterface *)
(* import org.allbinary.game.layer.item.LayerInterfaceFactoryImageItem *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.direction.DirectionFactory *)
(* import org.allbinary.game.identification.Group *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.LayerInterfaceFactoryInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)
(* import org.allbinary.util.ABHashtable *)

class rTSFormInput (groupInterfaceArray_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable groupCommonFactory : GroupCommonFactory.groupCommonFactory = (Obj.magic 0)
    method groupCommonFactory = groupCommonFactory
    method set_groupCommonFactory value' = groupCommonFactory <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable newUnconstructedRTSLayerInterfaceArray : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer array = (Obj.magic 0)
    method newUnconstructedRTSLayerInterfaceArray = newUnconstructedRTSLayerInterfaceArray
    method set_newUnconstructedRTSLayerInterfaceArray value' = newUnconstructedRTSLayerInterfaceArray <- value'
    val mutable groupInterfaceArray : Obj.t = Obj.repr 0
    method groupInterfaceArray : 'r. 'r = Obj.magic groupInterfaceArray
    method set_groupInterfaceArray : 'v. 'v -> unit = fun value' -> groupInterfaceArray <- Obj.repr value'
    val mutable selectedGeographicCellPosition : GeographicMapCellPosition.geographicMapCellPosition = (Obj.magic 0)
    method selectedGeographicCellPosition = selectedGeographicCellPosition
    method set_selectedGeographicCellPosition value' = selectedGeographicCellPosition <- value'
    val mutable stickyItemSelected : bool = false
    method stickyItemSelected = stickyItemSelected
    method set_stickyItemSelected value' = stickyItemSelected <- value'
    val mutable selectedStickyItemIndex : int = 0
    method selectedStickyItemIndex = selectedStickyItemIndex
    method set_selectedStickyItemIndex value' = selectedStickyItemIndex <- value'
    val mutable selectedStickyItem : Obj.t = Obj.repr 0
    method selectedStickyItem : 'r. 'r = Obj.magic selectedStickyItem
    method set_selectedStickyItem : 'v. 'v -> unit = fun value' -> selectedStickyItem <- Obj.repr value'
    
    

    method setAllBinaryGameLayerManager : 'any1. 'any1 -> unit = fun (_allBinaryGameLayerManager) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processAtPoint : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> unit = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let point = Obj.repr point in
        try
        begin
        let index : int ref = ref ((self#getIndexAt ((Obj.magic rtsPlayerLayerInterface), (Obj.magic point)))) in ();
        if (!index < 0) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCurrentScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        let item : Obj.t ref = ref ((Obj.repr (!scrollSelectionForm#get (!index)))) in ();
        if ((Obj.magic !item) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (())))
        end;
        (self#processGameSpecific ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic !item), !index))
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method process : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        (self#setAllBinaryGameLayerManager ((Obj.magic (Obj.magic layerManager))))
        end [@@warning "-20"]
    

    method processGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (_associatedRtsLayer, _rtsPlayerLayerInterface, _layerManager, _item, (_index : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method processSticky : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> bool = fun (associatedRtsLayer, rtsPlayerLayerInterface, layerManager, point) ->
        let associatedRtsLayer = Obj.repr associatedRtsLayer in
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let layerManager = Obj.repr layerManager in
        let point = Obj.repr point in
        try
        begin
        let index : int ref = ref ((self#getIndexAt ((Obj.magic rtsPlayerLayerInterface), (Obj.magic point)))) in ();
        if (!index < 0) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCurrentScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        let item : Obj.t ref = ref ((Obj.repr (!scrollSelectionForm#get (!index)))) in ();
        if ((Obj.magic !item) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        (self#processStickyGameSpecific ((Obj.magic associatedRtsLayer), (Obj.magic rtsPlayerLayerInterface), (Obj.magic layerManager), (Obj.magic !item), !index));
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method processStickyGameSpecific : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 * int -> unit = fun (_associatedRtsLayer, _rtsPlayerLayerInterface, _layerManager, _item, (_index : int)) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getItemAt : 'any1 'any2 'return. 'any1 * 'any2 -> 'return = fun (rtsPlayerLayerInterface, point) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let point = Obj.repr point in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Point: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic point))))))), self, "getItemAt"));
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCurrentScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        (Obj.magic ((!scrollSelectionForm#getSelectedItem ((Obj.magic point)))))
        end [@@warning "-20"]
    

    method getIndexAt : 'any1 'any2. 'any1 * 'any2 -> int = fun (rtsPlayerLayerInterface, point) ->
        let rtsPlayerLayerInterface = Obj.repr rtsPlayerLayerInterface in
        let point = Obj.repr point in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Point: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic point))))))), self, "getItemAt"));
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref ((((Obj.magic rtsPlayerLayerInterface)#getCurrentScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        (!scrollSelectionForm#getSelectedIndexForPoint ((Obj.magic point)))
        end [@@warning "-20"]
    

    method getInstance : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer = fun (layerManager, aItem, geographicMapCellPosition) ->
        let layerManager = Obj.repr layerManager in
        let aItem = Obj.repr aItem in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let item : LayerInterfaceFactoryImageItem.layerInterfaceFactoryImageItem ref = ref (((Obj.magic (Obj.magic aItem)) :> LayerInterfaceFactoryImageItem.layerInterfaceFactoryImageItem)) in ();
        let layerInterfaceFactoryInterface : LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface ref = ref (((!item#getLayerInterfaceFactoryInterface ()) :> LayerInterfaceFactoryInterface.layerInterfaceFactoryInterface)) in ();
        let cellPoint : GPoint.gPoint ref = ref ((((Obj.magic geographicMapCellPosition)#getPoint ()) :> GPoint.gPoint)) in ();
        if (!layerInterfaceFactoryInterface != (Obj.magic 0)) then begin
            ignore ((Obj.magic hashtable)#put ((AllBinaryGameLayerManager.get_iD ()), (Obj.magic layerManager)));
            raise (Java_return (Obj.repr ((Obj.magic (!layerInterfaceFactoryInterface#getNextInstance ((self#getHashtable ()), (!cellPoint#getX ()), (!cellPoint#getY ()), (!cellPoint#getZ ())))))))
        end;
        ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getSelectedGeographicCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        (selectedGeographicCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end
    

    method setSelectedGeographicCellPosition : 'any1. 'any1 -> unit = fun (selectedGeographicCellPosition_arg) ->
        let selectedGeographicCellPosition_arg = Obj.repr selectedGeographicCellPosition_arg in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Selected GeographicMapCellPosition: "))#append ((java_string_of (Obj.repr (Obj.magic selectedGeographicCellPosition_arg))))))), self, "setSelectedGeographicCellPosition"));
        selectedGeographicCellPosition <- (Obj.magic selectedGeographicCellPosition_arg)
        end [@@warning "-20"]
    

    method isStickyItemSelected () : bool =
        begin
        stickyItemSelected
        end
    

    method setStickyItemSelected ((stickyItemSelected_arg : bool)) : unit =
        begin
        stickyItemSelected <- stickyItemSelected_arg
        end
    

    method getSelectedStickyItem : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic selectedStickyItem)))
        end
    

    method setSelectedStickyItem : 'any1. 'any1 -> unit = fun (selectedStickyItem_arg) ->
        let selectedStickyItem_arg = Obj.repr selectedStickyItem_arg in
        begin
        selectedStickyItem <- Obj.repr ((Obj.magic selectedStickyItem_arg))
        end [@@warning "-20"]
    

    method getSelectedStickyItemIndex () : int =
        begin
        selectedStickyItemIndex
        end
    

    method setSelectedStickyItemIndex ((selectedStickyItemIndex_arg : int)) : unit =
        begin
        selectedStickyItemIndex <- selectedStickyItemIndex_arg
        end
    

    method getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic hashtable)))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        groupCommonFactory <- ((GroupCommonFactory.getInstance ()) :> GroupCommonFactory.groupCommonFactory);
        hashtable <- (Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()));
        newUnconstructedRTSLayerInterfaceArray <- (Array.make (7) (Obj.magic 0));
        ();
        selectedGeographicCellPosition <- ((SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()) :> GeographicMapCellPosition.geographicMapCellPosition);
        stickyItemSelected <- false;
        selectedStickyItemIndex <- 0;
        selectedStickyItem <- (Obj.repr (Obj.magic (java_call_static "ABCustomItem.getNullInstance" (Obj.repr ()))));
        ();
        let size : int ref = ref ((Array.length newUnconstructedRTSLayerInterfaceArray)) in ();
        for index = 0 to !size - 1 do
            newUnconstructedRTSLayerInterfaceArray.(index) <- ((CollidableDestroyableDamageableLayer.getNullInstance ()) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)
        done;
        groupInterfaceArray <- Obj.repr (groupInterfaceArray_arg);
        ignore ((Obj.magic hashtable)#put ((DirectionFactory.getInstance ())#nAME, (DirectionFactory.getInstance ())#dOWN));
        if (groupInterfaceArray_arg != (Obj.magic 0)) then begin
            ignore ((Obj.magic hashtable)#put (groupCommonFactory#iD, groupInterfaceArray_arg))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "RTSFormInput" (fun arguments -> Obj.repr (new rTSFormInput (Obj.obj arguments)))


