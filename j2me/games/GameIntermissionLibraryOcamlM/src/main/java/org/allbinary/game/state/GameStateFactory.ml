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
(* package org.allbinary.game.state *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GameStateFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class gameStateFactory () =
  object (self)
    val mutable index : int = 0
    method index = index
    method set_index value' = index <- value'
    val mutable nO_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method nO_GAME_STATE = nO_GAME_STATE
    method set_nO_GAME_STATE value' = nO_GAME_STATE <- value'
    val mutable pLAYING_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method pLAYING_GAME_STATE = pLAYING_GAME_STATE
    method set_pLAYING_GAME_STATE value' = pLAYING_GAME_STATE <- value'
    val mutable sHOW_END_RESULT_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method sHOW_END_RESULT_GAME_STATE = sHOW_END_RESULT_GAME_STATE
    method set_sHOW_END_RESULT_GAME_STATE value' = sHOW_END_RESULT_GAME_STATE <- value'
    val mutable sHOW_HIGH_SCORE_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method sHOW_HIGH_SCORE_GAME_STATE = sHOW_HIGH_SCORE_GAME_STATE
    method set_sHOW_HIGH_SCORE_GAME_STATE value' = sHOW_HIGH_SCORE_GAME_STATE <- value'
    
    

    method createGameState ((name : string)) : GameState.gameState =
        begin
        ((new GameState.gameState (name, (let value = index in index <- index + 1; value))) :> GameState.gameState)
        end

    initializer
      begin
        index <- 0;
        nO_GAME_STATE <- ((self#createGameState ("NO_GAME_STATE")) :> GameState.gameState);
        pLAYING_GAME_STATE <- ((self#createGameState ("PLAYING_GAME_STATE")) :> GameState.gameState);
        sHOW_END_RESULT_GAME_STATE <- ((self#createGameState ("SHOW_END_RESULT_GAME_STATE")) :> GameState.gameState);
        sHOW_HIGH_SCORE_GAME_STATE <- ((self#createGameState ("SHOW_HIGH_SCORE_GAME_STATE")) :> GameState.gameState);
        ();
        ()
      end
  end
let () = java_register_constructor "GameStateFactory" (fun arguments -> Obj.repr (new gameStateFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new gameStateFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "GameStateFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


