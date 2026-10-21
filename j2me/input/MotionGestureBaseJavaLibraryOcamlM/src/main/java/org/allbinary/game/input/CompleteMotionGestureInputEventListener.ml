(* Generated Code Do Not Modify *)
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class completeMotionGestureInputEventListener () =
  object
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ()
        end [@@warning "-20"]
    

    method onCompleteMotionGestureInputEvent : 'any1. 'any1 -> unit = fun (_completeMotionGestureInputEvent) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CompleteMotionGestureInputEventListener" (fun arguments -> Obj.repr (new completeMotionGestureInputEventListener (Obj.obj arguments)))


