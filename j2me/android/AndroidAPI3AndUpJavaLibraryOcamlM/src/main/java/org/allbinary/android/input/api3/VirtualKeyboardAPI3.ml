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
(* import org.allbinary.android.input.VirtualKeyboard *)
(* import org.allbinary.input.event.VirtualKeyboardEvent *)
(* import org.allbinary.input.event.VirtualKeyboardEventHandler *)
(* import org.allbinary.input.event.VirtualKeyboardEventListenerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

let mAX_API : int ref = ref (2147483647)
let get_mAX_API () = !mAX_API
let set_mAX_API value' = mAX_API := value'
let () = java_register_static "VirtualKeyboardAPI3.get_mAX_API" (fun _ -> Obj.repr (get_mAX_API ()))
let mIN_API : int ref = ref (3)
let get_mIN_API () = !mIN_API
let set_mIN_API value' = mIN_API := value'
let () = java_register_static "VirtualKeyboardAPI3.get_mIN_API" (fun _ -> Obj.repr (get_mIN_API ()))
class virtualKeyboardAPI3 (activity_arg) =
  object (self)
    inherit VirtualKeyboard.virtualKeyboard ()
    val mutable virtualKeyboard : bool = false
    method virtualKeyboard = virtualKeyboard
    method set_virtualKeyboard value' = virtualKeyboard <- value'
    val mutable activity : Obj.t = Obj.repr 0
    method activity : 'r. 'r = Obj.magic activity
    method set_activity : 'v. 'v -> unit = fun value' -> activity <- Obj.repr value'
    val mutable showVirtualKeyboardRunnable : java_runnable = (Obj.magic 0)
    method showVirtualKeyboardRunnable = showVirtualKeyboardRunnable
    method set_showVirtualKeyboardRunnable value' = showVirtualKeyboardRunnable <- value'
    val mutable hideVirtualKeyboardRunnable : java_runnable = (Obj.magic 0)
    method hideVirtualKeyboardRunnable = hideVirtualKeyboardRunnable
    method set_hideVirtualKeyboardRunnable value' = hideVirtualKeyboardRunnable <- value'
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onVirtualKeyboardEvent : 'any1. 'any1 -> unit = fun (virtualKeyboardEvent) ->
        let virtualKeyboardEvent = Obj.repr virtualKeyboardEvent in
        begin
        let isShow : bool ref = ref ((Obj.magic ((Obj.magic virtualKeyboardEvent)#getSource ()))) in ();
        if !isShow then begin
            (self#showVirtualKeyboard ())
        end else begin
            (self#hideVirtualKeyboard ())
        end
        end [@@warning "-7-20"]
    

    method forceHide () : unit =
        begin
        (self#hideVirtualKeyboard ())
        end [@@warning "-7"]
    

    method hide () : unit =
        begin
        if virtualKeyboard then begin
            (self#forceHide ())
        end
        end [@@warning "-7"]
    

    method showVirtualKeyboard () : unit =
        begin
        ignore ((Obj.magic activity)#runOnUiThread (showVirtualKeyboardRunnable));
        virtualKeyboard <- true
        end [@@warning "-7"]
    

    method hideVirtualKeyboard () : unit =
        begin
        ignore ((Obj.magic activity)#runOnUiThread (hideVirtualKeyboardRunnable));
        virtualKeyboard <- false
        end [@@warning "-7"]

    initializer
      begin
        virtualKeyboard <- false;
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        activity <- Obj.repr (activity_arg);
        showVirtualKeyboardRunnable <- (new ShowVirtualKeyboardRunnable.showVirtualKeyboardRunnable ((Obj.magic activity)));
        hideVirtualKeyboardRunnable <- (new HideVirtualKeyboardRunnable.hideVirtualKeyboardRunnable ((Obj.magic activity)));
        let virtualKeyboardEventHandler : VirtualKeyboardEventHandler.virtualKeyboardEventHandler ref = ref (((VirtualKeyboardEventHandler.getInstance ()) :> VirtualKeyboardEventHandler.virtualKeyboardEventHandler)) in ();
        ignore (!virtualKeyboardEventHandler#removeAllListeners ());
        ignore (!virtualKeyboardEventHandler#addListenerInterface (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "VirtualKeyboardAPI3" (fun arguments -> Obj.repr (new virtualKeyboardAPI3 (Obj.obj arguments)))


