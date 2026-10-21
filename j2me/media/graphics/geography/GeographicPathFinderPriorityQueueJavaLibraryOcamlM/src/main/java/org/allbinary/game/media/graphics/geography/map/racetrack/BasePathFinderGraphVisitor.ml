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
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFinderGraphVisitorBase *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNode *)
(* import org.allbinary.util.BasicArrayList *)

class basePathFinderGraphVisitor ((geographicMapInterface_arg : BasicGeographicMap.basicGeographicMap), (edgeMinimum_arg : int), (minPathWeight_arg : int), (maxPathWeight_arg : int)) =
  object
    inherit PathFinderGraphVisitorBase.pathFinderGraphVisitorBase ()
    val mutable geographicMapInterface : BasicGeographicMap.basicGeographicMap = (Obj.magic 0)
    method geographicMapInterface = geographicMapInterface
    method set_geographicMapInterface value' = geographicMapInterface <- value'
    val mutable edgeMinimum : int = 0
    method edgeMinimum = edgeMinimum
    method set_edgeMinimum value' = edgeMinimum <- value'
    val mutable minPathWeight : int = 0
    method minPathWeight = minPathWeight
    method set_minPathWeight value' = minPathWeight <- value'
    val mutable maxPathWeight : int = 0
    method maxPathWeight = maxPathWeight
    method set_maxPathWeight value' = maxPathWeight <- value'
    
    

    method visit : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (_graph, _startPathFindingNodeList, _endPathFindingNodeList) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method fixPath : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (startPathFindingNodeList, _endPathFindingNodeList, pathList) ->
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        let pathList = Obj.repr pathList in
        begin
        let startPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic 0) :> PathFindingNode.pathFindingNode)) in ();
        for index = (((Obj.magic startPathFindingNodeList)#size ()) - 1) downto 0 do
            startPathFindingNode := (Obj.magic ((Obj.magic startPathFindingNodeList)#get (index)));
            ignore ((Obj.magic pathList)#remove (!startPathFindingNode#geographicMapCellPosition));
            ignore ((Obj.magic pathList)#addAt (0, !startPathFindingNode#geographicMapCellPosition))
        done
        end [@@warning "-7-20"]
    

    method isValid : 'any1. 'any1 -> bool = fun (_graphPath) ->
        begin
        false
        end [@@warning "-7"]
    

    method getInvalidReason : 'any1. 'any1 -> string = fun (_graphPath) ->
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        geographicMapInterface <- geographicMapInterface_arg;
        edgeMinimum <- edgeMinimum_arg;
        minPathWeight <- minPathWeight_arg;
        maxPathWeight <- maxPathWeight_arg
      end
  end
let () = java_register_constructor "BasePathFinderGraphVisitor" (fun arguments -> Obj.repr (new basePathFinderGraphVisitor (Obj.obj arguments)))


