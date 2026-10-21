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
(* package org.allbinary.game.displayable.screen *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.TextField *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.form.item.CustomTextBox *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.SimpleTextPaintable *)
(* import org.allbinary.input.event.VirtualKeyboardEventHandler *)

class licenseRegistrationTextBox (cmdListener, (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CustomTextBox.customTextBox (cmdListener, "Enter Registration Code:", (StringUtil.getInstance ())#eMPTY_STRING, 60, (Obj.magic (java_call_static "TextField.get_aNY" (Obj.repr ()))), (Obj.magic (java_call_static "Font.getDefaultFont" (Obj.repr ()))), backgrounBasicColor, foregroundBasicColor) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable pleaseWaitPaintable : Paintable.paintable = (Obj.magic 0)
    method pleaseWaitPaintable = pleaseWaitPaintable
    method set_pleaseWaitPaintable value' = pleaseWaitPaintable <- value'
    val mutable paintable : Paintable.paintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#addCommand ((GameCommandsFactory.getInstance ())#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#addCommand ((GameCommandsFactory.getInstance ())#tOGGLE_KEYBOARD));
        ignore (self#addCommand ((Obj.magic sUBMIT_COMMAND)));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method open_ () : unit =
        begin
        (try
            let virtualKeyboardEventHandler : VirtualKeyboardEventHandler.virtualKeyboardEventHandler ref = ref (((VirtualKeyboardEventHandler.getInstance ()) :> VirtualKeyboardEventHandler.virtualKeyboardEventHandler)) in ();
            ignore (!virtualKeyboardEventHandler#fireEvent (!virtualKeyboardEventHandler#sHOW_EVENT))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "open", e))
        end);
        ignore (super#open_ ());
        paintable <- (NullPaintable.getInstance ());
        ignore (self#repaint ())
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        (try
            let virtualKeyboardEventHandler : VirtualKeyboardEventHandler.virtualKeyboardEventHandler ref = ref (((VirtualKeyboardEventHandler.getInstance ()) :> VirtualKeyboardEventHandler.virtualKeyboardEventHandler)) in ();
            ignore (!virtualKeyboardEventHandler#fireEvent (!virtualKeyboardEventHandler#hIDE_EVENT))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "open", e))
        end);
        paintable <- pleaseWaitPaintable;
        ignore (self#repaint ());
        ignore (super#close ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        ignore (paintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method submit () : unit =
        begin
        let commandListener : Obj.t ref = ref ((Obj.repr (self#getCustomCommandListener ()))) in ();
        ignore ((Obj.magic !commandListener)#commandAction ((Obj.magic sUBMIT_COMMAND), self))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        pleaseWaitPaintable <- ((new SimpleTextPaintable.simpleTextPaintable (commonStrings#pLEASE_WAIT, (BasicColorFactory.getInstance ())#wHITE)) :> Paintable.paintable);
        paintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "LicenseRegistrationTextBox" (fun arguments -> Obj.repr (new licenseRegistrationTextBox (Obj.obj arguments)))

let dISPLAY_COMMAND : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Register", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 3)))))
let get_dISPLAY_COMMAND () = Obj.magic dISPLAY_COMMAND
let () = java_register_static "LicenseRegistrationTextBox.get_dISPLAY_COMMAND" (fun _ -> Obj.repr (get_dISPLAY_COMMAND ()))

let sUBMIT_COMMAND : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Submit", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 3)))))
let get_sUBMIT_COMMAND () = Obj.magic sUBMIT_COMMAND
let () = java_register_static "LicenseRegistrationTextBox.get_sUBMIT_COMMAND" (fun _ -> Obj.repr (get_sUBMIT_COMMAND ()))


