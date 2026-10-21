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
(* import javax.microedition.lcdui.game.SimpleTiledLayer *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.game.layer.building.event.BuildingEventListenerInterface *)
(* import org.allbinary.game.layer.building.event.LocalPlayerBuildingEventHandler *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.layer.event.ScrollMapEvent *)
(* import org.allbinary.layer.event.ScrollMapEventHandler *)
(* import org.allbinary.layer.event.ScrollMapEventListenerInterface *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class visibleCellPositionsSingleton () =
  object (self)
    val mutable stationaryVisibleCellPositions : int array array = (Obj.magic 0)
    method stationaryVisibleCellPositions = stationaryVisibleCellPositions
    method set_stationaryVisibleCellPositions value' = stationaryVisibleCellPositions <- value'
    val mutable visibleCellPositions : int array array = (Obj.magic 0)
    method visibleCellPositions = visibleCellPositions
    method set_visibleCellPositions value' = visibleCellPositions <- value'
    val mutable currentlyVisibleCellPositions : int array array = (Obj.magic 0)
    method currentlyVisibleCellPositions = currentlyVisibleCellPositions
    method set_currentlyVisibleCellPositions value' = currentlyVisibleCellPositions <- value'
    val mutable aLL_VISIBLE_TILEDLAYER : Obj.t = Obj.repr 0
    method aLL_VISIBLE_TILEDLAYER : 'r. 'r = Obj.magic aLL_VISIBLE_TILEDLAYER
    method set_aLL_VISIBLE_TILEDLAYER : 'v. 'v -> unit = fun value' -> aLL_VISIBLE_TILEDLAYER <- Obj.repr value'
    val mutable simpleTiledLayer : Obj.t = Obj.repr 0
    method simpleTiledLayer : 'r. 'r = Obj.magic simpleTiledLayer
    method set_simpleTiledLayer : 'v. 'v -> unit = fun value' -> simpleTiledLayer <- Obj.repr value'
    val mutable paintSimpleTiledLayer : Obj.t = Obj.repr 0
    method paintSimpleTiledLayer : 'r. 'r = Obj.magic paintSimpleTiledLayer
    method set_paintSimpleTiledLayer : 'v. 'v -> unit = fun value' -> paintSimpleTiledLayer <- Obj.repr value'
    val mutable currentIndex : int = 0
    method currentIndex = currentIndex
    method set_currentIndex value' = currentIndex <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (simpleTiledLayer_arg) ->
        let simpleTiledLayer_arg = Obj.repr simpleTiledLayer_arg in
        begin
        paintSimpleTiledLayer <- Obj.repr ((Obj.magic aLL_VISIBLE_TILEDLAYER));
        currentIndex <- 0;
        let rows : int ref = ref (((Obj.magic simpleTiledLayer_arg)#getRows ())) in ();
        let columns : int ref = ref (((Obj.magic simpleTiledLayer_arg)#getColumns ())) in ();
        stationaryVisibleCellPositions <- (Array.make_matrix (!rows) (!columns) 0);
        visibleCellPositions <- (Array.make_matrix (!rows) (!columns) 0);
        currentlyVisibleCellPositions <- (Array.make_matrix (!rows) (!columns) 0);
        (self#setSimpleTiledLayer ((Obj.magic simpleTiledLayer_arg)))
        end [@@warning "-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onBuildingEvent : 'any1. 'any1 -> unit = fun (_event) ->
        begin
        paintSimpleTiledLayer <- Obj.repr ((Obj.magic simpleTiledLayer))
        end [@@warning "-20"]
    

    method onMoveEvent : 'any1. 'any1 -> unit = fun (scrollMapEvent) ->
        let scrollMapEvent = Obj.repr scrollMapEvent in
        begin
        (self#move (((Obj.magic scrollMapEvent)#getDx ()), ((Obj.magic scrollMapEvent)#getDy ())))
        end [@@warning "-20"]
    

    method addStationaryCellPositions : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            let cellPosition : CellPosition.cellPosition ref = ref (((Obj.magic ((Obj.magic list)#get (index))) :> CellPosition.cellPosition)) in ();
            stationaryVisibleCellPositions.((!cellPosition#getRow ())).((!cellPosition#set_getColumn ())) (stationaryVisibleCellPositions.((!cellPosition#getRow ())).((!cellPosition#getColumn ())) + 1)
        done
        end [@@warning "-20"]
    

    method removeStationaryCellPositions : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            let cellPosition : CellPosition.cellPosition ref = ref (((Obj.magic ((Obj.magic list)#get (index))) :> CellPosition.cellPosition)) in ();
            stationaryVisibleCellPositions.((!cellPosition#getRow ())).((!cellPosition#set_getColumn ())) (stationaryVisibleCellPositions.((!cellPosition#getRow ())).((!cellPosition#getColumn ())) - 1)
        done
        end [@@warning "-20"]
    

    method update () : unit =
        begin
        if (currentIndex = 0) then begin
            let temp : int array array ref = ref (currentlyVisibleCellPositions) in ();
            currentlyVisibleCellPositions <- visibleCellPositions;
            visibleCellPositions <- !temp;
            for index = ((Array.length visibleCellPositions) - 1) downto 0 do
                for index2 = ((Array.length visibleCellPositions.(0)) - 1) downto 0 do
                    visibleCellPositions.(index).(index2) <- stationaryVisibleCellPositions.(index).(index2)
                done
            done
        end;
        currentIndex <- currentIndex + 1;
        if (currentIndex > 10) then begin
            currentIndex <- 0
        end
        end
    

    method shouldProcess () : bool =
        try
        begin
        if (currentIndex = 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value
    

    method addCellPositions : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            let cellPosition : CellPosition.cellPosition ref = ref (((Obj.magic ((Obj.magic list)#get (index))) :> CellPosition.cellPosition)) in ();
            visibleCellPositions.((!cellPosition#getRow ())).((!cellPosition#set_getColumn ())) (visibleCellPositions.((!cellPosition#getRow ())).((!cellPosition#getColumn ())) + 1)
        done
        end [@@warning "-20"]
    

    method isVisible : 'any1. 'any1 -> bool = fun (cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        try
        begin
        if (visibleCellPositions.(((Obj.magic cellPosition)#getRow ())).(((Obj.magic cellPosition)#getColumn ())) > 0) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method move ((dx : int), (dy : int)) : unit =
        begin
        ignore ((self#getSimpleTiledLayer ())#moveDXY (dx, dy))
        end
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic paintSimpleTiledLayer)#paint ((Obj.magic graphics), currentlyVisibleCellPositions))
        end [@@warning "-20"]
    

    method setSimpleTiledLayer : 'any1. 'any1 -> unit = fun (simpleTiledLayer_arg) ->
        let simpleTiledLayer_arg = Obj.repr simpleTiledLayer_arg in
        begin
        simpleTiledLayer <- Obj.repr ((Obj.magic simpleTiledLayer_arg))
        end [@@warning "-20"]
    

    method getSimpleTiledLayer : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic simpleTiledLayer)))
        end

    initializer
      begin
        stationaryVisibleCellPositions <- (NullUtil.getInstance ())#nULL_SHORT_ARRAY_ARRAY;
        visibleCellPositions <- (NullUtil.getInstance ())#nULL_SHORT_ARRAY_ARRAY;
        currentlyVisibleCellPositions <- (NullUtil.getInstance ())#nULL_SHORT_ARRAY_ARRAY;
        aLL_VISIBLE_TILEDLAYER <- (Obj.repr (new SimpleTiledLayer.simpleTiledLayer (0, 0, 0, 0)));
        simpleTiledLayer <- (Obj.repr (Obj.magic aLL_VISIBLE_TILEDLAYER));
        paintSimpleTiledLayer <- (Obj.repr (Obj.magic aLL_VISIBLE_TILEDLAYER));
        currentIndex <- 0;
        ();
        ignore ((LocalPlayerBuildingEventHandler.getInstance ())#addListenerInterface (self));
        ignore ((ScrollMapEventHandler.getInstance ())#addListenerInterface (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "VisibleCellPositionsSingleton" (fun arguments -> Obj.repr (new visibleCellPositionsSingleton (Obj.obj arguments)))

let instance = (new visibleCellPositionsSingleton ())
let get_instance () = instance
let () = java_register_static "VisibleCellPositionsSingleton.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "VisibleCellPositionsSingleton.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


