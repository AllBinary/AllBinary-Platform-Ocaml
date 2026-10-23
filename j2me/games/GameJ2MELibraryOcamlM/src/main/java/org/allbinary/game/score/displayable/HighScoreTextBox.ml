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
(* package org.allbinary.game.score.displayable *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.TextField *)
(* import org.allbinary.PostGameCommandFactory *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.score.HighScore *)
(* import org.allbinary.game.score.HighScoresHelperBaseInterface *)
(* import org.allbinary.game.score.HighScoresFactoryInterface *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.form.item.CustomTextBox *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.SimpleTextPaintable *)
(* import org.allbinary.input.event.VirtualKeyboardEventHandler *)
(* import org.allbinary.logic.system.os.GenericOperatingSystem *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory *)

class highScoreTextBox ((highScoresFactoryInterface : HighScoresFactoryInterface.highScoresFactoryInterface), (highScoresHelper : HighScoresHelperBaseInterface.highScoresHelperBaseInterface), (abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), (gameInfo : GameInfo.gameInfo), cmdListener, (name : string), highScore, (backgrounBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit CustomTextBox.customTextBox (cmdListener, "New High Score Enter Name:", name, 12, (Obj.magic (java_call_static "TextField.get_aNY" (Obj.repr ()))), (Obj.magic (java_call_static "Font.getDefaultFont" (Obj.repr ()))), backgrounBasicColor, foregroundBasicColor) as super
    val mutable virtualKeyboardEventHandler : VirtualKeyboardEventHandler.virtualKeyboardEventHandler = (Obj.magic 0)
    method virtualKeyboardEventHandler = virtualKeyboardEventHandler
    method set_virtualKeyboardEventHandler value' = virtualKeyboardEventHandler <- value'
    val mutable highScoreUtil : HighScoreUtil.highScoreUtil = (Obj.magic 0)
    method highScoreUtil = highScoreUtil
    method set_highScoreUtil value' = highScoreUtil <- value'
    val mutable pleaseWait : Paintable.paintable = (Obj.magic 0)
    method pleaseWait = pleaseWait
    method set_pleaseWait value' = pleaseWait <- value'
    val mutable paintable : Paintable.paintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    val mutable submitted : bool = false
    method submitted = submitted
    method set_submitted value' = submitted <- value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore ((Obj.magic (java_call_static "PostGameCommandFactory.getInstance" (Obj.repr ())))#addCommands (self));
        ignore (self#addCommand ((HighScoreUtil.get_sUBMIT_TEXTBOX_COMMAND ())));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method open_ () : unit =
        begin
        ignore (virtualKeyboardEventHandler#open_ ());
        paintable <- (NullPaintable.getInstance ());
        ignore (super#open_ ())
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore (virtualKeyboardEventHandler#close ());
        paintable <- pleaseWait;
        ignore ((self#repaintBehavior)#onChangeRepaint (self));
        ignore (super#close ());
        ignore (self#removeCommand ((HighScoreUtil.get_sUBMIT_TEXTBOX_COMMAND ())));
        (self#update ());
        if submitted then begin
            ignore (highScoreUtil#saveHighScore ())
        end else begin
            ()
        end;
        paintable <- (NullPaintable.getInstance ());
        ignore ((self#repaintBehavior)#onChangeRepaint (self))
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        let name : string ref = ref (((self#getTextFieldItem ())#getString ())) in ();
        ignore (highScoreUtil#update (!name));
        ignore (super#update ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paint ((Obj.magic graphics)));
        ignore (paintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method saveHighScore () : unit =
        begin
        ignore (highScoreUtil#saveHighScore ())
        end [@@warning "-7"]
    

    method submit () : unit =
        begin
        ignore (highScoreUtil#submit (self))
        end [@@warning "-7"]

    initializer
      begin
        virtualKeyboardEventHandler <- ((VirtualKeyboardEventHandler.getInstance ()) :> VirtualKeyboardEventHandler.virtualKeyboardEventHandler);
        ();
        pleaseWait <- ((new SimpleTextPaintable.simpleTextPaintable ((self#commonStrings)#pLEASE_WAIT, (BasicColorFactory.getInstance ())#wHITE)) :> Paintable.paintable);
        paintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        submitted <- false;
        ();
        (* super(...) is the inherit clause *) ();
        highScoreUtil <- (new HighScoreUtil.highScoreUtil (highScoresFactoryInterface, highScoresHelper, abeClientInformation, gameInfo, cmdListener, name, highScore));
        let operatingSystemInterface : GenericOperatingSystem.genericOperatingSystem ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ()) :> GenericOperatingSystem.genericOperatingSystem)) in ();
        if (!operatingSystemInterface#isOverScan ()) then begin
            let username : string ref = ref (((Obj.magic (java_call_static "InApplicationPurchaseFactory.getInstance" (Obj.repr ())))#getUserName ())) in ();
            if (!username <> (Obj.magic 0)) then begin
                ignore ((self#getTextFieldItem ())#setString (!username))
            end else begin
                ignore ((self#getTextFieldItem ())#setString ("NoGamerInfo"))
            end
        end
      end
  end
let () = java_register_constructor "HighScoreTextBox" (fun arguments -> Obj.repr (new highScoreTextBox (Obj.obj arguments)))


