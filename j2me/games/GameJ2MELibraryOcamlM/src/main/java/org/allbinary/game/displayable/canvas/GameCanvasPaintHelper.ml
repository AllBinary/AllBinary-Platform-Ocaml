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
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.paint.ProcessPaintable *)

class gameCanvasPaintHelper ((gameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas)) =
  object
    inherit ProcessPaintable.processPaintable ()
    val mutable gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method gameCanvas = gameCanvas
    method set_gameCanvas value' = gameCanvas <- value'
    
    

    method process () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (gameCanvas#draw ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        gameCanvas <- gameCanvas_arg
      end
  end
let () = java_register_constructor "GameCanvasPaintHelper" (fun arguments -> Obj.repr (new gameCanvasPaintHelper (Obj.obj arguments)))


