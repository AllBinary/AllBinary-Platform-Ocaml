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
(* package org.allbinary.android.input.motion.api5 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.MotionEvent *)
(* import org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.ScalableListener *)
(* import org.allbinary.input.motion.AllMotionRecognizer *)
(* import org.allbinary.input.motion.MotionRecognizer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameInputMotionEventProcessorAPI5.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameInputMotionEventProcessorAPI5 () =
  object (self)
    inherit BaseGameInputMotionEventProcessor.baseGameInputMotionEventProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable motionRecognizerArray : MotionRecognizer.motionRecognizer array = (Obj.magic 0)
    method motionRecognizerArray = motionRecognizerArray
    method set_motionRecognizerArray value' = motionRecognizerArray <- value'
    val mutable tOTAL_MINUS_ONE : int = 0
    method tOTAL_MINUS_ONE = tOTAL_MINUS_ONE
    method set_tOTAL_MINUS_ONE value' = tOTAL_MINUS_ONE <- value'
    
    

    method isValid ((pointerId : int)) : bool =
        try
        begin
        if (pointerId > tOTAL_MINUS_ONE) then begin
            let message : string ref = ref ("Log that the pointer Ids are not what would be expected or Android has more than what I set my stuff to support pointerId: ") in ();
            ignore (ForcedLogUtil.log ((!message ^ java_string_of (Obj.repr (pointerId))), self));
            raise (Java_return (Obj.repr (false)))
        end else begin
            raise (Java_return (Obj.repr (true)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method process : 'any1. 'any1 -> unit = fun (motionEvent) ->
        let motionEvent = Obj.repr motionEvent in
        begin
        (try
            let action : int ref = ref (((Obj.magic motionEvent)#getAction ())) in ();
            let total : int ref = ref ((Array.length motionRecognizerArray)) in ();
            if (!total > ((Obj.magic motionEvent)#getPointerCount ())) then begin
                total := ((Obj.magic motionEvent)#getPointerCount ())
            end else begin
                let message : string ref = ref ("Log that Android has more pointers than I have expected so increase it motionEvent.getPointerCount(): ") in ();
                ignore (ForcedLogUtil.log ((!message ^ java_string_of (Obj.repr (((Obj.magic motionEvent)#getPointerCount ())))), self))
            end;
            let totalMinusOne : int ref = ref ((!total - 1)) in ();
            if (!action = (MotionEvent.get_aCTION_DOWN ())) then begin
                for pointerIndex = !totalMinusOne downto 0 do
                    let pointerId : int ref = ref (((Obj.magic motionEvent)#getPointerId (pointerIndex))) in ();
                    if (self#isValid (!pointerId)) then begin
                        let scalableListener : ScalableListener.scalableListener ref = ref (((displayInfo#getScalableListener ()) :> ScalableListener.scalableListener)) in ();
                        let x : int ref = ref ((java_to_int (Obj.repr (((((((Obj.magic motionEvent)#getX (pointerIndex)) - (displayInfo#getLeft ()))) / (!scalableListener#getRatio ((displayInfo#getRatio ()))))))))) in ();
                        let y : int ref = ref ((java_to_int (Obj.repr (((((((Obj.magic motionEvent)#getY (pointerIndex)) - (displayInfo#getTop ()))) / (!scalableListener#getRatio ((displayInfo#getRatio ()))))))))) in ();
                        ignore (motionRecognizerArray.(!pointerId)#processStartMotionEvent (!x, !y, ((Obj.magic motionEvent)#getDeviceId ()), 0))
                    end
                done
            end else if ((!action = (MotionEvent.get_aCTION_UP ())) || (!action = (MotionEvent.get_aCTION_CANCEL ()))) then begin
                for pointerIndex = !totalMinusOne downto 0 do
                    let pointerId : int ref = ref (((Obj.magic motionEvent)#getPointerId (pointerIndex))) in ();
                    if (self#isValid (!pointerId)) then begin
                        let scalableListener : ScalableListener.scalableListener ref = ref (((displayInfo#getScalableListener ()) :> ScalableListener.scalableListener)) in ();
                        let x : int ref = ref ((java_to_int (Obj.repr (((((((Obj.magic motionEvent)#getX (pointerIndex)) - (displayInfo#getLeft ()))) / (!scalableListener#getRatio ((displayInfo#getRatio ()))))))))) in ();
                        let y : int ref = ref ((java_to_int (Obj.repr (((((((Obj.magic motionEvent)#getY (pointerIndex)) - (displayInfo#getTop ()))) / (!scalableListener#getRatio ((displayInfo#getRatio ()))))))))) in ();
                        ignore (motionRecognizerArray.(!pointerId)#processEndMotionEvent (!x, !y, ((Obj.magic motionEvent)#getDeviceId ()), 0))
                    end
                done
            end else if (!action = (MotionEvent.get_aCTION_MOVE ())) then begin
                for pointerIndex = !totalMinusOne downto 0 do
                    let pointerId : int ref = ref (((Obj.magic motionEvent)#getPointerId (pointerIndex))) in ();
                    if (self#isValid (!pointerId)) then begin
                        let scalableListener : ScalableListener.scalableListener ref = ref (((displayInfo#getScalableListener ()) :> ScalableListener.scalableListener)) in ();
                        let x : int ref = ref ((java_to_int (Obj.repr (((((((Obj.magic motionEvent)#getX (pointerIndex)) - (displayInfo#getLeft ()))) / (!scalableListener#getRatio ((displayInfo#getRatio ()))))))))) in ();
                        let y : int ref = ref ((java_to_int (Obj.repr (((((((Obj.magic motionEvent)#getY (pointerIndex)) - (displayInfo#getTop ()))) / (!scalableListener#getRatio ((displayInfo#getRatio ()))))))))) in ();
                        ignore (motionRecognizerArray.(!pointerId)#processDraggedMotionEvent (!x, !y, ((Obj.magic motionEvent)#getDeviceId ()), 0))
                    end
                done
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        ();
        ();
        ();
        let size : int ref = ref ((GameInputMotionInfoAPI5.getInstance ())#mAX_POINTERS) in ();
        motionRecognizerArray <- (Array.make (!size) (Obj.magic 0));
        tOTAL_MINUS_ONE <- !size;
        for index = 0 to !size - 1 do
            motionRecognizerArray.(index) <- ((Obj.obj (java_new "AllMotionRecognizer" (Obj.repr ()))) :> MotionRecognizer.motionRecognizer)
        done
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameInputMotionEventProcessorAPI5" (fun arguments -> Obj.repr (new gameInputMotionEventProcessorAPI5 (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameInputMotionEventProcessorAPI5 ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameInputMotionEventProcessorAPI5.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


