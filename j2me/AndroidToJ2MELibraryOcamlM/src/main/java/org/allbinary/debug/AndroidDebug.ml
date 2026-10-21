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
(* package org.allbinary.debug *)

open Allbinary_java [@@warning "-33"]
(* import android.os.Debug *)

class androidDebug () =
  object (self)
    val mutable startTime : int = 0
    method startTime = startTime
    method set_startTime value' = startTime <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable bufferSize : int = 0
    method bufferSize = bufferSize
    method set_bufferSize value' = bufferSize <- value'
    

    method start () : unit =
        begin
        (self#setStartTime ((Float.to_int (Unix.gettimeofday () *. 1000.0))));
        ignore (Debug.startMethodTracing ("trace", bufferSize));
        (self#setRunning (true))
        end
    

    method stop () : unit =
        begin
        startTime <- max_int;
        ignore (Debug.stopMethodTracing ());
        (self#setRunning (false))
        end
    

    method getMaxTime () : int =
        begin
        120000
        end
    

    method setStartTime ((startTime_arg : int)) : unit =
        begin
        startTime <- startTime_arg
        end
    

    method getStartTime () : int =
        begin
        startTime
        end
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end
    

    method isRunning () : bool =
        begin
        running
        end

    initializer
      begin
        startTime <- max_int;
        running <- false;
        bufferSize <- ((32 * 1024) * 1024);
        ()
      end
  end
let () = java_register_constructor "AndroidDebug" (fun arguments -> Obj.repr (new androidDebug (Obj.obj arguments)))


