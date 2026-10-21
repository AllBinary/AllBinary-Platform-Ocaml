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
(* package org.allbinary.game.paint.help *)

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
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.NullUtil *)
(* import org.allbinary.logic.string.StringUtil *)

class helpPaintable ((title_arg : string), (_backgroundBasicColor : BasicColor.basicColor), (basicColor_arg : BasicColor.basicColor)) =
  object (self)
    inherit Paintable.paintable ()
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable title : string = ""
    method title = title
    method set_title value' = title <- value'
    val mutable inputInfo : string array = (Obj.magic 0)
    method inputInfo = inputInfo
    method set_inputInfo value' = inputInfo <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable titleBeginWidth : int = 0
    method titleBeginWidth = titleBeginWidth
    method set_titleBeginWidth value' = titleBeginWidth <- value'
    val mutable beginWidthArray : int array = (Obj.magic 0)
    method beginWidthArray = beginWidthArray
    method set_beginWidthArray value' = beginWidthArray <- value'
    val mutable charHeight : int = 0
    method charHeight = charHeight
    method set_charHeight value' = charHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        titleBeginWidth <- ((((Obj.magic !font)#stringWidth (title)) asr 1));
        charHeight <- ((Obj.magic !font)#getHeight ());
        let size : int ref = ref ((Array.length inputInfo)) in ();
        for index = 0 to !size - 1 do
            beginWidthArray.(index) <- ((((Obj.magic !font)#stringWidth (inputInfo.(index))) asr 1))
        done;
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method setInputInfoP ((inputInfo_arg : string array)) : unit =
        begin
        inputInfo <- inputInfo_arg;
        beginWidthArray <- (Array.make ((Array.length inputInfo)) 0);
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let halfWidth : int ref = ref ((displayInfo#getLastHalfWidth ())) in ();
        ignore ((Obj.magic graphics)#setColor ((basicColor#intValue ())));
        ignore ((Obj.magic graphics)#drawString (title, (!halfWidth - titleBeginWidth), charHeight, anchor));
        let size : int ref = ref ((Array.length inputInfo)) in ();
        for index = 0 to !size - 1 do
            ignore ((Obj.magic graphics)#drawString (inputInfo.(index), (!halfWidth - beginWidthArray.(index)), (((index + 3)) * charHeight), anchor))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        inputInfo <- ((StringUtil.getInstance ())#getArrayInstance ());
        ();
        titleBeginWidth <- 0;
        beginWidthArray <- (NullUtil.getInstance ())#nULL_INT_ARRAY;
        charHeight <- 0;
        ();
        title <- title_arg;
        basicColor <- basicColor_arg
      end
  end
let () = java_register_constructor "HelpPaintable" (fun arguments -> Obj.repr (new helpPaintable (Obj.obj arguments)))


