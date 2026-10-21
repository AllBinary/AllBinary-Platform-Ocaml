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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.math.LayerDistanceUtil *)
(* import org.allbinary.thread.PriorityRunnable *)
(* import org.allbinary.thread.RunnableInterface *)

class waypointPathRunnableBase () =
  object (self)
    val mutable layerDistanceUtil : LayerDistanceUtil.layerDistanceUtil = (Obj.magic 0)
    method layerDistanceUtil = layerDistanceUtil
    method set_layerDistanceUtil value' = layerDistanceUtil <- value'
    val mutable pathFindingLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method pathFindingLayer = pathFindingLayer
    method set_pathFindingLayer value' = pathFindingLayer <- value'
    val mutable targetPathFindingLayer : PathFindingLayerInterface.pathFindingLayerInterface = (Obj.magic 0)
    method targetPathFindingLayer = targetPathFindingLayer
    method set_targetPathFindingLayer value' = targetPathFindingLayer <- value'
    val mutable priorityP : int = 0
    method priorityP = priorityP
    method set_priorityP value' = priorityP <- value'
    val mutable runningP : bool = false
    method runningP = runningP
    method set_runningP value' = runningP <- value'
    

    method isRunning () : bool =
        begin
        runningP
        end
    

    method setRunning ((isRunning : bool)) : unit =
        begin
        runningP <- isRunning
        end
    

    method setThread ((_thread : java_thread)) : unit =
        begin
        ()
        end
    

    method setTargetLayer : 'any1. 'any1 -> unit = fun (waypointLayer) ->
        let waypointLayer = Obj.repr waypointLayer in
        begin
        targetPathFindingLayer <- (Obj.magic waypointLayer);
        (self#setPriority ())
        end [@@warning "-20"]
    

    method setPriority () : unit =
        begin
        let pathFindingLayer_arg : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic pathFindingLayer) :> AllBinaryLayer.allBinaryLayer)) in ();
        let targetLayer : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic targetPathFindingLayer) :> AllBinaryLayer.allBinaryLayer)) in ();
        if (!targetLayer != (Obj.magic 0)) then begin
            let distance : int ref = ref ((layerDistanceUtil#getDistance (!targetLayer, !pathFindingLayer_arg))) in ();
            let distanceCategory : int ref = ref ((!distance / 70)) in ();
            priorityP <- !distanceCategory
        end
        end
    

    method getTargetLayer () : PathFindingLayerInterface.pathFindingLayerInterface =
        begin
        (targetPathFindingLayer :> PathFindingLayerInterface.pathFindingLayerInterface)
        end
    

    method setUnitLayer : 'any1. 'any1 -> unit = fun (unitLayer) ->
        let unitLayer = Obj.repr unitLayer in
        begin
        pathFindingLayer <- (Obj.magic unitLayer)
        end [@@warning "-20"]
    

    method getPriority () : int =
        begin
        priorityP
        end
    

    method isDone () : bool =
        begin
        true
        end
    

    method run () : unit =
        begin
        ()
        end
    

    method reset () : unit =
        begin
        ()
        end

    initializer
      begin
        layerDistanceUtil <- ((LayerDistanceUtil.getInstance ()) :> LayerDistanceUtil.layerDistanceUtil);
        pathFindingLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        targetPathFindingLayer <- ((NullPathFindingLayer.get_nULL_PATH_FINDING_LAYER ()) :> PathFindingLayerInterface.pathFindingLayerInterface);
        priorityP <- 2147483647;
        runningP <- false;
        ()
      end
  end
let () = java_register_constructor "WaypointPathRunnableBase" (fun arguments -> Obj.repr (new waypointPathRunnableBase (Obj.obj arguments)))


