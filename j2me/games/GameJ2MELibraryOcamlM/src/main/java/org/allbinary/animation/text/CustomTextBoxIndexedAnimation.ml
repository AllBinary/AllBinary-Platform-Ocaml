(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.game.input.event.RawKeyEventListener *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.form.item.CustomTextBox *)
(* import org.allbinary.logic.string.StringUtil *)

class customTextBoxIndexedAnimation ((customTextBox_arg : CustomTextBox.customTextBox)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation ((AnimationBehavior.getInstance ()))
    val mutable customTextBox : CustomTextBox.customTextBox = (Obj.magic 0)
    method customTextBox = customTextBox
    method set_customTextBox value' = customTextBox <- value'
    val mutable lastText : string = ""
    method lastText = lastText
    method set_lastText value' = lastText <- value'
    val mutable hasChanged : bool = false
    method hasChanged = hasChanged
    method set_hasChanged value' = hasChanged <- value'
    val mutable textChangeListener : Obj.t = Obj.repr 0
    method textChangeListener : 'r. 'r = Obj.magic textChangeListener
    method set_textChangeListener : 'v. 'v -> unit = fun value' -> textChangeListener <- Obj.repr value'
    
    

    method setBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((customTextBox#getTextFieldItem ())#setForegroundBasicColorP ((Obj.magic basicColor)))
        end [@@warning "-7-20"]
    

    method setBackgroundBasicColorP : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((customTextBox#getTextFieldItem ())#setBackgroundBasicColorP ((Obj.magic basicColor)))
        end [@@warning "-7-20"]
    

    method setTextWithOnMeasure : 'any2. string * 'any2 -> unit = fun ((text : string), textChangeListener_arg) ->
        let textChangeListener_arg = Obj.repr textChangeListener_arg in
        begin
        (self#setText (text));
        textChangeListener <- Obj.repr ((Obj.magic textChangeListener_arg))
        end [@@warning "-7-20"]
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        ignore ((Obj.magic textChangeListener)#onMeasure ());
        textChangeListener <- Obj.repr ((Obj.magic (java_call_static "TextChangeListener.getInstance" (Obj.repr ()))))
        end [@@warning "-7-20"]
    

    method setText ((text : string)) : unit =
        begin
        if (lastText <> text) then begin
            hasChanged <- true;
            lastText <- text;
            ignore ((customTextBox#getTextFieldItem ())#setString (text))
        end
        end [@@warning "-7"]
    

    method getText () : string =
        begin
        ((customTextBox#getTextFieldItem ())#getString ())
        end [@@warning "-7"]
    

    method onEventRaw ((keyCode : int), (deviceId : int), (repeated : bool)) : unit =
        begin
        ignore (customTextBox#onEventRaw (keyCode, deviceId, repeated))
        end [@@warning "-7"]
    

    method getFontHeight () : int =
        begin
        ((customTextBox#getTextFieldItem ())#getFontHeight ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (customTextBox#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (_graphics, (_x : int), (_y : int), (_z : int)) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        lastText <- (StringUtil.getInstance ())#iNIT_STRING;
        hasChanged <- true;
        textChangeListener <- (Obj.repr (Obj.magic (java_call_static "TextChangeListener.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        customTextBox <- customTextBox_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomTextBoxIndexedAnimation" (fun arguments -> Obj.repr (new customTextBoxIndexedAnimation (Obj.obj arguments)))


