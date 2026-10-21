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
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.util.BasicArrayList *)

class popupCommandFormInputProcessor ((gameKeyEventList : BasicArrayList.basicArrayList), (playerInputId : int), (gameCanvas : MyCanvas.myCanvas), (form : ScrollSelectionForm.scrollSelectionForm), _popupMenuInputProcessor) =
  object
    inherit CommandFormInputProcessor.commandFormInputProcessor (gameKeyEventList, playerInputId, gameCanvas, form) as super
    
    

    method processInput ((key : int)) : int =
        begin
        (super#processInput (key))
        end [@@warning "-7"]
    

    method processMotionInput : 'any1. 'any1 -> unit = fun (motionGestureEvent) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        ignore (super#processMotionInput ((Obj.magic motionGestureEvent)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PopupCommandFormInputProcessor" (fun arguments -> Obj.repr (new popupCommandFormInputProcessor (Obj.obj arguments)))


