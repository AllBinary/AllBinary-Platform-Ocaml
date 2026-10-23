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
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)

class immediateCommandFormInputProcessor ((gameKeyEventList : BasicArrayList.basicArrayList), (playerInputId : int), gameCommandCanvas_arg, (form : ScrollSelectionForm.scrollSelectionForm)) =
  object (self)
    inherit CommandFormInputProcessor.commandFormInputProcessor (gameKeyEventList, playerInputId, gameCommandCanvas_arg, form) as super
    val mutable timeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeHelper = timeHelper
    method set_timeHelper value' = timeHelper <- value'
    val mutable gameCommandCanvas : Obj.t = Obj.repr 0
    method gameCommandCanvas : 'r. 'r = Obj.magic gameCommandCanvas
    method set_gameCommandCanvas : 'v. 'v -> unit = fun value' -> gameCommandCanvas <- Obj.repr value'
    
    

    method onPressGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        (try
            ignore (super#onPressGameKeyEvent ((Obj.magic gameKeyEvent)));
            if (timeHelper#isTimeTNT ()) then begin
                ignore (self#processInputList ());
                ignore ((Obj.magic gameCommandCanvas)#repaintBehavior#onChangeRepaint ((self#getCanvas ())))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#gameInputStrings)#oN_PRESS_GAME_KEY, e))
        end)
        end [@@warning "-7-20"]
    

    method onDownGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        (try
            ignore (super#onDownGameKeyEvent ((Obj.magic gameKeyEvent)));
            if (timeHelper#isTimeTNT ()) then begin
                ignore (self#processInputList ());
                ignore ((Obj.magic gameCommandCanvas)#repaintBehavior#onChangeRepaint ((self#getCanvas ())))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#gameInputStrings)#oN_DOWN_GAME_KEY, e))
        end)
        end [@@warning "-7-20"]
    

    method onUpGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        (try
            ignore (super#onUpGameKeyEvent ((Obj.magic gameKeyEvent)));
            if (timeHelper#isTimeTNT ()) then begin
                ignore (self#processInputList ());
                ignore ((Obj.magic gameCommandCanvas)#repaintBehavior#onChangeRepaint ((self#getCanvas ())))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#gameInputStrings)#oN_UP_GAME_KEY, e))
        end)
        end [@@warning "-7-20"]
    

    method onMotionGestureEvent : 'any1. 'any1 -> unit = fun (motionGestureEvent) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        (try
            ignore (super#onMotionGestureEvent ((Obj.magic motionGestureEvent)));
            if (timeHelper#isTimeTNT ()) then begin
                ignore (self#processInputList ());
                ignore ((Obj.magic gameCommandCanvas)#repaintBehavior#onChangeRepaint ((self#getCanvas ())))
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "onMotionGestureEvent", e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        timeHelper <- ((new TimeDelayHelper.timeDelayHelper (25)) :> TimeDelayHelper.timeDelayHelper);
        ();
        ();
        (* super(...) is the inherit clause *) ();
        gameCommandCanvas <- Obj.repr (gameCommandCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImmediateCommandFormInputProcessor" (fun arguments -> Obj.repr (new immediateCommandFormInputProcessor (Obj.obj arguments)))


