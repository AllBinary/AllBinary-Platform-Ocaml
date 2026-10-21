(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.media.graphics.geography.pathfinding *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.media.graphics.geography.map.BasicGeographicMap *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class pathFindingNodeCostInfoFactoryBase () =
  object
    

    method create : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 * int * int -> unit = fun (_geographicMapInterface, _comingFromGeographicMapCellPosition, _geographicMapCellPosition, (_costFromStart : int), (_costToEnd : int)) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]
    

    method getTotalCost : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> int = fun (_geographicMapInterface, _comingFromGeographicMapCellPosition, _geographicMapCellPosition) ->
        begin
        raise (Failure ("RuntimeException"))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "PathFindingNodeCostInfoFactoryBase" (fun arguments -> Obj.repr (new pathFindingNodeCostInfoFactoryBase (Obj.obj arguments)))

let nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE = (new pathFindingNodeCostInfoFactoryBase ())
let get_nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE () = nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE
let () = java_register_static "PathFindingNodeCostInfoFactoryBase.get_nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE" (fun _ -> Obj.repr (get_nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE ()))


