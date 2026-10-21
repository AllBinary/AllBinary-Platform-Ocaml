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
(* package org.allbinary.media.graphics.geography.map.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.graphics.CellPositionFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)

class dropCellPositionHistory () =
  object (self)
    val mutable cellPositionFactory : CellPositionFactory.cellPositionFactory = (Obj.magic 0)
    method cellPositionFactory = cellPositionFactory
    method set_cellPositionFactory value' = cellPositionFactory <- value'
    val mutable positionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method positionList = positionList
    method set_positionList value' = positionList <- value'
    val mutable layerList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method layerList = layerList
    method set_layerList value' = layerList <- value'
    

    method add : 'any1 'any2. 'any1 * 'any2 -> unit = fun (cellPosition, layerInterface) ->
        let cellPosition = Obj.repr cellPosition in
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (positionList#add ((Obj.magic cellPosition)));
        ignore (layerList#add ((Obj.magic layerInterface)))
        end [@@warning "-20"]
    

    method addAll : 'any1 'any2. 'any1 * 'any2 -> unit = fun (list, layerInterface) ->
        let list = Obj.repr list in
        let layerInterface = Obj.repr layerInterface in
        begin
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            (self#add ((Obj.magic ((Obj.magic list)#get (index))), (Obj.magic layerInterface)))
        done
        end [@@warning "-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        begin
        let index : int ref = ref ((positionList#indexOf ((Obj.magic cellPosition)))) in ();
        if (!index >= 0) then begin
            ignore (positionList#removeAt (!index));
            ignore (layerList#removeAt (!index))
        end
        end [@@warning "-20"]
    

    method removeAll : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        let index : int ref = ref (0) in ();
        while (!index <> (-1)) do
            index := (layerList#indexOf ((Obj.magic layerInterface)));
            if (!index >= 0) then begin
                ignore (positionList#removeAt (!index));
                ignore (layerList#removeAt (!index))
            end
        done
        end [@@warning "-20"]
    

    method clear () : unit =
        begin
        ignore (positionList#clear ());
        ignore (layerList#clear ())
        end
    

    method isCellPositionWithDrop : 'any1. 'any1 -> bool = fun (cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        begin
        (positionList#contains ((Obj.magic cellPosition)))
        end [@@warning "-20"]
    

    method anyCellPositionWithDrop : 'any1. 'any1 -> bool = fun (list) ->
        let list = Obj.repr list in
        try
        begin
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            if (self#isCellPositionWithDrop ((Obj.magic ((Obj.magic list)#get (index))))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getCellPositionWithDrop : 'any1. 'any1 -> CellPosition.cellPosition = fun (list) ->
        let list = Obj.repr list in
        try
        begin
        let cellPosition : CellPosition.cellPosition ref = ref (((Obj.magic 0) :> CellPosition.cellPosition)) in ();
        for index = (((Obj.magic list)#size ()) - 1) downto 0 do
            cellPosition := (Obj.magic ((Obj.magic list)#get (index)));
            if (self#isCellPositionWithDrop (!cellPosition)) then begin
                raise (Java_return (Obj.repr (!cellPosition)))
            end
        done;
        (cellPositionFactory#nONE :> CellPosition.cellPosition)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getLayerInterface : 'any1. 'any1 -> AllBinaryLayer.allBinaryLayer = fun (cellPosition) ->
        let cellPosition = Obj.repr cellPosition in
        try
        begin
        let index : int ref = ref ((positionList#indexOf ((Obj.magic cellPosition)))) in ();
        if (!index >= 0) then begin
            raise (Java_return (Obj.repr ((Obj.magic (layerList#get (!index))))))
        end else begin
            raise (Java_return (Obj.repr ((AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        cellPositionFactory <- ((CellPositionFactory.getInstance ()) :> CellPositionFactory.cellPositionFactory);
        positionList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        layerList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ()
      end
  end
let () = java_register_constructor "DropCellPositionHistory" (fun arguments -> Obj.repr (new dropCellPositionHistory (Obj.obj arguments)))

let sINGLETON = (new dropCellPositionHistory ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "DropCellPositionHistory.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "DropCellPositionHistory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


