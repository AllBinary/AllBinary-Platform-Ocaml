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
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashSet *)
(* import java.util.PriorityQueue *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMapCellPositionFactory *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellType *)
(* import org.allbinary.media.graphics.geography.map.racetrack.RaceTrackGeographicMapCellType *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

class pathFinder () =
  object (self)
    inherit GeographicPathFinderBase.geographicPathFinderBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable mathUtil : MathUtil.mathUtil = (Obj.magic 0)
    method mathUtil = mathUtil
    method set_mathUtil value' = mathUtil <- value'
    val mutable openPriorityQueue : Obj.t = Obj.repr 0
    method openPriorityQueue : 'r. 'r = Obj.magic openPriorityQueue
    method set_openPriorityQueue : 'v. 'v -> unit = fun value' -> openPriorityQueue <- Obj.repr value'
    val mutable closedSet : Obj.t = Obj.repr 0
    method closedSet : 'r. 'r = Obj.magic closedSet
    method set_closedSet : 'v. 'v -> unit = fun value' -> closedSet <- Obj.repr value'
    val mutable geographicMapInterface : Obj.t = (Obj.magic 0)
    method geographicMapInterface = geographicMapInterface
    method set_geographicMapInterface value' = geographicMapInterface <- value'
    val mutable costArray : PathFindingNodeCost.pathFindingNodeCost array array = (Obj.magic 0)
    method costArray = costArray
    method set_costArray value' = costArray <- value'
    

    method init : 'any1. 'any1 -> unit = fun (geographicMapInterface_arg) ->
        let geographicMapInterface_arg = Obj.repr geographicMapInterface_arg in
        begin
        geographicMapInterface <- (Obj.magic geographicMapInterface_arg);
        let tiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref ((((Obj.magic geographicMapInterface_arg)#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        costArray <- (Array.make_matrix ((!tiledLayer#getColumns ())) ((!tiledLayer#getRows ())) (Obj.magic 0));
        let basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref ((((Obj.magic geographicMapInterface_arg)#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let node : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        let sizeX : int ref = ref ((Array.length costArray)) in ();
        let sizeY : int ref = ref ((Array.length costArray.(0))) in ();
        for column = 0 to !sizeX - 1 do
            for row = 0 to !sizeY - 1 do
                let geographicMapCellType : GeographicMapCellType.geographicMapCellType ref = ref ((((Obj.magic geographicMapInterface_arg)#getCellTypeAt ((!basicGeographicMapCellPositionFactory#getAt (column, row)))) :> GeographicMapCellType.geographicMapCellType)) in ();
                let raceTrackGeographicMapCellType : RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType ref = ref (((Obj.magic !geographicMapCellType) :> RaceTrackGeographicMapCellType.raceTrackGeographicMapCellType)) in ();
                node := (new PathFindingNodeCost.pathFindingNodeCost ((NullUtil.getInstance ())#nULL_OBJECT, (!basicGeographicMapCellPositionFactory#getAt (column, row)), (new PathFindingNodeCostInfo.pathFindingNodeCostInfo ((java_to_int (Obj.repr ((!raceTrackGeographicMapCellType#getTravelCost ())))), (-1)))));
                costArray.(column).(row) <- !node
            done
        done
        end [@@warning "-7-20"]
    

    method searchTotalPath : 'any1 'any2. 'any1 * 'any2 * int -> BasicArrayList.basicArrayList = fun (startPathFindingNodeList, endPathFindingNodeList, (_totalPaths : int)) ->
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        let endPathFindingNodeList = Obj.repr endPathFindingNodeList in
        begin
        (try
            ((self#search ((Obj.magic ((Obj.magic startPathFindingNodeList)#get (0))), (Obj.magic ((Obj.magic endPathFindingNodeList)#get (0))))) :> BasicArrayList.basicArrayList)
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, "search", e));
            ((basicArrayListUtil#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7-20"]
    

    method searchTotalPathN : 'any1 'any2 'any4. 'any1 * 'any2 * int * 'any4 -> BasicArrayList.basicArrayList = fun (startPathFindingNodeList, endPathFindingNodeList, (_totalPaths : int), multipassState) ->
        let startPathFindingNodeList = Obj.repr startPathFindingNodeList in
        let endPathFindingNodeList = Obj.repr endPathFindingNodeList in
        let multipassState = Obj.repr multipassState in
        try
        begin
        if ((Obj.magic multipassState)#step == 0) then begin
            ignore ((Obj.magic multipassState)#set_step ((Obj.magic multipassState)#step + 1))
        end else if ((Obj.magic multipassState)#step == 1) then begin
            (self#searchStart ((Obj.magic ((Obj.magic startPathFindingNodeList)#get (0))), (Obj.magic ((Obj.magic endPathFindingNodeList)#get (0))), (Obj.magic multipassState)))
        end else if ((Obj.magic multipassState)#step == 2) then begin
            raise (Java_return (Obj.repr ((self#searchN ((Obj.magic ((Obj.magic startPathFindingNodeList)#get (0))), (Obj.magic ((Obj.magic endPathFindingNodeList)#get (0))), (Obj.magic multipassState))))))
        end;
        ((basicArrayListUtil#getImmutableInstance ()) :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method search : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (startPathFindingNode, endPathFindingNode) ->
        let startPathFindingNode = Obj.repr startPathFindingNode in
        let endPathFindingNode = Obj.repr endPathFindingNode in
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#findPath ((Obj.magic startPathFindingNode)#geographicMapCellPosition, (Obj.magic endPathFindingNode)#geographicMapCellPosition)) :> BasicArrayList.basicArrayList)) in ();
        let pathList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!pathList#add (!list));
        (!pathList :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method searchStart : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (startPathFindingNode, endPathFindingNode, multipassState) ->
        let startPathFindingNode = Obj.repr startPathFindingNode in
        let endPathFindingNode = Obj.repr endPathFindingNode in
        let multipassState = Obj.repr multipassState in
        begin
        (self#findPathStart ((Obj.magic startPathFindingNode)#geographicMapCellPosition, (Obj.magic endPathFindingNode)#geographicMapCellPosition, (Obj.magic multipassState)))
        end [@@warning "-7-20"]
    

    method searchN : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (startPathFindingNode, endPathFindingNode, multipassState) ->
        let startPathFindingNode = Obj.repr startPathFindingNode in
        let endPathFindingNode = Obj.repr endPathFindingNode in
        let multipassState = Obj.repr multipassState in
        try
        begin
        let list : BasicArrayList.basicArrayList ref = ref (((self#findPathEnd ((Obj.magic startPathFindingNode)#geographicMapCellPosition, (Obj.magic endPathFindingNode)#geographicMapCellPosition, (Obj.magic multipassState))) :> BasicArrayList.basicArrayList)) in ();
        if (!list == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((basicArrayListUtil#getImmutableInstance ()))))
        end;
        let pathList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        ignore (!pathList#add (!list));
        ignore ((Obj.magic multipassState)#set_iteration (0));
        ignore ((Obj.magic multipassState)#set_step (0));
        (!pathList :> BasicArrayList.basicArrayList)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method findPath : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (start, target) ->
        let start = Obj.repr start in
        let target = Obj.repr target in
        try
        begin
        ignore ((Obj.magic openPriorityQueue)#clear ());
        ignore ((Obj.magic closedSet)#clear ());
        let discoveryCalculation : int ref = ref (0) in ();
        let node : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        let targetColumn : int ref = ref (((Obj.magic target)#getColumn ())) in ();
        let targetRow : int ref = ref (((Obj.magic target)#getRow ())) in ();
        let sizeX : int ref = ref ((Array.length costArray)) in ();
        let sizeY : int ref = ref ((Array.length costArray.(0))) in ();
        for column = 0 to !sizeX - 1 do
            for row = 0 to !sizeY - 1 do
                discoveryCalculation := ((java_to_int (Obj.repr ((mathUtil#abs ((column - !targetColumn)))))) + (mathUtil#abs ((row - !targetRow))));
                node := costArray.(column).(row);
                !node#pathFindingNodeCostInfoP#set_totalCostP (0);
                !node#pathFindingNodeCostInfoP#set_costToEndP (!discoveryCalculation)
            done
        done;
        let startNode : PathFindingNodeCost.pathFindingNodeCost ref = ref ((costArray.(((Obj.magic start)#getColumn ())).(((Obj.magic start)#getRow ())) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        ignore ((Obj.magic openPriorityQueue)#add (!startNode));
        let geographicMapInterface_arg : BasicGeographicMap.basicGeographicMap ref = ref (((Obj.magic geographicMapInterface) :> BasicGeographicMap.basicGeographicMap)) in ();
        let basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((!geographicMapInterface_arg#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface_arg#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let targetNode : PathFindingNodeCost.pathFindingNodeCost ref = ref ((costArray.(((Obj.magic target)#getColumn ())).(((Obj.magic target)#getRow ())) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        let current : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        (try while true do
            current := ((Obj.magic openPriorityQueue)#poll ());
            ignore ((Obj.magic closedSet)#add (!current));
            if (!current#equals (!targetNode)) then begin
                raise (Java_return (Obj.repr ((self#extractPath ((Obj.magic start), !current)))))
            end;
            let neighbor : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
            let neighborInfo : PathFindingNodeCostInfo.pathFindingNodeCostInfo ref = ref (((Obj.magic 0) :> PathFindingNodeCostInfo.pathFindingNodeCostInfo)) in ();
            let calculatedCost : int ref = ref (0) in ();
            for column = ((!current#geographicMapCellPosition#getColumn ()) - 1) to ((!current#geographicMapCellPosition#getColumn ()) + 2) - 1 do
                for row = ((!current#geographicMapCellPosition#getRow ()) - 1) to ((!current#geographicMapCellPosition#getRow ()) + 2) - 1 do
                    (try
                    if (((((column > 0) && (row > 0)) && (column < (!allBinaryTiledLayer#getColumns ()))) && (row < (!allBinaryTiledLayer#getRows ()))) && (!geographicMapInterface_arg#isOnMap ((!basicGeographicMapCellPositionFactory#getAt (column, row))))) then begin
                        neighbor := costArray.(column).(row);
                        if ((Obj.magic closedSet)#contains (!neighbor)) then begin
                            raise Java_continue
                        end;
                        neighborInfo := !neighbor#pathFindingNodeCostInfoP;
                        calculatedCost := ((!neighborInfo#costToEndP + !neighborInfo#costFromStartP) + !current#pathFindingNodeCostInfoP#totalCostP);
                        if ((!calculatedCost < !neighborInfo#totalCostP) || (not ((Obj.magic openPriorityQueue)#contains (!neighbor)))) then begin
                            !neighborInfo#set_totalCostP (!calculatedCost);
                            !neighbor#set_parent (!current);
                            if (not ((Obj.magic openPriorityQueue)#contains (!neighbor))) then begin
                                if (!geographicMapInterface_arg#isOfFourDirections (!current#geographicMapCellPosition, !neighbor#geographicMapCellPosition)) then begin
                                    ignore ((Obj.magic openPriorityQueue)#add (!neighbor))
                                end
                            end
                        end
                    end
                    with Java_continue -> ())
                done
            done;
            if not ((not ((Obj.magic openPriorityQueue)#isEmpty ()))) then raise Java_break
        done with Java_break -> ());
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method findPathStart : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (start, target, multipassState) ->
        let start = Obj.repr start in
        let target = Obj.repr target in
        let multipassState = Obj.repr multipassState in
        begin
        ignore ((Obj.magic openPriorityQueue)#clear ());
        ignore ((Obj.magic closedSet)#clear ());
        let discoveryCalculation : int ref = ref (0) in ();
        let node : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        let targetColumn : int ref = ref (((Obj.magic target)#getColumn ())) in ();
        let targetRow : int ref = ref (((Obj.magic target)#getRow ())) in ();
        let sizeX : int ref = ref ((Array.length costArray)) in ();
        let sizeY : int ref = ref ((Array.length costArray.(0))) in ();
        for column = 0 to !sizeX - 1 do
            for row = 0 to !sizeY - 1 do
                discoveryCalculation := ((java_to_int (Obj.repr ((mathUtil#abs ((column - !targetColumn)))))) + (mathUtil#abs ((row - !targetRow))));
                node := costArray.(column).(row);
                !node#pathFindingNodeCostInfoP#set_totalCostP (0);
                !node#pathFindingNodeCostInfoP#set_costToEndP (!discoveryCalculation)
            done
        done;
        let startNode : PathFindingNodeCost.pathFindingNodeCost ref = ref ((costArray.(((Obj.magic start)#getColumn ())).(((Obj.magic start)#getRow ())) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        ignore ((Obj.magic openPriorityQueue)#add (!startNode));
        ignore ((Obj.magic multipassState)#set_step ((Obj.magic multipassState)#step + 1))
        end [@@warning "-7-20"]
    

    method findPathEnd : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> BasicArrayList.basicArrayList = fun (start, target, _multipassState) ->
        let start = Obj.repr start in
        let target = Obj.repr target in
        try
        begin
        let geographicMapInterface_arg : BasicGeographicMap.basicGeographicMap ref = ref (((Obj.magic geographicMapInterface) :> BasicGeographicMap.basicGeographicMap)) in ();
        let basicGeographicMapCellPositionFactory : BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory ref = ref (((!geographicMapInterface_arg#getGeographicMapCellPositionFactory ()) :> BasicGeographicMapCellPositionFactory.basicGeographicMapCellPositionFactory)) in ();
        let allBinaryTiledLayer : AllBinaryTiledLayer.allBinaryTiledLayer ref = ref (((!geographicMapInterface_arg#getAllBinaryTiledLayer ()) :> AllBinaryTiledLayer.allBinaryTiledLayer)) in ();
        let targetNode : PathFindingNodeCost.pathFindingNodeCost ref = ref ((costArray.(((Obj.magic target)#getColumn ())).(((Obj.magic target)#getRow ())) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        let current : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
        let total : int ref = ref (0) in ();
        (try while true do
            current := ((Obj.magic openPriorityQueue)#poll ());
            ignore ((Obj.magic closedSet)#add (!current));
            if (!current#equals (!targetNode)) then begin
                raise (Java_return (Obj.repr ((self#extractPath ((Obj.magic start), !current)))))
            end;
            let neighbor : PathFindingNodeCost.pathFindingNodeCost ref = ref (((Obj.magic 0) :> PathFindingNodeCost.pathFindingNodeCost)) in ();
            let neighborInfo : PathFindingNodeCostInfo.pathFindingNodeCostInfo ref = ref (((Obj.magic 0) :> PathFindingNodeCostInfo.pathFindingNodeCostInfo)) in ();
            let calculatedCost : int ref = ref (0) in ();
            for column = ((!current#geographicMapCellPosition#getColumn ()) - 1) to ((!current#geographicMapCellPosition#getColumn ()) + 2) - 1 do
                for row = ((!current#geographicMapCellPosition#getRow ()) - 1) to ((!current#geographicMapCellPosition#getRow ()) + 2) - 1 do
                    (try
                    if (((((column > 0) && (row > 0)) && (column < (!allBinaryTiledLayer#getColumns ()))) && (row < (!allBinaryTiledLayer#getRows ()))) && (!geographicMapInterface_arg#isOnMap ((!basicGeographicMapCellPositionFactory#getAt (column, row))))) then begin
                        neighbor := costArray.(column).(row);
                        if ((Obj.magic closedSet)#contains (!neighbor)) then begin
                            raise Java_continue
                        end;
                        neighborInfo := !neighbor#pathFindingNodeCostInfoP;
                        calculatedCost := ((!neighborInfo#costToEndP + !neighborInfo#costFromStartP) + !current#pathFindingNodeCostInfoP#totalCostP);
                        if ((!calculatedCost < !neighborInfo#totalCostP) || (not ((Obj.magic openPriorityQueue)#contains (!neighbor)))) then begin
                            !neighborInfo#set_totalCostP (!calculatedCost);
                            !neighbor#set_parent (!current);
                            if (not ((Obj.magic openPriorityQueue)#contains (!neighbor))) then begin
                                if (!geographicMapInterface_arg#isOfFourDirections (!current#geographicMapCellPosition, !neighbor#geographicMapCellPosition)) then begin
                                    ignore ((Obj.magic openPriorityQueue)#add (!neighbor))
                                end
                            end
                        end
                    end
                    with Java_continue -> ())
                done
            done;
            total := !total + 1;
            if (!total > 10) then begin
                raise (Java_return (Obj.repr ((basicArrayListUtil#getImmutableInstance ()))))
            end;
            if not ((not ((Obj.magic openPriorityQueue)#isEmpty ()))) then raise Java_break
        done with Java_break -> ());
        raise (Failure ("RuntimeException"))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method extractPath : 'any1 'any2. 'any1 * 'any2 -> BasicArrayList.basicArrayList = fun (start, current) ->
        let start = Obj.repr start in
        let current = Obj.repr current in
        let current = ref current in
        begin
        let path : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        while ((Obj.repr (Obj.magic !current)#parent) != (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) do
            ignore (!path#add ((Obj.magic !current)#geographicMapCellPosition));
            current := Obj.repr ((Obj.magic (Obj.magic !current)#parent))
        done;
        ignore (!path#add ((Obj.magic start)));
        ignore (basicArrayListUtil#reverse (!path));
        (!path :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        mathUtil <- ((MathUtil.getInstance ()) :> MathUtil.mathUtil);
        openPriorityQueue <- (Obj.repr (new PriorityQueue.priorityQueue ()));
        closedSet <- (Obj.repr (new HashSet.hashSet ()));
        geographicMapInterface <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        costArray <- (PathFindingNodeCost.get_nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY ());
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PathFinder" (fun arguments -> Obj.repr (new pathFinder (Obj.obj arguments)))


