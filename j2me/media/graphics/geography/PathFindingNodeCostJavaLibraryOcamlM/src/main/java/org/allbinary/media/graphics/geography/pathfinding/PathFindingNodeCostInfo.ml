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
(* import org.allbinary.string.CommonLabels *)

class pathFindingNodeCostInfo ((costFromStart : int), (costToGoal : int)) =
  object (self)
    val mutable pathFindingNodeCostInfoData : PathFindingNodeCostInfoData.pathFindingNodeCostInfoData = (Obj.magic 0)
    method pathFindingNodeCostInfoData = pathFindingNodeCostInfoData
    method set_pathFindingNodeCostInfoData value' = pathFindingNodeCostInfoData <- value'
    val mutable costFromStartP : int = 0
    method costFromStartP = costFromStartP
    method set_costFromStartP value' = costFromStartP <- value'
    val mutable costToEndP : int = 0
    method costToEndP = costToEndP
    method set_costToEndP value' = costToEndP <- value'
    val mutable totalCostP : int = 0
    method totalCostP = totalCostP
    method set_totalCostP value' = totalCostP <- value'
    
    

    method setCostToEnd ((costToEnd : int)) : unit =
        begin
        costToEndP <- costToEnd
        end
    

    method setTotalCost ((totalCost : int)) : unit =
        begin
        totalCostP <- totalCost
        end
    

    method setCalculatedTotalCost () : unit =
        begin
        totalCostP <- (costFromStartP + costToEndP);
        if (totalCostP > pathFindingNodeCostInfoData#mAX_NODE_COST) then begin
            raise (Failure ("Max Cost Exceeded"))
        end
        end
    

    method setCostFromStart ((cost : int)) : unit =
        begin
        costFromStartP <- cost
        end
    

    method addCostFromStart ((cost : int)) : unit =
        begin
        costFromStartP <- (costFromStartP + cost)
        end
    

    method compareTo : 'any1. 'any1 -> int = fun (pathFindingNodeCostInfo) ->
        let pathFindingNodeCostInfo = Obj.repr pathFindingNodeCostInfo in
        begin
        ((java.get_lang ())#long#compare (totalCostP, (Obj.magic pathFindingNodeCostInfo)#totalCostP))
        end [@@warning "-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((java_get_class (Obj.repr self))));
        ignore (!stringBuffer#append ((CommonLabels.getInstance ())#cOLON_SEP));
        ignore (!stringBuffer#append ("CostFromStart: "));
        ignore (!stringBuffer#appendlong (costFromStartP));
        ignore (!stringBuffer#append (" CostToEnd: "));
        ignore (!stringBuffer#appendlong (costToEndP));
        ignore (!stringBuffer#append (" TotalCost: "));
        ignore (!stringBuffer#appendlong (totalCostP));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        pathFindingNodeCostInfoData <- ((PathFindingNodeCostInfoData.getInstance ()) :> PathFindingNodeCostInfoData.pathFindingNodeCostInfoData);
        ();
        ();
        totalCostP <- 0;
        ();
        costFromStartP <- costFromStart;
        costToEndP <- costToGoal;
        (self#setCalculatedTotalCost ())
      end
  end
let () = java_register_constructor "PathFindingNodeCostInfo" (fun arguments -> Obj.repr (new pathFindingNodeCostInfo (Obj.obj arguments)))


