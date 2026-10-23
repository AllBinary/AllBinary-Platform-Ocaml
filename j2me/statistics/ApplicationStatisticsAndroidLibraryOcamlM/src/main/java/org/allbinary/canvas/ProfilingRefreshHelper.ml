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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.View *)
(* import org.allbinary.logic.string.StringMaker *)

class profilingRefreshHelper () =
  object (self)
    inherit AndroidGameStatistics.androidGameStatistics () as super
    val mutable firstTime : bool = false
    method firstTime = firstTime
    method set_firstTime value' = firstTime <- value'
    val mutable bestFrameProcessingTime : int = 0
    method bestFrameProcessingTime = bestFrameProcessingTime
    method set_bestFrameProcessingTime value' = bestFrameProcessingTime <- value'
    val mutable worstFrameProcessingTime : int = 0
    method worstFrameProcessingTime = worstFrameProcessingTime
    method set_worstFrameProcessingTime value' = worstFrameProcessingTime <- value'
    val mutable frameProcessingTimeElapsed : int = 0
    method frameProcessingTimeElapsed = frameProcessingTimeElapsed
    method set_frameProcessingTimeElapsed value' = frameProcessingTimeElapsed <- value'
    
    

    method initView : 'any1. 'any1 -> unit = fun (view) ->
        let view = Obj.repr view in
        begin
        ignore (super#initView ((Obj.magic view)));
        frameProcessingTimeElapsed <- ((self#getTimeDelayHelper ())#getStartTime ());
        bestFrameProcessingTime <- 2147483647;
        worstFrameProcessingTime <- 0
        end [@@warning "-7-20"]
    

    method nextFrame () : unit =
        begin
        frameProcessingTimeElapsed <- ((Float.to_int (Unix.gettimeofday () *. 1000.0)) - frameProcessingTimeElapsed);
        if (firstTime <> true) then begin
            if (frameProcessingTimeElapsed > worstFrameProcessingTime) then begin
                worstFrameProcessingTime <- frameProcessingTimeElapsed
            end;
            if (frameProcessingTimeElapsed < bestFrameProcessingTime) then begin
                bestFrameProcessingTime <- frameProcessingTimeElapsed
            end
        end else begin
            firstTime <- false
        end;
        ignore (super#nextFrame ())
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append ((super#toString ())))#append (" Worst: "))#appendint (worstFrameProcessingTime))#append (" Best: "))#appendint (bestFrameProcessingTime))))
        end [@@warning "-7"]

    initializer
      begin
        firstTime <- true;
        bestFrameProcessingTime <- 0;
        worstFrameProcessingTime <- 0;
        frameProcessingTimeElapsed <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "ProfilingRefreshHelper" (fun arguments -> Obj.repr (new profilingRefreshHelper (Obj.obj arguments)))

let instance = (new profilingRefreshHelper ())
let get_instance () = instance
let () = java_register_static "ProfilingRefreshHelper.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () : AndroidGameStatistics.androidGameStatistics =
        begin
        (instance :> AndroidGameStatistics.androidGameStatistics)
        end
let () = java_register_static "ProfilingRefreshHelper.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


