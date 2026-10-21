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
(* import org.jgrapht.GraphPath *)
(* import org.jgrapht.graph.SimpleWeightedGraph *)
(* import org.allbinary.logic.string.StringMaker *)
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
        for index = (((Obj.magic startPathFindingNodeList)#size ()) - 1) downto 0 do
            let startPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic ((Obj.magic startPathFindingNodeList)#get (index))) :> PathFindingNode.pathFindingNode)) in ();
            ignore ((Obj.magic pathList)#remove (!startPathFindingNode#geographicMapCellPosition));
            ignore ((Obj.magic pathList)#addAt (0, !startPathFindingNode#geographicMapCellPosition))
        done
        end [@@warning "-7-20"]
    

    method isValid : 'any1. 'any1 -> bool = fun (graphPath) ->
        let graphPath = Obj.repr graphPath in
        try
        begin
        if ((((((Obj.magic graphPath)#getEdgeList ())#size ()) > edgeMinimum) && (((Obj.magic graphPath)#getWeight ()) < maxPathWeight)) && (((Obj.magic graphPath)#getWeight ()) > minPathWeight)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method getInvalidReason : 'any1. 'any1 -> string = fun (graphPath) ->
        let graphPath = Obj.repr graphPath in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        if ((((Obj.magic graphPath)#getEdgeList ())#size ()) < edgeMinimum) then begin
            ignore (!stringBuffer#append (("Ignoring Small: " ^ java_string_of (Obj.repr ((((Obj.magic graphPath)#getEdgeList ())#size ()))))))
        end;
        if (((Obj.magic graphPath)#getWeight ()) <= minPathWeight) then begin
            ignore (!stringBuffer#append ((" Low Weighted Path: " ^ java_string_of (Obj.repr (((Obj.magic graphPath)#getWeight ()))))))
        end;
        if (((Obj.magic graphPath)#getWeight ()) >= maxPathWeight) then begin
            ignore (!stringBuffer#append ((" To High Weighted Path: " ^ java_string_of (Obj.repr (((Obj.magic graphPath)#getWeight ()))))))
        end;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7-20"]

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


