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
(* package org.allbinary.game.layer.geographic.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.animation.vector.CircleFilledAnimation *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.ColorCompositeInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEvent *)
(* import org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventHandler *)
(* import org.allbinary.media.graphics.geography.map.event.GeographicMapCellPositionEventListenerInterface *)
(* import org.allbinary.view.ViewPositionBase *)

class miniMapLayer ((geographicMapInterface : BasicGeographicMap.basicGeographicMap), (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit AllBinaryLayer.allBinaryLayer ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY (0, (viewPosition#getY ()))), ((geographicMapInterface#getAllBinaryTiledLayer ())#getWidth ()), ((geographicMapInterface#getAllBinaryTiledLayer ())#getHeight ()))))), viewPosition)
    val mutable allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer = (Obj.magic 0)
    method allBinaryTiledLayer = allBinaryTiledLayer
    method set_allBinaryTiledLayer value' = allBinaryTiledLayer <- value'
    val mutable geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory = (Obj.magic 0)
    method geographicMapCellPositionFactory = geographicMapCellPositionFactory
    method set_geographicMapCellPositionFactory value' = geographicMapCellPositionFactory <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable basicColorList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method basicColorList = basicColorList
    method set_basicColorList value' = basicColorList <- value'
    val mutable positionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method positionList = positionList
    method set_positionList value' = positionList <- value'
    val mutable animationInterface : CircleFilledAnimation.circleFilledAnimation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    
    

    method init () : unit =
        begin
        ignore (allBinaryTiledLayer#setPosition ((self#x), (self#y), (self#z)))
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onRemoveGeographicMapCellPositionEvent : 'any1. 'any1 -> unit = fun (geographicMapCellPositionEvent) ->
        let geographicMapCellPositionEvent = Obj.repr geographicMapCellPositionEvent in
        begin
        let colorCompositeInterface : ColorCompositeInterface.colorCompositeInterface ref = ref (((Obj.magic ((Obj.magic geographicMapCellPositionEvent)#getSource ())) :> ColorCompositeInterface.colorCompositeInterface)) in ();
        let index : int ref = ref ((list#indexOf (!colorCompositeInterface))) in ();
        if (!index >= 0) then begin
            ignore (list#removeAt (!index));
            ignore (basicColorList#removeAt (!index));
            ignore (positionList#removeAt (!index))
        end
        end [@@warning "-7-20"]
    

    method onGeographicMapCellPositionEvent : 'any1. 'any1 -> unit = fun (geographicMapCellPositionEvent) ->
        let geographicMapCellPositionEvent = Obj.repr geographicMapCellPositionEvent in
        begin
        let colorCompositeInterface : ColorCompositeInterface.colorCompositeInterface ref = ref (((Obj.magic ((Obj.magic geographicMapCellPositionEvent)#getSource ())) :> ColorCompositeInterface.colorCompositeInterface)) in ();
        let layerIndex : int ref = ref ((-1)) in ();
        let size : int ref = ref ((list#size ())) in ();
        let nextColorCompositeInterface : ColorCompositeInterface.colorCompositeInterface ref = ref (((Obj.magic 0) :> ColorCompositeInterface.colorCompositeInterface)) in ();
        for index = 0 to !size - 1 do
            nextColorCompositeInterface := (Obj.magic (list#get (index)));
            if ((Obj.repr !nextColorCompositeInterface) == (Obj.repr !colorCompositeInterface)) then begin
                layerIndex := index;
                raise Java_break
            end
        done;
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((geographicMapCellPositionFactory#getInstance (((Obj.magic geographicMapCellPositionEvent)#getGeographicMapCellPosition ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let point : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
        if (!layerIndex = (-1)) then begin
            ignore (list#add (!colorCompositeInterface));
            let basicColor : BasicColor.basicColor ref = ref (((!colorCompositeInterface#getBasicColorP ()) :> BasicColor.basicColor)) in ();
            ignore (basicColorList#add (!basicColor));
            ignore (positionList#add (!point));
            layerIndex := ((basicColorList#size ()) - 1)
        end else begin
            ignore (positionList#set (!layerIndex, !point))
        end
        end [@@warning "-7-20"]
    

    method paintDots : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let localPositionList : BasicArrayList.basicArrayList ref = ref ((positionList :> BasicArrayList.basicArrayList)) in ();
        let localBasicColorList : BasicArrayList.basicArrayList ref = ref ((basicColorList :> BasicArrayList.basicArrayList)) in ();
        let length : int ref = ref ((!localPositionList#size ())) in ();
        let point : GPoint.gPoint ref = ref (((Obj.magic 0) :> GPoint.gPoint)) in ();
        let basicColor : BasicColor.basicColor ref = ref (((Obj.magic 0) :> BasicColor.basicColor)) in ();
        let index : int ref = ref (!length) in ();
        while ((index := !index - 1; !index) >= 0) do
            point := (Obj.magic (!localPositionList#get (!index)));
            basicColor := (Obj.magic (!localBasicColorList#get (!index)));
            ignore ((Obj.magic graphics)#setColor ((!basicColor#intValue ())));
            ignore (animationInterface#setBasicColorP (!basicColor));
            ignore (animationInterface#paintXY ((Obj.magic graphics), ((!point#getX ()) + (self#x)), ((!point#getY ()) + (self#y))))
        done
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (allBinaryTiledLayer#paint ((Obj.magic graphics)));
        (self#paintDots ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        allBinaryTiledLayer <- (geographicMapInterface#getAllBinaryTiledLayer ());
        geographicMapCellPositionFactory <- (geographicMapInterface#getGeographicMapCellPositionFactory ());
        animationInterface <- (new CircleFilledAnimation.circleFilledAnimation ((allBinaryTiledLayer#getCellWidth ()), (allBinaryTiledLayer#getCellHeight ()), (BasicColorFactory.getInstance ())#wHITE));
        list <- (new BasicArrayListD.basicArrayListD ());
        basicColorList <- (new BasicArrayListD.basicArrayListD ());
        positionList <- (new BasicArrayListD.basicArrayListD ());
        ignore ((GeographicMapCellPositionEventHandler.getInstance ())#addListener (self));
        (self#init ())
      end
  end
let () = java_register_constructor "MiniMapLayer" (fun arguments -> Obj.repr (new miniMapLayer (Obj.obj arguments)))


