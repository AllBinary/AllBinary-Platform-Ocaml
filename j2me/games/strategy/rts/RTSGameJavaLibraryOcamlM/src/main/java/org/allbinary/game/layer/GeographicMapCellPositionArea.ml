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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.CircularIndexUtil *)
(* import org.allbinary.game.layer.geographic.map.LayerCoveringCellPositionsUtil *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.CellPositionsUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.util.BasicArrayListS *)
(* import org.allbinary.util.BasicArrayListUtil *)

class geographicMapCellPositionArea ((layerInterface_arg : AllBinaryLayer.allBinaryLayer)) =
  object
    inherit GeographicMapCellPositionAreaBase.geographicMapCellPositionAreaBase ()
    val mutable cellPositionsUtil : CellPositionsUtil.cellPositionsUtil = (Obj.magic 0)
    method cellPositionsUtil = cellPositionsUtil
    method set_cellPositionsUtil value' = cellPositionsUtil <- value'
    val mutable layerCoveringCellPositionsUtil : LayerCoveringCellPositionsUtil.layerCoveringCellPositionsUtil = (Obj.magic 0)
    method layerCoveringCellPositionsUtil = layerCoveringCellPositionsUtil
    method set_layerCoveringCellPositionsUtil value' = layerCoveringCellPositionsUtil <- value'
    val mutable reusableOccupyingGeographicMapCellPositionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method reusableOccupyingGeographicMapCellPositionList = reusableOccupyingGeographicMapCellPositionList
    method set_reusableOccupyingGeographicMapCellPositionList value' = reusableOccupyingGeographicMapCellPositionList <- value'
    val mutable reusableSurroundingGeographicMapCellPositionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method reusableSurroundingGeographicMapCellPositionList = reusableSurroundingGeographicMapCellPositionList
    method set_reusableSurroundingGeographicMapCellPositionList value' = reusableSurroundingGeographicMapCellPositionList <- value'
    val mutable surroundingCircularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method surroundingCircularIndexUtil = surroundingCircularIndexUtil
    method set_surroundingCircularIndexUtil value' = surroundingCircularIndexUtil <- value'
    val mutable layerInterface : AllBinaryLayer.allBinaryLayer = (Obj.magic 0)
    method layerInterface = layerInterface
    method set_layerInterface value' = layerInterface <- value'
    val mutable lIST : BasicArrayList.basicArrayList = (Obj.magic 0)
    method lIST = lIST
    method set_lIST value' = lIST <- value'
    val mutable occupyingGeographicMapCellPositionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method occupyingGeographicMapCellPositionList = occupyingGeographicMapCellPositionList
    method set_occupyingGeographicMapCellPositionList value' = occupyingGeographicMapCellPositionList <- value'
    val mutable surroundingGeographicMapCellPositionList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method surroundingGeographicMapCellPositionList = surroundingGeographicMapCellPositionList
    method set_surroundingGeographicMapCellPositionList value' = surroundingGeographicMapCellPositionList <- value'
    
    

    method update : 'any1. 'any1 -> unit = fun (geographicMapInterface) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        occupyingGeographicMapCellPositionList <- (layerCoveringCellPositionsUtil#getAllXY ((Obj.magic geographicMapInterface), layerInterface, (layerInterface#getXP ()), (layerInterface#getYP ()), reusableOccupyingGeographicMapCellPositionList));
        surroundingGeographicMapCellPositionList <- (cellPositionsUtil#getAllSurrounding ((Obj.magic geographicMapInterface), occupyingGeographicMapCellPositionList, reusableSurroundingGeographicMapCellPositionList));
        ignore (surroundingCircularIndexUtil#setSize ((surroundingGeographicMapCellPositionList#size ())))
        end [@@warning "-7-20"]
    

    method getOccupyingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        (occupyingGeographicMapCellPositionList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getSurroundingGeographicMapCellPositionList () : BasicArrayList.basicArrayList =
        begin
        (surroundingGeographicMapCellPositionList :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method getNextSurroundingGeographicMapCellPosition () : GeographicMapCellPosition.geographicMapCellPosition =
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (surroundingGeographicMapCellPositionList#get ((surroundingCircularIndexUtil#getIndex ())))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        ignore (surroundingCircularIndexUtil#next ());
        (!geographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)
        end [@@warning "-7"]

    initializer
      begin
        cellPositionsUtil <- ((CellPositionsUtil.getInstance ()) :> CellPositionsUtil.cellPositionsUtil);
        layerCoveringCellPositionsUtil <- ((LayerCoveringCellPositionsUtil.getInstance ()) :> LayerCoveringCellPositionsUtil.layerCoveringCellPositionsUtil);
        reusableOccupyingGeographicMapCellPositionList <- ((new BasicArrayListS.basicArrayListS (4)) :> BasicArrayList.basicArrayList);
        reusableSurroundingGeographicMapCellPositionList <- ((new BasicArrayListS.basicArrayListS (12)) :> BasicArrayList.basicArrayList);
        surroundingCircularIndexUtil <- ((CircularIndexUtil.createInstance (0)) :> CircularIndexUtil.circularIndexUtil);
        ();
        lIST <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        occupyingGeographicMapCellPositionList <- (lIST :> BasicArrayList.basicArrayList);
        surroundingGeographicMapCellPositionList <- (lIST :> BasicArrayList.basicArrayList);
        ();
        layerInterface <- layerInterface_arg
      end
  end
let () = java_register_constructor "GeographicMapCellPositionArea" (fun arguments -> Obj.repr (new geographicMapCellPositionArea (Obj.obj arguments)))


