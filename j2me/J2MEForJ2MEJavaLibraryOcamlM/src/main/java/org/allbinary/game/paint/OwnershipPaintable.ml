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
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class ownershipPaintable () =
  object (self)
    inherit Paintable.paintable ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable cOPYRIGHT : string = ""
    method cOPYRIGHT = cOPYRIGHT
    method set_cOPYRIGHT value' = cOPYRIGHT <- value'
    val mutable basicColor : BasicColor.basicColor = (Obj.magic 0)
    method basicColor = basicColor
    method set_basicColor value' = basicColor <- value'
    val mutable color : int = 0
    method color = color
    method set_color value' = color <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    val mutable cOPYRIGHT_Y : int = 0
    method cOPYRIGHT_Y = cOPYRIGHT_Y
    method set_cOPYRIGHT_Y value' = cOPYRIGHT_Y <- value'
    val mutable beginWidth : int = 0
    method beginWidth = beginWidth
    method set_beginWidth value' = beginWidth <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        cOPYRIGHT_Y <- (2 * ((Obj.magic !font)#getHeight ()));
        beginWidth <- ((((Obj.magic !font)#stringWidth (cOPYRIGHT)) asr 1));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor_arg) ->
        let basicColor_arg = Obj.repr basicColor_arg in
        begin
        basicColor <- (Obj.magic basicColor_arg);
        color <- ((Obj.magic basicColor_arg)#intValue ())
        end [@@warning "-7-20"]
    

    method getBasicColorP () : BasicColor.basicColor =
        begin
        (basicColor :> BasicColor.basicColor)
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#setColor (color));
        let halfWidth : int ref = ref ((displayInfo#getLastHalfWidth ())) in ();
        let height : int ref = ref ((displayInfo#getLastHeight ())) in ();
        ignore ((Obj.magic graphics)#drawString (cOPYRIGHT, (!halfWidth - beginWidth), (!height - cOPYRIGHT_Y), anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        myFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        cOPYRIGHT <- "AllBinary Copyright (c) 2011";
        basicColor <- ((BasicColorFactory.getInstance ())#wHITE :> BasicColor.basicColor);
        color <- (basicColor#intValue ());
        anchor <- (Anchor.get_tOP_LEFT ());
        cOPYRIGHT_Y <- 0;
        beginWidth <- 0;
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "OwnershipPaintable" (fun arguments -> Obj.repr (new ownershipPaintable (Obj.obj arguments)))

let getInstance () =
        begin
        (new ownershipPaintable ())
        end
let () = java_register_static "OwnershipPaintable.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


