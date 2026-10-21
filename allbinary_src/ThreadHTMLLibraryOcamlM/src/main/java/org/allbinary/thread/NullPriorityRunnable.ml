(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]

class nullPriorityRunnable () =
  object
    

    method getPriority () : int =
        begin
        0
        end
    

    method isDone () : bool =
        begin
        true
        end
    

    method reset () : unit =
        begin
        ()
        end
    

    method run () : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullPriorityRunnable" (fun arguments -> Obj.repr (new nullPriorityRunnable (Obj.obj arguments)))


