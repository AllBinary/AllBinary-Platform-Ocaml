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
(* package org.allbinary.input.automation.module.game.test *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.input.automation.module.AbstractInputAutomationWorker *)
(* import org.allbinary.input.automation.module.InputAutomationActionInterface *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileAction *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.GenericProfileActions *)
(* import org.allbinary.input.automation.module.generic.configuration.profile.actions.script.GenericProfileActionScript *)
(* import org.allbinary.input.media.image.capture.CapturedBufferedImagesCacheSingleton *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.cache.J2SECacheInterface *)
(* import org.allbinary.media.image.comparison.ImageComparatorConstraintsInterface *)
(* import org.allbinary.media.image.comparison.motion.MotionRectangleConstraintsInterface *)

class testInputAutomationCaptureWorker ((inputAutomationActionInterface : InputAutomationActionInterface.inputAutomationActionInterface), (genericProfileActions_arg : GenericProfileActions.genericProfileActions), (_imageComparatorConstraintsInterface : ImageComparatorConstraintsInterface.imageComparatorConstraintsInterface), (_motionRectangleConstraintsInterface : MotionRectangleConstraintsInterface.motionRectangleConstraintsInterface)) =
  object (self)
    inherit AbstractInputAutomationWorker.abstractInputAutomationWorker (inputAutomationActionInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable genericProfileActions : GenericProfileActions.genericProfileActions = (Obj.magic 0)
    method genericProfileActions = genericProfileActions
    method set_genericProfileActions value' = genericProfileActions <- value'
    val mutable mESSAGE : string = ""
    method mESSAGE = mESSAGE
    method set_mESSAGE value' = mESSAGE <- value'
    val mutable pROCESS_DATA_WORKER_RESULTS : string = ""
    method pROCESS_DATA_WORKER_RESULTS = pROCESS_DATA_WORKER_RESULTS
    method set_pROCESS_DATA_WORKER_RESULTS value' = pROCESS_DATA_WORKER_RESULTS <- value'
    val mutable iMAGE_AVAILABLE_SO_PROCESSING : string = ""
    method iMAGE_AVAILABLE_SO_PROCESSING = iMAGE_AVAILABLE_SO_PROCESSING
    method set_iMAGE_AVAILABLE_SO_PROCESSING value' = iMAGE_AVAILABLE_SO_PROCESSING <- value'
    val mutable iMAGE_NOT_AVAILABLE : string = ""
    method iMAGE_NOT_AVAILABLE = iMAGE_NOT_AVAILABLE
    method set_iMAGE_NOT_AVAILABLE value' = iMAGE_NOT_AVAILABLE <- value'
    
    

    method processDataWorkerResults () : unit =
        begin
        let cacheInterface : Obj.t ref = ref ((Obj.repr (Obj.magic (CapturedBufferedImagesCacheSingleton.getInstance ())))) in ();
        if ((((Obj.magic !cacheInterface)#keySet ())#size ()) > 0) then begin
            ignore ((Obj.magic logUtil)#putF (iMAGE_AVAILABLE_SO_PROCESSING, self, pROCESS_DATA_WORKER_RESULTS));
            let anyType : Obj.t ref = ref ((Obj.repr (((Obj.magic !cacheInterface)#keySet ())#toArray ()).(0))) in ();
            let hashMap : java_hash_map ref = ref ((((self#getGenericProfileActions ())#getHashMap ()) :> java_hash_map)) in ();
            let set : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
            let actionNameArray : Obj.t array ref = ref (((Obj.magic !set)#toArray ())) in ();
            let size : int ref = ref ((Array.length !actionNameArray)) in ();
            for index = 0 to !size - 1 do
                let actionNameString : string ref = ref ((Obj.magic !actionNameArray.(index))) in ();
                let genericProfileAction : GenericProfileAction.genericProfileAction ref = ref (((Obj.magic (!hashMap#get (!actionNameString))) :> GenericProfileAction.genericProfileAction)) in ();
                let genericProfileActionScript : GenericProfileActionScript.genericProfileActionScript ref = ref (((!genericProfileAction#getGenericProfileActionScript ()) :> GenericProfileActionScript.genericProfileActionScript)) in ();
                let vector : BasicArrayList.basicArrayList ref = ref (((!genericProfileActionScript#getProfileActionConditionInterfaceVector ()) :> BasicArrayList.basicArrayList)) in ()
            done;
            ignore ((Obj.magic !cacheInterface)#get (!anyType))
        end else begin
            ignore ((Obj.magic logUtil)#putF (iMAGE_NOT_AVAILABLE, self, pROCESS_DATA_WORKER_RESULTS))
        end
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#pROCESS));
        ignore (self#startDataWorkers ());
        (self#processDataWorkerResults ())
        end [@@warning "-7"]
    

    method getGenericProfileActions () : GenericProfileActions.genericProfileActions =
        begin
        (genericProfileActions :> GenericProfileActions.genericProfileActions)
        end [@@warning "-7"]
    

    method setGenericProfileActions : 'any1. 'any1 -> unit = fun (genericProfileActions_arg) ->
        let genericProfileActions_arg = Obj.repr genericProfileActions_arg in
        begin
        genericProfileActions <- (Obj.magic genericProfileActions_arg)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        genericProfileActions <- ((Obj.magic 0) :> GenericProfileActions.genericProfileActions);
        mESSAGE <- "GenericInputAutomationCaptureWorker";
        pROCESS_DATA_WORKER_RESULTS <- "processDataWorkerResults";
        iMAGE_AVAILABLE_SO_PROCESSING <- "Image Available so processing";
        iMAGE_NOT_AVAILABLE <- "Image Not Available";
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((Obj.magic logUtil)#putF (mESSAGE, self, commonStrings#cONSTRUCTOR));
        (self#setGenericProfileActions (genericProfileActions_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TestInputAutomationCaptureWorker" (fun arguments -> Obj.repr (new testInputAutomationCaptureWorker (Obj.obj arguments)))


