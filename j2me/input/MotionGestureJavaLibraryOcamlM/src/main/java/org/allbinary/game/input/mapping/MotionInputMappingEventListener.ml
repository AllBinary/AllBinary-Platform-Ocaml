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
(* package org.allbinary.game.input.mapping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.mapping.event.InputMappingEvent *)
(* import org.allbinary.game.input.mapping.event.InputMappingEventListenerInterface *)
(* import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEventFactory *)
(* import org.allbinary.input.motion.button.BasicTouchInputFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class motionInputMappingEventListener () =
  object (self)
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-20"]
    

    method onInputMappingEvent : 'any1. 'any1 -> unit = fun (inputMappingEvent) ->
        let inputMappingEvent = Obj.repr inputMappingEvent in
        begin
        ignore ((GameKeyCompleteMotionGestureInputEventFactory.getInstance ())#updateAll ());
        ignore ((Obj.magic (java_call_static "BasicTouchInputFactory.getInstance" (Obj.repr ())))#updateAll (((Obj.magic inputMappingEvent)#getInputToGameKeyMapping ())))
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MotionInputMappingEventListener" (fun arguments -> Obj.repr (new motionInputMappingEventListener (Obj.obj arguments)))


