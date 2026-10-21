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
(* import org.jgrapht.graph.DefaultWeightedEdge *)
(* import org.jgrapht.graph.SimpleWeightedGraph *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.graphics.CellPosition *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapUtil *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMap *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingNode *)

class pathFinderGraphHackVisitor ((geographicMapInterface : BasicGeographicMap.basicGeographicMap), (edgeMinimum : int), (minPathWeight : int), (maxPathWeight : int)) =
  object (self)
    inherit BasePathFinderGraphVisitor.basePathFinderGraphVisitor (geographicMapInterface, edgeMinimum, minPathWeight, maxPathWeight)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method visit : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (graph, startPathFindingNodeList, endPathFindingNodeList) ->
        let graph = Obj.repr graph in
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        let endPathFindingNodeList = Obj.repr endPathFindingNodeList in
        begin
        (self#fixStart ((Obj.magic graph), (Obj.magic startPathFindingNodeList)));
        (self#fixEnd ((Obj.magic graph), (Obj.magic endPathFindingNodeList)));
        (self#fixOverPassEdges ((Obj.magic graph)))
        end [@@warning "-7-20"]
    

    method fixStart : 'any1 'any2. 'any1 * 'any2 -> unit = fun (graph, startPathFindingNodeList) ->
        let graph = Obj.repr graph in
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((geographicMapInterface#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        for index = (((Obj.magic startPathFindingNodeList)#size ()) - 1) downto 0 do
            let startPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic ((Obj.magic startPathFindingNodeList)#get (index))) :> PathFindingNode.pathFindingNode)) in ();
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((!startPathFindingNode#geographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let column : int ref = ref ((!geographicMapCellPosition#getColumn ())) in ();
            let row : int ref = ref ((!geographicMapCellPosition#getRow ())) in ();
            let nextRow : int ref = ref ((!row + 1)) in ();
            if (!tiledLayer#isOnTileLayer (!column, !nextRow)) then begin
                let geographicMapCellPositionNeighbor : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (!column, !nextRow)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                ignore ((Obj.magic graph)#removeEdge (!geographicMapCellPosition, !geographicMapCellPositionNeighbor))
            end
        done
        end [@@warning "-7-20"]
    

    method fixEnd : 'any1 'any2. 'any1 * 'any2 -> unit = fun (graph, endPathFindingNodeList) ->
        let graph = Obj.repr graph in
        let endPathFindingNodeList = Obj.repr endPathFindingNodeList in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((geographicMapInterface#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((geographicMapInterface#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        for index = (((Obj.magic endPathFindingNodeList)#size ()) - 1) downto 0 do
            let endPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic ((Obj.magic endPathFindingNodeList)#get (index))) :> PathFindingNode.pathFindingNode)) in ();
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((!endPathFindingNode#geographicMapCellPosition :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            ignore ((Obj.magic graph)#addVertex (!geographicMapCellPosition));
            let column : int ref = ref ((!geographicMapCellPosition#getColumn ())) in ();
            let row : int ref = ref ((!geographicMapCellPosition#getRow ())) in ();
            let nextRow : int ref = ref ((!row + 1)) in ();
            if (!tiledLayer#isOnTileLayer (!column, !nextRow)) then begin
                let geographicMapCellPositionNeighbor : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (!column, !nextRow)) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
                ignore ((Obj.magic graph)#addEdge (!geographicMapCellPosition, !geographicMapCellPositionNeighbor))
            end
        done
        end [@@warning "-7-20"]
    

    method fixOverPassEdges : 'any1. 'any1 -> unit = fun (graph) ->
        let graph = Obj.repr graph in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((geographicMapInterface#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let raceTrackGeographicMap : RaceTrackGeographicMap.raceTrackGeographicMap ref = ref (((Obj.magic geographicMapInterface) :> RaceTrackGeographicMap.raceTrackGeographicMap)) in ();
        let cellPositionArray : CellPosition.cellPosition array ref = ref (((!raceTrackGeographicMap#getRaceTrackData ())#getOverPassGeographicMapCellPositionArray ())) in ();
        for index = ((Array.length !cellPositionArray) - 1) downto 0 do
            let overPassGeographicMapCellPosition : CellPosition.cellPosition ref = ref ((!cellPositionArray.(index) :> CellPosition.cellPosition)) in ();
            ignore ((Obj.magic logUtil)#putF (((("Fixing Over Pass: " ^ java_string_of (Obj.repr ((!overPassGeographicMapCellPosition#getColumn ())))) ^ ", ") ^ java_string_of (Obj.repr ((!overPassGeographicMapCellPosition#getRow ())))), self, "fixOverPassEdges"));
            let underPassGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt ((!overPassGeographicMapCellPosition#getColumn ()), (!overPassGeographicMapCellPosition#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let rightUnderPassGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (((!overPassGeographicMapCellPosition#getColumn ()) + 1), (!overPassGeographicMapCellPosition#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let leftUnderPassGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt (((!overPassGeographicMapCellPosition#getColumn ()) - 1), (!overPassGeographicMapCellPosition#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            ignore ((Obj.magic graph)#removeEdge (!underPassGeographicMapCellPosition, !rightUnderPassGeographicMapCellPosition));
            ignore ((Obj.magic graph)#removeEdge (!underPassGeographicMapCellPosition, !leftUnderPassGeographicMapCellPosition));
            ignore ((Obj.magic graph)#addVertex (!overPassGeographicMapCellPosition));
            ignore ((Obj.magic graph)#addEdge (!overPassGeographicMapCellPosition, !rightUnderPassGeographicMapCellPosition));
            ignore ((Obj.magic graph)#addEdge (!overPassGeographicMapCellPosition, !leftUnderPassGeographicMapCellPosition))
        done
        end [@@warning "-7-20"]
    

    method fixPath : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (startPathFindingNodeList, endPathFindingNodeList, pathList) ->
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        let endPathFindingNodeList = Obj.repr endPathFindingNodeList in
        let pathList = Obj.repr pathList in
        begin
        for index = (((Obj.magic startPathFindingNodeList)#size ()) - 1) downto 0 do
            let endPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic ((Obj.magic endPathFindingNodeList)#get (index))) :> PathFindingNode.pathFindingNode)) in ();
            let startPathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic ((Obj.magic startPathFindingNodeList)#get (index))) :> PathFindingNode.pathFindingNode)) in ();
            if ((BasicGeographicMapUtil.getInstance ())#isSameCellPosition (!startPathFindingNode#geographicMapCellPosition, !endPathFindingNode#geographicMapCellPosition)) then begin
                if ((Obj.magic pathList)#remove (!endPathFindingNode#geographicMapCellPosition)) then begin
                    ignore ((Obj.magic pathList)#remove (!startPathFindingNode#geographicMapCellPosition));
                    ignore ((Obj.magic pathList)#addAt (0, !startPathFindingNode#geographicMapCellPosition))
                end
            end
        done;
        (self#removeOverPassEdges ((Obj.magic pathList)))
        end [@@warning "-7-20"]
    

    method removeOverPassEdges : 'any1. 'any1 -> unit = fun (pathList) ->
        let pathList = Obj.repr pathList in
        begin
        let geographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((geographicMapInterface#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let raceTrackGeographicMap : RaceTrackGeographicMap.raceTrackGeographicMap ref = ref (((Obj.magic geographicMapInterface) :> RaceTrackGeographicMap.raceTrackGeographicMap)) in ();
        let cellPositionArray : CellPosition.cellPosition array ref = ref (((!raceTrackGeographicMap#getRaceTrackData ())#getOverPassGeographicMapCellPositionArray ())) in ();
        for index = ((Array.length !cellPositionArray) - 1) downto 0 do
            let overPassGeographicMapCellPosition : CellPosition.cellPosition ref = ref ((!cellPositionArray.(index) :> CellPosition.cellPosition)) in ();
            let underPassGeographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((!geographicMapCellPositionFactory#getAt ((!overPassGeographicMapCellPosition#getColumn ()), (!overPassGeographicMapCellPosition#getRow ()))) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let indexOf : int ref = ref (((Obj.magic pathList)#indexOf (!overPassGeographicMapCellPosition))) in ();
            if (!indexOf <> (-1)) then begin
                ignore ((Obj.magic pathList)#set (!indexOf, !underPassGeographicMapCellPosition))
            end
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

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathFinderGraphHackVisitor" (fun arguments -> Obj.repr (new pathFinderGraphHackVisitor (Obj.obj arguments)))


