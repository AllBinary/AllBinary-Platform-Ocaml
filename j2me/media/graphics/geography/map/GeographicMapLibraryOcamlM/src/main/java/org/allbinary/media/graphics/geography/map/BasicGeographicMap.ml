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
(* package org.allbinary.media.graphics.geography.map *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.layer.Layer *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.util.BasicArrayList *)

let nULL_BASIC_GEOGRAPHIC_MAP_ARRAY = (Array.make (0) (Obj.magic 0))
let get_nULL_BASIC_GEOGRAPHIC_MAP_ARRAY () = nULL_BASIC_GEOGRAPHIC_MAP_ARRAY
let () = java_register_static "BasicGeographicMap.get_nULL_BASIC_GEOGRAPHIC_MAP_ARRAY" (fun _ -> Obj.repr (get_nULL_BASIC_GEOGRAPHIC_MAP_ARRAY ()))
class basicGeographicMap ((id : int), (name : string), (cellTypeIdToGeographicMapCellType : int array), (tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer), (foregroundBasicColor : BasicColor.basicColor), (backgroundBasicColor : BasicColor.basicColor), geographicMapCellPositionFactoryInterface_arg, geographicMapCellPositionBaseFactory, (geographicMapCellTypeFactory_arg : GeographicMapCellTypeFactory.geographicMapCellTypeFactory)) =
  object (self)
    inherit SimpleGeographicMap.simpleGeographicMap (id, name, cellTypeIdToGeographicMapCellType, tiledLayer, foregroundBasicColor, backgroundBasicColor)
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    val mutable geographicMapCellPositionFactory : Obj.t = Obj.repr 0
    method geographicMapCellPositionFactory : 'r. 'r = Obj.magic geographicMapCellPositionFactory
    method set_geographicMapCellPositionFactory : 'v. 'v -> unit = fun value' -> geographicMapCellPositionFactory <- Obj.repr value'
    val mutable geographicMapCellPositionFactoryInterface : Obj.t = Obj.repr 0
    method geographicMapCellPositionFactoryInterface : 'r. 'r = Obj.magic geographicMapCellPositionFactoryInterface
    method set_geographicMapCellPositionFactoryInterface : 'v. 'v -> unit = fun value' -> geographicMapCellPositionFactoryInterface <- Obj.repr value'
    val mutable geographicMapCellTypeFactory : GeographicMapCellTypeFactory.geographicMapCellTypeFactory = (Obj.magic 0)
    method geographicMapCellTypeFactory = geographicMapCellTypeFactory
    method set_geographicMapCellTypeFactory value' = geographicMapCellTypeFactory <- value'
    
    

    method getCellPosition : 'any2. int * 'any2 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((direction : int), oldGeographicMapCellPosition) ->
        let oldGeographicMapCellPosition = Obj.repr oldGeographicMapCellPosition in
        begin
        (match direction with
            | switch_value when switch_value = 0 -> begin
                (((Obj.magic geographicMapCellPositionFactory)#getAt ((((Obj.magic oldGeographicMapCellPosition)#getColumn ()) - 1), ((Obj.magic oldGeographicMapCellPosition)#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)
            end
            | switch_value when switch_value = 1 -> begin
                (((Obj.magic geographicMapCellPositionFactory)#getAt ((((Obj.magic oldGeographicMapCellPosition)#getColumn ()) + 1), ((Obj.magic oldGeographicMapCellPosition)#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)
            end
            | switch_value when switch_value = 2 -> begin
                (((Obj.magic geographicMapCellPositionFactory)#getAt (((Obj.magic oldGeographicMapCellPosition)#getColumn ()), (((Obj.magic oldGeographicMapCellPosition)#getRow ()) - 1))) :> GeographicMapCellPosition.geographicMapCellPosition)
            end
            | switch_value when switch_value = 3 -> begin
                (((Obj.magic geographicMapCellPositionFactory)#getAt (((Obj.magic oldGeographicMapCellPosition)#getColumn ()), (((Obj.magic oldGeographicMapCellPosition)#getRow ()) + 1))) :> GeographicMapCellPosition.geographicMapCellPosition)
            end
            | _ -> begin
                raise (Failure ("Only Four Directions"))
            end)
        end [@@warning "-7-20"]
    

    method getCellPositionNoThrow : 'any2. int * 'any2 -> GeographicMapCellPosition.geographicMapCellPosition = fun ((direction : int), oldGeographicMapCellPosition) ->
        let oldGeographicMapCellPosition = Obj.repr oldGeographicMapCellPosition in
        try
        begin
        (match direction with
            | switch_value when switch_value = 0 -> begin
                if ((((Obj.magic oldGeographicMapCellPosition)#getColumn ()) - 1) >= 0) then begin
                    raise (Java_return (Obj.repr (((Obj.magic geographicMapCellPositionFactory)#getAt ((((Obj.magic oldGeographicMapCellPosition)#getColumn ()) - 1), ((Obj.magic oldGeographicMapCellPosition)#getRow ()))))))
                end else begin
                    raise (Java_return (Obj.repr ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))))))
                end
            end
            | switch_value when switch_value = 1 -> begin
                if ((((Obj.magic oldGeographicMapCellPosition)#getColumn ()) + 1) < ((self#getAllBinaryTiledLayer ())#getColumns ())) then begin
                    raise (Java_return (Obj.repr (((Obj.magic geographicMapCellPositionFactory)#getAt ((((Obj.magic oldGeographicMapCellPosition)#getColumn ()) + 1), ((Obj.magic oldGeographicMapCellPosition)#getRow ()))))))
                end else begin
                    raise (Java_return (Obj.repr ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))))))
                end
            end
            | switch_value when switch_value = 2 -> begin
                if ((((Obj.magic oldGeographicMapCellPosition)#getRow ()) - 1) >= 0) then begin
                    raise (Java_return (Obj.repr (((Obj.magic geographicMapCellPositionFactory)#getAt (((Obj.magic oldGeographicMapCellPosition)#getColumn ()), (((Obj.magic oldGeographicMapCellPosition)#getRow ()) - 1))))))
                end else begin
                    raise (Java_return (Obj.repr ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))))))
                end
            end
            | switch_value when switch_value = 3 -> begin
                if ((((Obj.magic oldGeographicMapCellPosition)#getRow ()) + 1) < ((self#getAllBinaryTiledLayer ())#getRows ())) then begin
                    raise (Java_return (Obj.repr (((Obj.magic geographicMapCellPositionFactory)#getAt (((Obj.magic oldGeographicMapCellPosition)#getColumn ()), (((Obj.magic oldGeographicMapCellPosition)#getRow ()) + 1))))))
                end else begin
                    raise (Java_return (Obj.repr ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))))))
                end
            end
            | _ -> begin
                ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))) :> GeographicMapCellPosition.geographicMapCellPosition)
            end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method isOfFourDirections : 'any1 'any2. 'any1 * 'any2 -> bool = fun (oldGeographicMapCellPosition, newGeographicMapCellPosition) ->
        let oldGeographicMapCellPosition = Obj.repr oldGeographicMapCellPosition in
        let newGeographicMapCellPosition = Obj.repr newGeographicMapCellPosition in
        try
        begin
        for index = 0 to 4 - 1 do
            if ((Obj.repr (Obj.magic newGeographicMapCellPosition)) == (Obj.repr (self#getCellPositionNoThrow (index, (Obj.magic oldGeographicMapCellPosition))))) then begin
                raise (Java_return (Obj.repr (true)))
            end
        done;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getCellPositionAtXY ((x : int), (y : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((self#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let i_column : int ref = ref ((mathUtil#abs ((x / (!allBinaryTiledLayer#getCellHeight ()))))) in ();
        let i_row : int ref = ref ((mathUtil#abs ((y / (!allBinaryTiledLayer#getCellWidth ()))))) in ();
        (((Obj.magic geographicMapCellPositionFactory)#getAt (!i_column, !i_row)) :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]
    

    method getCellPositionAtXYNoThrow ((x : int), (y : int)) : GeographicMapCellPosition.geographicMapCellPosition =
        try
        begin
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((self#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let i_column : int ref = ref ((mathUtil#abs ((x / (!allBinaryTiledLayer#getCellHeight ()))))) in ();
        let i_row : int ref = ref ((mathUtil#abs ((y / (!allBinaryTiledLayer#getCellWidth ()))))) in ();
        if (((!allBinaryTiledLayer#getColumns ()) > !i_column) && ((!allBinaryTiledLayer#getRows ()) > !i_row)) then begin
            (try
                raise (Java_return (Obj.repr (((Obj.magic geographicMapCellPositionFactory)#getAt (!i_column, !i_row)))))
            with e -> begin
                raise (Java_return (Obj.repr ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))))))
            end)
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic (java_call_static "SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION" (Obj.repr ()))))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isOnMap : 'any1. 'any1 -> bool = fun (geographicMapCellPosition) ->
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        try
        begin
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((self#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let i_column : int ref = ref (((Obj.magic geographicMapCellPosition)#getColumn ())) in ();
        let i_row : int ref = ref (((Obj.magic geographicMapCellPosition)#getRow ())) in ();
        if (((!allBinaryTiledLayer#getColumns ()) > !i_column) && ((!allBinaryTiledLayer#getRows ()) > !i_row)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getCellPositionAtNoThrow : 'any5. int * int * int * int * 'any5 -> BasicArrayList.basicArrayList = fun ((x : int), (y : int), (x2 : int), (y2 : int), geographicMapCellPositionList) ->
        let geographicMapCellPositionList = Obj.repr geographicMapCellPositionList in
        begin
        ignore ((Obj.magic geographicMapCellPositionList)#clear ());
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((self#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let i_columnMin : int ref = ref ((mathUtil#abs ((x / (!allBinaryTiledLayer#getCellHeight ()))))) in ();
        let i_rowMin : int ref = ref ((mathUtil#abs ((y / (!allBinaryTiledLayer#getCellWidth ()))))) in ();
        let i_columnMax : int ref = ref (((mathUtil#abs ((x2 / (!allBinaryTiledLayer#getCellHeight ())))) + 1)) in ();
        let i_rowMax : int ref = ref (((mathUtil#abs ((y2 / (!allBinaryTiledLayer#getCellWidth ())))) + 1)) in ();
        for columnIndex = !i_columnMin to !i_columnMax - 1 do
            for rowIndex = !i_rowMin to !i_rowMax - 1 do
                if (((!allBinaryTiledLayer#getColumns ()) > columnIndex) && ((!allBinaryTiledLayer#getRows ()) > rowIndex)) then begin
                    ignore ((Obj.magic geographicMapCellPositionList)#add (((Obj.magic geographicMapCellPositionFactory)#getAt (columnIndex, rowIndex))))
                end
            done
        done;
        ((Obj.magic geographicMapCellPositionList) :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getCellPositionsAt : 'any1. 'any1 * GeographicMapCellPosition.geographicMapCellPosition array array * GeographicMapCellPosition.geographicMapCellPosition array array -> bool = fun (layer, (currentCellPositionArray : GeographicMapCellPosition.geographicMapCellPosition array array), (cellPositionArray : GeographicMapCellPosition.geographicMapCellPosition array array)) ->
        let layer = Obj.repr layer in
        begin
        let hasChanged : bool ref = ref (false) in ();
        let size : int ref = ref ((Array.length cellPositionArray)) in ();
        let size2 : int ref = ref ((Array.length cellPositionArray.(0))) in ();
        let xPortion : int ref = ref ((((Obj.magic layer)#getXP ()) / ((!size - 1)))) in ();
        let yPortion : int ref = ref ((((Obj.magic layer)#getYP ()) / ((!size - 1)))) in ();
        for index = 0 to !size - 1 do
            for index2 = 0 to !size2 - 1 do
                let x : int ref = ref ((!xPortion * index)) in ();
                let y : int ref = ref ((!yPortion * index)) in ();
                cellPositionArray.(index).(index2) <- (self#getCellPositionAtXY (!x, !y));
                if ((Obj.repr currentCellPositionArray.(index).(index2)) != (Obj.repr cellPositionArray.(index).(index2))) then begin
                    hasChanged := true
                end
            done
        done;
        !hasChanged
        end [@@warning "-7-20"]
    

    method getCellTypeAtXY ((x : int), (y : int)) : GeographicMapCellType.geographicMapCellType =
        begin
        let cellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((self#getCellPositionAtXY (x, y)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        ((self#getCellTypeAt (!cellPosition)) :> GeographicMapCellType.geographicMapCellType)
        end [@@warning "-7"]
    

    method getGeographicMapCellPositionFactory : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic geographicMapCellPositionFactory)))
        end [@@warning "-7"]
    

    method getGeographicMapCellPositionFactoryInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic geographicMapCellPositionFactoryInterface)))
        end [@@warning "-7"]
    

    method getGeographicMapCellTypeFactory () : GeographicMapCellTypeFactory.geographicMapCellTypeFactory =
        begin
        (geographicMapCellTypeFactory :> GeographicMapCellTypeFactory.geographicMapCellTypeFactory)
        end [@@warning "-7"]

    initializer
      begin
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        geographicMapCellPositionFactoryInterface <- Obj.repr (geographicMapCellPositionFactoryInterface_arg);
        geographicMapCellPositionFactory <- Obj.repr ((geographicMapCellPositionBaseFactory#getInstance (self)));
        geographicMapCellTypeFactory <- geographicMapCellTypeFactory_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicGeographicMap" (fun arguments -> Obj.repr (new basicGeographicMap (Obj.obj arguments)))


