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
(* package org.allbinary.graphics.form.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.game.displayable.canvas.GameCommandCanvas *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.game.input.PlatformKeyFactory *)
(* import org.allbinary.game.input.event.RawKeyEventListener *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.form.item.validation.TextItemVisitor *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonSeps *)

class customTextBox (cmdListener, (label : string), (text : string), (maxSize : int), (_constraints : int), font, (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit GameCommandCanvas.gameCommandCanvas (cmdListener, label, backgroundBasicColor, foregroundBasicColor) as super
    val mutable textFieldItem : Obj.t = Obj.repr 0
    method textFieldItem : 'r. 'r = Obj.magic textFieldItem
    method set_textFieldItem : 'v. 'v -> unit = fun value' -> textFieldItem <- Obj.repr value'
    val mutable inputFactory : InputFactory.inputFactory = (Obj.magic 0)
    method inputFactory = inputFactory
    method set_inputFactory value' = inputFactory <- value'
    
    

    method submit () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method onEventRaw ((keyCode : int), (deviceId : int), (_repeated : bool)) : unit =
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#sTART))#appendint (keyCode)))), self, "onEvent"));
        (self#keyPressedByDevice (keyCode, deviceId))
        end [@@warning "-7"]
    

    method keyPressed ((keyCode : int)) : unit =
        begin
        (self#keyPressedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyReleased ((keyCode : int)) : unit =
        begin
        (self#keyReleasedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyRepeated ((keyCode : int)) : unit =
        begin
        ignore (self#keyRepeatedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyPressedByDevice ((keyCode : int), (_deviceId : int)) : unit =
        begin
        (try
            ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonSeps.getInstance ())#sPACE))#appendint (keyCode)))), self, gameInputStrings#kEY_PRESSED));
            let platformKeyFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PlatformKeyFactory.getInstance" (Obj.repr ()))))) in ();
            let input : Obj.t ref = ref ((Obj.repr (inputFactory#getInstanceById (keyCode)))) in ();
            if ((Obj.magic !platformKeyFactory)#isSubmission ((Obj.magic !input))) then begin
                (self#submit ())
            end else begin
                ignore ((Obj.magic textFieldItem)#keyPressed (keyCode))
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, gameInputStrings#kEY_PRESSED, e))
        end)
        end [@@warning "-7"]
    

    method keyReleasedByDevice ((_keyCode : int), (_deviceId : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#setColor (backgroundColor));
        ignore ((Obj.magic graphics)#fillRect (0, 0, (displayInfo#getLastWidth ()), (displayInfo#getLastHeight ())));
        ignore ((Obj.magic graphics)#setColor (foregroundColor));
        if (not (J2MEUtil.isJ2ME ())) then begin
            ignore ((Obj.magic graphics)#drawString ((self#getTitle ()), 8, 1, 0))
        end;
        (self#paintXY ((Obj.magic graphics), 8, ((((Obj.magic graphics)#getFont ())#getHeight ()) + 2)));
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic textFieldItem)#paintXY ((Obj.magic graphics), x, y))
        end [@@warning "-7-20"]
    

    method getTextFieldItem : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic textFieldItem)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        inputFactory <- ((InputFactory.getInstance ()) :> InputFactory.inputFactory);
        ();
        (* super(...) is the inherit clause *) ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        let textFieldItem_arg : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "ABTextFieldItem" (Obj.repr (self, (new TextItemVisitor.textItemVisitor ()), !stringUtil#eMPTY_STRING, !stringUtil#eMPTY_STRING, maxSize, 0, !stringUtil#eMPTY_STRING, font, backgroundBasicColor, foregroundBasicColor)))))) in ();
        ignore ((Obj.magic !textFieldItem_arg)#setString (text));
        textFieldItem <- Obj.repr ((Obj.magic !textFieldItem_arg));
        ignore (self#setTitle (label))
      end
  end [@@warning "-20"]
let () = java_register_constructor "CustomTextBox" (fun arguments -> Obj.repr (new customTextBox (Obj.obj arguments)))


