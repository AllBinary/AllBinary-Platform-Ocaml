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
(* import org.allbinary.graphics.paint.Paintable *)

class gameCanvasNonBotPaintable (gameCanvas_arg) =
  object
    inherit Paintable.paintable ()
    val mutable gameCanvas : Obj.t = Obj.repr 0
    method gameCanvas : 'r. 'r = Obj.magic gameCanvas
    method set_gameCanvas : 'v. 'v -> unit = fun value' -> gameCanvas <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic gameCanvas)#nonBotPaint ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        gameCanvas <- Obj.repr (gameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameCanvasNonBotPaintable" (fun arguments -> Obj.repr (new gameCanvasNonBotPaintable (Obj.obj arguments)))


