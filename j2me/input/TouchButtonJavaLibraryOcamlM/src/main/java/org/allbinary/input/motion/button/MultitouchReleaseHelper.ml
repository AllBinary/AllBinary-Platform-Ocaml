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

class multitouchReleaseHelper (touchButtonRecognizer) =
  object (self)
    inherit ReleaseHelper.releaseHelper (touchButtonRecognizer)
    
    

    method release : 'any1. 'any1 * int -> unit = fun (touchButtonInput, (deviceId : int)) ->
        let touchButtonInput = Obj.repr touchButtonInput in
        begin
        let cancelTouchButtonInput : TouchButtonInput.touchButtonInput ref = ref ((((CancelTouchButtonInputFactory.getInstance ())#getCancel ((Obj.magic touchButtonInput))) :> TouchButtonInput.touchButtonInput)) in ();
        let nextTouchButtonInput : TouchButtonInput.touchButtonInput ref = ref (((Obj.magic 0) :> TouchButtonInput.touchButtonInput)) in ();
        let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((Obj.magic 0) :> GameKeyEvent.gameKeyEvent)) in ();
        for index = (((self#touchButtonRecognizer)#currentlyPressedTouchButtonSingleton#size ()) - 1) downto 0 do
            nextTouchButtonInput := ((self#touchButtonRecognizer)#currentlyPressedTouchButtonSingleton#get (index));
            if ((Obj.repr !cancelTouchButtonInput) == (Obj.repr !nextTouchButtonInput)) then begin
                gameKeyEvent := (!nextTouchButtonInput#getGameKeyEvent ());
                ignore ((self#touchButtonRecognizer)#upGameKeyEventHandler#fireEvent (!gameKeyEvent));
                ignore (((self#touchButtonRecognizer)#upGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent));
                ignore ((self#touchButtonRecognizer)#currentlyPressedTouchButtonSingleton#removeAt (index))
            end
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MultitouchReleaseHelper" (fun arguments -> Obj.repr (new multitouchReleaseHelper (Obj.obj arguments)))


