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
(* package org.allbinary.input.media.image.capture *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)

class saveCapturedImageWorker () =
  object (self)
    inherit BasicEventHandler.basicEventHandler ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable capturedImageWorkerResultsEventVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method capturedImageWorkerResultsEventVector = capturedImageWorkerResultsEventVector
    method set_capturedImageWorkerResultsEventVector value' = capturedImageWorkerResultsEventVector <- value'
    
    

    method isRunning () : bool =
        begin
        running
        end [@@warning "-7"]
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end [@@warning "-7"]
    

    method onCaptureEvent : 'any1. 'any1 -> unit = fun (capturedImageEvent) ->
        let capturedImageEvent = Obj.repr capturedImageEvent in
        begin
        ignore (capturedImageWorkerResultsEventVector#add ((Obj.magic capturedImageEvent)));
        (self#run ())
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (allBinaryEventObject) ->
        let allBinaryEventObject = Obj.repr allBinaryEventObject in
        begin
        (self#onCaptureEvent ((Obj.magic (Obj.magic allBinaryEventObject))))
        end [@@warning "-7-20"]
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rUN));
            (self#setRunning (true));
            let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (1000)) :> TimeDelayHelper.timeDelayHelper)) in ();
            ignore (!timeHelper#setStartTimeTNT ());
            let capturedImageWorkerResultsEvent : CapturedImageWorkerResultsEvent.capturedImageWorkerResultsEvent ref = ref ((((Obj.magic (capturedImageWorkerResultsEventVector#get (0)))) :> CapturedImageWorkerResultsEvent.capturedImageWorkerResultsEvent)) in ();
            let screenBufferedImage : Obj.t ref = ref ((Obj.repr (!capturedImageWorkerResultsEvent#getBufferedImage ()))) in ();
            ignore ((new CapturedImageInputOutput.capturedImageInputOutput ())#save ((Obj.magic !screenBufferedImage), (!capturedImageWorkerResultsEvent#getFrame ())));
            ignore (capturedImageWorkerResultsEventVector#remove (!capturedImageWorkerResultsEvent));
            ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#eLAPSED + (!timeHelper#getElapsedTNT ())), self, commonStrings#rUN));
            (self#setRunning (false));
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        running <- false;
        capturedImageWorkerResultsEventVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SaveCapturedImageWorker" (fun arguments -> Obj.repr (new saveCapturedImageWorker (Obj.obj arguments)))


