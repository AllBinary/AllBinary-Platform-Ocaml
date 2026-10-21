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
(* import org.allbinary.game.score.displayable.HighScoresCanvas *)

class highScoresCanvasChangeLevelInputProcessorFactory () =
  object
    

    method getInstance : 'any1. 'any1 -> HighScoresCanvasInputProcessor.highScoresCanvasInputProcessor = fun (highScoresCanvas) ->
        let highScoresCanvas = Obj.repr highScoresCanvas in
        begin
        ((new HighScoresCanvasLevelChangeInputProcessor.highScoresCanvasLevelChangeInputProcessor ((Obj.magic highScoresCanvas))) :> HighScoresCanvasInputProcessor.highScoresCanvasInputProcessor)
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "HighScoresCanvasChangeLevelInputProcessorFactory" (fun arguments -> Obj.repr (new highScoresCanvasChangeLevelInputProcessorFactory (Obj.obj arguments)))


