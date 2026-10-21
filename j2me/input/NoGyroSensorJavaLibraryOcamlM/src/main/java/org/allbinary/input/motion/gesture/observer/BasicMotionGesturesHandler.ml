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
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class basicMotionGesturesHandler () =
  object
    inherit BasicEventHandler.basicEventHandler ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let baseMotionGestureEventListener : BaseMotionGestureEventListener.baseMotionGestureEventListener ref = ref (((Obj.magic (Obj.magic eventListenerInterface)) :> BaseMotionGestureEventListener.baseMotionGestureEventListener)) in ();
        ignore (!baseMotionGestureEventListener#onMotionGestureEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BasicMotionGesturesHandler" (fun arguments -> Obj.repr (new basicMotionGesturesHandler (Obj.obj arguments)))

let sINGLETON = (new basicMotionGesturesHandler ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "BasicMotionGesturesHandler.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "BasicMotionGesturesHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


