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
[@@@warning "-20"]

let nULL_THREAD_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_nULL_THREAD : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !nULL_THREAD_cell with Lazy.Undefined -> java_null)
let set_nULL_THREAD value' = nULL_THREAD_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "NullThread.get_nULL_THREAD" (fun _ -> Obj.repr (get_nULL_THREAD ()))
let () = java_register_static "NullThread.set_nULL_THREAD" (fun value' -> set_nULL_THREAD value'; Obj.repr ())
class nullThread () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullThread" (fun arguments -> Obj.repr (new nullThread (Obj.obj arguments)))

let () = nULL_THREAD_cell := lazy (Obj.repr ((Obj.obj (java_new "Thread" (Obj.repr ())))))


