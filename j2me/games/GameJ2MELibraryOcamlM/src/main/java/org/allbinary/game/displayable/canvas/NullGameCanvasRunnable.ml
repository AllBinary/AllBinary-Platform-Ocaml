(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
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
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Item *)
(* import org.allbinary.game.state.GameState *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.util.ABHashtable *)

class nullGameCanvasRunnable () =
  object
    val mutable gameStateFactory : GameStateFactory.gameStateFactory = (Obj.magic 0)
    method gameStateFactory = gameStateFactory
    method set_gameStateFactory value' = gameStateFactory <- value'
    

    method getTitle () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end
    

    method isInitialized () : bool =
        begin
        false
        end
    

    method isPaused () : bool =
        begin
        false
        end
    

    method unPause () : unit =
        begin
        ()
        end
    

    method pause () : unit =
        begin
        ()
        end
    

    method isHighScoreSubmitted () : bool =
        begin
        false
        end
    

    method setHighScoreSubmitted ((_highScoreSubmitted : bool)) : unit =
        begin
        ()
        end
    

    method processGameOver () : unit =
        begin
        ()
        end
    

    method isGameOver () : bool =
        begin
        false
        end
    

    method initCommands : 'any1. 'any1 -> unit = fun (_cmdListener) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getCurrentStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end
    

    method getLoadStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end
    

    method setLoadStateHashtable : 'any1. 'any1 -> unit = fun (_hashtable) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getType () : int =
        begin
        (-1)
        end
    

    method setGameState : 'any1. 'any1 -> unit = fun (_gameState) ->
        begin
        ()
        end [@@warning "-20"]
    

    method getGameState () : GameState.gameState =
        begin
        (gameStateFactory#nO_GAME_STATE :> GameState.gameState)
        end
    

    method itemStateChanged : 'any1. 'any1 -> unit = fun (_item) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-20"]
    

    method isRunning () : bool =
        begin
        false
        end
    

    method setRunning ((_isRunning : bool)) : unit =
        begin
        ()
        end
    

    method setThread ((_thread : java_thread)) : unit =
        begin
        ()
        end
    

    method run () : unit =
        begin
        ()
        end

    initializer
      begin
        gameStateFactory <- ((GameStateFactory.getInstance ()) :> GameStateFactory.gameStateFactory);
        ()
      end
  end
let () = java_register_constructor "NullGameCanvasRunnable" (fun arguments -> Obj.repr (new nullGameCanvasRunnable (Obj.obj arguments)))

let nULL_GAME_CANVAS_RUNNABLE = (new nullGameCanvasRunnable ())
let get_nULL_GAME_CANVAS_RUNNABLE () = nULL_GAME_CANVAS_RUNNABLE
let () = java_register_static "NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE" (fun _ -> Obj.repr (get_nULL_GAME_CANVAS_RUNNABLE ()))


