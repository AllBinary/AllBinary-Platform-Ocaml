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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.graphics.geography.map.GeographicMapCellPosition *)

class waypointPathRunnable () =
  object (self)
    inherit WaypointPathRunnableBase.waypointPathRunnableBase ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method run () : unit =
        begin
        (try
            ignore (((self#pathFindingLayer)#getWaypointRunnableLogHelper ())#start ((self#pathFindingLayer)));
            let waypointBehavior : WaypointBehaviorBase.waypointBehaviorBase ref = ref ((((self#pathFindingLayer)#getWaypointBehavior ()) :> WaypointBehaviorBase.waypointBehaviorBase)) in ();
            let geographicMapCellPosition : GeographicMapCellPosition.geographicMapCellPosition ref = ref ((((self#pathFindingLayer)#getCurrentGeographicMapCellPosition ()) :> GeographicMapCellPosition.geographicMapCellPosition)) in ();
            if (!geographicMapCellPosition == (Obj.magic 0)) then begin
                raise (Failure ("Should never be running here"))
            end;
            ignore (!waypointBehavior#setWaypointPathsList (((((self#targetPathFindingLayer)#getWaypointBehavior ())#getWaypoint ())#getPathsListRunnable (!geographicMapCellPosition))));
            ignore (((self#pathFindingLayer)#getWaypointRunnableLogHelper ())#end_ ((self#pathFindingLayer)));
            ignore (Unix.sleepf (Float.of_int ((15 + (((self#priorityP) * 2)))) /. 1000.0))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e));
            ignore (self#setRunning (false))
        end)
        end [@@warning "-7"]
    

    method isDone () : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "WaypointPathRunnable" (fun arguments -> Obj.repr (new waypointPathRunnable (Obj.obj arguments)))


