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
(* package org.allbinary.input.motion.touch.action *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.motion.action.GameKeyCompleteMotionGestureInputEvent *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "DiagonalDownLeftTouchInputToGameKeyEventAction.get_instance" (fun _ -> Obj.repr (get_instance ()))
class diagonalDownLeftTouchInputToGameKeyEventAction () =
  object
    inherit GameKeyCompleteMotionGestureInputEvent.gameKeyCompleteMotionGestureInputEvent ("Diagonal Down Left Action", (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#dIAGONAL_DOWN_LEFT, (((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ())#getInputMapping ()))
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "DiagonalDownLeftTouchInputToGameKeyEventAction" (fun arguments -> Obj.repr (new diagonalDownLeftTouchInputToGameKeyEventAction (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new diagonalDownLeftTouchInputToGameKeyEventAction ())
        end;
        (Obj.magic ((Obj.magic !instance)))
        end
let () = java_register_static "DiagonalDownLeftTouchInputToGameKeyEventAction.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


