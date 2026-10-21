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
(* package org.allbinary.input.automation.module *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.media.image.capture.CaptureWorkerInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.media.image.comparison.ImageComparisonWorker *)
(* import org.allbinary.media.image.comparison.motion.MotionRectanglesWorker *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.RunnableInterface *)
(* import org.allbinary.time.TimeDelayHelper *)

class abstractInputAutomationWorker ((_inputAutomationActionInterface_arg : InputAutomationActionInterface.inputAutomationActionInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable inputAutomationActionInterface : InputAutomationActionInterface.inputAutomationActionInterface = (Obj.magic 0)
    method inputAutomationActionInterface = inputAutomationActionInterface
    method set_inputAutomationActionInterface value' = inputAutomationActionInterface <- value'
    val mutable captureWorkerInterface : CaptureWorkerInterface.captureWorkerInterface = (Obj.magic 0)
    method captureWorkerInterface = captureWorkerInterface
    method set_captureWorkerInterface value' = captureWorkerInterface <- value'
    val mutable imageComparisonWorker : ImageComparisonWorker.imageComparisonWorker = (Obj.magic 0)
    method imageComparisonWorker = imageComparisonWorker
    method set_imageComparisonWorker value' = imageComparisonWorker <- value'
    val mutable motionRectanglesWorker : MotionRectanglesWorker.motionRectanglesWorker = (Obj.magic 0)
    method motionRectanglesWorker = motionRectanglesWorker
    method set_motionRectanglesWorker value' = motionRectanglesWorker <- value'
    val mutable captureThread : java_thread = (Obj.magic 0)
    method captureThread = captureThread
    method set_captureThread value' = captureThread <- value'
    
    

    method setThread ((_thread : java_thread)) : unit =
        begin
        ()
        end
    

    method isRunning () : bool =
        begin
        running
        end
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end
    

    method isAnyDataWorkerRunning () : bool =
        try
        begin
        if ((captureThread != (Obj.magic 0)) && (((((captureThread#isAlive ()) || ((self#getCaptureWorker ())#isRunning ())) || ((self#getMotionRectanglesWorker ())#isRunning ())) || ((self#getImageComparisonWorker ())#isRunning ())))) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value
    

    method startDataWorkers () : unit =
        begin
        if (not (self#isAnyDataWorkerRunning ())) then begin
            captureThread <- (Obj.obj (java_new "Thread" (Obj.repr ((self#getCaptureWorker ())))));
            ignore ((Obj.magic logUtil)#putF (("Starting CaptureWorkers - Need more images - Thread State: " ^ (java_string_of (Obj.repr (captureThread#getState ())))), self, "startCaptureWorkers"));
            ignore (captureThread#start ())
        end
        end
    

    method waitForDataWorkers () : unit =
        begin
        while (self#isAnyDataWorkerRunning ()) do
            ignore ((Obj.magic logUtil)#putF ("Waiting", self, commonStrings#rUN));
            ignore (Unix.sleepf (Float.of_int (250) /. 1000.0))
        done
        end
    

    method stopDataWorkers () : unit =
        begin
        ignore ((self#getCaptureWorker ())#setRunning (false))
        end
    

    method process () : unit =
        begin
        raise (Failure ("RuntimeException"))
        end
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rUN));
            (self#setRunning (true));
            let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (1000)) :> TimeDelayHelper.timeDelayHelper)) in ();
            while (self#isRunning ()) do
                ignore (!timeHelper#setStartTimeTNT ());
                (self#process ());
                index <- index + 1;
                ignore ((Obj.magic logUtil)#putF (((java_string_of (Obj.repr (((CommonLabels.getInstance ())#eLAPSED + (!timeHelper#getElapsedTNT ())))) ^ " Index: ") ^ java_string_of (Obj.repr (index))), self, commonStrings#rUN))
            done;
            (self#stopDataWorkers ());
            (self#waitForDataWorkers ());
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end
    

    method getInputAutomationActionInterface () : InputAutomationActionInterface.inputAutomationActionInterface =
        begin
        (inputAutomationActionInterface :> InputAutomationActionInterface.inputAutomationActionInterface)
        end
    

    method setInputAutomationActionInterface : 'any1. 'any1 -> unit = fun (inputAutomationActionInterface_arg) ->
        let inputAutomationActionInterface_arg = Obj.repr inputAutomationActionInterface_arg in
        begin
        inputAutomationActionInterface <- (Obj.magic inputAutomationActionInterface_arg)
        end [@@warning "-20"]
    

    method getCaptureWorker () : CaptureWorkerInterface.captureWorkerInterface =
        begin
        (captureWorkerInterface :> CaptureWorkerInterface.captureWorkerInterface)
        end
    

    method setCaptureWorker : 'any1. 'any1 -> unit = fun (captureWorkerInterface_arg) ->
        let captureWorkerInterface_arg = Obj.repr captureWorkerInterface_arg in
        begin
        captureWorkerInterface <- (Obj.magic captureWorkerInterface_arg)
        end [@@warning "-20"]
    

    method getImageComparisonWorker () : ImageComparisonWorker.imageComparisonWorker =
        begin
        (imageComparisonWorker :> ImageComparisonWorker.imageComparisonWorker)
        end
    

    method setImageComparisonWorker : 'any1. 'any1 -> unit = fun (imageComparisonWorker_arg) ->
        let imageComparisonWorker_arg = Obj.repr imageComparisonWorker_arg in
        begin
        imageComparisonWorker <- (Obj.magic imageComparisonWorker_arg)
        end [@@warning "-20"]
    

    method getMotionRectanglesWorker () : MotionRectanglesWorker.motionRectanglesWorker =
        begin
        (motionRectanglesWorker :> MotionRectanglesWorker.motionRectanglesWorker)
        end
    

    method setMotionRectanglesWorker : 'any1. 'any1 -> unit = fun (motionRectanglesWorker_arg) ->
        let motionRectanglesWorker_arg = Obj.repr motionRectanglesWorker_arg in
        begin
        motionRectanglesWorker <- (Obj.magic motionRectanglesWorker_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        index <- 0;
        running <- false;
        inputAutomationActionInterface <- ((Obj.magic 0) :> InputAutomationActionInterface.inputAutomationActionInterface);
        captureWorkerInterface <- ((Obj.magic 0) :> CaptureWorkerInterface.captureWorkerInterface);
        imageComparisonWorker <- ((Obj.magic 0) :> ImageComparisonWorker.imageComparisonWorker);
        motionRectanglesWorker <- ((Obj.magic 0) :> MotionRectanglesWorker.motionRectanglesWorker);
        captureThread <- ((Obj.magic 0) :> java_thread);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbstractInputAutomationWorker" (fun arguments -> Obj.repr (new abstractInputAutomationWorker (Obj.obj arguments)))


