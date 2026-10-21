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
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)

class saveImageComparisonWorker () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable imageComparisonInfoVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method imageComparisonInfoVector = imageComparisonInfoVector
    method set_imageComparisonInfoVector value' = imageComparisonInfoVector <- value'
    
    

    method onImageComparisonResultsEvent : 'any1. 'any1 -> unit = fun (imageComparisonResultsEvent) ->
        let imageComparisonResultsEvent = Obj.repr imageComparisonResultsEvent in
        begin
        ignore (imageComparisonInfoVector#add ((Obj.magic imageComparisonResultsEvent)));
        (self#run ())
        end [@@warning "-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (allBinaryEventObject) ->
        let allBinaryEventObject = Obj.repr allBinaryEventObject in
        begin
        (self#onImageComparisonResultsEvent ((Obj.magic (Obj.magic allBinaryEventObject))))
        end [@@warning "-20"]
    

    method isRunning () : bool =
        begin
        running
        end
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rUN));
            (self#setRunning (true));
            let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (1000)) :> TimeDelayHelper.timeDelayHelper)) in ();
            ignore (!timeHelper#setStartTimeTNT ());
            let imageComparisonResultsEvent : ImageComparisonResultsEvent.imageComparisonResultsEvent ref = ref (((Obj.magic (imageComparisonInfoVector#get (0))) :> ImageComparisonResultsEvent.imageComparisonResultsEvent)) in ();
            let imageComparisonInfo : ImageComparisonResult.imageComparisonResult ref = ref (((!imageComparisonResultsEvent#getImageComparisonResult ()) :> ImageComparisonResult.imageComparisonResult)) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !imageComparisonInfo)), self, commonStrings#rUN));
            ignore ((new ComparisonImageInputOutput.comparisonImageInputOutput ())#save (!imageComparisonInfo, (!imageComparisonInfo#getFrameTwo ())));
            ignore (imageComparisonInfoVector#remove (!imageComparisonInfo));
            ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#eLAPSED + (!timeHelper#getElapsedTNT ())), self, commonStrings#rUN));
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, commonStrings#rUN))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        running <- false;
        imageComparisonInfoVector <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "SaveImageComparisonWorker" (fun arguments -> Obj.repr (new saveImageComparisonWorker (Obj.obj arguments)))


