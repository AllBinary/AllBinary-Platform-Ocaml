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
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.logic.string.StringUtil *)

class endGameInfo () =
  object (self)
    val mutable nORMAL_GAME_OVER : string = ""
    method nORMAL_GAME_OVER = nORMAL_GAME_OVER
    method set_nORMAL_GAME_OVER value' = nORMAL_GAME_OVER <- value'
    val mutable nORMAL_GAME_OVER_WIN : string = ""
    method nORMAL_GAME_OVER_WIN = nORMAL_GAME_OVER_WIN
    method set_nORMAL_GAME_OVER_WIN value' = nORMAL_GAME_OVER_WIN <- value'
    val mutable gameOverStr : string = ""
    method gameOverStr = gameOverStr
    method set_gameOverStr value' = gameOverStr <- value'
    val mutable winStr : string = ""
    method winStr = winStr
    method set_winStr value' = winStr <- value'
    
    

    method update : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_gameInfo, _myCanvas) ->
        begin
        (self#setGameOverStr (nORMAL_GAME_OVER));
        (self#setWinStr (nORMAL_GAME_OVER_WIN))
        end [@@warning "-20"]
    

    method getGameOverStr () : string =
        begin
        gameOverStr
        end
    

    method setGameOverStr ((gameOverStr_arg : string)) : unit =
        begin
        gameOverStr <- gameOverStr_arg
        end
    

    method getWinStr () : string =
        begin
        winStr
        end
    

    method setWinStr ((winStr_arg : string)) : unit =
        begin
        winStr <- winStr_arg
        end

    initializer
      begin
        nORMAL_GAME_OVER <- "Game Over";
        nORMAL_GAME_OVER_WIN <- "You Won";
        gameOverStr <- (StringUtil.getInstance ())#eMPTY_STRING;
        winStr <- gameOverStr;
        ();
        ()
      end
  end
let () = java_register_constructor "EndGameInfo" (fun arguments -> Obj.repr (new endGameInfo (Obj.obj arguments)))


