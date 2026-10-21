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
(* package org.allbinary.media.graphics.geography.map.racetrack.drop *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.layer.drop.DropLayerFactory *)
(* import org.allbinary.game.layer.pickup.PickupLayerCircularStaticPool *)
(* import org.allbinary.game.layer.pickup.RaceTrackPickupLayer *)
(* import org.allbinary.game.rand.MyRandomFactory *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class raceTrackRandomDropCellPositionGenerator () =
  object
    inherit RaceTrackDropCellPositionGenerator.raceTrackDropCellPositionGenerator () as super
    val mutable myRandomFactory : MyRandomFactory.myRandomFactory = (Obj.magic 0)
    method myRandomFactory = myRandomFactory
    method set_myRandomFactory value' = myRandomFactory <- value'
    val mutable cellsPerRowOrColumn : int = 0
    method cellsPerRowOrColumn = cellsPerRowOrColumn
    method set_cellsPerRowOrColumn value' = cellsPerRowOrColumn <- value'
    val mutable totalCells : int = 0
    method totalCells = totalCells
    method set_totalCells value' = totalCells <- value'
    val mutable rowArray : int array = (Obj.magic 0)
    method rowArray = rowArray
    method set_rowArray value' = rowArray <- value'
    val mutable columnArray : int array = (Obj.magic 0)
    method columnArray = columnArray
    method set_columnArray value' = columnArray <- value'
    val mutable cellWidth : int = 0
    method cellWidth = cellWidth
    method set_cellWidth value' = cellWidth <- value'
    val mutable cellHeight : int = 0
    method cellHeight = cellHeight
    method set_cellHeight value' = cellHeight <- value'
    
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (allBinaryGameLayerManager, geographicMapInterface) ->
        let allBinaryGameLayerManager = Obj.repr allBinaryGameLayerManager in
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        ignore (super#update ((Obj.magic allBinaryGameLayerManager), (Obj.magic geographicMapInterface)));
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        cellWidth <- ((!tiledLayer#getCellWidth ()) / cellsPerRowOrColumn);
        cellHeight <- ((!tiledLayer#getCellHeight ()) / cellsPerRowOrColumn)
        end [@@warning "-7-20"]
    

    method drop : 'any1. 'any1 * int -> unit = fun (allBinaryLayerManager, (index : int)) ->
        let allBinaryLayerManager = Obj.repr allBinaryLayerManager in
        begin
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((Obj.magic (list#get (index))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let point : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
        let randomCell : int ref = ref ((myRandomFactory#getAbsoluteNextInt (totalCells))) in ();
        let row : int ref = ref (rowArray.(!randomCell)) in ();
        let column : int ref = ref (columnArray.(!randomCell)) in ();
        let x : int ref = ref (((!point#getX ()) + ((!row * cellWidth)))) in ();
        let y : int ref = ref (((!point#getY ()) + ((!column * cellHeight)))) in ();
        let pickedUpLayerInterfaceFactory : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface ref = ref ((((DropLayerFactory.getInstance ())#getRandomInstance ()) :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((raceTrackGeographicMap#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let pickupLayer : RaceTrackPickupLayer.raceTrackPickupLayer ref = ref (((Obj.magic ((PickupLayerCircularStaticPool.getInstance ())#getInstanceXYZ (!pickedUpLayerInterfaceFactory, !x, !y, ((!tiledLayer#getZP ()) + 3)))) :> RaceTrackPickupLayer.raceTrackPickupLayer)) in ();
        ignore (!pickupLayer#setTiledLayer (!tiledLayer));
        ignore ((Obj.magic allBinaryLayerManager)#append (!pickupLayer))
        end [@@warning "-7-20"]

    initializer
      begin
        myRandomFactory <- ((MyRandomFactory.getInstance ()) :> MyRandomFactory.myRandomFactory);
        cellsPerRowOrColumn <- 3;
        totalCells <- (cellsPerRowOrColumn * cellsPerRowOrColumn);
        rowArray <- [| 0; 1; 2; 0; 1; 2; 0; 1; 2 |];
        columnArray <- [| 0; 0; 0; 1; 1; 1; 2; 2; 2 |];
        cellWidth <- 0;
        cellHeight <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "RaceTrackRandomDropCellPositionGenerator" (fun arguments -> Obj.repr (new raceTrackRandomDropCellPositionGenerator (Obj.obj arguments)))

let sINGLETON = ref ((new raceTrackRandomDropCellPositionGenerator ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "RaceTrackRandomDropCellPositionGenerator.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "RaceTrackRandomDropCellPositionGenerator.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


