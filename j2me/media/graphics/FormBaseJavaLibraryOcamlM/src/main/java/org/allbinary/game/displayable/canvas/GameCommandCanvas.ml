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
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.NullCommandListener *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.displayable.RepaintBehavior *)
(* import org.allbinary.game.input.GameInputStrings *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.event.DownGameKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.event.GameKeyEventHandler *)
(* import org.allbinary.game.input.event.UpGameKeyEventHandler *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventListener *)
(* import org.allbinary.graphics.displayable.screen.ScreenRepaintProcessorFactory *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory *)
(* import org.allbinary.graphics.form.FormPaintable *)
(* import org.allbinary.graphics.form.FormTypeFactory *)
(* import org.allbinary.graphics.form.PaintableForm *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory *)
(* import org.allbinary.graphics.form.item.CommandTextItemArrayFactory *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.form.item.validation.AllCommandsVisitor *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.util.BasicArrayListD *)

let id : int = 0
let get_id () = id
let () = java_register_static "GameCommandCanvas.get_id" (fun _ -> Obj.repr (get_id ()))
class gameCommandCanvas (cmdListener, (name : string), (backgroundBasicColor_arg : BasicColor.basicColor), (foregroundBasicColor_arg : BasicColor.basicColor)) =
  object (self)
    inherit MyCanvas.myCanvas (name, (CanvasStrings.getInstance ())#eMPTY_CHILD_NAME_LIST)
    val mutable repaintProcessor : Processor.processor = (Obj.magic 0)
    method repaintProcessor = repaintProcessor
    method set_repaintProcessor value' = repaintProcessor <- value'
    val mutable gameInputStrings : GameInputStrings.gameInputStrings = (Obj.magic 0)
    method gameInputStrings = gameInputStrings
    method set_gameInputStrings value' = gameInputStrings <- value'
    val mutable foregroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method foregroundBasicColor = foregroundBasicColor
    method set_foregroundBasicColor value' = foregroundBasicColor <- value'
    val mutable backgroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method backgroundBasicColor = backgroundBasicColor
    method set_backgroundBasicColor value' = backgroundBasicColor <- value'
    val mutable inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    val mutable gameKeyFactory : GameKeyFactory.gameKeyFactory = (Obj.magic 0)
    method gameKeyFactory = gameKeyFactory
    method set_gameKeyFactory value' = gameKeyFactory <- value'
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    val mutable downGameKeyEventHandler : DownGameKeyEventHandler.downGameKeyEventHandler = (Obj.magic 0)
    method downGameKeyEventHandler = downGameKeyEventHandler
    method set_downGameKeyEventHandler value' = downGameKeyEventHandler <- value'
    val mutable upGameKeyEventHandler : UpGameKeyEventHandler.upGameKeyEventHandler = (Obj.magic 0)
    method upGameKeyEventHandler = upGameKeyEventHandler
    method set_upGameKeyEventHandler value' = upGameKeyEventHandler <- value'
    val mutable repaintBehavior : RepaintBehavior.repaintBehavior = (Obj.magic 0)
    method repaintBehavior = repaintBehavior
    method set_repaintBehavior value' = repaintBehavior <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable foregroundColor : int = 0
    method foregroundColor = foregroundColor
    method set_foregroundColor value' = foregroundColor <- value'
    val mutable backgroundColor : int = 0
    method backgroundColor = backgroundColor
    method set_backgroundColor value' = backgroundColor <- value'
    val mutable menuInputProcessor : BasicMenuInputProcessor.basicMenuInputProcessor = (Obj.magic 0)
    method menuInputProcessor = menuInputProcessor
    method set_menuInputProcessor value' = menuInputProcessor <- value'
    val mutable menuPaintable : Paintable.paintable = (Obj.magic 0)
    method menuPaintable = menuPaintable
    method set_menuPaintable value' = menuPaintable <- value'
    val mutable menuForm : PaintableForm.paintableForm = (Obj.magic 0)
    method menuForm = menuForm
    method set_menuForm value' = menuForm <- value'
    val mutable isSingleKeyRepeatableProcessing : bool = false
    method isSingleKeyRepeatableProcessing = isSingleKeyRepeatableProcessing
    method set_isSingleKeyRepeatableProcessing value' = isSingleKeyRepeatableProcessing <- value'
    val mutable fontHeight : int = 0
    method fontHeight = fontHeight
    method set_fontHeight value' = fontHeight <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
            ignore (logUtil#putF ((java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append (commonStrings#sTART))#append (canvasStrings#fD_WIDTH))#appendint ((java_to_int (Obj.repr ((MyFontProcessor.defaultCharWidth ((Obj.magic !font))))))))#append (canvasStrings#fD_HEIGHT))#appendint ((java_to_int (Obj.repr (((Obj.magic !font)#getHeight ())))))))), self, canvasStrings#uPDATE_MEASUREMENT));
            fontHeight <- ((Obj.magic !font)#getHeight ());
            let rectangle : Obj.t ref = ref ((Obj.repr (self#createRectangle ((menuForm#size ()))))) in ();
            ignore (menuForm#init ((Obj.magic !rectangle), (FormTypeFactory.getInstance ())#vERTICAL_CENTER_FORM));
            (self#update ())
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, canvasStrings#oN_DISPLAY_CHANGE_EVENT, e))
        end);
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#sTART))#append ((java_string_of (Obj.repr (DisplayInfoSingleton.getInstance ()))))))), self, canvasStrings#oN_DISPLAY_CHANGE_EVENT));
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7-20"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#addCommand ((GameCommandsFactory.getInstance ())#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method initMenu () : unit =
        begin
        let form : ScrollSelectionForm.scrollSelectionForm ref = ref (((self#createForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        menuForm <- !form;
        if ((Obj.repr !form) != (Obj.repr (ScrollSelectionFormNoneFactory.getInstance ()))) then begin
            (self#setMenuInputProcessor ((Obj.obj (java_new "ImmediateCommandFormInputProcessor" (Obj.repr ((new BasicArrayListD.basicArrayListD ()), (-1), self, !form))))));
            menuPaintable <- (new FormPaintable.formPaintable (!form))
        end;
        ignore (repaintBehavior#onChangeRepaint (self))
        end [@@warning "-7"]
    

    method createForm () : ScrollSelectionForm.scrollSelectionForm =
        begin
        let items : Obj.t ref = ref ((Obj.repr ((new CommandTextItemArrayFactory.commandTextItemArrayFactory ((new AllCommandsVisitor.allCommandsVisitor ())))#getInstance ((self#getCommandStack ()), backgroundBasicColor, foregroundBasicColor)))) in ();
        let rectangle : Obj.t ref = ref ((Obj.repr (self#createRectangle ((Array.length (Obj.magic !items)))))) in ();
        ((CommandCurrentSelectionFormFactory.getInstance ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic !items), (Obj.magic !rectangle), (FormTypeFactory.getInstance ())#vERTICAL_CENTER_FORM, 15, false, backgroundBasicColor, foregroundBasicColor)) :> ScrollSelectionForm.scrollSelectionForm)
        end [@@warning "-7"]
    

    method createRectangle : 'return. int -> 'return = fun ((size : int)) ->
        begin
        let height : int ref = ref ((size * fontHeight)) in ();
        let startY : int ref = ref ((((((displayInfo#getLastHeight ()) * 2) / 3)) - !height)) in ();
        let pointFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ()))))) in ();
        let rectangle : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Rectangle" (Obj.repr (((Obj.magic !pointFactory)#createXY (30, !startY)), ((displayInfo#getLastWidth ()) - 30), !startY)))))) in ();
        (Obj.magic ((Obj.magic !rectangle)))
        end [@@warning "-7"]
    

    method open_ () : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, "open"));
        ignore ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ())))#addListenerInterface ((self#getMenuInputProcessor ())));
        ignore ((GameKeyEventHandler.getInstance ())#addListener ((self#getMenuInputProcessor ())));
        ignore ((DisplayChangeEventHandler.getInstance ())#addListenerInterface (self))
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#cLOSE));
        ignore ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ())))#removeListener ((self#getMenuInputProcessor ())));
        ignore ((GameKeyEventHandler.getInstance ())#removeListener ((self#getMenuInputProcessor ())));
        ignore ((DisplayChangeEventHandler.getInstance ())#removeListener (self))
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        ignore (repaintProcessor#process ())
        end [@@warning "-7"]
    

    method getSourceId () : int =
        begin
        id
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
        (self#keyRepeatedByDevice (keyCode, 0))
        end [@@warning "-7"]
    

    method keyPressedByDevice ((keyCode : int), (_deviceId : int)) : unit =
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((CommonSeps.getInstance ())#sPACE))#appendint (keyCode)))), self, gameInputStrings#kEY_PRESSED));
        (self#addGameKeyEvent (keyCode, 0, false))
        end [@@warning "-7"]
    

    method keyReleasedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        (self#removeGameKeyEvent (keyCode, deviceId, false))
        end [@@warning "-7"]
    

    method keyRepeatedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        if isSingleKeyRepeatableProcessing then begin
            (self#addGameKeyEvent (keyCode, deviceId, true))
        end
        end [@@warning "-7"]
    

    method addGameKeyEvent ((keyCode : int), (deviceId : int), (_repeated : bool)) : unit =
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref (((inputToGameKeyMapping#getInstanceForCanvas (self, keyCode)) :> GameKey.gameKey)) in ();
            if ((Obj.repr !gameKey) != (Obj.repr gameKeyFactory#nONE)) then begin
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput (self, !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore (downGameKeyEventHandler#fireEvent (!gameKeyEvent));
                ignore ((downGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent))
            end else begin
                ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#nO_KEY))#appendint (keyCode)))), self, gameInputStrings#aDD_KEY_EVENT))
            end
        with e -> begin
            ignore (logUtil#put ("Key Event Error", self, gameInputStrings#aDD_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method removeGameKeyEvent ((keyCode : int), (deviceId : int), (_repeated : bool)) : unit =
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref (((inputToGameKeyMapping#getInstanceForCanvas (self, keyCode)) :> GameKey.gameKey)) in ();
            if ((Obj.repr !gameKey) != (Obj.repr gameKeyFactory#nONE)) then begin
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput (self, !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore (upGameKeyEventHandler#fireEvent (!gameKeyEvent));
                ignore ((upGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent))
            end else begin
                ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#nO_KEY))#appendint (keyCode)))), self, gameInputStrings#rEMOVE_KEY_EVENT))
            end
        with e -> begin
            ignore (logUtil#put ("Key Event Error", self, gameInputStrings#rEMOVE_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (menuPaintable#paint ((Obj.magic graphics)));
        ignore (repaintBehavior#repaint (self))
        end [@@warning "-7-20"]
    

    method setMenuInputProcessor : 'any1. 'any1 -> unit = fun (menuInputProcessor_arg) ->
        let menuInputProcessor_arg = Obj.repr menuInputProcessor_arg in
        begin
        menuInputProcessor <- (Obj.magic menuInputProcessor_arg)
        end [@@warning "-7-20"]
    

    method getMenuInputProcessor () : BasicMenuInputProcessor.basicMenuInputProcessor =
        begin
        (menuInputProcessor :> BasicMenuInputProcessor.basicMenuInputProcessor)
        end [@@warning "-7"]

    initializer
      begin
        repaintProcessor <- (((ScreenRepaintProcessorFactory.getInstance ())#create (self)) :> Processor.processor);
        gameInputStrings <- ((GameInputStrings.getInstance ()) :> GameInputStrings.gameInputStrings);
        ();
        ();
        inputToGameKeyMapping <- ((((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ())#getInputMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping);
        gameKeyFactory <- ((GameKeyFactory.getInstance ()) :> GameKeyFactory.gameKeyFactory);
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        downGameKeyEventHandler <- ((DownGameKeyEventHandler.getInstance ()) :> DownGameKeyEventHandler.downGameKeyEventHandler);
        upGameKeyEventHandler <- ((UpGameKeyEventHandler.getInstance ()) :> UpGameKeyEventHandler.upGameKeyEventHandler);
        ();
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        ();
        ();
        menuInputProcessor <- ((NoMenuInputProcessor.getInstance ()) :> BasicMenuInputProcessor.basicMenuInputProcessor);
        menuPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        menuForm <- ((PaintableForm.getNullPaintableForm ()) :> PaintableForm.paintableForm);
        isSingleKeyRepeatableProcessing <- ((Features.getInstance ())#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_REPEAT_PRESS));
        fontHeight <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        repaintBehavior <- (RepaintBehavior.getInstance ());
        foregroundBasicColor <- foregroundBasicColor_arg;
        backgroundBasicColor <- backgroundBasicColor_arg;
        foregroundColor <- (foregroundBasicColor#intValue ());
        backgroundColor <- (backgroundBasicColor#intValue ());
        (self#initCommands (cmdListener));
        if ((Obj.repr cmdListener) != (Obj.repr (NullCommandListener.get_nULL_COMMAND_LISTENER ()))) then begin
            (try
                (self#initMenu ());
                ignore (repaintProcessor#process ())
            with e -> begin
                raise (Failure ("RuntimeException"))
            end)
        end
      end
  end
let () = java_register_constructor "GameCommandCanvas" (fun arguments -> Obj.repr (new gameCommandCanvas (Obj.obj arguments)))


