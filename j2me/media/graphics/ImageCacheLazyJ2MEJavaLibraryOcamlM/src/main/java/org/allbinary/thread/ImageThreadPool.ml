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
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class imageThreadPool ((poolName : string), (numThreads : int), (priority : int)) =
  object
    inherit ThreadPool.threadPool (poolName, numThreads, priority) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

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
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageThreadPool" (fun arguments -> Obj.repr (new imageThreadPool (Obj.obj arguments)))

let instance : Obj.t = (Obj.repr (new imageThreadPool ("ImageLoader", 1, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ()))))))
let get_instance () = Obj.magic instance
let () = java_register_static "ImageThreadPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic instance)))
        end
let () = java_register_static "ImageThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


