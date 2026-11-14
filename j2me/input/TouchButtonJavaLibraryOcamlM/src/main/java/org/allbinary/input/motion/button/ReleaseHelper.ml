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
(* package org.allbinary.input.motion.button *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.event.GameKeyEvent *)

class releaseHelper (touchButtonRecognizer_arg) =
  object
    val mutable touchButtonRecognizer : Obj.t = Obj.repr 0
    method touchButtonRecognizer : 'r. 'r = Obj.magic touchButtonRecognizer
    method set_touchButtonRecognizer : 'v. 'v -> unit = fun value' -> touchButtonRecognizer <- Obj.repr value'
    
    

    method release : 'any1. 'any1 * int -> unit = fun (_touchButtonInput, (deviceId : int)) ->
        begin
        let nextTouchButtonInput : TouchButtonInput.touchButtonInput ref = ref (((Obj.magic 0) :> TouchButtonInput.touchButtonInput)) in ();
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
        for index = (((Obj.magic touchButtonRecognizer)#currentlyPressedTouchButtonSingleton#size ()) - 1) downto 0 do
            nextTouchButtonInput := ((Obj.magic touchButtonRecognizer)#currentlyPressedTouchButtonSingleton#get (index));
            gameKeyEvent := (!nextTouchButtonInput#getGameKeyEvent ());
            ignore ((Obj.magic touchButtonRecognizer)#upGameKeyEventHandler#fireEvent (!gameKeyEvent));
            ignore (((Obj.magic touchButtonRecognizer)#upGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent));
            ignore ((Obj.magic touchButtonRecognizer)#currentlyPressedTouchButtonSingleton#removeAt (index))
        done
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        touchButtonRecognizer <- Obj.repr (touchButtonRecognizer_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ReleaseHelper" (fun arguments -> Obj.repr (new releaseHelper (Obj.obj arguments)))


