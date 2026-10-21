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
(* import javax.microedition.lcdui.NullCanvas *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.util.BasicArrayListUtil *)

class noMenuInputProcessor () =
  object
    inherit BasicMenuInputProcessor.basicMenuInputProcessor (((BasicArrayListUtil.getInstance ())#getImmutableInstance ()), (-1), (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ()))))
    
    

    method onDownGameKeyEvent : 'any1. 'any1 -> unit = fun (_gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onUpGameKeyEvent : 'any1. 'any1 -> unit = fun (_gameKeyEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method onMotionGestureEvent : 'any1. 'any1 -> unit = fun (_motionGestureEvent) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NoMenuInputProcessor" (fun arguments -> Obj.repr (new noMenuInputProcessor (Obj.obj arguments)))

let sINGLETON = (new noMenuInputProcessor ())
let get_sINGLETON () = sINGLETON
let () = java_register_static "NoMenuInputProcessor.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        sINGLETON
        end
let () = java_register_static "NoMenuInputProcessor.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


