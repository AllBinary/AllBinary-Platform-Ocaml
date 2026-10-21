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

class endLevelIntermissionProcessor ((gameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas)) =
  object
    inherit Processor.processor ()
    val mutable gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method gameCanvas = gameCanvas
    method set_gameCanvas value' = gameCanvas <- value'
    
    

    method process () : unit =
        begin
        ignore (gameCanvas#processEndLevelIntermissionGameState ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        gameCanvas <- gameCanvas_arg
      end
  end
let () = java_register_constructor "EndLevelIntermissionProcessor" (fun arguments -> Obj.repr (new endLevelIntermissionProcessor (Obj.obj arguments)))


