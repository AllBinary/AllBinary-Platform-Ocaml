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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let nORMAL_PRIORITY : int = 5
let get_nORMAL_PRIORITY () = nORMAL_PRIORITY
let () = java_register_static "ThreadPool.get_nORMAL_PRIORITY" (fun _ -> Obj.repr (get_nORMAL_PRIORITY ()))
class threadPool ((_poolName : string), (_numThreads_arg : int), (_priority : int)) =
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
    val mutable isAlive : bool = false
    method isAlive = isAlive
    method set_isAlive value' = isAlive <- value'
    val mutable taskQueue : BasicArrayList.basicArrayList = (Obj.magic 0)
    method taskQueue = taskQueue
    method set_taskQueue value' = taskQueue <- value'
    val mutable numThreads : int = 0
    method numThreads = numThreads
    method set_numThreads value' = numThreads <- value'
    val mutable runningTask : bool = false
    method runningTask = runningTask
    method set_runningTask value' = runningTask <- value'
    val mutable currentPriorityRunnable : PriorityRunnable.priorityRunnable = (Obj.magic 0)
    method currentPriorityRunnable = currentPriorityRunnable
    method set_currentPriorityRunnable value' = currentPriorityRunnable <- value'
    
    

    method runAPriorityTask () : unit =
        try
        begin
        if (not (currentPriorityRunnable#isDone ())) then begin
            ignore (currentPriorityRunnable#run ())
        end else begin
            let runnable : java_runnable ref = ref (((self#getTask ()) :> java_runnable)) in ();
            if ((Obj.repr !runnable) == (Obj.repr nULL_RUNNABLE)) then begin
                raise (Java_return (Obj.repr (())))
            end;
            currentPriorityRunnable <- (Obj.magic !runnable);
            if (not (((Obj.repr currentPriorityRunnable) == (Obj.repr threadObjectUtil#nULL_PRIORITY_RUNNABLE)))) then begin
                ignore (currentPriorityRunnable#reset ());
                ignore (currentPriorityRunnable#run ())
            end
        end
        end
        with Java_return value -> Obj.obj value
    

    method runATask () : unit =
        begin
        let runnable : java_runnable ref = ref (((self#getTask ()) :> java_runnable)) in ();
        if (!runnable != (Obj.magic 0)) then begin
            ignore (!runnable#run ())
        end
        end
    

    method init () : unit =
        begin
        if (not isAlive) then begin
            isAlive <- true;
            taskQueue <- (new BasicArrayListD.basicArrayListD ())
        end
        end
    

    method runTaskWithPriority : 'any1. 'any1 -> unit = fun (task) ->
        let task = Obj.repr task in
        begin
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
            end
        end
        end [@@warning "-20"]
    

    method runTask ((task : java_runnable)) : unit =
        begin
        if (not isAlive) then begin
            (self#init ())
        end;
        if (task != (Obj.magic 0)) then begin
            ignore (taskQueue#add (task))
        end
        end
    

    method getTask () : java_runnable =
        try
        begin
        if (taskQueue#isEmpty ()) then begin
            raise (Java_return (Obj.repr (nULL_RUNNABLE)))
        end;
        ((Obj.magic (taskQueue#removeAt (0))) :> java_runnable)
        end
        with Java_return value -> Obj.obj value
    

    method clear () : unit =
        begin
        ignore (taskQueue#clear ())
        end
    

    method close () : unit =
        begin
        if isAlive then begin
            isAlive <- false;
            ignore (taskQueue#clear ());
            currentPriorityRunnable <- threadObjectUtil#nULL_PRIORITY_RUNNABLE
        end
        end
    

    method join () : unit =
        begin
        isAlive <- false;
        ignore (taskQueue#clear ());
        currentPriorityRunnable <- threadObjectUtil#nULL_PRIORITY_RUNNABLE
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
            ignore (taskQueue#clear ());
            currentPriorityRunnable <- threadObjectUtil#nULL_PRIORITY_RUNNABLE
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

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        nULL_RUNNABLE <- ((NullRunnable.getInstance ()) :> NullRunnable.nullRunnable);
        threadPoolStrings <- ((ThreadPoolStrings.getInstance ()) :> ThreadPoolStrings.threadPoolStrings);
        threadObjectUtil <- ((ThreadObjectUtil.getInstance ()) :> ThreadObjectUtil.threadObjectUtil);
        isAlive <- false;
        taskQueue <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        numThreads <- 0;
        runningTask <- false;
        currentPriorityRunnable <- (threadObjectUtil#nULL_PRIORITY_RUNNABLE :> PriorityRunnable.priorityRunnable);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ThreadPool" (fun arguments -> Obj.repr (new threadPool (Obj.obj arguments)))


