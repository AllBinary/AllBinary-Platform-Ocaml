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
(* package org.allbinary.game.paint *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.AppletUtil *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.input.motion.button.TouchScreenFactory *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.time.TimeDelayHelper *)

class pressStartMenuPaintable () =
  object (self)
    inherit Paintable.paintable ()
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable pRESS_START : string = ""
    method pRESS_START = pRESS_START
    method set_pRESS_START value' = pRESS_START <- value'
    val mutable kEY_START : string = ""
    method kEY_START = kEY_START
    method set_kEY_START value' = kEY_START <- value'
    val mutable mENU_START : string = ""
    method mENU_START = mENU_START
    method set_mENU_START value' = mENU_START <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable startString : string = ""
    method startString = startString
    method set_startString value' = startString <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable flash : bool = false
    method flash = flash
    method set_flash value' = flash <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable beginWidth : int = 0
    method beginWidth = beginWidth
    method set_beginWidth value' = beginWidth <- value'
    val mutable line : int = 0
    method line = line
    method set_line value' = line <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        beginWidth <- (((((Obj.magic graphics)#getFont ())#stringWidth (startString)) asr 1));
        line <- (((4 * (MyFontProcessor.defaultCharWidth ((Obj.magic !font))))) + ((((Obj.magic !font)#getHeight ()) asr 1)));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        if (timeDelayHelper#isTimeTNT ()) then begin
            if (self#isFlash ()) then begin
                (self#setFlash (false))
            end else begin
                (self#setFlash (true))
            end
        end;
        if (self#isFlash ()) then begin
            ignore (myFontProcessor#process ((Obj.magic graphics)));
            ignore ((Obj.magic graphics)#drawString (startString, ((displayInfo#getLastHalfWidth ()) - beginWidth), ((displayInfo#getLastHeight ()) - line), anchor))
        end
        end [@@warning "-7-20"]
    

    method setFlash ((flash_arg : bool)) : unit =
        begin
        flash <- flash_arg
        end [@@warning "-7"]
    

    method isFlash () : bool =
        begin
        flash
        end [@@warning "-7"]

    initializer
      begin
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        pRESS_START <- "Press Screen To Start";
        kEY_START <- "Press or Click F2 To Begin";
        mENU_START <- "Press Start From The Menu To Begin";
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        startString <- (StringUtil.getInstance ())#eMPTY_STRING;
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (1100)) :> TimeDelayHelper.timeDelayHelper);
        flash <- false;
        anchor <- (Anchor.get_tOP_LEFT ());
        beginWidth <- 0;
        line <- 0;
        ();
        if ((Obj.magic (java_call_static "TouchScreenFactory.getInstance" (Obj.repr ())))#isTouch ()) then begin
            startString <- pRESS_START
        end else if (Obj.magic (java_call_static "AppletUtil.isAppletLoader" (Obj.repr (self)))) then begin
            startString <- kEY_START
        end else begin
            startString <- mENU_START
        end
      end
  end
let () = java_register_constructor "PressStartMenuPaintable" (fun arguments -> Obj.repr (new pressStartMenuPaintable (Obj.obj arguments)))


