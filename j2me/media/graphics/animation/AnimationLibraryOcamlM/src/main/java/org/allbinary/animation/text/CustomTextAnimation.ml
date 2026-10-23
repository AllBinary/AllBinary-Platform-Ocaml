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
(* package org.allbinary.animation.text *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.graphics.font.FontDebugFactory *)
(* import org.allbinary.logic.string.StringUtil *)

class customTextAnimation ((text : string), (fontSize_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit TextAnimation.textAnimation (text, animationBehavior) as super
    val mutable fontDebugFactory : Obj.t = Obj.repr 0
    method fontDebugFactory : 'r. 'r = Obj.magic fontDebugFactory
    method set_fontDebugFactory : 'v. 'v -> unit = fun value' -> fontDebugFactory <- Obj.repr value'
    val mutable fontSize : int = 0
    method fontSize = fontSize
    method set_fontSize value' = fontSize <- value'
    val mutable font : Obj.t = Obj.repr 0
    method font : 'r. 'r = Obj.magic font
    method set_font : 'v. 'v -> unit = fun value' -> font <- Obj.repr value'
    val mutable lastText : string = ""
    method lastText = lastText
    method set_lastText value' = lastText <- value'
    val mutable hasChanged : bool = false
    method hasChanged = hasChanged
    method set_hasChanged value' = hasChanged <- value'
    val mutable textWidth : int = 0
    method textWidth = textWidth
    method set_textWidth value' = textWidth <- value'
    
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#myFontProcessor)#process ((Obj.magic graphics)));
        let existingFont : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        ignore ((Obj.magic fontDebugFactory)#setFont ((Obj.magic font), (Obj.magic graphics)));
        ignore (super#paintXYNoUpdate ((Obj.magic graphics), x, y));
        ignore ((Obj.magic fontDebugFactory)#setFont ((Obj.magic !existingFont), (Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method setScale ((scaleX : float), (scaleY : float)) : unit =
        begin
        if (scaleX <> scaleY) then begin
            raise (Failure ("RuntimeException"))
        end;
        hasChanged <- true;
        font <- Obj.repr ((Obj.magic (java_call_static "Font.getFont" (Obj.repr ((Obj.magic (java_call_static "Font.get_fACE_SYSTEM" (Obj.repr ()))), (Obj.magic (java_call_static "Font.get_sTYLE_PLAIN" (Obj.repr ()))), (int_of_float ((((float_of_int (fontSize)) *. scaleX)))))))))
        end [@@warning "-7"]
    

    method setText ((text : string)) : unit =
        begin
        if (lastText <> text) then begin
            hasChanged <- true;
            lastText <- text;
            ignore (super#setText (text))
        end
        end [@@warning "-7"]
    

    method getText () : string =
        begin
        lastText
        end [@@warning "-7"]
    

    method getWidth () : int =
        begin
        if hasChanged then begin
            textWidth <- ((Obj.magic font)#stringWidth ((self#textArrayP).(0)));
            hasChanged <- false
        end;
        textWidth
        end [@@warning "-7"]
    

    method getFontHeight () : int =
        begin
        ((Obj.magic font)#getHeight ())
        end [@@warning "-7"]

    initializer
      begin
        fontDebugFactory <- (Obj.repr (Obj.magic (java_call_static "FontDebugFactory.getInstance" (Obj.repr ()))));
        ();
        ();
        lastText <- (StringUtil.getInstance ())#iNIT_STRING;
        hasChanged <- true;
        textWidth <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        fontSize <- fontSize_arg;
        font <- Obj.repr ((Obj.magic (java_call_static "Font.getFont" (Obj.repr ((Obj.magic (java_call_static "Font.get_fACE_SYSTEM" (Obj.repr ()))), (Obj.magic (java_call_static "Font.get_sTYLE_PLAIN" (Obj.repr ()))), fontSize_arg)))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomTextAnimation" (fun arguments -> Obj.repr (new customTextAnimation (Obj.obj arguments)))


