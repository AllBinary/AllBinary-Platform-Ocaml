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
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

let tHREAD_POOL_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_tHREAD_POOL : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !tHREAD_POOL_cell with Lazy.Undefined -> java_null)
let set_tHREAD_POOL value' = tHREAD_POOL_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "MusicThreadPool.get_tHREAD_POOL" (fun _ -> Obj.repr (get_tHREAD_POOL ()))
let () = java_register_static "MusicThreadPool.set_tHREAD_POOL" (fun value' -> set_tHREAD_POOL value'; Obj.repr ())
class musicThreadPool ((poolName : string), (numThreads : int), (priority : int)) =
  object (self)
    inherit ThreadPool.threadPool (poolName, numThreads, priority) as super
    
    

    method runTask ((task : java_runnable)) : unit =
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), (Obj.magic self), (self#threadPoolStrings)#aDD_TASK));
        ignore (super#runTask (task))
        end [@@warning "-7"]
    

    method startTask ((task : java_runnable)) : unit =
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((self#threadPoolStrings)#sTART_TASK))#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), (Obj.magic self), (self#commonStrings)#rUN))
        end [@@warning "-7"]
    

    method completedTask ((task : java_runnable)) : unit =
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((self#threadPoolStrings)#cOMPLETE_TASK))#append (((StringUtil.getInstance ())#toString (task))))#appendlong ((java_to_int (Obj.repr ((Float.to_int (Unix.gettimeofday () *. 1000.0))))))))), (Obj.magic self), (self#commonStrings)#rUN))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MusicThreadPool" (fun arguments -> Obj.repr (new musicThreadPool (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_tHREAD_POOL ()))))
        end
let () = java_register_static "MusicThreadPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = tHREAD_POOL_cell := lazy (Obj.repr ((Obj.obj (java_new "ThreadPool" (Obj.repr ("Music", 2, (Obj.magic (java_call_static "ThreadPool.get_nORMAL_PRIORITY" (Obj.repr ())))))))))


