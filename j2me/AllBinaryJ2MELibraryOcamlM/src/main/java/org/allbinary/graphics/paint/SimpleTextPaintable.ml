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
(* package org.allbinary.graphics.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)

class simpleTextPaintable ((text_arg : string), (basicColor_arg : BasicColor.basicColor)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable displayInfoSingleton : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfoSingleton = displayInfoSingleton
    method set_displayInfoSingleton value' = displayInfoSingleton <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable text : string = ""
    method text = text
    method set_text value' = text <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable topScoresWidth : int = 0
    method topScoresWidth = topScoresWidth
    method set_topScoresWidth value' = topScoresWidth <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        topScoresWidth <- ((((Obj.magic !font)#stringWidth (text)) asr 1));
        fontHeight <- ((Obj.magic !font)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let width : int ref = ref ((displayInfoSingleton#getLast ()).(displayInfoSingleton#wIDTH)) in ();
        ignore ((Obj.magic graphics)#setColor (((self#getBasicColorP ())#intValue ())));
        ignore ((Obj.magic graphics)#drawString (text, (((!width asr 1)) - topScoresWidth), fontHeight, anchor))
        end [@@warning "-7-20"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method setText ((text_arg : string)) : unit =
        begin
        text <- text_arg;
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7"]
    

    method getText () : string =
        begin
        text
        end [@@warning "-7"]

    initializer
      begin
        displayInfoSingleton <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        ();
        ();
        topScoresWidth <- 0;
        fontHeight <- 0;
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        text <- text_arg;
        basicColor <- basicColor_arg
      end
  end
let () = java_register_constructor "SimpleTextPaintable" (fun arguments -> Obj.repr (new simpleTextPaintable (Obj.obj arguments)))


