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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class secondaryThreadPool ((poolName : string), (numThreads : int), (priority : int)) =
  object (self)
    inherit ThreadPool.threadPool (poolName, numThreads, priority) as super
    
    

    method runTask ((task : java_runnable)) : unit =
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), self, threadPoolStrings#aDD_TASK));
        ignore (super#runTask (task))
        end [@@warning "-7"]
    

    method startTask ((task : java_runnable)) : unit =
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (threadPoolStrings#sTART_TASK))#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), self, commonStrings#rUN))
        end [@@warning "-7"]
    

    method completedTask ((task : java_runnable)) : unit =
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (threadPoolStrings#cOMPLETE_TASK))#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), self, commonStrings#rUN))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "SecondaryThreadPool" (fun arguments -> Obj.repr (new secondaryThreadPool (Obj.obj arguments)))

let instance : Obj.t = (Obj.repr (new secondaryThreadPool ("Secondary", 1, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ()))))))
let get_instance () = Obj.magic instance
let () = java_register_static "SecondaryThreadPool.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic instance)))
        end
let () = java_register_static "SecondaryThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


