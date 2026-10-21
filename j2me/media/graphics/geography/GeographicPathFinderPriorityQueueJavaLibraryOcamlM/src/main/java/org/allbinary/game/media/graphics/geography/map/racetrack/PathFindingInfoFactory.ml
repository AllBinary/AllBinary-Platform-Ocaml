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
(* package org.allbinary.game.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.racetrack.BasePathFindingInfoFactory *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackRoadsGeographicMapCellHistoryFactory *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFinder *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNodeCostInfoFactory *)
(* import org.allbinary.util.BasicArrayListS *)

let mAX : int ref = ref (32768)
let get_mAX () = !mAX
let set_mAX value' = mAX := value'
let () = java_register_static "PathFindingInfoFactory.get_mAX" (fun _ -> Obj.repr (get_mAX ()))

let initMax ((max : int)) : unit =
        begin
        mAX := max
        end

let () = java_register_static "PathFindingInfoFactory.initMax" (fun arguments -> Obj.repr (initMax (Obj.obj arguments)))
class pathFindingInfoFactory () =
  object (self)
    inherit BasePathFindingInfoFactory.basePathFindingInfoFactory () as super
    val mutable pathFindingInfo : PathFindingInfo.pathFindingInfo = (Obj.magic 0)
    method pathFindingInfo = pathFindingInfo
    method set_pathFindingInfo value' = pathFindingInfo <- value'
    val mutable pathFinder : Obj.t = Obj.repr 0
    method pathFinder : 'r. 'r = Obj.magic pathFinder
    method set_pathFinder : 'v. 'v -> unit = fun value' -> pathFinder <- Obj.repr value'
    
    

    method getInstancePathFindingInfo : 'any1. 'any1 * int array array -> PathFindingInfo.pathFindingInfo = fun (geographicMapInterface, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        begin
        let pathFindingInfo_arg : PathFindingInfo.pathFindingInfo ref = ref (((new PathFindingInfo.pathFindingInfo ((pathFindingInfo#getPathFindingNodeCostInfoFactoryInterface ()), (new BasicArrayListS.basicArrayListS (1)), (new BasicArrayListS.basicArrayListS (1)))) :> PathFindingInfo.pathFindingInfo)) in ();
        ignore ((RaceTrackRoadsGeographicMapCellHistoryFactory.getInstance ())#init ());
        (self#init ((Obj.magic geographicMapInterface), !pathFindingInfo_arg, mapArray));
        ignore ((Obj.magic pathFinder)#init ((Obj.magic geographicMapInterface)));
        ignore (!pathFindingInfo_arg#setPathFinder ((Obj.magic pathFinder)));
        (!pathFindingInfo_arg :> PathFindingInfo.pathFindingInfo)
        end [@@warning "-7-20"]
    

    method init : 'any1 'any2. 'any1 * 'any2 * int array array -> unit = fun (geographicMapInterface, pathFindingInfo_arg, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo_arg = Obj.repr pathFindingInfo_arg in
        begin
        ignore (super#init ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo_arg), mapArray));
        (self#buildPathFindingNodes ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo_arg), mapArray))
        end [@@warning "-7-20"]
    

    method buildPathFindingNodesForCellPosition : 'any1 'any2 'any4. 'any1 * 'any2 * int array array * 'any4 -> unit = fun (_geographicMapInterface, _pathFindingInfo_arg, (_mapArray : int array array), _cellPosition) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method buildPathFindingNodes : 'any1 'any2. 'any1 * 'any2 * int array array -> unit = fun (geographicMapInterface, pathFindingInfo_arg, (mapArray : int array array)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo_arg = Obj.repr pathFindingInfo_arg in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let totalColumns : int ref = ref ((!allBinaryTiledLayer#getColumns ())) in ();
        let totalRows : int ref = ref ((!allBinaryTiledLayer#getRows ())) in ();
        for column = 0 to !totalColumns - 1 do
            for row = 0 to !totalRows - 1 do
                (self#buildPathFindingNodesForCellPosition ((Obj.magic geographicMapInterface), (Obj.magic pathFindingInfo_arg), mapArray, (!geographicMapCellPositionFactory#getAt (column, row))))
            done
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        pathFindingInfo <- (new PathFindingInfo.pathFindingInfo ((Obj.obj (java_new "PathFindingNodeCostInfoFactory" (Obj.repr (!mAX)))), (new BasicArrayListS.basicArrayListS (1)), (new BasicArrayListS.basicArrayListS (1))));
        pathFinder <- Obj.repr ((Obj.obj (java_new "PathFinder" (Obj.repr ()))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathFindingInfoFactory" (fun arguments -> Obj.repr (new pathFindingInfoFactory (Obj.obj arguments)))

let instance = (new pathFindingInfoFactory ())
let get_instance () = instance
let () = java_register_static "PathFindingInfoFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PathFindingInfoFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


