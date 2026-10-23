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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class primaryThreadPool ((poolName : string), (numThreads : int), (priority : int)) =
  object (self)
    inherit ThreadPool.threadPool (poolName, numThreads, priority) as super
    
    

    method runTask ((task : java_runnable)) : unit =
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), self, (self#threadPoolStrings)#aDD_TASK));
        ignore (super#runTask (task))
        end [@@warning "-7"]
    

    method startTask ((task : java_runnable)) : unit =
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#threadPoolStrings)#sTART_TASK))#append (((StringUtil.getInstance ())#toString (task)))))), self, (self#commonStrings)#rUN))
        end [@@warning "-7"]
    

    method completedTask ((task : java_runnable)) : unit =
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#threadPoolStrings)#cOMPLETE_TASK))#append (((StringUtil.getInstance ())#toString (task)))))), self, (self#commonStrings)#rUN))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PrimaryThreadPool" (fun arguments -> Obj.repr (new primaryThreadPool (Obj.obj arguments)))

let tHREAD_POOL : Obj.t = (Obj.repr (Obj.obj (java_new "ThreadPool" (Obj.repr ("Primary", 1, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ()))))))))
let get_tHREAD_POOL () = Obj.magic tHREAD_POOL
let () = java_register_static "PrimaryThreadPool.get_tHREAD_POOL" (fun _ -> Obj.repr (get_tHREAD_POOL ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic tHREAD_POOL)))
        end
let () = java_register_static "PrimaryThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


