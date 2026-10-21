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
[@@@warning "-20"]
(* import android.view.MotionEvent *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.input.motion.gesture.observer.GameMotionGestureListener *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureReceiveInterfaceFactory *)
(* import org.allbinary.string.CommonStrings *)

class baseGameInputMotionEventProcessor () =
  object (self)
    inherit MotionEventProcessor.motionEventProcessor ()
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameMotionGestureListener : GameMotionGestureListener.gameMotionGestureListener = (Obj.magic 0)
    method gameMotionGestureListener = gameMotionGestureListener
    method set_gameMotionGestureListener value' = gameMotionGestureListener <- value'
    
    

    method process : 'any1. 'any1 -> unit = fun (_motionEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method addListener () : unit =
        begin
        let motionGesturesHandler : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ()))))) in ();
        ignore ((Obj.magic !motionGesturesHandler)#addListenerInterface (gameMotionGestureListener))
        end [@@warning "-7"]

    initializer
      begin
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ();
        gameMotionGestureListener <- (new GameMotionGestureListener.gameMotionGestureListener ((MotionGestureReceiveInterfaceFactory.getInstance ())));
        (self#addListener ())
      end
  end
let () = java_register_constructor "BaseGameInputMotionEventProcessor" (fun arguments -> Obj.repr (new baseGameInputMotionEventProcessor (Obj.obj arguments)))


