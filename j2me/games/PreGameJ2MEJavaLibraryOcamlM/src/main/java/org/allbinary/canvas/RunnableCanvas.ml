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
(* package org.allbinary.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.game.displayable.canvas.NullWaitGameRunnable *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.NullThread *)
(* import org.allbinary.thread.RunnableInterface *)
(* import org.allbinary.thread.ThreadObjectUtil *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)

class runnableCanvas (commandListener, (childNameList : BasicArrayList.basicArrayList), (hasParam : bool)) =
  object (self)
    inherit MyCanvas.myCanvas ((CommonStrings.getInstance ())#uNKNOWN, childNameList)
    val mutable nullUtil : NullUtil.nullUtil = (Obj.magic 0)
    method nullUtil = nullUtil
    method set_nullUtil value' = nullUtil <- value'
    val mutable stdUtil : Obj.t = Obj.repr 0
    method stdUtil : 'r. 'r = Obj.magic stdUtil
    method set_stdUtil : 'v. 'v -> unit = fun value' -> stdUtil <- Obj.repr value'
    val mutable systemWrapper : ABSystemWrapper.aBSystemWrapper = (Obj.magic 0)
    method systemWrapper = systemWrapper
    method set_systemWrapper value' = systemWrapper <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable thread : java_thread = (Obj.magic 0)
    method thread = thread
    method set_thread value' = thread <- value'
    val mutable currentThread : java_thread = (Obj.magic 0)
    method currentThread = currentThread
    method set_currentThread value' = currentThread <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable loopTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method loopTimeHelper = loopTimeHelper
    method set_loopTimeHelper value' = loopTimeHelper <- value'
    val mutable runnableCanvasRefreshHelper : Processor.processor = (Obj.magic 0)
    method runnableCanvasRefreshHelper = runnableCanvasRefreshHelper
    method set_runnableCanvasRefreshHelper value' = runnableCanvasRefreshHelper <- value'
    val mutable commonLabels : CommonLabels.commonLabels = (Obj.magic 0)
    method commonLabels = commonLabels
    method set_commonLabels value' = commonLabels <- value'
    val mutable threadObjectUtil : ThreadObjectUtil.threadObjectUtil = (Obj.magic 0)
    method threadObjectUtil = threadObjectUtil
    method set_threadObjectUtil value' = threadObjectUtil <- value'
    val mutable sET_RUNNING : string = ""
    method sET_RUNNING = sET_RUNNING
    method set_sET_RUNNING value' = sET_RUNNING <- value'
    val mutable iS_RUNNING : string = ""
    method iS_RUNNING = iS_RUNNING
    method set_iS_RUNNING value' = iS_RUNNING <- value'
    val mutable tHREAD : string = ""
    method tHREAD = tHREAD
    method set_tHREAD value' = tHREAD <- value'
    val mutable nOT_EQUAL : string = ""
    method nOT_EQUAL = nOT_EQUAL
    method set_nOT_EQUAL value' = nOT_EQUAL <- value'
    val mutable pAUSE_SLEEP : string = ""
    method pAUSE_SLEEP = pAUSE_SLEEP
    method set_pAUSE_SLEEP value' = pAUSE_SLEEP <- value'
    val mutable sTART_PAUSE : string = ""
    method sTART_PAUSE = sTART_PAUSE
    method set_sTART_PAUSE value' = sTART_PAUSE <- value'
    val mutable eND_PAUSE : string = ""
    method eND_PAUSE = eND_PAUSE
    method set_eND_PAUSE value' = eND_PAUSE <- value'
    val mutable pROCESS_LOOP_SLEEP : string = ""
    method pROCESS_LOOP_SLEEP = pROCESS_LOOP_SLEEP
    method set_pROCESS_LOOP_SLEEP value' = pROCESS_LOOP_SLEEP <- value'
    val mutable pauseWait : int = 0
    method pauseWait = pauseWait
    method set_pauseWait value' = pauseWait <- value'
    val mutable notified : bool = false
    method notified = notified
    method set_notified value' = notified <- value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (_cmdListener) ->
        begin
        ignore (logUtil#putF (commonStrings#nOT_IMPLEMENTED, self, "initCommands"))
        end [@@warning "-7-20"]
    

    method isMainCanvas () : bool =
        try
        begin
        if ((self#getCustomCommandListener ()) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method setThread ((thread_arg : java_thread)) : unit =
        begin
        thread <- thread_arg
        end [@@warning "-7"]
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg;
        if (not running) then begin
            thread <- (NullThread.get_nULL_THREAD ());
            begin (* synchronized *)
                ignore (threadObjectUtil#notifyObject (self))
            end
        end;
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (iS_RUNNING))#appendboolean (running)))), self, sET_RUNNING))
        end [@@warning "-7"]
    

    method isRunning () : bool =
        try
        begin
        if ((Obj.repr thread) == (Obj.repr currentThread)) then begin
            raise (Java_return (Obj.repr (running)))
        end else begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append (tHREAD));
            if (thread != (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ((java_string_of (Obj.repr thread))))
            end;
            ignore (!stringBuffer#append (nOT_EQUAL));
            if (currentThread != (Obj.magic 0)) then begin
                ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (currentThread))))
            end;
            ignore (logUtil#putF ((java_string_of (Obj.repr !stringBuffer)), self, iS_RUNNING));
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getLoopTimeHelperP () : TimeDelayHelper.timeDelayHelper =
        begin
        (loopTimeHelper :> TimeDelayHelper.timeDelayHelper)
        end [@@warning "-7"]
    

    method setWait ((wait : int)) : unit =
        begin
        loopTimeHelper#set_delay (wait);
        pauseWait <- (wait * 3);
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("setWait - delay: "))#appendint ((java_to_int (Obj.repr (loopTimeHelper#delay))))))), self, commonStrings#cONSTRUCTOR))
        end [@@warning "-7"]
    

    method getWait () : int =
        begin
        loopTimeHelper#delay
        end [@@warning "-7"]
    

    method setCurrentThread () : unit =
        begin
        currentThread <- (Obj.magic (java_call_static "Thread.currentThread" (Obj.repr ())))
        end [@@warning "-7"]
    

    method setCurrentThreadFake () : unit =
        begin
        currentThread <- thread
        end [@@warning "-7"]
    

    method showNotify () : unit =
        begin
        (try
            (self#stopWaiting ())
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, "showNotify", e))
        end)
        end [@@warning "-7"]
    

    method stopWaiting () : unit =
        begin
        notified <- true;
        begin (* synchronized *)
            ignore (threadObjectUtil#notifyObject (self))
        end;
        ignore (self#repaint ())
        end [@@warning "-7"]
    

    method waitOnNotify ((wait : int)) : unit =
        begin
        if (not notified) then begin
            if (wait > 0) then begin
                ignore (threadObjectUtil#waitObjectFor (self, wait))
            end else begin
                ignore (threadObjectUtil#waitObject (self))
            end
        end
        end [@@warning "-7"]
    

    method processSleep () : unit =
        begin
        ignore (Unix.sleepf (Float.of_int (pauseWait) /. 1000.0))
        end [@@warning "-7"]
    

    method isPausable () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method processGameSleep ((sleep : int)) : unit =
        begin
        ignore (Unix.sleepf (Float.of_int (sleep) /. 1000.0))
        end [@@warning "-7"]
    

    method processLoopSleep () : unit =
        try
        begin
        ignore (runnableCanvasRefreshHelper#process ());
        if (self#isPaused ()) then begin
            let stringMaker : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            if ((self#isRunning ()) && (not (self#isSingleThread ()))) then begin
                ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                let currentTimeMillis : int ref = ref ((systemWrapper#currentTimeMillis ())) in ();
                ignore (logUtil#putF ((java_string_of (Obj.repr ((((!stringMaker#append (sTART_PAUSE))#appendlong (!currentTimeMillis))#append (pAUSE_SLEEP))#appendlong (pauseWait)))), self, pROCESS_LOOP_SLEEP));
                while (((self#isPaused ()) && (self#isRunning ())) && (not (self#isSingleThread ()))) do
                    (self#processSleep ());
                    if (not (self#isPausable ())) then begin
                        ignore (!stringMaker#delete (0, (!stringMaker#length ())));
                        ignore (logUtil#putF ((java_string_of (Obj.repr ((!stringMaker#append (eND_PAUSE))#appendlong (!currentTimeMillis)))), self, pROCESS_LOOP_SLEEP));
                        raise (Java_return (Obj.repr (())))
                    end
                done
            end
        end;
        let elapsedTime : int ref = ref ((loopTimeHelper#getElapsedTNT ())) in ();
        let wait : int ref = ref ((java_to_int (Obj.repr (loopTimeHelper#delay)))) in ();
        if (!elapsedTime > !wait) then begin
            elapsedTime := !wait
        end else begin
            (self#processGameSleep ((!wait - !elapsedTime)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isSingleThread () : bool =
        begin
        false
        end [@@warning "-7"]
    

    method run () : unit =
        begin
        (self#setCurrentThread ())
        end [@@warning "-7"]
    

    method end2 () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getType () : int =
        begin
        (-1)
        end [@@warning "-7"]

    initializer
      begin
        nullUtil <- ((NullUtil.getInstance ()) :> NullUtil.nullUtil);
        stdUtil <- (Obj.repr (Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ()))));
        systemWrapper <- ((ABSystemWrapper.getInstance ()) :> ABSystemWrapper.aBSystemWrapper);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        thread <- ((NullThread.get_nULL_THREAD ()) :> java_thread);
        currentThread <- ((NullThread.get_nULL_THREAD ()) :> java_thread);
        running <- false;
        loopTimeHelper <- ((new TimeDelayHelper.timeDelayHelper ((NullWaitGameRunnable.getInstance ())#wAIT)) :> TimeDelayHelper.timeDelayHelper);
        runnableCanvasRefreshHelper <- ((Processor.getInstance ()) :> Processor.processor);
        commonLabels <- ((CommonLabels.getInstance ()) :> CommonLabels.commonLabels);
        threadObjectUtil <- ((ThreadObjectUtil.getInstance ()) :> ThreadObjectUtil.threadObjectUtil);
        sET_RUNNING <- "setRunning";
        iS_RUNNING <- "isRunning";
        tHREAD <- "Thread: ";
        nOT_EQUAL <- " != ";
        pAUSE_SLEEP <- "pause sleep";
        sTART_PAUSE <- "start pause - game thread sleep at: ";
        eND_PAUSE <- "end pause - game thread sleep at: ";
        pROCESS_LOOP_SLEEP <- "processLoopSleep";
        pauseWait <- 0;
        notified <- false;
        ();
        (* super(...) is the inherit clause *) ();
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("RunnableCanvas delay: "))#appendint ((java_to_int (Obj.repr (loopTimeHelper#delay))))))), self, commonStrings#cONSTRUCTOR));
        runnableCanvasRefreshHelper <- (new RunnableCanvasRefreshHelper.runnableCanvasRefreshHelper (self));
        if (commandListener != (Obj.magic 0)) then begin
            (self#initCommands (commandListener))
        end else if hasParam then begin
            ignore (logUtil#putF ("commandListener was null", self, "initCommands"))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "RunnableCanvas" (fun arguments -> Obj.repr (new runnableCanvas (Obj.obj arguments)))


