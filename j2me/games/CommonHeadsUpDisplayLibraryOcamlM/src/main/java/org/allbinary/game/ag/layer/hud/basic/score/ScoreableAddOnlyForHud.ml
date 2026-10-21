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
(* package org.allbinary.game.ag.layer.hud.basic.score *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.score.Scoreable *)

class scoreableAddOnlyForHud ((scoreVectorGraphic : ScoreHudWidget.scoreHudWidget)) =
  object (self)
    inherit Scoreable.scoreable (0) as super
    val mutable scoreHudWidget : ScoreHudWidget.scoreHudWidget = (Obj.magic 0)
    method scoreHudWidget = scoreHudWidget
    method set_scoreHudWidget value' = scoreHudWidget <- value'
    
    

    method removePoints ((_points : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method addPoints ((points : int)) : unit =
        begin
        ignore (super#addPoints (points));
        ignore ((self#getScoreHudWidget ())#add (points))
        end [@@warning "-7"]
    

    method getScoreHudWidget () : ScoreHudWidget.scoreHudWidget =
        begin
        (scoreHudWidget :> ScoreHudWidget.scoreHudWidget)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        scoreHudWidget <- scoreVectorGraphic;
        ignore ((self#getScoreHudWidget ())#set (0))
      end
  end
let () = java_register_constructor "ScoreableAddOnlyForHud" (fun arguments -> Obj.repr (new scoreableAddOnlyForHud (Obj.obj arguments)))


