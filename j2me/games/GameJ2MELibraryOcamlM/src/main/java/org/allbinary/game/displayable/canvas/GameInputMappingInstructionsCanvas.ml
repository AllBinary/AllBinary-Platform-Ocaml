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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.paint.ColorFillBasePaintable *)
(* import org.allbinary.game.paint.ColorFillPaintableFactory *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.graphics.draw.DrawStringUtil *)
(* import org.allbinary.logic.string.StringUtil *)

let nAME : string = "GameInputMappingInstructionsCanvas"
let get_nAME () = nAME
let () = java_register_static "GameInputMappingInstructionsCanvas.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class gameInputMappingInstructionsCanvas (commandListener, (allBinaryGameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager)) =
  object (self)
    inherit GameCommandCanvas.gameCommandCanvas (commandListener, nAME, (allBinaryGameLayerManager#getBackgroundBasicColor ()), (allBinaryGameLayerManager#getForegroundBasicColor ())) as super
    val mutable drawStringUtil : DrawStringUtil.drawStringUtil = (Obj.magic 0)
    method drawStringUtil = drawStringUtil
    method set_drawStringUtil value' = drawStringUtil <- value'
    val mutable tITLE : string = ""
    method tITLE = tITLE
    method set_tITLE value' = tITLE <- value'
    val mutable instructions : string array = (Obj.magic 0)
    method instructions = instructions
    method set_instructions value' = instructions <- value'
    val mutable colorFillPaintable : ColorFillBasePaintable.colorFillBasePaintable = (Obj.magic 0)
    method colorFillPaintable = colorFillPaintable
    method set_colorFillPaintable value' = colorFillPaintable <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#addCommand ((Obj.magic cLOSE)));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (colorFillPaintable#paint ((Obj.magic graphics)));
        let halfWidth : int ref = ref ((displayInfo#getLastHalfWidth ())) in ();
        let beginWidth : int ref = ref ((((((Obj.magic graphics)#getFont ())#stringWidth (tITLE)) asr 1))) in ();
        ignore ((Obj.magic graphics)#setColor (foregroundColor));
        ignore ((Obj.magic graphics)#drawString (tITLE, (!halfWidth - !beginWidth), fontHeight, anchor));
        ignore (drawStringUtil#drawCenterStrings ((Obj.magic graphics), instructions, (displayInfo#getLastWidth ()), fontHeight, !halfWidth, (3 * fontHeight)));
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        drawStringUtil <- ((DrawStringUtil.getInstance ()) :> DrawStringUtil.drawStringUtil);
        tITLE <- "Input Instructions";
        instructions <- [| "Add Input Mapping:"; "1. Select the desired action by generating a currently defined input for a given action."; "(Example: Press the '1' key to select the Fire action)"; "2. Make the newly desired input for the selected action."; "(Example: Press 'f' to add it to the selected action)"; "Note: If the input is already mapped to another action then it will not be added. You"; "will need to deleted from the other action before adding it to another."; "Warning: Not all keys map for a given platform and show as Unknown."; (StringUtil.getInstance ())#eMPTY_STRING; "Remove Input Mapping:"; "1. Select the desired action by generating a currently defined input for a given action."; "(Example: Press the key '1' to select the Fire action)"; "2. Select a mapped input for the selected action."; "(Example: Press the key '1' to select the '1' key input for the selected Fire action)"; "3. Press the Delete Key." |];
        ();
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        colorFillPaintable <- ((Obj.magic (java_call_static "ColorFillPaintableFactory.getInstance" (Obj.repr ())))#getInstance ((allBinaryGameLayerManager#getBackgroundBasicColor ()), false))
      end
  end
let () = java_register_constructor "GameInputMappingInstructionsCanvas" (fun arguments -> Obj.repr (new gameInputMappingInstructionsCanvas (Obj.obj arguments)))

let dISPLAY : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Help", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))))
let get_dISPLAY () = Obj.magic dISPLAY
let () = java_register_static "GameInputMappingInstructionsCanvas.get_dISPLAY" (fun _ -> Obj.repr (get_dISPLAY ()))

let cLOSE : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Close", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 1)))))
let get_cLOSE () = Obj.magic cLOSE
let () = java_register_static "GameInputMappingInstructionsCanvas.get_cLOSE" (fun _ -> Obj.repr (get_cLOSE ()))


