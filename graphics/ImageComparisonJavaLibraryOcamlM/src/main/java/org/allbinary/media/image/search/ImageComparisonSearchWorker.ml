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
(* package org.allbinary.media.image.search *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.media.image.comparison.ImageComparisonResult *)
(* import org.allbinary.media.image.comparison.ImageComparisonResultsEvent *)
(* import org.allbinary.media.image.comparison.ImageComparisonResultsListener *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)

class imageComparisonSearchWorker ((imageSearchConstraintsInterface_arg : ImageComparisonSearchConstraintsInterface.imageComparisonSearchConstraintsInterface)) =
  object (self)
    inherit BasicEventHandler.basicEventHandler ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable imageComparisonInfoVector : BasicArrayList.basicArrayList = (Obj.magic 0)
    method imageComparisonInfoVector = imageComparisonInfoVector
    method set_imageComparisonInfoVector value' = imageComparisonInfoVector <- value'
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    val mutable running : bool = false
    method running = running
    method set_running value' = running <- value'
    val mutable imageSearchConstraintsInterface : ImageComparisonSearchConstraintsInterface.imageComparisonSearchConstraintsInterface = (Obj.magic 0)
    method imageSearchConstraintsInterface = imageSearchConstraintsInterface
    method set_imageSearchConstraintsInterface value' = imageSearchConstraintsInterface <- value'
    
    

    method onImageComparisonResultsEvent : 'any1. 'any1 -> unit = fun (imageComparisonResultsEvent) ->
        let imageComparisonResultsEvent = Obj.repr imageComparisonResultsEvent in
        begin
        ignore (imageComparisonInfoVector#add (((Obj.magic imageComparisonResultsEvent)#getImageComparisonResult ())));
        (self#run ())
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (allBinaryEventObject) ->
        let allBinaryEventObject = Obj.repr allBinaryEventObject in
        begin
        (self#onImageComparisonResultsEvent ((Obj.magic (Obj.magic allBinaryEventObject))))
        end [@@warning "-7-20"]
    

    method isRunning () : bool =
        begin
        running
        end [@@warning "-7"]
    

    method setRunning ((running_arg : bool)) : unit =
        begin
        running <- running_arg
        end [@@warning "-7"]
    

    method run () : unit =
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#rUN));
            (self#setRunning (true));
            let timeHelper : TimeDelayHelper.timeDelayHelper ref = ref (((new TimeDelayHelper.timeDelayHelper (1000)) :> TimeDelayHelper.timeDelayHelper)) in ();
            ignore (!timeHelper#setStartTimeTNT ());
            let imageComparisonInfo : ImageComparisonResult.imageComparisonResult ref = ref (((Obj.magic (imageComparisonInfoVector#get (0))) :> ImageComparisonResult.imageComparisonResult)) in ();
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !imageComparisonInfo)), self, commonStrings#rUN));
            let latestBufferedImage : Obj.t ref = ref ((Obj.repr (!imageComparisonInfo#getBufferedImages ()).(1))) in ();
            ignore (imageComparisonInfoVector#remove (!imageComparisonInfo));
            index <- index + 1;
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
        ();
        index <- 0;
        running <- false;
        ();
        ();
        imageComparisonInfoVector <- (new BasicArrayListD.basicArrayListD ());
        imageSearchConstraintsInterface <- imageSearchConstraintsInterface_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageComparisonSearchWorker" (fun arguments -> Obj.repr (new imageComparisonSearchWorker (Obj.obj arguments)))


