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
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfiguration *)
(* import org.allbinary.input.motion.gesture.configuration.MotionGestureConfigurationFactory *)


let getInstance () : CompleteMotionGestureListenerInterface.completeMotionGestureListenerInterface =
        try
        begin
        let configuration : MotionGestureConfiguration.motionGestureConfiguration ref = ref (((MotionGestureConfigurationFactory.getInstance ()) :> MotionGestureConfiguration.motionGestureConfiguration)) in ();
        if (not (!configuration#isExecutingActionsAllowed ())) then begin
            raise (Java_return (Obj.repr ((new NullCompleteMotionGestureReceiver.nullCompleteMotionGestureReceiver ()))))
        end else begin
            raise (Java_return (Obj.repr ((new ResolveCompleteMotionGestureListener.resolveCompleteMotionGestureListener ()))))
        end
        end
        with Java_return value -> Obj.obj value

let () = java_register_static "MotionGestureReceiveInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class motionGestureReceiveInterfaceFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MotionGestureReceiveInterfaceFactory" (fun arguments -> Obj.repr (new motionGestureReceiveInterfaceFactory (Obj.obj arguments)))


