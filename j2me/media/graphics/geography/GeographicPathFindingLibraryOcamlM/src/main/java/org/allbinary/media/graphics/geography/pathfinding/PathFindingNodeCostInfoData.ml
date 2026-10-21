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

class pathFindingNodeCostInfoData () =
  object
    val mutable mAX_TOTAL_COST : int = 0
    method mAX_TOTAL_COST = mAX_TOTAL_COST
    method set_mAX_TOTAL_COST value' = mAX_TOTAL_COST <- value'
    val mutable mAX_NODE_COST : int = 0
    method mAX_NODE_COST = mAX_NODE_COST
    method set_mAX_NODE_COST value' = mAX_NODE_COST <- value'
    

    initializer
      begin
        mAX_TOTAL_COST <- 2147483647;
        mAX_NODE_COST <- (2147483647 / 10000);
        ();
        ()
      end
  end
let () = java_register_constructor "PathFindingNodeCostInfoData" (fun arguments -> Obj.repr (new pathFindingNodeCostInfoData (Obj.obj arguments)))

let instance = (new pathFindingNodeCostInfoData ())
let get_instance () = instance
let () = java_register_static "PathFindingNodeCostInfoData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PathFindingNodeCostInfoData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


