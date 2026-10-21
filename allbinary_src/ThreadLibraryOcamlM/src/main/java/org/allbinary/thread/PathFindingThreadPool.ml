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
(* package org.allbinary.thread *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class pathFindingThreadPool ((poolName : string), (numThreads : int), (_priority : int)) =
  object
    inherit ThreadPool.threadPool (poolName, numThreads, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ())))) as super
    
    

    method runTaskWithPriority : 'any1. 'any1 -> unit = fun (task) ->
        let task = Obj.repr task in
        begin
        ignore (super#runTaskWithPriority ((Obj.magic task)))
        end [@@warning "-7-20"]
    

    method runTask ((task : java_runnable)) : unit =
        begin
        ignore (super#runTask (task))
        end [@@warning "-7"]
    

    method startTask ((_task : java_runnable)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method completedTask ((_task : java_runnable)) : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PathFindingThreadPool" (fun arguments -> Obj.repr (new pathFindingThreadPool (Obj.obj arguments)))

let instance : Obj.t = (Obj.repr (new pathFindingThreadPool ("PathFinding", 1, 1)))
let get_instance () = Obj.magic instance
let () = java_register_static "PathFindingThreadPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic instance)))
        end
let () = java_register_static "PathFindingThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


