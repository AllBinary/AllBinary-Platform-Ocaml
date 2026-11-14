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
(* import org.allbinary.game.score.displayable.HighScoreTextBox *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)

class saveHighScoreRunnable ((isLast_arg : bool), (textBox_arg : HighScoreTextBox.highScoreTextBox)) =
  object (self)
    val mutable progressCanvas : ProgressCanvas.progressCanvas = (Obj.magic 0)
    method progressCanvas = progressCanvas
    method set_progressCanvas value' = progressCanvas <- value'
    val mutable isLast : bool = false
    method isLast = isLast
    method set_isLast value' = isLast <- value'
    val mutable textBox : HighScoreTextBox.highScoreTextBox = (Obj.magic 0)
    method textBox = textBox
    method set_textBox value' = textBox <- value'
    
    

    method run () : unit =
        begin
        let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            if isLast then begin
                ignore (textBox#submit ())
            end else begin
                ignore (textBox#saveHighScore ())
            end
        with e -> begin
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, (Obj.magic self), "run", e));
            ignore (progressCanvas#end_ ())
        end)
        end

    initializer
      begin
        progressCanvas <- ((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas);
        ();
        ();
        ();
        isLast <- isLast_arg;
        textBox <- textBox_arg
      end
  end
let () = java_register_constructor "SaveHighScoreRunnable" (fun arguments -> Obj.repr (new saveHighScoreRunnable (Obj.obj arguments)))


