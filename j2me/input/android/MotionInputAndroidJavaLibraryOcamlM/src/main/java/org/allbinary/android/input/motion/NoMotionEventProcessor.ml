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
(* package org.allbinary.android.input.motion *)

open Allbinary_java [@@warning "-33"]

let sINGLETON : MotionEventProcessor.motionEventProcessor = ((new MotionEventProcessor.motionEventProcessor ()) :> MotionEventProcessor.motionEventProcessor)
let get_sINGLETON () = sINGLETON
let () = java_register_static "NoMotionEventProcessor.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () : MotionEventProcessor.motionEventProcessor =
        begin
        (sINGLETON :> MotionEventProcessor.motionEventProcessor)
        end

let () = java_register_static "NoMotionEventProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class noMotionEventProcessor () =
  object
    inherit MotionEventProcessor.motionEventProcessor ()

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NoMotionEventProcessor" (fun arguments -> Obj.repr (new noMotionEventProcessor (Obj.obj arguments)))


