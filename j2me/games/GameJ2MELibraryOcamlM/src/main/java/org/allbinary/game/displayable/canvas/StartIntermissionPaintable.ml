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
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.FontDebugFactory *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class startIntermissionPaintable ((gameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas), (stringArray_arg : string array), (basicColor_arg : BasicColor.basicColor), font_arg) =
  object (self)
    inherit InitUpdatePaintable.initUpdatePaintable ()
    val mutable fontDebugFactory : Obj.t = Obj.repr 0
    method fontDebugFactory : 'r. 'r = Obj.magic fontDebugFactory
    method set_fontDebugFactory : 'v. 'v -> unit = fun value' -> fontDebugFactory <- Obj.repr value'
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method gameCanvas = gameCanvas
    method set_gameCanvas value' = gameCanvas <- value'
    val mutable stringArray : string array = (Obj.magic 0)
    method stringArray = stringArray
    method set_stringArray value' = stringArray <- value'
    val mutable fontSize : int = 0
    method fontSize = fontSize
    method set_fontSize value' = fontSize <- value'
    val mutable font : Obj.t = Obj.repr 0
    method font : 'r. 'r = Obj.magic font
    method set_font : 'v. 'v -> unit = fun value' -> font <- Obj.repr value'
    val mutable lastWidth : int array = (Obj.magic 0)
    method lastWidth = lastWidth
    method set_lastWidth value' = lastWidth <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable color : int = 0
    method color = color
    method set_color value' = color <- value'
    val mutable lineYOffsetArray : int array = (Obj.magic 0)
    method lineYOffsetArray = lineYOffsetArray
    method set_lineYOffsetArray value' = lineYOffsetArray <- value'
    val mutable hasChanged : bool = false
    method hasChanged = hasChanged
    method set_hasChanged value' = hasChanged <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable fontHeightP : int = 0
    method fontHeightP = fontHeightP
    method set_fontHeightP value' = fontHeightP <- value'
    val mutable bEGIN_LEVEL : string = ""
    method bEGIN_LEVEL = bEGIN_LEVEL
    method set_bEGIN_LEVEL value' = bEGIN_LEVEL <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font_arg : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        fontHeightP <- ((Obj.magic !font_arg)#getHeight ());
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let existingFont : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        ignore ((Obj.magic fontDebugFactory)#setFont ((Obj.magic font), (Obj.magic graphics)));
        let displayInfo : DisplayInfoSingleton.displayInfoSingleton ref = ref (((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton)) in ();
        ignore (basicSetColorUtil#setBasicColorP3 ((Obj.magic graphics), basicColor, color));
        let beginWidth : int ref = ref (0) in ();
        for index = ((Array.length lineYOffsetArray) - 1) downto 0 do
            if hasChanged then begin
                lastWidth.(index) <- (((((Obj.magic graphics)#getFont ())#stringWidth (stringArray.(index))) asr 1))
            end;
            beginWidth := lastWidth.(index);
            ignore ((Obj.magic graphics)#drawString (stringArray.(index), ((!displayInfo#getLastHalfWidth ()) - !beginWidth), ((!displayInfo#getLastHalfHeight ()) - lineYOffsetArray.(index)), anchor))
        done;
        hasChanged <- false;
        ignore ((Obj.magic fontDebugFactory)#setFont ((Obj.magic !existingFont), (Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method update () : unit =
        begin
        let level : int ref = ref ((((gameCanvas#getLayerManager ())#getGameInfo ())#getCurrentLevel ())) in ();
        stringArray.(0) <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (bEGIN_LEVEL))#appendint (!level))));
        for index = ((Array.length stringArray) - 1) downto 1 do
            stringArray.(index) <- eMPTY_STRING
        done
        end [@@warning "-7"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg)
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]

    initializer
      begin
        fontDebugFactory <- (Obj.repr (Obj.magic (java_call_static "FontDebugFactory.getInstance" (Obj.repr ()))));
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        ();
        ();
        ();
        ();
        ();
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        basicColor <- ((BasicColorFactory.getInstance ())#bLACK :> BasicColor.basicColor);
        ();
        lineYOffsetArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        hasChanged <- true;
        anchor <- (Anchor.get_tOP_LEFT ());
        fontHeightP <- 0;
        bEGIN_LEVEL <- "Begin Level ";
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        ();
        gameCanvas <- gameCanvas_arg;
        stringArray <- stringArray_arg;
        lastWidth <- (Array.make ((Array.length stringArray)) 0);
        (self#setBasicColorP (basicColor_arg));
        color <- (basicColor_arg#intValue ());
        fontSize <- (font_arg#getSize ());
        font <- Obj.repr (font_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "StartIntermissionPaintable" (fun arguments -> Obj.repr (new startIntermissionPaintable (Obj.obj arguments)))


