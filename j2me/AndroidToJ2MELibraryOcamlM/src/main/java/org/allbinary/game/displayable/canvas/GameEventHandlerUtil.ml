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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.android.input.motion.GameInputMotionEventProcessorFactory *)
(* import org.allbinary.game.input.event.GameKeyEventHandler *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)


let removeAllListeners () : unit =
        begin
        ignore ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ())))#removeAllListeners ());
        ignore ((GameKeyEventHandler.getInstance ())#removeAllListeners ());
        ignore ((GameInputMotionEventProcessorFactory.getInstance ())#addListener ())
        end

let () = java_register_static "GameEventHandlerUtil.removeAllListeners" (fun arguments -> Obj.repr (removeAllListeners (Obj.obj arguments)))
class gameEventHandlerUtil () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "GameEventHandlerUtil" (fun arguments -> Obj.repr (new gameEventHandlerUtil (Obj.obj arguments)))


