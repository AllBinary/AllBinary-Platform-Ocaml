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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]

class aBRunnable () =
  object
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    

    method setThread ((_thread : java_thread)) : unit =
        begin
        ()
        end
    

    method isRunning () : bool =
        begin
        running
        end
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end
    

    method run () : unit =
        begin
        ()
        end
    

    method getType () : int =
        begin
        (-1)
        end

    initializer
      begin
        running <- false;
        ()
      end
  end
let () = java_register_constructor "ABRunnable" (fun arguments -> Obj.repr (new aBRunnable (Obj.obj arguments)))


