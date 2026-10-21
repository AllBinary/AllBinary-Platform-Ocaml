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
(* package org.allbinary.media.image.comparison.motion *)

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

class saveMotionRectanglesResultsWorker () =
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
    val mutable motionRectanglesVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method motionRectanglesVector = motionRectanglesVector
    method set_motionRectanglesVector value' = motionRectanglesVector <- value'
    
    

    method getMotionRectanglesVector () : BasicArrayList.basicArrayList =
        begin
        (motionRectanglesVector :> BasicArrayList.basicArrayList)
        end
    

    method onMotionRectanglesImageComparisonResultsEvent : 'any1. 'any1 -> unit = fun (motionRectanglesResultsEvent) ->
        let motionRectanglesResultsEvent = Obj.repr motionRectanglesResultsEvent in
        begin
        ignore ((self#getMotionRectanglesVector ())#add ((Obj.magic motionRectanglesResultsEvent)));
        (self#run ())
        end [@@warning "-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (allBinaryEventObject) ->
        let allBinaryEventObject = Obj.repr allBinaryEventObject in
        begin
        (self#onMotionRectanglesImageComparisonResultsEvent ((Obj.magic (Obj.magic allBinaryEventObject))))
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
            let motionRectanglesResultsEvent : MotionRectanglesResultsEvent.motionRectanglesResultsEvent ref = ref (((Obj.magic ((self#getMotionRectanglesVector ())#get (0))) :> MotionRectanglesResultsEvent.motionRectanglesResultsEvent)) in ();
            let motionRectangles : MotionRectangles.motionRectangles ref = ref (((!motionRectanglesResultsEvent#getMotionRectangles ()) :> MotionRectangles.motionRectangles)) in ();
            ignore ((new MotionRectanglesImageInputOutput.motionRectanglesImageInputOutput ())#save (!motionRectangles, (!motionRectanglesResultsEvent#getFrame ())));
            ignore ((self#getMotionRectanglesVector ())#remove (!motionRectangles));
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
        ();
        ();
        motionRectanglesVector <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "SaveMotionRectanglesResultsWorker" (fun arguments -> Obj.repr (new saveMotionRectanglesResultsWorker (Obj.obj arguments)))


