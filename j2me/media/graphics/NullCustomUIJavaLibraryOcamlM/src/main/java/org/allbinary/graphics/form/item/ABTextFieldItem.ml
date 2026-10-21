(* Generated Code Do Not Modify *)
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Font *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.visitor.Visitor *)

class aBTextFieldItem (_canvas, (_visitor : Visitor.visitor), (label : string), (_value : string), (_maxSize : int), (layout : int), (altText : string), font_arg, (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit ABTextItem.aBTextItem (label, layout, altText, backgroundBasicColor, foregroundBasicColor)
    val mutable font : Obj.t = Obj.repr 0
    method font : 'r. 'r = Obj.magic font
    method set_font : 'v. 'v -> unit = fun value' -> font <- Obj.repr value'
    
    

    method getLabel () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]
    

    method setLabel ((_label : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getString () : string =
        begin
        (StringUtil.getInstance ())#eMPTY_STRING
        end [@@warning "-7"]
    

    method setString ((_string : string)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setFocus ((_state : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getFontHeight () : int =
        begin
        ((Obj.magic font)#getHeight ())
        end [@@warning "-7"]
    

    method setBackgroundBasicColorP : 'any1. 'any1 -> unit = fun (_basicColor) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method setForegroundBasicColorP : 'any1. 'any1 -> unit = fun (_basicColor) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        font <- Obj.repr (font_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ABTextFieldItem" (fun arguments -> Obj.repr (new aBTextFieldItem (Obj.obj arguments)))


