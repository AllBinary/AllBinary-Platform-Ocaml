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
(* package org.allbinary.game.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.score.displayable.HighScoresCanvas *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class highScoresCanvasInputProcessor (highScoresCanvas_arg) =
  object (self)
    inherit PlayerGameInput.playerGameInput ((new BasicArrayListD.basicArrayListD ()), (new BasicArrayListD.basicArrayListD ()), (-1)) as super
    val mutable highScoresCanvas : Obj.t = Obj.repr 0
    method highScoresCanvas : 'r. 'r = Obj.magic highScoresCanvas
    method set_highScoresCanvas : 'v. 'v -> unit = fun value' -> highScoresCanvas <- Obj.repr value'
    
    

    method open_ () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onPressGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (super#onPressGameKeyEvent ((Obj.magic gameKeyEvent)));
        ignore (self#update ())
        end [@@warning "-7-20"]
    

    method onDownGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (super#onDownGameKeyEvent ((Obj.magic gameKeyEvent)));
        ignore (self#update ())
        end [@@warning "-7-20"]
    

    method onUpGameKeyEvent : 'any1. 'any1 -> unit = fun (gameKeyEvent) ->
        let gameKeyEvent = Obj.repr gameKeyEvent in
        begin
        ignore (super#onUpGameKeyEvent ((Obj.magic gameKeyEvent)));
        ignore (self#update ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getHighScoresCanvas : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic highScoresCanvas)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        highScoresCanvas <- Obj.repr (highScoresCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoresCanvasInputProcessor" (fun arguments -> Obj.repr (new highScoresCanvasInputProcessor (Obj.obj arguments)))


