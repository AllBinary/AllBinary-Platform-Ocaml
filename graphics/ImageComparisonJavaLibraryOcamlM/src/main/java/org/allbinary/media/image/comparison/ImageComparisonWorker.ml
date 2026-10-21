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
(* package org.allbinary.media.image.comparison *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent *)
(* import org.allbinary.input.media.image.capture.CapturedImageWorkerResultsListener *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)

class imageComparisonWorker ((imageComparatorConstraintsInterface_arg : ImageComparatorConstraintsInterface.imageComparatorConstraintsInterface)) =
  object (self)
    inherit BasicEventHandler.basicEventHandler ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable bufferedImageVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method bufferedImageVector = bufferedImageVector
    method set_bufferedImageVector value' = bufferedImageVector <- value'
    val mutable imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface.imageComparatorConstraintsInterface = (Obj.magic 0)
    method imageComparatorConstraintsInterface = imageComparatorConstraintsInterface
    method set_imageComparatorConstraintsInterface value' = imageComparatorConstraintsInterface <- value'
    val mutable imageComparator : ImageComparator.imageComparator = (Obj.magic 0)
    method imageComparator = imageComparator
    method set_imageComparator value' = imageComparator <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable index2 : int = 0
    method index2 = index2
    method set_index2 value' = index2 <- value'
    
    

    method isRunning () : bool =
        begin
        running
        end [@@warning "-7"]
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end [@@warning "-7"]
    

    method onCaptureEvent : 'any1. 'any1 -> unit = fun (capturedImageWorkerResultsEvent) ->
        let capturedImageWorkerResultsEvent = Obj.repr capturedImageWorkerResultsEvent in
        begin
        ignore (bufferedImageVector#add ((Obj.magic capturedImageWorkerResultsEvent)));
        if ((bufferedImageVector#size ()) > 1) then begin
            (self#run ())
        end
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
            if (imageComparatorConstraintsInterface#isFrameAllowed (index2)) then begin
                let capturedImageWorkerResultsEvent : CapturedImageWorkerResultsEvent.capturedImageWorkerResultsEvent array ref = ref ((Array.make (2) (Obj.magic 0))) in ();
                !capturedImageWorkerResultsEvent.(0) <- (Obj.magic (bufferedImageVector#get (0)));
                !capturedImageWorkerResultsEvent.(1) <- (Obj.magic (bufferedImageVector#get (1)));
                if ((imageComparatorConstraintsInterface#isImageValid ((!capturedImageWorkerResultsEvent.(0)#getBufferedImage ()))) && (imageComparatorConstraintsInterface#isImageValid ((!capturedImageWorkerResultsEvent.(1)#getBufferedImage ())))) then begin
                    let imageComparisonResult : ImageComparisonResult.imageComparisonResult ref = ref (((imageComparator#compare ((!capturedImageWorkerResultsEvent.(0)#getBufferedImage ()), (!capturedImageWorkerResultsEvent.(1)#getBufferedImage ()), (!capturedImageWorkerResultsEvent.(0)#getFrame ()), (!capturedImageWorkerResultsEvent.(1)#getFrame ()), 0)) :> ImageComparisonResult.imageComparisonResult)) in ();
                    let frame : int ref = ref ((!capturedImageWorkerResultsEvent.(1)#getFrame ())) in ();
                    let imageComparisonResultFrameCacheable : ImageComparisonResultFrameCacheable.imageComparisonResultFrameCacheable ref = ref (((new ImageComparisonResultFrameCacheable.imageComparisonResultFrameCacheable (!imageComparisonResult, !frame)) :> ImageComparisonResultFrameCacheable.imageComparisonResultFrameCacheable)) in ();
                    ignore ((ImageComparisonResultCacheSingleton.getInstance ())#add (!imageComparisonResultFrameCacheable));
                    ignore (self#fireEvent ((new ImageComparisonResultsEvent.imageComparisonResultsEvent (self, !imageComparisonResult))));
                    ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("Image Comparison Result: "))#append ((java_string_of (Obj.repr !imageComparisonResult))))#append (" for frame: "))#appendlong (!frame)))), self, commonStrings#rUN))
                end else begin
                    ignore ((Obj.magic logUtil)#putF ("An Image Was Not Valid: Image Worker Event Processing terminated", self, commonStrings#rUN))
                end
            end;
            ignore (bufferedImageVector#remove (0));
            index2 <- index2 + 1;
            let message : string ref = ref ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append ("Frame: "))#appendint (index2))#append ((CommonLabels.getInstance ())#eLAPSED))#appendlong ((java_to_int (Obj.repr ((!timeHelper#getElapsedTNT ()))))))))) in ();
            ignore ((Obj.magic logUtil)#putF (!message, self, commonStrings#rUN));
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
        bufferedImageVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        running <- false;
        index2 <- 0;
        ();
        imageComparatorConstraintsInterface <- imageComparatorConstraintsInterface_arg;
        imageComparator <- (new ImageComparator.imageComparator (imageComparatorConstraintsInterface_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageComparisonWorker" (fun arguments -> Obj.repr (new imageComparisonWorker (Obj.obj arguments)))


