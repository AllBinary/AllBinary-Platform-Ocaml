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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.string.CommonLabels *)

let nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY : Obj.t = (Obj.repr (Array.make_matrix (0) (0) (Obj.magic 0)))
let get_nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY () = Obj.magic nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY
let () = java_register_static "PathFindingNodeCost.get_nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY" (fun _ -> Obj.repr (get_nULL_PATH_FINDING_NODE_COST_ARRAY_ARRAY ()))
class pathFindingNodeCost ((parent : Obj.t), (geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition), (pathFindingNodeCostInfo : PathFindingNodeCostInfo.pathFindingNodeCostInfo)) =
  object (self)
    inherit PathFindingNode.pathFindingNode (parent, geographicMapCellPosition)
    val mutable commonSeps : CommonSeps.commonSeps = (Obj.magic 0)
    method commonSeps = commonSeps
    method set_commonSeps value' = commonSeps <- value'
    val mutable pathFindingNodeCostInfoP : PathFindingNodeCostInfo.pathFindingNodeCostInfo = (Obj.magic 0)
    method pathFindingNodeCostInfoP = pathFindingNodeCostInfoP
    method set_pathFindingNodeCostInfoP value' = pathFindingNodeCostInfoP <- value'
    
    

    method getPathFindingNodeCostInfo () : PathFindingNodeCostInfo.pathFindingNodeCostInfo =
        begin
        (pathFindingNodeCostInfoP :> PathFindingNodeCostInfo.pathFindingNodeCostInfo)
        end [@@warning "-7"]
    

    method setPathFindingNodeCostInfo : 'any1. 'any1 -> unit = fun (pathFindingNodeCostInfo) ->
        let pathFindingNodeCostInfo = Obj.repr pathFindingNodeCostInfo in
        begin
        pathFindingNodeCostInfoP <- (Obj.magic pathFindingNodeCostInfo)
        end [@@warning "-7-20"]
    

    method compareTo : 'any1. 'any1 -> int = fun (pathFindingNodeCost) ->
        let pathFindingNodeCost = Obj.repr pathFindingNodeCost in
        begin
        (pathFindingNodeCostInfoP#compareTo ((Obj.magic pathFindingNodeCost)#pathFindingNodeCostInfoP))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#cOLON_SEP));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (self#getPathFindingNodeCostInfo ())))));
        ignore (!stringBuffer#append (" Path: "));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr geographicMapCellPosition))));
        let pathFindingNode : PathFindingNode.pathFindingNode ref = ref (((Obj.magic parent) :> PathFindingNode.pathFindingNode)) in ();
        while (!pathFindingNode != (Obj.magic 0)) do
            ignore (!stringBuffer#append ((java_string_of (Obj.repr !pathFindingNode#geographicMapCellPosition))));
            ignore (!stringBuffer#append (commonSeps#sPACE));
            pathFindingNode := (Obj.magic !pathFindingNode#parent)
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        commonSeps <- ((CommonSeps.getInstance ()) :> CommonSeps.commonSeps);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        pathFindingNodeCostInfoP <- pathFindingNodeCostInfo;
        if (geographicMapCellPosition == (Obj.magic 0)) then begin
            raise (Failure ("No GeographicMapCellPosition"))
        end;
        if ((self#getPathFindingNodeCostInfo ()) == (Obj.magic 0)) then begin
            raise (Failure ("No PathFindingNodeCostInfo"))
        end
      end
  end
let () = java_register_constructor "PathFindingNodeCost" (fun arguments -> Obj.repr (new pathFindingNodeCost (Obj.obj arguments)))


