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

class nullThread () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullThread" (fun arguments -> Obj.repr (new nullThread (Obj.obj arguments)))

let nULL_THREAD : java_thread = ((Obj.obj (java_new "Thread" (Obj.repr ()))) :> java_thread)
let get_nULL_THREAD () = nULL_THREAD
let () = java_register_static "NullThread.get_nULL_THREAD" (fun _ -> Obj.repr (get_nULL_THREAD ()))


