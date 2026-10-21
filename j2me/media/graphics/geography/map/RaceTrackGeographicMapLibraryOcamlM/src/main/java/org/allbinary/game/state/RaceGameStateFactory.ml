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
(* package org.allbinary.game.state *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.NullUtil *)

let instance : Obj.t ref = ref ((Obj.repr (NullUtil.getInstance ())#nULL_OBJECT))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "RaceGameStateFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))
class raceGameStateFactory () =
  object
    val mutable sTART_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method sTART_GAME_STATE = sTART_GAME_STATE
    method set_sTART_GAME_STATE value' = sTART_GAME_STATE <- value'
    val mutable yELLOW_LIGHT_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method yELLOW_LIGHT_GAME_STATE = yELLOW_LIGHT_GAME_STATE
    method set_yELLOW_LIGHT_GAME_STATE value' = yELLOW_LIGHT_GAME_STATE <- value'
    val mutable rED_LIGHT_GAME_STATE : GameState.gameState = (Obj.magic 0)
    method rED_LIGHT_GAME_STATE = rED_LIGHT_GAME_STATE
    method set_rED_LIGHT_GAME_STATE value' = rED_LIGHT_GAME_STATE <- value'

    initializer
      begin
        sTART_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("START_GAME_STATE")) :> GameState.gameState);
        yELLOW_LIGHT_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("YELLOW_LIGHT_GAME_STATE")) :> GameState.gameState);
        rED_LIGHT_GAME_STATE <- (((GameStateFactory.getInstance ())#createGameState ("RED_LIGHT_GAME_STATE")) :> GameState.gameState);
        ()
      end
  end
let () = java_register_constructor "RaceGameStateFactory" (fun arguments -> Obj.repr (new raceGameStateFactory (Obj.obj arguments)))

let getInstance () =
        begin
        if ((Obj.repr !instance) == (Obj.repr (NullUtil.getInstance ())#nULL_OBJECT)) then begin
            instance := (new raceGameStateFactory ())
        end;
        (Obj.magic !instance)
        end
let () = java_register_static "RaceGameStateFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


