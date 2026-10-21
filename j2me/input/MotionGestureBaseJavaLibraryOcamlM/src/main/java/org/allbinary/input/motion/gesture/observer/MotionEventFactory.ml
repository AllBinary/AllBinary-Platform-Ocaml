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
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.input.motion.gesture.MotionGestureInput *)
(* import org.allbinary.input.motion.gesture.TouchMotionGestureFactory *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.AllBinaryEventObjectFactoryInterface *)

let index : int ref = ref (0)
let get_index () = !index
let set_index value' = index := value'
let () = java_register_static "MotionEventFactory.get_index" (fun _ -> Obj.repr (get_index ()))
class motionEventFactory ((source_arg : Obj.t), (id_arg : int)) =
  object
    val mutable source : Obj.t = (Obj.magic 0)
    method source = source
    method set_source value' = source <- value'
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    
    

    method getInstance () : AllBinaryEventObject.allBinaryEventObject =
        try
        begin
        let inputFactory : InputFactory.inputFactory ref = ref (((InputFactory.getInstance ()) :> InputFactory.inputFactory)) in ();
        let input : Obj.t ref = ref ((Obj.repr (!inputFactory#getInstanceById ((let value = !index in index := !index + 1; value))))) in ();
        if ((Obj.repr (Obj.magic !input)) == (Obj.repr !inputFactory#nO_INPUT)) then begin
            raise (Java_return (Obj.repr ((new MotionGestureEvent.motionGestureEvent (source, id, (Obj.magic (Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#nO_MOTION))))))
        end else begin
            raise (Java_return (Obj.repr ((new MotionGestureEvent.motionGestureEvent (source, id, (Obj.magic (Obj.magic !input)))))))
        end
        end
        with Java_return value -> Obj.obj value

    initializer
      begin
        ();
        ();
        ();
        source <- source_arg;
        id <- id_arg;
        index := ((Obj.magic (java_call_static "TouchMotionGestureFactory.getInstance" (Obj.repr ())))#lAST_MOTION#getId ())
      end
  end
let () = java_register_constructor "MotionEventFactory" (fun arguments -> Obj.repr (new motionEventFactory (Obj.obj arguments)))


