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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNode *)


let get : 'any1 'any2. 'any1 * 'any2 * int -> GPoint.gPoint = fun (geographicMapInterface, pathFindingInfo, (index : int)) ->
        let geographicMapInterface = Obj.repr geographicMapInterface in
        let pathFindingInfo = Obj.repr pathFindingInfo in
        begin
        let list : BasicArrayList.basicArrayList ref = ref ((((Obj.magic pathFindingInfo)#getStartPathFindingNodeList ()) :> BasicArrayList.basicArrayList)) in ();
        let startPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic (!list#get (index))) :> PathFindingNode.pathFindingNode)) in ();
        let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((!startPathFindingNode#geographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
        let point : GPoint.gPoint ref = ref (((!geographicMapCellPosition#getPoint ()) :> GPoint.gPoint)) in ();
        (((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#createXY ((!point#getX ()), ((!point#getY ()) + (((Obj.magic geographicMapInterface)#getAllBinaryTiledLayer ())#getHalfCellHeight ())))) :> GPoint.gPoint)
        end [@@warning "-20"]

let () = java_register_static "RaceTrackStartPointUtil.get" (fun arguments -> Obj.repr (get (Obj.obj arguments)))
class raceTrackStartPointUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "RaceTrackStartPointUtil" (fun arguments -> Obj.repr (new raceTrackStartPointUtil (Obj.obj arguments)))


