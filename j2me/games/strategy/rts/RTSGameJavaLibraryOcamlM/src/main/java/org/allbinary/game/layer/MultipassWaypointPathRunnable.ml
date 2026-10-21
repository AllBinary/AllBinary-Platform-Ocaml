(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2003 AllBinary 
   
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
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.thread.ARunnable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)
(* import org.allbinary.media.graphics.geography.pathfinding.MultipassState *)
(* import org.allbinary.media.graphics.geography.pathfinding.PathFindingInfo *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListUtil *)

class multipassWaypointPathRunnable () =
  object (self)
    inherit WaypointPathRunnableBase.waypointPathRunnableBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicArrayListUtil : BasicArrayListUtil.basicArrayListUtil = (Obj.magic 0)
    method basicArrayListUtil = basicArrayListUtil
    method set_basicArrayListUtil value' = basicArrayListUtil <- value'
    val mutable multipassState : MultipassState.multipassState = (Obj.magic 0)
    method multipassState = multipassState
    method set_multipassState value' = multipassState <- value'
    val mutable done_ : bool = false
    method done_ = done_
    method set_done_ value' = done_ <- value'
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable pathFindingInfo : Obj.t = (Obj.magic 0)
    method pathFindingInfo = pathFindingInfo
    method set_pathFindingInfo value' = pathFindingInfo <- value'
    val mutable fIRST_RUNNABLE : java_runnable = (Obj.magic 0)
    method fIRST_RUNNABLE = fIRST_RUNNABLE
    method set_fIRST_RUNNABLE value' = fIRST_RUNNABLE <- value'
    val mutable sECOND_RUNNABLE : java_runnable = (Obj.magic 0)
    method sECOND_RUNNABLE = sECOND_RUNNABLE
    method set_sECOND_RUNNABLE value' = sECOND_RUNNABLE <- value'
    val mutable eND_RUNNABLE : java_runnable = (Obj.magic 0)
    method eND_RUNNABLE = eND_RUNNABLE
    method set_eND_RUNNABLE value' = eND_RUNNABLE <- value'
    val mutable aLREADY_ENDED_RUNNABLE : java_runnable = (Obj.magic 0)
    method aLREADY_ENDED_RUNNABLE = aLREADY_ENDED_RUNNABLE
    method set_aLREADY_ENDED_RUNNABLE value' = aLREADY_ENDED_RUNNABLE <- value'
    val mutable currentPassRunnable : java_runnable = (Obj.magic 0)
    method currentPassRunnable = currentPassRunnable
    method set_currentPassRunnable value' = currentPassRunnable <- value'
    
    

    method setRunning ((isRunning : bool)) : unit =
        begin
        runningP <- isRunning;
        if runningP then begin
            (self#reset ());
            done_ <- false
        end
        end [@@warning "-7"]
    

    method run () : unit =
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            ignore (currentPassRunnable#run ())
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e));
            (self#setRunning (false))
        end)
        end [@@warning "-7"]
    

    method reset2 () : unit =
        begin
        multipassState#set_step (0);
        multipassState#set_iteration (0);
        multipassState#set_iteration2 (0);
        pathFindingInfo <- (NullUtil.getInstance ())#nULL_OBJECT
        end [@@warning "-7"]
    

    method finish () : unit =
        begin
        (self#reset2 ());
        currentPassRunnable <- aLREADY_ENDED_RUNNABLE;
        done_ <- true
        end [@@warning "-7"]
    

    method isDone () : bool =
        begin
        done_
        end [@@warning "-7"]
    

    method reset () : unit =
        begin
        (self#reset2 ());
        currentPassRunnable <- fIRST_RUNNABLE;
        done_ <- false
        end [@@warning "-7"]
    

    method processFirstRunnable () : unit =
        begin
        (try
            ignore ((pathFindingLayer#getWaypointRunnableLogHelper ())#start (pathFindingLayer));
            (self#reset2 ());
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((pathFindingLayer#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            if (!geographicMapCellPosition == (Obj.magic 0)) then begin
                raise (Failure ("Should never be running here"))
            end;
            pathFindingInfo <- (((targetPathFindingLayer#getWaypointBehavior ())#getWaypoint ())#getPathFindingInfo (!geographicMapCellPosition));
            let localPathFindingInfo : PathFindingInfo.pathFindingInfo ref = ref (((Obj.magic pathFindingInfo) :> PathFindingInfo.pathFindingInfo)) in ();
            list <- (((targetPathFindingLayer#getWaypointBehavior ())#getWaypoint ())#getPathsList (!geographicMapCellPosition, !localPathFindingInfo, multipassState));
            if ((Obj.repr list) != (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
                ignore (eND_RUNNABLE#run ())
            end else begin
                currentPassRunnable <- sECOND_RUNNABLE
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e));
            (self#setRunning (false));
            (self#finish ())
        end)
        end [@@warning "-7"]
    

    method processSecondRunnable () : unit =
        begin
        (try
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref (((pathFindingLayer#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            let localPathFindingInfo : PathFindingInfo.pathFindingInfo ref = ref (((Obj.magic pathFindingInfo) :> PathFindingInfo.pathFindingInfo)) in ();
            list <- (((targetPathFindingLayer#getWaypointBehavior ())#getWaypoint ())#getPathsList (!geographicMapCellPosition, !localPathFindingInfo, multipassState));
            if ((Obj.repr list) != (Obj.repr (basicArrayListUtil#getImmutableInstance ()))) then begin
                ignore (eND_RUNNABLE#run ())
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e));
            (self#setRunning (false));
            (self#finish ())
        end)
        end [@@warning "-7"]
    

    method processEndRunnable () : unit =
        begin
        (try
            let waypointBehavior : WaypointBehaviorBase.waypointBehaviorBase ref = ref (((pathFindingLayer#getWaypointBehavior ()) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
            ignore (!waypointBehavior#setWaypointPathsList (list));
            ignore ((pathFindingLayer#getWaypointRunnableLogHelper ())#end_ (pathFindingLayer))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e));
            (self#setRunning (false))
        end);
        (self#finish ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicArrayListUtil <- ((BasicArrayListUtil.getInstance ()) :> BasicArrayListUtil.basicArrayListUtil);
        multipassState <- ((new MultipassState.multipassState ()) :> MultipassState.multipassState);
        done_ <- false;
        list <- ((basicArrayListUtil#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        pathFindingInfo <- (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT);
        fIRST_RUNNABLE <- ((new FirstRunnable.firstRunnable (self)) :> java_runnable);
        sECOND_RUNNABLE <- ((new SecondRunnable.secondRunnable (self)) :> java_runnable);
        eND_RUNNABLE <- ((new EndRunnable.endRunnable (self)) :> java_runnable);
        aLREADY_ENDED_RUNNABLE <- ((object (self)
        inherit ARunnable.aRunnable () as super
        

        method run () : unit =
            begin
            raise (Failure ("RuntimeException"))
            end
    end) :> java_runnable);
        currentPassRunnable <- (fIRST_RUNNABLE :> java_runnable);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "MultipassWaypointPathRunnable" (fun arguments -> Obj.repr (new multipassWaypointPathRunnable (Obj.obj arguments)))


