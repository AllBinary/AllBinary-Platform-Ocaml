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
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.NullCanvas *)
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.input.motion.gesture.observer.BaseMotionGestureEventListener *)
(* import org.allbinary.input.motion.gesture.observer.MotionGestureEvent *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class basicMenuInputProcessor ((gameKeyEventList : BasicArrayList.basicArrayList), (playerInputId : int), gameCanvas) =
  object
    inherit PlayerGameInput.playerGameInput (gameKeyEventList, (new BasicArrayListD.basicArrayListD ()), playerInputId)
    val mutable motionGestureEventList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method motionGestureEventList = motionGestureEventList
    method set_motionGestureEventList value' = motionGestureEventList <- value'
    val mutable canvas : Obj.t = Obj.repr 0
    method canvas : 'r. 'r = Obj.magic canvas
    method set_canvas : 'v. 'v -> unit = fun value' -> canvas <- Obj.repr value'
    
    

    method onMotionGestureEvent : 'any1. 'any1 -> unit = fun (motionGestureEvent) ->
        let motionGestureEvent = Obj.repr motionGestureEvent in
        begin
        ignore (motionGestureEventList#add ((Obj.magic motionGestureEvent)))
        end [@@warning "-7-20"]
    

    method onScrolledMotionGestureEvent : 'any1. 'any1 -> unit = fun (_motionGestureEvent) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method setCanvas : 'any1. 'any1 -> unit = fun (canvas_arg) ->
        let canvas_arg = Obj.repr canvas_arg in
        begin
        canvas <- Obj.repr ((Obj.magic canvas_arg))
        end [@@warning "-7-20"]
    

    method getCanvas () : MyCanvas.myCanvas =
        begin
        ((Obj.magic (Obj.magic canvas)) :> MyCanvas.myCanvas)
        end [@@warning "-7"]
    

    method processInputList () : int =
        begin
        (-1)
        end [@@warning "-7"]

    initializer
      begin
        motionGestureEventList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        canvas <- (Obj.repr (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        canvas <- Obj.repr (gameCanvas)
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicMenuInputProcessor" (fun arguments -> Obj.repr (new basicMenuInputProcessor (Obj.obj arguments)))


