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
(* package org.allbinary.input.motion.gesture.observer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class releaseControlledMotionGestureListener ((signed_arg : CompleteMotionGestureListenerInterface.completeMotionGestureListenerInterface)) =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable currentMotionGesture : MotionGestureInput.motionGestureInput = (Obj.magic 0)
    method currentMotionGesture = currentMotionGesture
    method set_currentMotionGesture value' = currentMotionGesture <- value'
    val mutable isMouseGestureOccurring : bool = false
    method isMouseGestureOccurring = isMouseGestureOccurring
    method set_isMouseGestureOccurring value' = isMouseGestureOccurring <- value'
    val mutable motionGestureCollection : BasicArrayList.basicArrayList = (Obj.magic 0)
    method motionGestureCollection = motionGestureCollection
    method set_motionGestureCollection value' = motionGestureCollection <- value'
    val mutable signed : CompleteMotionGestureListenerInterface.completeMotionGestureListenerInterface = (Obj.magic 0)
    method signed = signed
    method set_signed value' = signed <- value'
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, self))
        end [@@warning "-20"]
    

    method onUpMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onDownMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onLeftMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onRightMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onDiagonalDownRightMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onDiagonalDownLeftMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onDiagonalUpRightMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onDiagonalUpLeftMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onPressedMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        isMouseGestureOccurring <- true;
        currentMotionGesture <- (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION;
        (self#onMotionGestureEvent ((Obj.magic ev)))
        end [@@warning "-20"]
    

    method onScrolledMotionGestureEvent : 'any1. 'any1 -> unit = fun (_motionGestureEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method released : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        (try
            if (isMouseGestureOccurring = false) then begin
                ()
            end;
            isMouseGestureOccurring <- false;
            ignore (signed#onMotionGestureCompleted (motionGestureCollection));
            ignore (motionGestureCollection#clear ())
        with e -> begin
            ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#eXCEPTION_LABEL))#append (((StringUtil.getInstance ())#toString (((Obj.magic ev)#getMotionGesture ()))))))), self, "release", e))
        end)
        end [@@warning "-20"]
    

    method onMotionGestureEvent : 'any1. 'any1 -> unit = fun (ev) ->
        let ev = Obj.repr ev in
        begin
        if (isMouseGestureOccurring = false) then begin
            ()
        end;
        let motionGestureInput : MotionGestureInput.motionGestureInput ref = ref ((((Obj.magic ev)#getMotionGesture ()) :> MotionGestureInput.motionGestureInput)) in ();
        if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#pRESSED)) then begin
            (self#onPressedMotionGestureEvent ((Obj.magic ev)))
        end else if ((Obj.repr !motionGestureInput) == (Obj.repr (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#rELEASED)) then begin
            (self#released ((Obj.magic ev)))
        end else begin
            if ((Obj.repr currentMotionGesture) != (Obj.repr !motionGestureInput)) then begin
                currentMotionGesture <- !motionGestureInput;
                ignore (motionGestureCollection#add (((Obj.magic ev)#getMotionGesture ())))
            end
        end
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        currentMotionGesture <- ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION :> MotionGestureInput.motionGestureInput);
        isMouseGestureOccurring <- false;
        motionGestureCollection <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ();
        ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        signed <- signed_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ReleaseControlledMotionGestureListener" (fun arguments -> Obj.repr (new releaseControlledMotionGestureListener (Obj.obj arguments)))


