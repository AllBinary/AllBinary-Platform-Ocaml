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
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.Paintable *)

class fullScreenPaintable () =
  object (self)
    inherit Paintable.paintable ()
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable fULLSCREEN_TEXT : string = ""
    method fULLSCREEN_TEXT = fULLSCREEN_TEXT
    method set_fULLSCREEN_TEXT value' = fULLSCREEN_TEXT <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable y : int = 0
    method y = y
    method set_y value' = y <- value'
    val mutable beginWidth : int = 0
    method beginWidth = beginWidth
    method set_beginWidth value' = beginWidth <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        y <- (4 * ((Obj.magic !font)#getHeight ()));
        beginWidth <- ((((Obj.magic !font)#stringWidth (fULLSCREEN_TEXT)) asr 1));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        let halfWidth : int ref = ref ((displayInfo#getLastHalfWidth ())) in ();
        let height : int ref = ref ((displayInfo#getLastHeight ())) in ();
        ignore ((Obj.magic graphics)#drawString (fULLSCREEN_TEXT, (!halfWidth - beginWidth), (!height - y), anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        fULLSCREEN_TEXT <- "F11 - Toggle Fullscreen";
        anchor <- (Anchor.get_tOP_LEFT ());
        y <- 0;
        beginWidth <- 0;
        ();
        ()
      end
  end
let () = java_register_constructor "FullScreenPaintable" (fun arguments -> Obj.repr (new fullScreenPaintable (Obj.obj arguments)))

let getInstance () =
        begin
        (new fullScreenPaintable ())
        end
let () = java_register_static "FullScreenPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


