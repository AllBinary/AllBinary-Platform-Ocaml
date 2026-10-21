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
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.score.HighScores *)
(* import org.allbinary.game.score.HighScoresHelperBase *)
(* import org.allbinary.game.score.NullHighScoresSingletonFactory *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.graphics.paint.NullPaintable *)

class endGameProcessor (gameCanvas_arg) =
  object
    inherit Processor.processor ()
    val mutable gameStateFactory : GameStateFactory.gameStateFactory = (Obj.magic 0)
    method gameStateFactory = gameStateFactory
    method set_gameStateFactory value' = gameStateFactory <- value'
    val mutable gameCanvas : Obj.t = Obj.repr 0
    method gameCanvas : 'r. 'r = Obj.magic gameCanvas
    method set_gameCanvas : 'v. 'v -> unit = fun value' -> gameCanvas <- Obj.repr value'
    val mutable wAIT : int = 0
    method wAIT = wAIT
    method set_wAIT value' = wAIT <- value'
    
    

    method process () : unit =
        begin
        if ((Obj.magic gameCanvas)#isHighScoreSubmitted ()) then begin
            if (((Obj.magic gameCanvas)#getGameStateTimeHelper ())#isElapsedTNT (wAIT)) then begin
                if ((Obj.repr ((Obj.magic gameCanvas)#getGameState ())) == (Obj.repr gameStateFactory#sHOW_END_RESULT_GAME_STATE)) then begin
                    let highScoresBase : HighScoresHelperBase.highScoresHelperBase ref = ref (((Obj.magic (Obj.magic gameCanvas)#highScoresHelper) :> HighScoresHelperBase.highScoresHelperBase)) in ();
                    let highScores : Obj.t ref = ref ((Obj.repr (!highScoresBase#getSelectedHighScores ()))) in ();
                    if ((Obj.repr (Obj.magic !highScores)) != (Obj.repr (NullHighScoresSingletonFactory.getInstance ()))) then begin
                        ignore (!highScoresBase#selectHighScores ());
                        ignore (((Obj.magic gameCanvas)#getRealHighScoresPaintable ())#setHighScores ((Obj.magic !highScores)));
                        ignore ((Obj.magic gameCanvas)#setGameState (gameStateFactory#sHOW_HIGH_SCORE_GAME_STATE));
                        ignore ((Obj.magic gameCanvas)#setHighScoresPaintable (((Obj.magic gameCanvas)#getRealHighScoresPaintable ())))
                    end
                end else if ((Obj.repr ((Obj.magic gameCanvas)#getGameState ())) == (Obj.repr gameStateFactory#sHOW_HIGH_SCORE_GAME_STATE)) then begin
                    ignore ((Obj.magic gameCanvas)#setGameState (gameStateFactory#sHOW_END_RESULT_GAME_STATE));
                    ignore ((Obj.magic gameCanvas)#setHighScoresPaintable ((NullPaintable.getInstance ())))
                end
            end
        end
        end [@@warning "-7"]

    initializer
      begin
        gameStateFactory <- ((GameStateFactory.getInstance ()) :> GameStateFactory.gameStateFactory);
        ();
        wAIT <- 5000;
        ();
        gameCanvas <- Obj.repr (gameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "EndGameProcessor" (fun arguments -> Obj.repr (new endGameProcessor (Obj.obj arguments)))


