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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)

class pooledThread (threadPool_arg) =
  object (self)
    inherit java_thread ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable threadObjectUtil : ThreadObjectUtil.threadObjectUtil = (Obj.magic 0)
    method threadObjectUtil = threadObjectUtil
    method set_threadObjectUtil value' = threadObjectUtil <- value'
    val mutable threadPool : Obj.t = Obj.repr 0
    method threadPool : 'r. 'r = Obj.magic threadPool
    method set_threadPool : 'v. 'v -> unit = fun value' -> threadPool <- Obj.repr value'
    val mutable iNTERRUPT_EXCEPTION : string = ""
    method iNTERRUPT_EXCEPTION = iNTERRUPT_EXCEPTION
    method set_iNTERRUPT_EXCEPTION value' = iNTERRUPT_EXCEPTION <- value'
    
    

    method run () : unit =
        begin
        ignore ((Obj.magic threadPool)#threadStarted ());
        while true do
            let task2 : java_runnable ref = ref ((threadObjectUtil#nULL_PRIORITY_RUNNABLE :> java_runnable)) in ();
            (try
                task2 := ((Obj.magic threadPool)#getTask ());
                ignore ((Obj.magic threadPool)#set_runningTask (true));
                ignore ((Obj.magic threadPool)#startTask (!task2))
            with ex -> begin
                let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                ignore ((Obj.magic !logUtil_arg)#putF (iNTERRUPT_EXCEPTION, self, commonStrings#rUN));
                raise Java_break
            end);
            if ((Obj.repr !task2) == (Obj.repr threadObjectUtil#nULL_PRIORITY_RUNNABLE)) then begin
                raise Java_break
            end;
            (try
                ignore (!task2#run ());
                ignore ((Obj.magic threadPool)#completedTask (!task2));
                ignore ((Obj.magic threadPool)#set_runningTask (false))
            with e -> begin
                let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                ignore ((Obj.magic !logUtil_arg)#put ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#eXCEPTION_LABEL))#append (((StringUtil.getInstance ())#toString (!task2)))))), self, commonStrings#rUN, e))
            end)
        done;
        ignore ((Obj.magic threadPool)#threadStopped ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        threadObjectUtil <- ((ThreadObjectUtil.getInstance ()) :> ThreadObjectUtil.threadObjectUtil);
        ();
        iNTERRUPT_EXCEPTION <- "Exit InterruptedException";
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, commonStrings#cONSTRUCTOR));
        threadPool <- Obj.repr (threadPool_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "PooledThread" (fun arguments -> Obj.repr (new pooledThread (Obj.obj arguments)))


