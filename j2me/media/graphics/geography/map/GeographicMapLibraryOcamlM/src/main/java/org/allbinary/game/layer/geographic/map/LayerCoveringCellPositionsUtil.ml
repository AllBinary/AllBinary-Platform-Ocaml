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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.CellPositionsUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class layerCoveringCellPositionsUtil () =
  object (self)
    val mutable cellPositionsUtil : CellPositionsUtil.cellPositionsUtil = (Obj.magic 0)
    method cellPositionsUtil = cellPositionsUtil
    method set_cellPositionsUtil value' = cellPositionsUtil <- value'
    

    method getAllXY : 'any1 'any2 'any5. 'any1 * 'any2 * int * int * 'any5 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, layerInterface, (x : int), (y : int), reusableList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let layerInterface = Obj.repr layerInterface in
        let reusableList = Obj.repr reusableList in
        begin
        let topLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXY (x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        ((self#getAll ((Obj.magic geographicMapInterface), !topLeftGeographicMapCellPosition, (Obj.magic layerInterface), (Obj.magic reusableList))) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getAll : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, topLeftGeographicMapCellPosition, layerInterface, reusableList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let topLeftGeographicMapCellPosition = Obj.repr topLeftGeographicMapCellPosition in
        let layerInterface = Obj.repr layerInterface in
        let reusableList = Obj.repr reusableList in
        begin
        ignore ((Obj.magic reusableList)#clear ());
        let columns : int ref = ref ((((Obj.magic layerInterface)#getWidth ()) / (((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ())#getCellWidth ()))) in ();
        let rows : int ref = ref ((((Obj.magic layerInterface)#getHeight ()) / (((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ())#getCellHeight ()))) in ();
        if (!columns = 0) then begin
            columns := 1
        end;
        if (!rows = 0) then begin
            rows := 1
        end;
        ((cellPositionsUtil#getAll ((Obj.magic geographicMapInterface), (Obj.magic topLeftGeographicMapCellPosition), !columns, !rows, (Obj.magic reusableList))) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        cellPositionsUtil <- ((CellPositionsUtil.getInstance ()) :> CellPositionsUtil.cellPositionsUtil);
        ()
      end
  end
let () = java_register_constructor "LayerCoveringCellPositionsUtil" (fun arguments -> Obj.repr (new layerCoveringCellPositionsUtil (Obj.obj arguments)))

let instance = (new layerCoveringCellPositionsUtil ())
let get_instance () = instance
let () = java_register_static "LayerCoveringCellPositionsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerCoveringCellPositionsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


