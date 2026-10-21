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
(* package org.allbinary.game.input.motion.action *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEvent *)
(* import org.allbinary.game.input.CompleteMotionGestureInputEventListenerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class noCompleteMotionGestureInputEventListener () =
  object (self)
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onCompleteMotionGestureInputEvent : 'any1. 'any1 -> unit = fun (_completeMotionGestureInputEvent) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "NoCompleteMotionGestureInputEventListener" (fun arguments -> Obj.repr (new noCompleteMotionGestureInputEventListener (Obj.obj arguments)))

let instance = (new noCompleteMotionGestureInputEventListener ())
let get_instance () = instance
let () = java_register_static "NoCompleteMotionGestureInputEventListener.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "NoCompleteMotionGestureInputEventListener.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


