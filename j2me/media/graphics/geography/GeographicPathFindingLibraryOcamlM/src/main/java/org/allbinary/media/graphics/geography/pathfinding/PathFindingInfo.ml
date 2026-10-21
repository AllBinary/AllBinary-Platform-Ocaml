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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class pathFindingInfo ((pathFindingNodeCostInfoFactoryInterface_arg : PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase), (startPathFindingNodeList_arg : BasicArrayList.basicArrayList), (endPathFindingNodeList_arg : BasicArrayList.basicArrayList)) =
  object
    val mutable pathFinder : GeographicPathFinderBase.geographicPathFinderBase = (Obj.magic 0)
    method pathFinder = pathFinder
    method set_pathFinder value' = pathFinder <- value'
    val mutable startPathFindingNodeList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method startPathFindingNodeList = startPathFindingNodeList
    method set_startPathFindingNodeList value' = startPathFindingNodeList <- value'
    val mutable endPathFindingNodeList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method endPathFindingNodeList = endPathFindingNodeList
    method set_endPathFindingNodeList value' = endPathFindingNodeList <- value'
    val mutable pathFindingNodeCostInfoFactoryInterface : PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase = (Obj.magic 0)
    method pathFindingNodeCostInfoFactoryInterface = pathFindingNodeCostInfoFactoryInterface
    method set_pathFindingNodeCostInfoFactoryInterface value' = pathFindingNodeCostInfoFactoryInterface <- value'
    
    

    method getStartPathFindingNodeList () : BasicArrayList.basicArrayList =
        begin
        (startPathFindingNodeList :> BasicArrayList.basicArrayList)
        end
    

    method getEndPathFindingNodeList () : BasicArrayList.basicArrayList =
        begin
        (endPathFindingNodeList :> BasicArrayList.basicArrayList)
        end
    

    method getPathFinder () : GeographicPathFinderBase.geographicPathFinderBase =
        begin
        (pathFinder :> GeographicPathFinderBase.geographicPathFinderBase)
        end
    

    method addStartPathFindingNode : 'any1. 'any1 -> unit = fun (startPathFindingNode) ->
        let startPathFindingNode = Obj.repr startPathFindingNode in
        begin
        ignore (startPathFindingNodeList#add ((Obj.magic startPathFindingNode)))
        end [@@warning "-20"]
    

    method addEndPathFindingNode : 'any1. 'any1 -> unit = fun (endPathFindingNode) ->
        let endPathFindingNode = Obj.repr endPathFindingNode in
        begin
        ignore (endPathFindingNodeList#add ((Obj.magic endPathFindingNode)))
        end [@@warning "-20"]
    

    method setPathFinder : 'any1. 'any1 -> unit = fun (pathFinder_arg) ->
        let pathFinder_arg = Obj.repr pathFinder_arg in
        begin
        pathFinder <- (Obj.magic pathFinder_arg)
        end [@@warning "-20"]
    

    method getPathFindingNodeCostInfoFactoryInterface () : PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase =
        begin
        (pathFindingNodeCostInfoFactoryInterface :> PathFindingNodeCostInfoFactoryBase.pathFindingNodeCostInfoFactoryBase)
        end

    initializer
      begin
        pathFinder <- ((GeographicPathFinderBase.get_nULL_GEOGRAPHIC_PATH_FINDER_BASE ()) :> GeographicPathFinderBase.geographicPathFinderBase);
        ();
        ();
        ();
        ();
        pathFindingNodeCostInfoFactoryInterface <- pathFindingNodeCostInfoFactoryInterface_arg;
        startPathFindingNodeList <- startPathFindingNodeList_arg;
        endPathFindingNodeList <- endPathFindingNodeList_arg
      end
  end
let () = java_register_constructor "PathFindingInfo" (fun arguments -> Obj.repr (new pathFindingInfo (Obj.obj arguments)))

let nULL_PATH_FINDING_INFO = (new pathFindingInfo ((PathFindingNodeCostInfoFactoryBase.get_nULL_PATH_FINDING_NODE_COST_INFO_FACTORY_BASE ()), ((BasicArrayListUtil.getInstance ())#getImmutableInstance ()), ((BasicArrayListUtil.getInstance ())#getImmutableInstance ())))
let get_nULL_PATH_FINDING_INFO () = nULL_PATH_FINDING_INFO
let () = java_register_static "PathFindingInfo.get_nULL_PATH_FINDING_INFO" (fun _ -> Obj.repr (get_nULL_PATH_FINDING_INFO ()))


