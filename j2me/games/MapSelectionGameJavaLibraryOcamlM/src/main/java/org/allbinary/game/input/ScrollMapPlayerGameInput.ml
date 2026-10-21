(*

  AllBinary Open License Version 1
  Copyright (c) 2011 AllBinary
  
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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.layer.event.ScrollMapEvent *)
(* import org.allbinary.layer.event.ScrollMapEventHandler *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.util.BasicArrayListD *)

class scrollMapPlayerGameInput ((geographicMapInterface_arg : BasicGeographicMap.basicGeographicMap), (list : BasicArrayList.basicArrayList), (playerInputId : int)) =
  object (self)
    inherit PlayerGameInput.playerGameInput (list, (new BasicArrayListD.basicArrayListD ()), playerInputId)
    val mutable inputProcessorArray : GameInputProcessor.gameInputProcessor array = (Obj.magic 0)
    method inputProcessorArray = inputProcessorArray
    method set_inputProcessorArray value' = inputProcessorArray <- value'
    val mutable border : int = 0
    method border = border
    method set_border value' = border <- value'
    val mutable inputList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method inputList = inputList
    method set_inputList value' = inputList <- value'
    val mutable isSingleKeyProcessing : bool = false
    method isSingleKeyProcessing = isSingleKeyProcessing
    method set_isSingleKeyProcessing value' = isSingleKeyProcessing <- value'
    val mutable geographicMapInterface : BasicGeographicMap.basicGeographicMap = (Obj.magic 0)
    method geographicMapInterface = geographicMapInterface
    method set_geographicMapInterface value' = geographicMapInterface <- value'
    val mutable maxBottom : int = 0
    method maxBottom = maxBottom
    method set_maxBottom value' = maxBottom <- value'
    val mutable maxRight : int = 0
    method maxRight = maxRight
    method set_maxRight value' = maxRight <- value'
    val mutable scrollMapEvent : ScrollMapEvent.scrollMapEvent = (Obj.magic 0)
    method scrollMapEvent = scrollMapEvent
    method set_scrollMapEvent value' = scrollMapEvent <- value'
    
    

    method move ((dx : int), (dy : int)) : unit =
        begin
        let terrainTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        ignore (!terrainTiledLayer#moveDXY ((-dx), (-dy)));
        ignore (scrollMapEvent#setDxDy ((-dx), (-dy)));
        ignore ((ScrollMapEventHandler.getInstance ())#fireEvent (scrollMapEvent))
        end [@@warning "-7"]
    

    method init () : unit =
        begin
        maxBottom <- (self#getSpecialHeight ());
        maxRight <- (self#getSpecialWidth ())
        end [@@warning "-7"]
    

    method scrollMiddleX () : unit =
        begin
        let terrainTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        (self#move ((-(!terrainTiledLayer#getXP ())), 0));
        if ((!terrainTiledLayer#getWidth ()) < (!displayInfo#getLastWidth ())) then begin
            let diffX : int ref = ref ((((((!displayInfo#getLastWidth ()) - (!terrainTiledLayer#getWidth ()))) asr 1))) in ();
            (self#move ((-!diffX), 0))
        end else begin
            let diffX : int ref = ref ((((((!terrainTiledLayer#getWidth ()) - (!displayInfo#getLastWidth ()))) asr 1))) in ();
            (self#move (!diffX, 0))
        end
        end [@@warning "-7"]
    

    method scrollY ((anchor : int)) : unit =
        begin
        let terrainTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if (anchor = (Obj.magic (java_call_static "Graphics.get_tOP" (Obj.repr ())))) then begin
            ignore (logUtil#putF ("Top", self, "scrollY"))
        end else if (anchor = (Obj.magic (java_call_static "Graphics.get_bOTTOM" (Obj.repr ())))) then begin
            ignore (logUtil#putF ("Bottom", self, "scrollY"));
            let diffY : int ref = ref ((((!terrainTiledLayer#getHeight ()) - (!displayInfo#getLastHeight ())))) in ();
            (self#move (0, !diffY))
        end else if (anchor = (Obj.magic (java_call_static "Graphics.get_vCENTER" (Obj.repr ())))) then begin
            ignore (logUtil#putF ("Center", self, "scrollY"));
            let diffY : int ref = ref (((((!terrainTiledLayer#getHeight ()) - (!displayInfo#getLastHeight ()))) / 2)) in ();
            (self#move (0, !diffY))
        end else begin
            raise (Failure ("No Such Anchor Supported"))
        end
        end [@@warning "-7"]
    

    method up () : unit =
        begin
        let y : int ref = ref ((((geographicMapInterface#getAllBinaryTiledLayer ())#getYP ()) - 10)) in ();
        if (self#keepOnMapMinY (!y)) then begin
            (self#move (0, (-10)))
        end
        end [@@warning "-7"]
    

    method down () : unit =
        begin
        let y : int ref = ref (((-((geographicMapInterface#getAllBinaryTiledLayer ())#getYP ())) + 10)) in ();
        if (self#keepOnMapMaxY (!y)) then begin
            (self#move (0, 10))
        end
        end [@@warning "-7"]
    

    method right () : unit =
        begin
        let x : int ref = ref ((((geographicMapInterface#getAllBinaryTiledLayer ())#getYP ()) + 10)) in ();
        if (self#keepOnMapMinX (!x)) then begin
            (self#move (10, 0))
        end
        end [@@warning "-7"]
    

    method left () : unit =
        begin
        let x : int ref = ref (((-((geographicMapInterface#getAllBinaryTiledLayer ())#getYP ())) - 10)) in ();
        if (self#keepOnMapMaxX (!x)) then begin
            (self#move ((-10), 0))
        end
        end [@@warning "-7"]
    

    method initInputProcessors () : unit =
        begin
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ())))) <- ((Obj.obj (java_new "ScrollMapUpGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ())))) <- ((Obj.obj (java_new "ScrollMapDownGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM9" (Obj.repr ())))) <- ((Obj.obj (java_new "ScrollMapRightGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        inputProcessorArray.((Obj.magic (java_call_static "Canvas.get_kEY_NUM7" (Obj.repr ())))) <- ((Obj.obj (java_new "ScrollMapLeftGameInputProcessor" (Obj.repr (self)))) :> GameInputProcessor.gameInputProcessor);
        ignore (GameInputProcessorUtil.init (inputProcessorArray))
        end [@@warning "-7"]
    

    method processInputKey ((key : int)) : unit =
        begin
        ignore (inputProcessorArray.(key)#processEvent ((AllBinaryGameLayerManager.getNullInstance ()), (GameKeyEvent.get_nONE ())))
        end [@@warning "-7"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        (try
            let size : int ref = ref ((inputList#size ())) in ();
            let key : int ref = ref (0) in ();
            for index = 0 to !size - 1 do
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic (inputList#get (index))) :> GameKeyEvent.gameKeyEvent)) in ();
                key := (!gameKeyEvent#getKey ());
                (self#processInputKey (!key))
            done;
            if isSingleKeyProcessing then begin
                ignore (self#clear ())
            end else begin
                ignore (self#update ())
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, gameInputStrings#pROCESS_INPUT, e))
        end)
        end [@@warning "-7-20"]
    

    method getSpecialHeight () : int =
        try
        begin
        let terrainTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if ((!terrainTiledLayer#getHeight ()) > (!displayInfo#getLastHeight ())) then begin
            raise (Java_return (Obj.repr (((!terrainTiledLayer#getHeight ()) - (!displayInfo#getLastHeight ())))))
        end else begin
            raise (Java_return (Obj.repr ((((!displayInfo#getLastHeight ()) - (!terrainTiledLayer#getHeight ())) + (!terrainTiledLayer#getCellHeight ())))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getSpecialWidth () : int =
        try
        begin
        let terrainTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        if ((!terrainTiledLayer#getWidth ()) > (!displayInfo#getLastWidth ())) then begin
            raise (Java_return (Obj.repr (((!terrainTiledLayer#getWidth ()) - (!displayInfo#getLastWidth ())))))
        end else begin
            raise (Java_return (Obj.repr ((((!displayInfo#getLastWidth ()) - (!terrainTiledLayer#getWidth ())) + (!terrainTiledLayer#getCellWidth ())))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method keepOnMapMaxY ((_newY : int)) : bool =
        try
        begin
        let y : int ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ())#getYP ())) in ();
        if (!y > (maxBottom + border)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method keepOnMapMinY ((_newY : int)) : bool =
        try
        begin
        let y : int ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ())#getYP ())) in ();
        if (!y < (-border)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method keepOnMapMaxX ((_newX : int)) : bool =
        try
        begin
        let x : int ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ())#getXP ())) in ();
        if (!x < ((-maxRight) - border)) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method keepOnMapMinX ((_newX : int)) : bool =
        try
        begin
        let x : int ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ())#getXP ())) in ();
        if (!x > border) then begin
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        inputProcessorArray <- (Array.make ((InputFactory.getInstance ())#mAX) (Obj.magic 0));
        border <- 150;
        ();
        isSingleKeyProcessing <- (((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_REPEAT_PRESS)) || ((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_PRESS)));
        ();
        maxBottom <- 0;
        maxRight <- 0;
        scrollMapEvent <- ((new ScrollMapEvent.scrollMapEvent (self)) :> ScrollMapEvent.scrollMapEvent);
        ();
        (* super(...) is the inherit clause *) ();
        (self#initInputProcessors ());
        geographicMapInterface <- geographicMapInterface_arg;
        inputList <- list;
        (self#init ())
      end
  end
let () = java_register_constructor "ScrollMapPlayerGameInput" (fun arguments -> Obj.repr (new scrollMapPlayerGameInput (Obj.obj arguments)))


