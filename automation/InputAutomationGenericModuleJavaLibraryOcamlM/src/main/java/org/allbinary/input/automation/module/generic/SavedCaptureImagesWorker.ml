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
(* package org.allbinary.input.automation.module.generic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.awt.image.BufferedImage *)
(* import java.io.File *)
(* import javax.imageio.ImageIO *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.SavedCaptureGenericProfileDataWorkerType *)
(* import org.allbinary.input.media.image.capture.CaptureWorkerInterface *)
(* import org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton *)
(* import org.allbinary.input.media.image.capture.CapturedImageWorkerResultsEvent *)
(* import org.allbinary.input.media.image.capture.ProcessingFrameIndexFactory *)
(* import org.allbinary.input.media.image.capture.ScreenScavangerRobot *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.java.number.LongUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.logic.visual.media.MediaDataFactory *)
(* import org.allbinary.media.image.cache.BufferedImageFrameCacheable *)
(* import org.allbinary.string.CommonLabels *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.TimeDelayHelper *)

let index : int ref = ref (0)
let get_index () = !index
let set_index value' = index := value'
let () = java_register_static "SavedCaptureImagesWorker.get_index" (fun _ -> Obj.repr (get_index ()))
class savedCaptureImagesWorker ((savedCaptureGenericProfileDataWorkerType_arg : SavedCaptureGenericProfileDataWorkerType.savedCaptureGenericProfileDataWorkerType)) =
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
    val mutable screenScavangerRobot : ScreenScavangerRobot.screenScavangerRobot = (Obj.magic 0)
    method screenScavangerRobot = screenScavangerRobot
    method set_screenScavangerRobot value' = screenScavangerRobot <- value'
    val mutable savedCaptureGenericProfileDataWorkerType : SavedCaptureGenericProfileDataWorkerType.savedCaptureGenericProfileDataWorkerType = (Obj.magic 0)
    method savedCaptureGenericProfileDataWorkerType = savedCaptureGenericProfileDataWorkerType
    method set_savedCaptureGenericProfileDataWorkerType value' = savedCaptureGenericProfileDataWorkerType <- value'
    
    

    method setThread ((_thread : java_thread)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

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
            while (self#isRunning ()) do
                ignore (!timeHelper#setStartTimeTNT ());
                let frame : int ref = ref ((Obj.obj (java_new "Long" (Obj.repr (!index))))) in ();
                let filePathStringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!filePathStringBuffer#append ((savedCaptureGenericProfileDataWorkerType#getPath ())));
                ignore (!filePathStringBuffer#append ((LongUtil.fillIn ((string_of_int !frame)))));
                ignore (!filePathStringBuffer#append (((MediaDataFactory.getInstance ())#jPG#getExtension ())));
                let filePath : string ref = ref ((java_string_of (Obj.repr !filePathStringBuffer))) in ();
                ignore ((Obj.magic logUtil)#putF (("Loading Image File Path: " ^ !filePath), self, commonStrings#rUN));
                let file : Obj.t ref = ref ((Obj.repr (new File.file (!filePath)))) in ();
                if ((Obj.magic !file)#isFile ()) then begin
                    let bufferedImage : Obj.t ref = ref ((Obj.repr (ImageIO.read ((Obj.magic !file))))) in ();
                    index := !index + 1;
                    ignore ((CapturedBufferedImagesCacheSingleton.getInstance ())#add ((new BufferedImageFrameCacheable.bufferedImageFrameCacheable ((Obj.magic !bufferedImage), !frame))));
                    let capturedImageEvent : CapturedImageWorkerResultsEvent.capturedImageWorkerResultsEvent ref = ref (((new CapturedImageWorkerResultsEvent.capturedImageWorkerResultsEvent (self, !frame, (Obj.magic !bufferedImage))) :> CapturedImageWorkerResultsEvent.capturedImageWorkerResultsEvent)) in ();
                    ignore (self#fireEvent (!capturedImageEvent))
                end else begin
                    ignore ((Obj.magic logUtil)#putF (("Could Not Load File: " ^ !filePath), self, commonStrings#rUN))
                end;
                ignore ((Obj.magic logUtil)#putF (((CommonLabels.getInstance ())#eLAPSED + (!timeHelper#getElapsedTNT ())), self, commonStrings#rUN));
                (self#setRunning (false))
            done;
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
        ();
        ();
        ();
        savedCaptureGenericProfileDataWorkerType <- savedCaptureGenericProfileDataWorkerType_arg;
        screenScavangerRobot <- (new ScreenScavangerRobot.screenScavangerRobot ());
        index := (ProcessingFrameIndexFactory.next ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "SavedCaptureImagesWorker" (fun arguments -> Obj.repr (new savedCaptureImagesWorker (Obj.obj arguments)))


