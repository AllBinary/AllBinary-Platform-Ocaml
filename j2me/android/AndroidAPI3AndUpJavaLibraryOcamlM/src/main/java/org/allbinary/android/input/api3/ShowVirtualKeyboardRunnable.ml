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
(* package org.allbinary.android.input.api3 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.app.Activity *)
(* import android.content.Context *)
(* import android.view.View *)
(* import android.view.inputmethod.InputMethodManager *)
(* import org.allbinary.android.activity.ViewCompositeInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class showVirtualKeyboardRunnable (activity_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable activity : Obj.t = Obj.repr 0
    method activity : 'r. 'r = Obj.magic activity
    method set_activity : 'v. 'v -> unit = fun value' -> activity <- Obj.repr value'
    
    

    method run () : unit =
        begin
        (try
            let inputMethodManager : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic activity)#getSystemService ((Context.get_iNPUT_METHOD_SERVICE ())))))) in ();
            let viewCompositeInterface : ViewCompositeInterface.viewCompositeInterface ref = ref (((Obj.magic (Obj.magic activity)) :> ViewCompositeInterface.viewCompositeInterface)) in ();
            if (!viewCompositeInterface == (Obj.magic 0)) then begin
                ignore (ForcedLogUtil.log ("Activity Null", self))
            end;
            let view : Obj.t ref = ref ((Obj.repr (!viewCompositeInterface#getView ()))) in ();
            ignore ((Obj.magic !inputMethodManager)#toggleSoftInputFromWindow (((Obj.magic !view)#getWindowToken ()), (InputMethodManager.get_sHOW_FORCED ()), 0))
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        activity <- Obj.repr (activity_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShowVirtualKeyboardRunnable" (fun arguments -> Obj.repr (new showVirtualKeyboardRunnable (Obj.obj arguments)))


