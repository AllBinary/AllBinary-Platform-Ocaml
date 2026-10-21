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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.util.BasicArrayListS *)

class cellPositionsUtil () =
  object (self)
    val mutable reusableSingleThreadedSurroundingList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method reusableSingleThreadedSurroundingList = reusableSingleThreadedSurroundingList
    method set_reusableSingleThreadedSurroundingList value' = reusableSingleThreadedSurroundingList <- value'
    val mutable surroundArray : int array array = (Obj.magic 0)
    method surroundArray = surroundArray
    method set_surroundArray value' = surroundArray <- value'
    

    method getAll : 'any1 'any2 'any5. 'any1 * 'any2 * int * int * 'any5 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, topRightGeographicMapCellPosition, (columns : int), (rows : int), reusableList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let topRightGeographicMapCellPosition = Obj.repr topRightGeographicMapCellPosition in
        let reusableList = Obj.repr reusableList in
        try
        begin
        ignore ((Obj.magic reusableList)#clear ());
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let lastColumn : int ref = ref ((((Obj.magic topRightGeographicMapCellPosition)#getColumn ()) + columns)) in ();
        let lastRow : int ref = ref ((((Obj.magic topRightGeographicMapCellPosition)#getRow ()) + rows)) in ();
        if ((((columns > 1) && (!lastColumn > (((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ())#getColumns ())))) || (((rows > 1) && (!lastRow > (((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ())#getRows ()))))) then begin
            raise (Java_return (Obj.repr ((Obj.magic reusableList))))
        end;
        for rowIndex = 0 to rows - 1 do
            for columnIndex = 0 to columns - 1 do
                let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt ((((Obj.magic topRightGeographicMapCellPosition)#getColumn ()) + columnIndex), (((Obj.magic topRightGeographicMapCellPosition)#getRow ()) + rowIndex))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                ignore ((Obj.magic reusableList)#add (!geographicMapCellPosition))
            done
        done;
        ((Obj.magic reusableList) :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]
    

    method getAllSurrounding : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, occupyList, reusableList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let occupyList = Obj.repr occupyList in
        let reusableList = Obj.repr reusableList in
        begin
        ignore ((Obj.magic reusableList)#clear ());
        for index = (((Obj.magic occupyList)#size ()) - 1) downto 0 do
            let layerGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic ((Obj.magic occupyList)#get (index))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let surroundingGeographicMapCellPositionList : BasicArrayList.basicArrayList ref = ref (((self#getAllSurroundingAt ((Obj.magic geographicMapInterface), !layerGeographicMapCellPosition, reusableSingleThreadedSurroundingList)) :> BasicArrayList.basicArrayList)) in ();
            for index2 = ((!surroundingGeographicMapCellPositionList#size ()) - 1) downto 0 do
                let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (!surroundingGeographicMapCellPositionList#get (index2))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                if ((not ((Obj.magic reusableList)#contains (!geographicMapCellPosition))) && (not ((Obj.magic occupyList)#contains (!geographicMapCellPosition)))) then begin
                    ignore ((Obj.magic reusableList)#add (!geographicMapCellPosition))
                end
            done
        done;
        ((Obj.magic reusableList) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getAllSurroundingAt : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, layerGeographicMapCellPosition, reusableSurroundingList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let layerGeographicMapCellPosition = Obj.repr layerGeographicMapCellPosition in
        let reusableSurroundingList = Obj.repr reusableSurroundingList in
        begin
        ignore ((Obj.magic reusableSurroundingList)#clear ());
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let row : int ref = ref (0) in ();
        let column : int ref = ref (0) in ();
        for index = 0 to 8 - 1 do
            column := (((Obj.magic layerGeographicMapCellPosition)#getColumn ()) + surroundArray.(index).(0));
            row := (((Obj.magic layerGeographicMapCellPosition)#getRow ()) + surroundArray.(index).(1));
            if (!tiledLayer#isOnTileLayer (!column, !row)) then begin
                let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (!column, !row)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                ignore ((Obj.magic reusableSurroundingList)#add (!geographicMapCellPosition))
            end
        done;
        ((Obj.magic reusableSurroundingList) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        reusableSingleThreadedSurroundingList <- ((new BasicArrayListS.basicArrayListS (8)) :> BasicArrayList.basicArrayList);
        surroundArray <- [| [| (-1); (-1) |]; [| 0; (-1) |]; [| 1; (-1) |]; [| (-1); 1 |]; [| 0; 1 |]; [| 1; 1 |]; [| 1; 0 |]; [| (-1); 0 |] |];
        ()
      end
  end
let () = java_register_constructor "CellPositionsUtil" (fun arguments -> Obj.repr (new cellPositionsUtil (Obj.obj arguments)))

let instance = (new cellPositionsUtil ())
let get_instance () = instance
let () = java_register_static "CellPositionsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CellPositionsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


