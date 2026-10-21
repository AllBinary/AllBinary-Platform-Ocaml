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
(* package org.allbinary.graphics.draw *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)

class canvasDrawLineString ((x_arg : int), (y_arg : int)) =
  object (self)
    val mutable drawStringUtil : DrawStringUtil.drawStringUtil = (Obj.magic 0)
    method drawStringUtil = drawStringUtil
    method set_drawStringUtil value' = drawStringUtil <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable x : int = 0
    method x = x
    method set_x value' = x <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-20"]
    

    method paint : 'any1. 'any1 * string * int -> unit = fun (graphics, (string : string), (line : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (drawStringUtil#drawCenterString ((Obj.magic graphics), string, 0, (String.length string), x, (y + ((line * fontHeight)))))
        end [@@warning "-20"]

    initializer
      begin
        drawStringUtil <- ((DrawStringUtil.getInstance ()) :> DrawStringUtil.drawStringUtil);
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        ();
        ();
        fontHeight <- 0;
        ();
        x <- x_arg;
        y <- y_arg
      end
  end
let () = java_register_constructor "CanvasDrawLineString" (fun arguments -> Obj.repr (new canvasDrawLineString (Obj.obj arguments)))

let nULL_CANVAS_DRAW_LINE_STRING = (new canvasDrawLineString (0, 0))
let get_nULL_CANVAS_DRAW_LINE_STRING () = nULL_CANVAS_DRAW_LINE_STRING
let () = java_register_static "CanvasDrawLineString.get_nULL_CANVAS_DRAW_LINE_STRING" (fun _ -> Obj.repr (get_nULL_CANVAS_DRAW_LINE_STRING ()))


