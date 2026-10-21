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
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.SimpleGeographicMapCellPositionFactory *)

class layerPartialCellPositionsUtil () =
  object
    

    method getAll : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, layerInterface, reusableList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let layerInterface = Obj.repr layerInterface in
        let reusableList = Obj.repr reusableList in
        begin
        ignore ((Obj.magic reusableList)#clear ());
        let topLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow (((Obj.magic layerInterface)#getXP ()), ((Obj.magic layerInterface)#getYP ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let topRightGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow ((((Obj.magic layerInterface)#getXP ()) + ((Obj.magic layerInterface)#getWidth ())), ((Obj.magic layerInterface)#getYP ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let bottomLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow (((Obj.magic layerInterface)#getXP ()), (((Obj.magic layerInterface)#getYP ()) + ((Obj.magic layerInterface)#getHeight ())))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let bottomRightGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow ((((Obj.magic layerInterface)#getXP ()) + ((Obj.magic layerInterface)#getWidth ())), (((Obj.magic layerInterface)#getYP ()) + ((Obj.magic layerInterface)#getHeight ())))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !topLeftGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            ignore ((Obj.magic reusableList)#add (!topLeftGeographicMapCellPosition))
        end;
        if (((Obj.repr !topRightGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && ((Obj.repr !topLeftGeographicMapCellPosition) != (Obj.repr !topRightGeographicMapCellPosition))) then begin
            ignore ((Obj.magic reusableList)#add (!topRightGeographicMapCellPosition))
        end;
        if (((Obj.repr !bottomLeftGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && (not ((Obj.magic reusableList)#contains (!bottomLeftGeographicMapCellPosition)))) then begin
            ignore ((Obj.magic reusableList)#add (!bottomLeftGeographicMapCellPosition))
        end;
        if (((Obj.repr !bottomRightGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && (not ((Obj.magic reusableList)#contains (!bottomRightGeographicMapCellPosition)))) then begin
            ignore ((Obj.magic reusableList)#add (!bottomRightGeographicMapCellPosition))
        end;
        ((Obj.magic reusableList) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]
    

    method getAllDXY : 'any1 'any2 'any5. 'any1 * 'any2 * int * int * 'any5 -> BasicArrayList.basicArrayList = fun (geographicMapInterface, layerInterface, (dx : int), (dy : int), reusableList) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let layerInterface = Obj.repr layerInterface in
        let reusableList = Obj.repr reusableList in
        begin
        ignore ((Obj.magic reusableList)#clear ());
        let topLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow ((((Obj.magic layerInterface)#getXP ()) + dx), (((Obj.magic layerInterface)#getYP ()) + dy))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let topRightGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow (((((Obj.magic layerInterface)#getXP ()) + ((Obj.magic layerInterface)#getWidth ())) + dx), (((Obj.magic layerInterface)#getYP ()) + dy))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let bottomLeftGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow ((((Obj.magic layerInterface)#getXP ()) + dx), ((((Obj.magic layerInterface)#getYP ()) + ((Obj.magic layerInterface)#getHeight ())) + dy))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let bottomRightGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((Obj.magic geographicMapInterface)#getCellPositionAtXYNoThrow (((((Obj.magic layerInterface)#getXP ()) + ((Obj.magic layerInterface)#getWidth ())) + dx), ((((Obj.magic layerInterface)#getYP ()) + ((Obj.magic layerInterface)#getHeight ())) + dy))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        if ((Obj.repr !topLeftGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) then begin
            ignore ((Obj.magic reusableList)#add (!topLeftGeographicMapCellPosition))
        end;
        if (((Obj.repr !topRightGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && ((Obj.repr !topLeftGeographicMapCellPosition) != (Obj.repr !topRightGeographicMapCellPosition))) then begin
            ignore ((Obj.magic reusableList)#add (!topRightGeographicMapCellPosition))
        end;
        if (((Obj.repr !bottomLeftGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && (not ((Obj.magic reusableList)#contains (!bottomLeftGeographicMapCellPosition)))) then begin
            ignore ((Obj.magic reusableList)#add (!bottomLeftGeographicMapCellPosition))
        end;
        if (((Obj.repr !bottomRightGeographicMapCellPosition) != (Obj.repr (SimpleGeographicMapCellPositionFactory.get_nULL_GEOGRAPHIC_MAP_CELL_POSITION ()))) && (not ((Obj.magic reusableList)#contains (!bottomRightGeographicMapCellPosition)))) then begin
            ignore ((Obj.magic reusableList)#add (!bottomRightGeographicMapCellPosition))
        end;
        ((Obj.magic reusableList) :> BasicArrayList.basicArrayList)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "LayerPartialCellPositionsUtil" (fun arguments -> Obj.repr (new layerPartialCellPositionsUtil (Obj.obj arguments)))

let instance = (new layerPartialCellPositionsUtil ())
let get_instance () = instance
let () = java_register_static "LayerPartialCellPositionsUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LayerPartialCellPositionsUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


