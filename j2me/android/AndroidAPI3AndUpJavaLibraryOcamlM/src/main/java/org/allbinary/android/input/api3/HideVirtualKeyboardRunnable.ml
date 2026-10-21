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
(* import android.os.IBinder *)
(* import android.view.View *)
(* import android.view.inputmethod.InputMethodManager *)
(* import org.allbinary.android.activity.ViewCompositeInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class hideVirtualKeyboardRunnable (activity_arg) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable activity : Obj.t = Obj.repr 0
    method activity : 'r. 'r = Obj.magic activity
    method set_activity : 'v. 'v -> unit = fun value' -> activity <- Obj.repr value'
    
    

    method run () : unit =
        try
        begin
        let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
        (try
            let inputMethodManager : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic activity)#getSystemService ((Context.get_iNPUT_METHOD_SERVICE ())))))) in ();
            let viewCompositeInterface : ViewCompositeInterface.viewCompositeInterface ref = ref (((Obj.magic (Obj.magic activity)) :> ViewCompositeInterface.viewCompositeInterface)) in ();
            if (!viewCompositeInterface == (Obj.magic 0)) then begin
                ignore (ForcedLogUtil.log ("Activity Null", self))
            end;
            let view : Obj.t ref = ref ((Obj.repr (!viewCompositeInterface#getView ()))) in ();
            if (((Obj.magic !view)#getWindowToken ()) == (Obj.magic 0)) then begin
                ignore ((Obj.magic logUtil)#putF ("Unable to hide virtual keyboard as window token is null - This usually happens during loading when the view is not attached to a window", self, !commonStrings#rUN));
                raise (Java_return (Obj.repr (())))
            end;
            let token : Obj.t ref = ref ((Obj.repr ((Obj.magic !view)#getWindowToken ()))) in ();
            ignore ((Obj.magic !inputMethodManager)#hideSoftInputFromWindow ((Obj.magic !token), 0))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
        end)
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        activity <- Obj.repr (activity_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "HideVirtualKeyboardRunnable" (fun arguments -> Obj.repr (new hideVirtualKeyboardRunnable (Obj.obj arguments)))


