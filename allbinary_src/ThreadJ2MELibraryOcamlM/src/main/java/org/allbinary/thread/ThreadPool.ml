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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

let rOOT_NAME : string = "-PooledThread-"
let get_rOOT_NAME () = rOOT_NAME
let () = java_register_static "ThreadPool.get_rOOT_NAME" (fun _ -> Obj.repr (get_rOOT_NAME ()))
let nORMAL_PRIORITY : int = 5
let get_nORMAL_PRIORITY () = nORMAL_PRIORITY
let () = java_register_static "ThreadPool.get_nORMAL_PRIORITY" (fun _ -> Obj.repr (get_nORMAL_PRIORITY ()))
class threadPool ((poolName_arg : string), (numThreads_arg : int), (priority_arg : int)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable nULL_RUNNABLE : NullRunnable.nullRunnable = (Obj.magic 0)
    method nULL_RUNNABLE = nULL_RUNNABLE
    method set_nULL_RUNNABLE value' = nULL_RUNNABLE <- value'
    val mutable threadPoolStrings : ThreadPoolStrings.threadPoolStrings = (Obj.magic 0)
    method threadPoolStrings = threadPoolStrings
    method set_threadPoolStrings value' = threadPoolStrings <- value'
    val mutable threadObjectUtil : ThreadObjectUtil.threadObjectUtil = (Obj.magic 0)
    method threadObjectUtil = threadObjectUtil
    method set_threadObjectUtil value' = threadObjectUtil <- value'
    val mutable poolName : string = ""
    method poolName = poolName
    method set_poolName value' = poolName <- value'
    val mutable priority : int = 0
    method priority = priority
    method set_priority value' = priority <- value'
    val mutable isAlive : bool = false
    method isAlive = isAlive
    method set_isAlive value' = isAlive <- value'
    val mutable taskQueue : BasicArrayList.basicArrayList = (Obj.magic 0)
    method taskQueue = taskQueue
    method set_taskQueue value' = taskQueue <- value'
    val mutable threadID : int = 0
    method threadID = threadID
    method set_threadID value' = threadID <- value'
    val mutable numThreads : int = 0
    method numThreads = numThreads
    method set_numThreads value' = numThreads <- value'
    val mutable runningTask : bool = false
    method runningTask = runningTask
    method set_runningTask value' = runningTask <- value'
    
    

    method init () : unit =
        begin
        if (not isAlive) then begin
            isAlive <- true;
            taskQueue <- (new BasicArrayListD.basicArrayListD ());
            let pooledThread : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            for _i = 0 to numThreads - 1 do
                pooledThread := Obj.repr ((Obj.obj (java_new "PooledThread" (Obj.repr (self)))));
                ignore ((Obj.magic !pooledThread)#setPriority (priority));
                ignore ((Obj.magic !pooledThread)#start ())
            done
        end
        end
    

    method runAPriorityTask () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method runTaskWithPriority : 'any1. 'any1 -> unit = fun (task) ->
        let task = Obj.repr task in
        begin
        begin (* synchronized *)
            if (not isAlive) then begin
                (self#init ())
            end;
            if ((Obj.magic task) != (Obj.magic 0)) then begin
                let size : int ref = ref ((taskQueue#size ())) in ();
                let runnable : PriorityRunnable.priorityRunnable ref = ref (((Obj.magic 0) :> PriorityRunnable.priorityRunnable)) in ();
                let lowerPriorityRunnable : PriorityRunnable.priorityRunnable ref = ref ((threadObjectUtil#nULL_PRIORITY_RUNNABLE :> PriorityRunnable.priorityRunnable)) in ();
                for index = 0 to !size - 1 do
                    runnable := (Obj.magic (taskQueue#get (index)));
                    if ((!runnable#getPriority ()) > ((Obj.magic task)#getPriority ())) then begin
                        lowerPriorityRunnable := !runnable;
                        raise Java_break
                    end
                done;
                if ((Obj.repr !lowerPriorityRunnable) == (Obj.repr threadObjectUtil#nULL_PRIORITY_RUNNABLE)) then begin
                    ignore (taskQueue#add ((Obj.magic task)))
                end else begin
                    let index : int ref = ref ((taskQueue#indexOf (!lowerPriorityRunnable))) in ();
                    ignore (taskQueue#addAt (!index, (Obj.magic task)))
                end;
                ignore ()
            end
        end
        end [@@warning "-20"]
    

    method runTask ((task : java_runnable)) : unit =
        begin
        begin (* synchronized *)
            if (not isAlive) then begin
                (self#init ())
            end;
            if (task != (Obj.magic 0)) then begin
                ignore (taskQueue#add (task));
                ignore ()
            end
        end
        end
    

    method getTask () : java_runnable =
        try
        begin
        begin (* synchronized *)
            while ((taskQueue#size ()) = 0) do
                if (not isAlive) then begin
                    raise (Java_return (Obj.repr (nULL_RUNNABLE)))
                end;
                ignore ()
            done;
            let runnable : java_runnable ref = ref (((Obj.magic (taskQueue#removeAt (0))) :> java_runnable)) in ();
            (!runnable :> java_runnable)
        end
        end
        with Java_return value -> Obj.obj value
    

    method clear () : unit =
        begin
        begin (* synchronized *)
            if isAlive then begin
                ignore (taskQueue#clear ())
            end
        end
        end
    

    method close () : unit =
        begin
        begin (* synchronized *)
            if isAlive then begin
                isAlive <- false;
                ignore (taskQueue#clear ())
            end
        end
        end
    

    method join () : unit =
        begin
        begin (* synchronized *)
            isAlive <- false;
            ignore (taskQueue#clear ());
            ignore ()
        end
        end
    

    method isBusy () : bool =
        try
        begin
        if (not isAlive) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        if ((taskQueue#size ()) > 0) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        if runningTask then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method threadStarted () : unit =
        begin
        ()
        end
    

    method threadStopped () : unit =
        begin
        if (numThreads = 1) then begin
            isAlive <- false;
            ignore (taskQueue#clear ())
        end
        end
    

    method startTask ((_task : java_runnable)) : unit =
        begin
        ()
        end
    

    method completedTask ((_task : java_runnable)) : unit =
        begin
        ()
        end
    

    method createName () : string =
        begin
        (java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (poolName))#append (rOOT_NAME))#appendint ((let value = threadID in threadID <- threadID + 1; value)))))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        nULL_RUNNABLE <- ((NullRunnable.getInstance ()) :> NullRunnable.nullRunnable);
        threadPoolStrings <- ((ThreadPoolStrings.getInstance ()) :> ThreadPoolStrings.threadPoolStrings);
        threadObjectUtil <- ((ThreadObjectUtil.getInstance ()) :> ThreadObjectUtil.threadObjectUtil);
        ();
        ();
        isAlive <- false;
        taskQueue <- (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()) :> BasicArrayList.basicArrayList);
        threadID <- 0;
        ();
        runningTask <- false;
        ();
        poolName <- poolName_arg;
        priority <- priority_arg;
        numThreads <- numThreads_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ThreadPool" (fun arguments -> Obj.repr (new threadPool (Obj.obj arguments)))


