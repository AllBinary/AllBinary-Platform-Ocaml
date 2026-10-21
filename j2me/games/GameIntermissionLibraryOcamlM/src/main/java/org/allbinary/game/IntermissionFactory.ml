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
(* package org.allbinary.game *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.state.GameState *)
(* import org.allbinary.game.state.GameStateFactory *)

class intermissionFactory () =
  object
    val mutable sTART_LEVEL_INTERMISSION_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method sTART_LEVEL_INTERMISSION_GAME_STATE = sTART_LEVEL_INTERMISSION_GAME_STATE
    method set_sTART_LEVEL_INTERMISSION_GAME_STATE value' = sTART_LEVEL_INTERMISSION_GAME_STATE <- value'
    val mutable wAIT_LEVEL_INTERMISSION_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method wAIT_LEVEL_INTERMISSION_GAME_STATE = wAIT_LEVEL_INTERMISSION_GAME_STATE
    method set_wAIT_LEVEL_INTERMISSION_GAME_STATE value' = wAIT_LEVEL_INTERMISSION_GAME_STATE <- value'
    val mutable sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE = sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE
    method set_sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE value' = sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE <- value'
    val mutable sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE = sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE
    method set_sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE value' = sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE <- value'

    initializer
      begin
        sTART_LEVEL_INTERMISSION_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("START_LEVEL_INTERMISSION_GAME_STATE")) :> GameState.gameState);
        wAIT_LEVEL_INTERMISSION_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("WAIT_LEVEL_INTERMISSION_GAME_STATE")) :> GameState.gameState);
        sHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("SHOW_RESULTS_LEVEL_INTERMISSION_GAME_STATE")) :> GameState.gameState);
        sHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("SHOW_HIGH_SCORE_LEVEL_INTERMISSION_GAME_STATE")) :> GameState.gameState);
        ()
      end
  end
let () = java_register_constructor "IntermissionFactory" (fun arguments -> Obj.repr (new intermissionFactory (Obj.obj arguments)))

let instance = (new intermissionFactory ())
let get_instance () = instance
let () = java_register_static "IntermissionFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "IntermissionFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


