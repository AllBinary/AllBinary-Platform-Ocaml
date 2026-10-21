(*

  AllBinary Open License Version 1
  Copyright (c) 2009 AllBinary
  
  By agreeing to this license you and any business entity you represent are
  legally bound to the AllBinary Open License Version 1 legal agreement.
  
  You may obtain the AllBinary Open License Version 1 legal agreement from
  AllBinary or the root directory of AllBinary's AllBinary Platform repository.
  
  Created By: Travis Berthelot
   
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.MotionEvent *)
(* import org.allbinary.game.input.motion.action.SingleKeyPressGameKeyFromMotionGestureEventListener *)
(* import org.allbinary.input.motion.trackball.action.DownTrackballInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.trackball.action.LeftTrackballInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.trackball.action.RightTrackballInputToGameKeyEventAction *)
(* import org.allbinary.input.motion.trackball.action.UpTrackballInputToGameKeyEventAction *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class trackballGameInputMotionEventProcessor () =
  object (self)
    inherit MotionEventProcessor.motionEventProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable listener : SingleKeyPressGameKeyFromMotionGestureEventListener.singleKeyPressGameKeyFromMotionGestureEventListener = (Obj.magic 0)
    method listener = listener
    method set_listener value' = listener <- value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    method process : 'any1. 'any1 -> unit = fun (motionEvent) ->
        let motionEvent = Obj.repr motionEvent in
        begin
        (try
            let x : float ref = ref (((Obj.magic motionEvent)#getX ())) in ();
            let y : float ref = ref (((Obj.magic motionEvent)#getY ())) in ();
            if (!x < 0.) then begin
                ignore (listener#onCompleteMotionGestureInputEvent ((LeftTrackballInputToGameKeyEventAction.getInstance ())))
            end else if (!x > 0.) then begin
                ignore (listener#onCompleteMotionGestureInputEvent ((RightTrackballInputToGameKeyEventAction.getInstance ())))
            end;
            if (!y < 0.) then begin
                ignore (listener#onCompleteMotionGestureInputEvent ((UpTrackballInputToGameKeyEventAction.getInstance ())))
            end else if (!y > 0.) then begin
                ignore (listener#onCompleteMotionGestureInputEvent ((DownTrackballInputToGameKeyEventAction.getInstance ())))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        listener <- ((new SingleKeyPressGameKeyFromMotionGestureEventListener.singleKeyPressGameKeyFromMotionGestureEventListener ()) :> SingleKeyPressGameKeyFromMotionGestureEventListener.singleKeyPressGameKeyFromMotionGestureEventListener);
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "TrackballGameInputMotionEventProcessor" (fun arguments -> Obj.repr (new trackballGameInputMotionEventProcessor (Obj.obj arguments)))

let pROCESSOR = ref ((new trackballGameInputMotionEventProcessor ()))
let get_pROCESSOR () = !pROCESSOR
let set_pROCESSOR value' = pROCESSOR := value'
let () = java_register_static "TrackballGameInputMotionEventProcessor.get_pROCESSOR" (fun _ -> Obj.repr (get_pROCESSOR ()))

let getInstance () =
        begin
        !pROCESSOR
        end
let () = java_register_static "TrackballGameInputMotionEventProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


