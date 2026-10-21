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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.transition.TransistionTypes *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import android.app.Activity *)

class showTitleProgressBarRunnable (midletActivity, (progressCanvas : ProgressCanvas.progressCanvas)) =
  object (self)
    inherit ProgressRunnable.progressRunnable (midletActivity, progressCanvas)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable fADE_IN_HALF : int array = (Obj.magic 0)
    method fADE_IN_HALF = fADE_IN_HALF
    method set_fADE_IN_HALF value' = fADE_IN_HALF <- value'
    
    

    method run () : unit =
        begin
        (try
            ignore (midletActivity#onShowProgress (false, fADE_IN_HALF))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        fADE_IN_HALF <- [| (TransistionTypes.getInstance ())#fADE_IN_TO_HALF_ALPHA; (TransistionTypes.getInstance ())#fADE_IN_FROM_HALF_ALPHA |];
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShowTitleProgressBarRunnable" (fun arguments -> Obj.repr (new showTitleProgressBarRunnable (Obj.obj arguments)))


