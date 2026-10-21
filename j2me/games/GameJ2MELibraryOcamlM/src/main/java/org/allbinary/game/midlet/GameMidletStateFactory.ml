(* Generated Code Do Not Modify *)
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.state.GameState *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonLabels *)

class gameMidletStateFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable currentGameState : GameState.gameState = (Obj.magic 0)
    method currentGameState = currentGameState
    method set_currentGameState value' = currentGameState <- value'
    
    

    method getCurrentGameState () : GameState.gameState =
        begin
        (currentGameState :> GameState.gameState)
        end
    

    method setCurrentGameState : 'any1. 'any1 -> unit = fun (currentGameState_arg) ->
        let currentGameState_arg = Obj.repr currentGameState_arg in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append ((CommonLabels.getInstance ())#cURRENT))#append (" GameState: "))#append (((StringUtil.getInstance ())#toString ((Obj.magic currentGameState_arg))))))), self, "setCurrentGameState"));
        currentGameState <- (Obj.magic currentGameState_arg)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        currentGameState <- ((GameStateFactory.getInstance ())#nO_GAME_STATE :> GameState.gameState);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameMidletStateFactory" (fun arguments -> Obj.repr (new gameMidletStateFactory (Obj.obj arguments)))

let iNSTANCE = (new gameMidletStateFactory ())
let get_iNSTANCE () = iNSTANCE
let () = java_register_static "GameMidletStateFactory.get_iNSTANCE" (fun _ -> Obj.repr (get_iNSTANCE ()))

let getInstance () =
        begin
        iNSTANCE
        end
let () = java_register_static "GameMidletStateFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


