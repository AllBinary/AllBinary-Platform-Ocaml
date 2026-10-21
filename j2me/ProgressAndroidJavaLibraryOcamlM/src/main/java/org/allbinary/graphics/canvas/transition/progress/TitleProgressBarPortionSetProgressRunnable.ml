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
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import android.app.Activity *)

class titleProgressBarPortionSetProgressRunnable (midletActivity, (progressCanvas : ProgressCanvas.progressCanvas)) =
  object (self)
    inherit ProgressRunnable.progressRunnable (midletActivity, progressCanvas)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method run () : unit =
        begin
        (try
            let progressCanvas : Obj.t ref = ref ((Obj.repr (Obj.magic progressCanvas))) in ();
            ignore (midletActivity#onSetProgress ((java_to_int (Obj.repr ((((progressCanvas#getValue ()) + ((progressCanvas#getMaxValue ()) / ((Obj.magic !progressCanvas)#getPortion ()))))))), (progressCanvas#getText ())))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TitleProgressBarPortionSetProgressRunnable" (fun arguments -> Obj.repr (new titleProgressBarPortionSetProgressRunnable (Obj.obj arguments)))


