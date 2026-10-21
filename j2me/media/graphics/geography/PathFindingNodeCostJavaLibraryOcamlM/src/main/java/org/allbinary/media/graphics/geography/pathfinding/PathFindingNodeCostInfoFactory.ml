(*

  AllBinary Open License Version 1
  Copyright (c) 2006 AllBinary
  
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
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class pathFindingNodeCostInfoFactory ((max : int)) =
  object (self)
    inherit PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase ()
    val mutable pathFindingNodeCostInfoAdjacencyList : PathFindingNodeCostInfo.pathFindingNodeCostInfo array array = (Obj.magic 0)
    method pathFindingNodeCostInfoAdjacencyList = pathFindingNodeCostInfoAdjacencyList
    method set_pathFindingNodeCostInfoAdjacencyList value' = pathFindingNodeCostInfoAdjacencyList <- value'
    
    

    method create : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * int -> unit = fun (_geographicMapInterface, goingToGeographicMapCellPosition, geographicMapCellPosition, (costFromStart : int), (costToEnd : int)) ->
        let goingToGeographicMapCellPosition = Obj.repr goingToGeographicMapCellPosition in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        ignore (self#getInstance ((Obj.magic goingToGeographicMapCellPosition), (Obj.magic geographicMapCellPosition), costFromStart, costToEnd))
        end [@@warning "-7-20"]
    

    method getInstance : 'any1 'any2. 'any1 * 'any2 * int * int -> PathFindingNodeCostInfo.pathFindingNodeCostInfo = fun (goingToGeographicMapCellPosition, geographicMapCellPosition, (costFromStart : int), (costToEnd : int)) ->
        let goingToGeographicMapCellPosition = Obj.repr goingToGeographicMapCellPosition in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        let pathFindingNodeCostInfo : PathFindingNodeCostInfo.pathFindingNodeCostInfo ref = ref (((self#getInstance ((Obj.magic goingToGeographicMapCellPosition), (Obj.magic geographicMapCellPosition))) :> PathFindingNodeCostInfo.pathFindingNodeCostInfo)) in ();
        if (!pathFindingNodeCostInfo == (Obj.magic 0)) then begin
            pathFindingNodeCostInfo := (new PathFindingNodeCostInfo.pathFindingNodeCostInfo (costFromStart, costToEnd));
            ignore (!pathFindingNodeCostInfo#setCalculatedTotalCost ());
            pathFindingNodeCostInfoAdjacencyList.(((Obj.magic geographicMapCellPosition)#getId ())).(((Obj.magic goingToGeographicMapCellPosition)#set_getId ())) (!pathFindingNodeCostInfo)
        end else begin
            ignore (!pathFindingNodeCostInfo#setCostFromStart (costFromStart));
            ignore (!pathFindingNodeCostInfo#setCostToEnd (costToEnd));
            ignore (!pathFindingNodeCostInfo#setCalculatedTotalCost ())
        end;
        (!pathFindingNodeCostInfo :> PathFindingNodeCostInfo.pathFindingNodeCostInfo)
        end [@@warning "-7-20"]
    

    (* Java overload getInstance(GeographicMapCellPosition, GeographicMapCellPosition) is not converted: OCaml has one method per name *)
    

    method getTotalCost : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> int = fun (_geographicMapInterface, comingFromGeographicMapCellPosition, geographicMapCellPosition) ->
        let comingFromGeographicMapCellPosition = Obj.repr comingFromGeographicMapCellPosition in
        let geographicMapCellPosition = Obj.repr geographicMapCellPosition in
        begin
        (self#getInstance ((Obj.magic comingFromGeographicMapCellPosition), (Obj.magic geographicMapCellPosition)))#totalCostP
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        pathFindingNodeCostInfoAdjacencyList <- (Array.make_matrix (max) (max) (Obj.magic 0))
      end
  end
let () = java_register_constructor "PathFindingNodeCostInfoFactory" (fun arguments -> Obj.repr (new pathFindingNodeCostInfoFactory (Obj.obj arguments)))


