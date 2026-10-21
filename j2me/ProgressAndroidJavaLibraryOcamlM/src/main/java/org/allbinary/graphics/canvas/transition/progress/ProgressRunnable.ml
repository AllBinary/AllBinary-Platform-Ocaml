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
(* import android.app.Activity *)
(* import org.allbinary.android.activity.MidletActivityBase *)
(* import org.allbinary.android.activity.SimpleProgressActivityInterface *)
(* import org.allbinary.thread.ARunnable *)

class progressRunnable (midletActivity_arg, (progressCanvas_arg : ProgressCanvas.progressCanvas)) =
  object
    inherit ARunnable.aRunnable ()
    val mutable midletActivity : SimpleProgressActivityInterface.simpleProgressActivityInterface = (Obj.magic 0)
    method midletActivity = midletActivity
    method set_midletActivity value' = midletActivity <- value'
    val mutable progressCanvas : ProgressCanvas.progressCanvas = (Obj.magic 0)
    method progressCanvas = progressCanvas
    method set_progressCanvas value' = progressCanvas <- value'
    
    

    method run () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        let midletActivity2 : MidletActivityBase.midletActivityBase ref = ref (((Obj.magic midletActivity_arg) :> MidletActivityBase.midletActivityBase)) in ();
        midletActivity <- (Obj.magic !midletActivity2);
        progressCanvas <- progressCanvas_arg
      end
  end
let () = java_register_constructor "ProgressRunnable" (fun arguments -> Obj.repr (new progressRunnable (Obj.obj arguments)))


