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
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.mapping.InputMappingInterface *)
(* import org.allbinary.game.input.mapping.PersistentInputMapping *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.paint.ColorFillBasePaintable *)
(* import org.allbinary.game.paint.ColorFillPaintableFactory *)
(* import org.allbinary.game.paint.help.HelpPaintable *)
(* import org.allbinary.game.paint.help.InputMappingHelpPaintable *)
(* import org.allbinary.graphics.paint.ProcessPaintable *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.util.BasicArrayList *)

let nAME : string = "GameInputMappingCanvas"
let get_nAME () = nAME
let () = java_register_static "GameInputMappingCanvas.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class gameInputMappingCanvas ((abeClientInformation_arg : AbeClientInformationInterface.abeClientInformationInterface), commandListener, (allBinaryGameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager), (helpPaintable_arg : HelpPaintable.helpPaintable)) =
  object (self)
    inherit GameCommandCanvas.gameCommandCanvas (commandListener, nAME, (allBinaryGameLayerManager#getBackgroundBasicColor ()), (allBinaryGameLayerManager#getForegroundBasicColor ())) as super
    val mutable paintable : ProcessPaintable.processPaintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    val mutable helpPaintable : InputMappingHelpPaintable.inputMappingHelpPaintable = (Obj.magic 0)
    method helpPaintable = helpPaintable
    method set_helpPaintable value' = helpPaintable <- value'
    val mutable colorFillPaintable : ColorFillBasePaintable.colorFillBasePaintable = (Obj.magic 0)
    method colorFillPaintable = colorFillPaintable
    method set_colorFillPaintable value' = colorFillPaintable <- value'
    val mutable inputMapping : PersistentInputMapping.persistentInputMapping = (Obj.magic 0)
    method inputMapping = inputMapping
    method set_inputMapping value' = inputMapping <- value'
    val mutable nONE : GameKey.gameKey = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface = (Obj.magic 0)
    method abeClientInformation = abeClientInformation
    method set_abeClientInformation value' = abeClientInformation <- value'
    val mutable selectedGameKey : GameKey.gameKey = (Obj.magic 0)
    method selectedGameKey = selectedGameKey
    method set_selectedGameKey value' = selectedGameKey <- value'
    val mutable selectedInput : Obj.t = Obj.repr 0
    method selectedInput : 'r. 'r = Obj.magic selectedInput
    method set_selectedInput : 'v. 'v -> unit = fun value' -> selectedInput <- Obj.repr value'
    val mutable inputFactory : InputFactory.inputFactory = (Obj.magic 0)
    method inputFactory = inputFactory
    method set_inputFactory value' = inputFactory <- value'
    
    

    method close () : unit =
        begin
        ignore (super#close ());
        ignore (paintable#process ());
        selectedGameKey <- nONE;
        selectedInput <- Obj.repr (nONE);
        (self#update ())
        end [@@warning "-7"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#addCommand ((GameCommandsFactory.getInstance ())#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#addCommand ((Obj.magic dEFAULT)));
        ignore (self#addCommand ((GameInputMappingInstructionsCanvas.get_dISPLAY ())));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method keyPressed ((keyCode : int)) : unit =
        begin
        (self#keyPressedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyReleased ((keyCode : int)) : unit =
        begin
        ignore (self#keyReleasedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyRepeated ((keyCode : int)) : unit =
        begin
        ignore (self#keyRepeatedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyPressedByDevice ((keyCode : int), (_deviceId : int)) : unit =
        begin
        (self#addGameKey (keyCode, false));
        ignore (super#keyPressedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method addGameKey ((keyCode : int), (_repeated : bool)) : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Raw Device Key Code: "))#append ((Printf.sprintf "%x" (keyCode)))))), self, (self#gameInputStrings)#aDD_KEY_EVENT));
            let gameKey : GameKey.gameKey ref = ref ((((self#inputToGameKeyMapping)#getInstanceForCanvas (self, keyCode)) :> GameKey.gameKey)) in ();
            let input : Obj.t ref = ref ((Obj.repr (inputFactory#getInstanceById (keyCode)))) in ();
            (self#processInputMapping (!gameKey, (Obj.magic !input)))
        with e -> begin
            ignore ((self#logUtil)#put ("Key Event Error", self, (self#gameInputStrings)#aDD_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method processInputMapping : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameKey, input) ->
        let gameKey = Obj.repr gameKey in
        let input = Obj.repr input in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Start Passed GameKey: "));
        ignore (!stringBuffer#append (((self#stringUtil)#toString ((Obj.magic gameKey)))));
        ignore (!stringBuffer#append (" Input: "));
        ignore (!stringBuffer#append (((self#stringUtil)#toString ((Obj.magic input)))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, (self#commonStrings)#pROCESS));
        if ((Obj.repr selectedGameKey) != (Obj.repr nONE)) then begin
            (self#gameActionCrud ((Obj.magic gameKey), (Obj.magic input)))
        end else begin
            (self#setSelectedAction ((Obj.magic gameKey)))
        end
        end [@@warning "-7-20"]
    

    method setSelectedAction : 'any1. 'any1 -> unit = fun (gameKey) ->
        let gameKey = Obj.repr gameKey in
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Selected GameKey: "))#append (((self#stringUtil)#toString ((Obj.magic gameKey))))))), self, "setSelectedAction"));
        selectedGameKey <- (Obj.magic gameKey);
        selectedInput <- Obj.repr (nONE);
        ignore (helpPaintable#update (selectedGameKey, (Obj.magic selectedInput)));
        ignore ((self#repaintBehavior)#onChangeRepaint (self))
        end [@@warning "-7-20"]
    

    method gameActionCrud : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameKey, input) ->
        let gameKey = Obj.repr gameKey in
        let input = Obj.repr input in
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("Start GameKey: "));
        ignore (!stringBuffer#append (((self#stringUtil)#toString (selectedGameKey))));
        ignore (!stringBuffer#append (" Input: "));
        ignore (!stringBuffer#append (((self#stringUtil)#toString ((Obj.magic selectedInput)))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "gameActionCrud"));
        if ((Obj.repr (Obj.magic selectedInput)) == (Obj.repr nONE)) then begin
            let list : BasicArrayList.basicArrayList ref = ref ((((inputMapping#getInputMapping ())#getMappedInput (selectedGameKey)) :> BasicArrayList.basicArrayList)) in ();
            let isInputAlreadyMappedToSelectedAction : bool ref = ref ((!list#contains ((Obj.magic input)))) in ();
            if !isInputAlreadyMappedToSelectedAction then begin
                ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Already Mapped Input: "))#append (((self#stringUtil)#toString ((Obj.magic input))))))), self, "gameActionCrud"));
                selectedInput <- Obj.repr ((Obj.magic input));
                ignore (helpPaintable#update (selectedGameKey, (Obj.magic selectedInput)));
                ignore ((self#repaintBehavior)#onChangeRepaint (self))
            end else begin
                (self#addNewMapping ((Obj.magic gameKey), (Obj.magic input)))
            end
        end else if (inputMapping#isDelete ((Obj.magic input))) then begin
            (self#deleteCurrentMapping ())
        end else begin
            (self#setSelectedAction ((Obj.magic gameKey)))
        end
        end [@@warning "-7-20"]
    

    method addNewMapping : 'any1 'any2. 'any1 * 'any2 -> unit = fun (gameKey, input) ->
        let gameKey = Obj.repr gameKey in
        let input = Obj.repr input in
        begin
        let mETHOD_NAME : string ref = ref ("addNewMapping") in ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, !mETHOD_NAME));
        let isInputAlreadyMapped : bool ref = ref (((inputMapping#getInputMapping ())#isMapped ((Obj.magic input)))) in ();
        if ((not !isInputAlreadyMapped) && (not (inputMapping#isSystemInput ((Obj.magic input))))) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Add Key Mapping : GameKey: "));
            ignore (!stringBuffer#append (((self#stringUtil)#toString (selectedGameKey))));
            ignore (!stringBuffer#append (" Input: "));
            ignore (!stringBuffer#append (((self#stringUtil)#toString ((Obj.magic selectedInput)))));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
            ignore ((inputMapping#getInputMapping ())#add (selectedGameKey, (Obj.magic input)));
            selectedInput <- Obj.repr ((Obj.magic input));
            (self#update ())
        end else begin
            ignore ((self#logUtil)#putF ("Unable to add Mapping since one already exists or is MENU, HOME, or BACK key and setting selected action to what it is already mapped to", self, !mETHOD_NAME));
            (self#setSelectedAction ((Obj.magic gameKey)))
        end
        end [@@warning "-7-20"]
    

    method deleteCurrentMapping () : unit =
        begin
        let mETHOD_NAME : string ref = ref ("deleteCurrentMapping") in ();
        let list : BasicArrayList.basicArrayList ref = ref ((((inputMapping#getInputMapping ())#getMappedInput (selectedGameKey)) :> BasicArrayList.basicArrayList)) in ();
        if ((!list#size ()) > 1) then begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Start GameKey: "));
            ignore (!stringBuffer#append ("Remove Key Mapping: GameKey: "));
            ignore (!stringBuffer#append (((self#stringUtil)#toString (selectedGameKey))));
            ignore (!stringBuffer#append (" Input: "));
            ignore (!stringBuffer#append (((self#stringUtil)#toString ((Obj.magic selectedInput)))));
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, !mETHOD_NAME));
            ignore ((inputMapping#getInputMapping ())#remove (selectedGameKey, (Obj.magic selectedInput)));
            selectedInput <- Obj.repr (nONE);
            (self#update ())
        end else begin
            ignore ((self#logUtil)#putF ("Can't Remove Last Key Mapping", self, !mETHOD_NAME))
        end
        end [@@warning "-7"]
    

    method setDefault () : unit =
        begin
        ignore (inputMapping#setDefault (abeClientInformation));
        ignore (helpPaintable#update (nONE, nONE));
        ignore ((self#repaintBehavior)#onChangeRepaint (self))
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ignore (inputMapping#update (abeClientInformation));
        ignore (helpPaintable#update (selectedGameKey, (Obj.magic selectedInput)));
        ignore ((self#repaintBehavior)#onChangeRepaint (self))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (colorFillPaintable#paint ((Obj.magic graphics)));
        ignore (helpPaintable#paint ((Obj.magic graphics)));
        ignore (paintable#paint ((Obj.magic graphics)));
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        nONE <- ((GameKeyFactory.getInstance ())#nONE :> GameKey.gameKey);
        ();
        selectedGameKey <- (nONE :> GameKey.gameKey);
        selectedInput <- (Obj.repr nONE);
        inputFactory <- ((InputFactory.getInstance ()) :> InputFactory.inputFactory);
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#cONSTRUCTOR));
        if (helpPaintable_arg == (Obj.magic 0)) then begin
            raise (Failure ("Help Paintable Exception"))
        end;
        abeClientInformation <- abeClientInformation_arg;
        helpPaintable <- (Obj.magic helpPaintable_arg);
        inputMapping <- ((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ());
        paintable <- (new ProcessPaintable.processPaintable ());
        colorFillPaintable <- ((Obj.magic (java_call_static "ColorFillPaintableFactory.getInstance" (Obj.repr ())))#getInstance ((allBinaryGameLayerManager#getBackgroundBasicColor ()), false))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameInputMappingCanvas" (fun arguments -> Obj.repr (new gameInputMappingCanvas (Obj.obj arguments)))

let dISPLAY : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Controls", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 2)))))
let get_dISPLAY () = Obj.magic dISPLAY
let () = java_register_static "GameInputMappingCanvas.get_dISPLAY" (fun _ -> Obj.repr (get_dISPLAY ()))

let dEFAULT : Obj.t = (Obj.repr (Obj.obj (java_new "Command" (Obj.repr ("Default", (StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic (java_call_static "Command.get_sCREEN" (Obj.repr ()))), 2)))))
let get_dEFAULT () = Obj.magic dEFAULT
let () = java_register_static "GameInputMappingCanvas.get_dEFAULT" (fun _ -> Obj.repr (get_dEFAULT ()))


