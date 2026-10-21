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
(* package org.allbinary.input.motion.gesture *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.CompleteMotionGestureInputEvent *)
(* import org.allbinary.util.BasicArrayList *)

class motionGestureToMotionGestureActionAssociation ((list_arg : BasicArrayList.basicArrayList), (commandAction : CompleteMotionGestureInputEvent.completeMotionGestureInputEvent)) =
  object
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable motionGestureAction : CompleteMotionGestureInputEvent.completeMotionGestureInputEvent = (Obj.magic 0)
    method motionGestureAction = motionGestureAction
    method set_motionGestureAction value' = motionGestureAction <- value'
    
    

    method getMotionGesture () : BasicArrayList.basicArrayList =
        begin
        (list :> BasicArrayList.basicArrayList)
        end
    

    method setMotionGestures : 'any1. 'any1 -> unit = fun (list_arg) ->
        let list_arg = Obj.repr list_arg in
        begin
        list <- (Obj.magic list_arg)
        end [@@warning "-20"]
    

    method getCommandAction () : CompleteMotionGestureInputEvent.completeMotionGestureInputEvent =
        begin
        (motionGestureAction :> CompleteMotionGestureInputEvent.completeMotionGestureInputEvent)
        end
    

    method setMotionGestureAction : 'any1. 'any1 -> unit = fun (commandAction) ->
        let commandAction = Obj.repr commandAction in
        begin
        motionGestureAction <- (Obj.magic commandAction)
        end [@@warning "-20"]
    

    method isMotionGestureArrayEquals : 'any1. 'any1 -> bool = fun (aList) ->
        let aList = Obj.repr aList in
        try
        begin
        let size : int ref = ref (((Obj.magic aList)#size ())) in ();
        if ((list#size ()) <> !size) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        for i = (!size - 1) downto 0 do
            if ((Obj.repr (Obj.magic aList)#objectArray.(i)) != (Obj.repr list#objectArray.(i))) then begin
                raise (Java_return (Obj.repr (false)))
            end
        done;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        list <- list_arg;
        motionGestureAction <- commandAction
      end
  end
let () = java_register_constructor "MotionGestureToMotionGestureActionAssociation" (fun arguments -> Obj.repr (new motionGestureToMotionGestureActionAssociation (Obj.obj arguments)))


