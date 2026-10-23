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
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.module.AbstractInputAutomationWorker *)
(* import org.allbinary.input.automation.module.InputAutomationActionInterface *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfile *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.GenericProfileDataWorkerType *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript *)
(* import org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.cache.J2SECacheInterface *)
(* import org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface *)
(* import org.allbinary.media.image.comparison.ImageComparisonWorker *)
(* import org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface *)
(* import org.allbinary.media.image.comparison.motion.MotionRectanglesWorker *)

class genericInputAutomationWorker ((inputAutomationActionInterface : InputAutomationActionInterface.inputAutomationActionInterface), (genericProfile_arg : GenericProfile.genericProfile), (motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface), (imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface.imageComparatorConstraintsInterface)) =
  object (self)
    inherit AbstractInputAutomationWorker.abstractInputAutomationWorker (inputAutomationActionInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable pROCESS_DATA_WORKER_RESULTS : string = ""
    method pROCESS_DATA_WORKER_RESULTS = pROCESS_DATA_WORKER_RESULTS
    method set_pROCESS_DATA_WORKER_RESULTS value' = pROCESS_DATA_WORKER_RESULTS <- value'
    val mutable lastFrame : int = (Obj.magic 0)
    method lastFrame = lastFrame
    method set_lastFrame value' = lastFrame <- value'
    val mutable frame : int = (Obj.magic 0)
    method frame = frame
    method set_frame value' = frame <- value'
    val mutable genericProfile : GenericProfile.genericProfile = (Obj.magic 0)
    method genericProfile = genericProfile
    method set_genericProfile value' = genericProfile <- value'
    
    

    method processDataWorkerResults () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, pROCESS_DATA_WORKER_RESULTS));
        ignore (self#waitForDataWorkers ());
        let cacheInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (CapturedBufferedImagesCacheSingleton.getInstance ())))) in ();
        let keyArray : Obj.t array ref = ref ((((Obj.magic !cacheInterface)#keySet ())#toArray ())) in ();
        if ((Array.length !keyArray) > 0) then begin
            ignore ((Obj.magic logUtil)#putF ("Image Available", self, pROCESS_DATA_WORKER_RESULTS));
            (self#setFrame ((Obj.magic !keyArray.(((Array.length !keyArray) - 1)))));
            if ((self#getFrame ()) > lastFrame) then begin
                ignore ((Obj.magic logUtil)#putF (("Processing new frame: " ^ java_string_of (Obj.repr ((self#getFrame ())))), self, pROCESS_DATA_WORKER_RESULTS));
                let hashMap : java_hash_map ref = ref (((((self#getGenericProfile ())#getGenericProfileActions ())#getHashMap ()) :> java_hash_map)) in ();
                let set : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
                ignore ((Obj.magic logUtil)#putF ((("Processing " ^ java_string_of (Obj.repr (((Obj.magic !set)#size ())))) ^ "Actions"), self, pROCESS_DATA_WORKER_RESULTS));
                let actionNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
                let size : int ref = ref ((Array.length !actionNameArray)) in ();
                for index = 0 to !size - 1 do
                    let actionNameString : string ref = ref ((Obj.magic !actionNameArray.(index))) in ();
                    ignore ((Obj.magic logUtil)#putF (("Processing Action: " ^ !actionNameString), self, pROCESS_DATA_WORKER_RESULTS));
                    let genericProfileAction : GenericProfileAction.genericProfileAction ref = ref (((Obj.magic (!hashMap#get (!actionNameString))) :> GenericProfileAction.genericProfileAction)) in ();
                    let genericProfileActionScript : GenericProfileActionScript.genericProfileActionScript ref = ref (((!genericProfileAction#getGenericProfileActionScript ()) :> GenericProfileActionScript.genericProfileActionScript)) in ();
                    let vector : BasicArrayList.basicArrayList ref = ref (((!genericProfileActionScript#getProfileActionConditionInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ();
                    ignore (CaptureWorkerUtil.processProfileActionConditions (!vector, (self#getFrame ())))
                done;
                lastFrame <- (self#getFrame ())
            end
        end else begin
            ignore ((Obj.magic logUtil)#putF ("Image Not Available", self, pROCESS_DATA_WORKER_RESULTS))
        end
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#pROCESS));
        ignore (self#startDataWorkers ());
        (self#processDataWorkerResults ())
        end [@@warning "-7"]
    

    method getGenericProfile () : GenericProfile.genericProfile =
        begin
        (genericProfile :> GenericProfile.genericProfile)
        end [@@warning "-7"]
    

    method setGenericProfile : 'any1. 'any1 -> unit = fun (genericProfile_arg) ->
        let genericProfile_arg = Obj.repr genericProfile_arg in
        begin
        genericProfile <- (Obj.magic genericProfile_arg)
        end [@@warning "-7-20"]
    

    method getFrame () : int =
        begin
        frame
        end [@@warning "-7"]
    

    method setFrame ((frame_arg : int)) : unit =
        begin
        frame <- frame_arg
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        pROCESS_DATA_WORKER_RESULTS <- "processDataWorkerResults";
        lastFrame <- (Obj.obj (java_new "Long" (Obj.repr ((-1)))));
        frame <- (Obj.magic 0);
        genericProfile <- ((Obj.magic 0) :> GenericProfile.genericProfile);
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        ignore (self#setCaptureWorker ((GenericProfileCaptureWorkerFactory.getInstance (genericProfile_arg))));
        ignore (self#setInputAutomationActionInterface (inputAutomationActionInterface));
        ignore (self#setImageComparisonWorker ((new ImageComparisonWorker.imageComparisonWorker (imageComparatorConstraintsInterface))));
        ignore (self#setMotionRectanglesWorker ((new MotionRectanglesWorker.motionRectanglesWorker (motionRectangleConstraintsInterface))));
        (self#setGenericProfile (genericProfile_arg));
        let vector : BasicArrayList.basicArrayList ref = ref ((((self#getGenericProfile ())#getGenericProfileDataWorkerTypeVector ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let genericProfileDataWorkerType : GenericProfileDataWorkerType.genericProfileDataWorkerType ref = ref (((Obj.magic (!vector#get (index))) :> GenericProfileDataWorkerType.genericProfileDataWorkerType)) in ();
            ignore ((Obj.magic logUtil)#putF (("Adding Listener: " ^ java_string_of (Obj.repr (!genericProfileDataWorkerType))), self, (self#commonStrings)#cONSTRUCTOR));
            if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_cOMPARISON ()))) then begin
                ignore ((self#getCaptureWorker ())#addListenerInterface ((self#getImageComparisonWorker ())))
            end else if ((Obj.repr !genericProfileDataWorkerType) == (Obj.repr (GenericProfileDataWorkerType.get_mOTION ()))) then begin
                ignore ((self#getImageComparisonWorker ())#addListenerInterface ((self#getMotionRectanglesWorker ())))
            end
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "GenericInputAutomationWorker" (fun arguments -> Obj.repr (new genericInputAutomationWorker (Obj.obj arguments)))


