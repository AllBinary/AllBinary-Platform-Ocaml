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
(* package org.allbinary.time *)

open Allbinary_java [@@warning "-33"]

class gameTickTimeDelayHelper ((startTime_arg : int)) =
  object
    val mutable timeDelta : int = 0
    method timeDelta = timeDelta
    method set_timeDelta value' = timeDelta <- value'
    val mutable startTime : int = 0
    method startTime = startTime
    method set_startTime value' = startTime <- value'
    val mutable lastStartTime : int = 0
    method lastStartTime = lastStartTime
    method set_lastStartTime value' = lastStartTime <- value'
    
    

    method setStartTime () : int =
        begin
        startTime <- (Float.to_int (Unix.gettimeofday () *. 1000.0));
        startTime
        end
    

    method loop () : unit =
        begin
        if (lastStartTime = min_int) then begin
            timeDelta <- 0
        end else begin
            timeDelta <- ((Float.to_int (Unix.gettimeofday () *. 1000.0)) - lastStartTime)
        end
        end
    

    method getTimeFromStart () : int =
        begin
        (startTime - lastStartTime)
        end

    initializer
      begin
        timeDelta <- 0;
        ();
        ();
        ();
        startTime <- startTime_arg;
        lastStartTime <- 0
      end
  end
let () = java_register_constructor "GameTickTimeDelayHelper" (fun arguments -> Obj.repr (new gameTickTimeDelayHelper (Obj.obj arguments)))


