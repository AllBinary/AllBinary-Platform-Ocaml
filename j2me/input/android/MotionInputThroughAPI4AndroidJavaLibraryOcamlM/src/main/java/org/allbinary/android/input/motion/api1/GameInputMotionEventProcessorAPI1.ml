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
(* package org.allbinary.android.input.motion.api1 *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import android.view.MotionEvent *)
(* import org.allbinary.android.input.motion.BaseGameInputMotionEventProcessor *)
(* import org.allbinary.input.motion.AllMotionRecognizer *)
(* import org.allbinary.input.motion.MotionRecognizer *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameInputMotionEventProcessorAPI1.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameInputMotionEventProcessorAPI1 () =
  object (self)
    inherit BaseGameInputMotionEventProcessor.baseGameInputMotionEventProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable motionRecognizer : MotionRecognizer.motionRecognizer = (Obj.magic 0)
    method motionRecognizer = motionRecognizer
    method set_motionRecognizer value' = motionRecognizer <- value'
    
    

    method process : 'any1. 'any1 -> unit = fun (motionEvent) ->
        let motionEvent = Obj.repr motionEvent in
        begin
        (try
            let x : int ref = ref ((java_to_int (Obj.repr (((Obj.magic motionEvent)#getX ()))))) in ();
            let y : int ref = ref ((java_to_int (Obj.repr (((Obj.magic motionEvent)#getY ()))))) in ();
            let action : int ref = ref (((Obj.magic motionEvent)#getAction ())) in ();
            if (!action = (MotionEvent.get_aCTION_DOWN ())) then begin
                ignore (motionRecognizer#processStartMotionEvent (!x, !y, ((Obj.magic motionEvent)#getDeviceId ()), 0))
            end else if ((!action = (MotionEvent.get_aCTION_UP ())) || (!action = (MotionEvent.get_aCTION_CANCEL ()))) then begin
                ignore (motionRecognizer#processEndMotionEvent (!x, !y, ((Obj.magic motionEvent)#getDeviceId ()), 0))
            end else if (!action = (MotionEvent.get_aCTION_MOVE ())) then begin
                ignore (motionRecognizer#processDraggedMotionEvent (!x, !y, ((Obj.magic motionEvent)#getDeviceId ()), 0))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        motionRecognizer <- ((Obj.obj (java_new "AllMotionRecognizer" (Obj.repr ()))) :> MotionRecognizer.motionRecognizer);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameInputMotionEventProcessorAPI1" (fun arguments -> Obj.repr (new gameInputMotionEventProcessorAPI1 (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameInputMotionEventProcessorAPI1 ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameInputMotionEventProcessorAPI1.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


