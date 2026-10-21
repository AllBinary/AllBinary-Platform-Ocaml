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
(* import javax.microedition.lcdui.Item *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.IndexedAnimationBehavior *)
(* import org.allbinary.animation.special.SpecialAnimation *)
(* import org.allbinary.business.advertisement.GameAdStateFactory *)
(* import org.allbinary.canvas.BaseGameStatistics *)
(* import org.allbinary.canvas.CustomGameMenuUtil *)
(* import org.allbinary.canvas.FullScreenUtil *)
(* import org.allbinary.canvas.GameStatisticsFactory *)
(* import org.allbinary.canvas.RunnableCanvas *)
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.game.init.BasicBuildGameInitializerFactory *)
(* import org.allbinary.game.init.GameInitializationUtil *)
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
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.SWTUtil *)
(* import org.allbinary.game.midlet.DemoGameMidlet *)
(* import org.allbinary.game.score.HighScoreCommands *)
(* import org.allbinary.game.score.HighScores *)
(* import org.allbinary.game.score.HighScoresFactoryInterface *)
(* import org.allbinary.game.score.HighScoresHelper *)
(* import org.allbinary.game.score.HighScoresPaintable *)
(* import org.allbinary.game.score.NullHighScoresSingletonFactory *)
(* import org.allbinary.game.state.GameState *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.ResizableListenerHandler *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventListener *)
(* import org.allbinary.graphics.form.FormType *)
(* import org.allbinary.graphics.form.FormTypeFactory *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.opengles.CurrentDisplayableFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.graphics.opengles.OpenGLThreadUtil *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.graphics.paint.StatePaintable *)
(* import org.allbinary.graphics.paint.StatePaintableFactory *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory *)
(* import org.allbinary.logic.system.security.licensing.LockableFeature *)
(* import org.allbinary.logic.system.security.licensing.LockableFeatureFactory *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.audio.AllBinaryMediaManager *)
(* import org.allbinary.media.audio.EarlySoundsFactory *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let id : int = 0
let get_id () = id
let () = java_register_static "StartCanvas.get_id" (fun _ -> Obj.repr (get_id ()))
let bOT_GAME_STATS : string = "Bot Game Statistics: "
let get_bOT_GAME_STATS () = bOT_GAME_STATS
let () = java_register_static "StartCanvas.get_bOT_GAME_STATS" (fun _ -> Obj.repr (get_bOT_GAME_STATS ()))
class startCanvas ((abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface), commandListener, (highScoresFactoryInterface_arg : HighScoresFactoryInterface.highScoresFactoryInterface), (paintable : Paintable.paintable), (overlayPaintable_arg : InitUpdatePaintable.initUpdatePaintable), (gameInitializationInterfaceFactoryInterface_arg : BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory), (isContinue : bool)) =
  object (self)
    inherit RunnableCanvas.runnableCanvas (commandListener, (CurrentDisplayableFactory.getInstance ())#dEFAULT_CHILD_NAME_LIST, true) as super
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    val mutable openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory = (Obj.magic 0)
    method openGLFeatureFactory = openGLFeatureFactory
    method set_openGLFeatureFactory value' = openGLFeatureFactory <- value'
    val mutable myCommandsFactory : MyCommandsFactory.myCommandsFactory = (Obj.magic 0)
    method myCommandsFactory = myCommandsFactory
    method set_myCommandsFactory value' = myCommandsFactory <- value'
    val mutable gameAdStateFactory : GameAdStateFactory.gameAdStateFactory = (Obj.magic 0)
    method gameAdStateFactory = gameAdStateFactory
    method set_gameAdStateFactory value' = gameAdStateFactory <- value'
    val mutable gameStateFactory : GameStateFactory.gameStateFactory = (Obj.magic 0)
    method gameStateFactory = gameStateFactory
    method set_gameStateFactory value' = gameStateFactory <- value'
    val mutable gameInputStrings : GameInputStrings.gameInputStrings = (Obj.magic 0)
    method gameInputStrings = gameInputStrings
    method set_gameInputStrings value' = gameInputStrings <- value'
    val mutable formUtil : FormUtil.formUtil = (Obj.magic 0)
    method formUtil = formUtil
    method set_formUtil value' = formUtil <- value'
    val mutable basicGameDemoPaintable : StatePaintable.statePaintable = (Obj.magic 0)
    method basicGameDemoPaintable = basicGameDemoPaintable
    method set_basicGameDemoPaintable value' = basicGameDemoPaintable <- value'
    val mutable specialAnimationInterface : SpecialAnimation.specialAnimation = (Obj.magic 0)
    method specialAnimationInterface = specialAnimationInterface
    method set_specialAnimationInterface value' = specialAnimationInterface <- value'
    val mutable paintedSpecialAnimationInterface : Obj.t = Obj.repr 0
    method paintedSpecialAnimationInterface : 'r. 'r = Obj.magic paintedSpecialAnimationInterface
    method set_paintedSpecialAnimationInterface : 'v. 'v -> unit = fun value' -> paintedSpecialAnimationInterface <- Obj.repr value'
    val mutable fullScreenUtil : Obj.t = Obj.repr 0
    method fullScreenUtil : 'r. 'r = Obj.magic fullScreenUtil
    method set_fullScreenUtil : 'v. 'v -> unit = fun value' -> fullScreenUtil <- Obj.repr value'
    val mutable highScoresHelper : HighScoresHelper.highScoresHelper = (Obj.magic 0)
    method highScoresHelper = highScoresHelper
    method set_highScoresHelper value' = highScoresHelper <- value'
    val mutable realHighScoresPaintable : HighScoresPaintable.highScoresPaintable = (Obj.magic 0)
    method realHighScoresPaintable = realHighScoresPaintable
    method set_realHighScoresPaintable value' = realHighScoresPaintable <- value'
    val mutable highScoresPaintable : Paintable.paintable = (Obj.magic 0)
    method highScoresPaintable = highScoresPaintable
    method set_highScoresPaintable value' = highScoresPaintable <- value'
    val mutable state : int = 0
    method state = state
    method set_state value' = state <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable highScoresFactoryInterface : HighScoresFactoryInterface.highScoresFactoryInterface = (Obj.magic 0)
    method highScoresFactoryInterface = highScoresFactoryInterface
    method set_highScoresFactoryInterface value' = highScoresFactoryInterface <- value'
    val mutable menuInputProcessor : BasicMenuInputProcessor.basicMenuInputProcessor = (Obj.magic 0)
    method menuInputProcessor = menuInputProcessor
    method set_menuInputProcessor value' = menuInputProcessor <- value'
    val mutable menuForm : ScrollSelectionForm.scrollSelectionForm = (Obj.magic 0)
    method menuForm = menuForm
    method set_menuForm value' = menuForm <- value'
    val mutable gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory = (Obj.magic 0)
    method gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
    method set_gameInitializationInterfaceFactoryInterface value' = gameInitializationInterfaceFactoryInterface <- value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    val mutable defaultPaintableInterface : Paintable.paintable = (Obj.magic 0)
    method defaultPaintableInterface = defaultPaintableInterface
    method set_defaultPaintableInterface value' = defaultPaintableInterface <- value'
    val mutable paintableInterface : PaintableInterface.paintableInterface = (Obj.magic 0)
    method paintableInterface = paintableInterface
    method set_paintableInterface value' = paintableInterface <- value'
    val mutable overlayPaintable : InitUpdatePaintable.initUpdatePaintable = (Obj.magic 0)
    method overlayPaintable = overlayPaintable
    method set_overlayPaintable value' = overlayPaintable <- value'
    val mutable tempWait : int = 0
    method tempWait = tempWait
    method set_tempWait value' = tempWait <- value'
    val mutable inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    val mutable gameRunnable : GameRunnable.gameRunnable = (Obj.magic 0)
    method gameRunnable = gameRunnable
    method set_gameRunnable value' = gameRunnable <- value'
    val mutable progressPaintable : PaintableInterface.paintableInterface = (Obj.magic 0)
    method progressPaintable = progressPaintable
    method set_progressPaintable value' = progressPaintable <- value'
    val mutable isSingleKeyRepeatableProcessing : bool = false
    method isSingleKeyRepeatableProcessing = isSingleKeyRepeatableProcessing
    method set_isSingleKeyRepeatableProcessing value' = isSingleKeyRepeatableProcessing <- value'
    val mutable nONE : GameKey.gameKey = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    val mutable sET_STATE : string = ""
    method sET_STATE = sET_STATE
    method set_sET_STATE value' = sET_STATE <- value'
    val mutable baseGameStatistics : BaseGameStatistics.baseGameStatistics = (Obj.magic 0)
    method baseGameStatistics = baseGameStatistics
    method set_baseGameStatistics value' = baseGameStatistics <- value'
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        (try
            let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref (((self#getMenuForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
            if (!scrollSelectionForm != (Obj.magic 0)) then begin
                let formType : FormType.formType ref = ref ((((FormTypeFactory.getInstance ())#getFormType ()) :> FormType.formType)) in ();
                let rectangle : Obj.t ref = ref ((Obj.repr (formUtil#createFormRectangle ()))) in ();
                ignore (!scrollSelectionForm#init ((Obj.magic !rectangle), !formType))
            end;
            ignore (overlayPaintable#init ())
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, canvasStrings#oN_DISPLAY_CHANGE_EVENT, e))
        end)
        end [@@warning "-7-20"]
    

    method getCustomCommands () : Obj.t array =
        try
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        if (J2MEUtil.isHTML ()) then begin
            let commandArray : Obj.t array ref = ref ([| !gameCommandsFactory#sTART_COMMAND; (HighScoreCommands.getInstance ())#dISPLAY; (GameInputMappingCanvas.get_dISPLAY ()); !gameCommandsFactory#dISPLAY_ABOUT |]) in ();
            raise (Java_return (Obj.repr (!commandArray)))
        end else begin
            let commandList : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!commandList#add (!gameCommandsFactory#sTART_COMMAND));
            let inApplicationPurchaseFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "InApplicationPurchaseFactory.getInstance" (Obj.repr ()))))) in ();
            if ((Obj.magic !inApplicationPurchaseFactory)#isEnabled ()) then begin
                let list : BasicArrayList.basicArrayList ref = ref ((((LockableFeatureFactory.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
                if (((!list#size ()) > 0) && (not ((Obj.magic !inApplicationPurchaseFactory)#isPurchased ((Obj.magic (!list#get (0))))))) then begin
                    ignore (!commandList#add (!gameCommandsFactory#bUY_COMMAND))
                end
            end;
            ignore (!commandList#add ((HighScoreCommands.getInstance ())#dISPLAY));
            (try
                let isOverScan : bool ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ())#isOverScan ())) in ();
                if (SWTUtil.get_isSWT ()) then begin
                    ignore (!commandList#add ((GameInputMappingCanvas.get_dISPLAY ())))
                end else if (not !isOverScan) then begin
                    ignore (!commandList#add (!gameCommandsFactory#dISPLAY_OPTIONS));
                    ignore (!commandList#add (!gameCommandsFactory#dISPLAY_LOAD_FORM));
                    ignore (!commandList#add ((GameInputMappingCanvas.get_dISPLAY ())))
                end
            with e -> begin
                ()
            end);
            ignore (!commandList#add (!gameCommandsFactory#dISPLAY_ABOUT));
            let commandArray : Obj.t array ref = ref ((!commandList#toArray ())) in ();
            raise (Java_return (Obj.repr (!commandArray)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        let commandArray : Obj.t array ref = ref ((self#getCustomCommands ())) in ();
        let size : int ref = ref ((Array.length !commandArray)) in ();
        for index = 0 to !size - 1 do
            ignore (self#addCommand ((Obj.magic !commandArray.(index))))
        done;
        ignore (CustomGameMenuUtil.add (self));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method initPostPaint () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method mediaInit () : unit =
        begin
        ignore (Obj.magic (java_call_static "AllBinaryMediaManager.init" (Obj.repr ((EarlySoundsFactory.getInstance ())))))
        end [@@warning "-7"]
    

    method itemStateChanged : 'any1. 'any1 -> unit = fun (_item) ->
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, self))
        end [@@warning "-7-20"]
    

    method initMenu () : unit =
        begin
        (self#close ());
        (self#open_ ())
        end [@@warning "-7"]
    

    method open_ () : unit =
        begin
        ignore ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ())))#addListenerInterface ((self#getMenuInputProcessor ())));
        ignore ((GameKeyEventHandler.getInstance ())#addListener ((self#getMenuInputProcessor ())))
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore ((Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ())))#removeListener ((self#getMenuInputProcessor ())));
        ignore ((GameKeyEventHandler.getInstance ())#removeListener ((self#getMenuInputProcessor ())))
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
        (self#addGameKeyEvent (keyCode, false))
        end [@@warning "-7"]
    

    method keyReleasedByDevice ((keyCode : int), (_deviceId : int)) : unit =
        begin
        (self#removeGameKeyEvent (keyCode, false))
        end [@@warning "-7"]
    

    method keyRepeatedByDevice ((keyCode : int), (_deviceId : int)) : unit =
        begin
        if isSingleKeyRepeatableProcessing then begin
            (self#addGameKeyEvent (keyCode, true))
        end
        end [@@warning "-7"]
    

    method addGameKeyEvent ((keyCode : int), (_repeated : bool)) : unit =
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref (((inputToGameKeyMapping#getInstanceForCanvas (self, keyCode)) :> GameKey.gameKey)) in ();
            if ((Obj.repr !gameKey) != (Obj.repr nONE)) then begin
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput (self, !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore ((DownGameKeyEventHandler.getInstance ())#fireEvent (!gameKeyEvent))
            end else begin
                ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#nO_KEY))#appendint (keyCode)))), self, gameInputStrings#aDD_KEY_EVENT))
            end
        with e -> begin
            ignore (logUtil#put ("Key Event Error", self, gameInputStrings#aDD_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method removeGameKeyEvent ((keyCode : int), (_repeated : bool)) : unit =
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref (((inputToGameKeyMapping#getInstanceForCanvas (self, keyCode)) :> GameKey.gameKey)) in ();
            if ((Obj.repr !gameKey) != (Obj.repr nONE)) then begin
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput (self, !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore ((UpGameKeyEventHandler.getInstance ())#fireEvent (!gameKeyEvent))
            end else begin
                ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#nO_KEY))#appendint (keyCode)))), self, gameInputStrings#rEMOVE_KEY_EVENT))
            end
        with e -> begin
            ignore (logUtil#put ("Key Event Error", self, gameInputStrings#rEMOVE_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method pause () : unit =
        begin
        (self#close ());
        ignore (self#setPaused (true))
        end [@@warning "-7"]
    

    method unPause () : unit =
        begin
        (self#open_ ());
        ignore (self#setPaused (false))
        end [@@warning "-7"]
    

    method isPausable () : bool =
        try
        begin
        if ((Obj.repr ((CurrentDisplayableFactory.getInstance ())#getUsedRunnable ())) == (Obj.repr (NullWaitGameRunnable.getInstance ()))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method isGameOver () : bool =
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#nOT_IMPLEMENTED))#append (" since not a game")))), self, "isGameOver"));
        false
        end [@@warning "-7"]
    

    method setLoadStateHashtable : 'any1. 'any1 -> unit = fun (_hashtable) ->
        begin
        ignore (logUtil#putF ("Trying to continue a demo lol - only continue a game canvas not the demo", self, "setLoadStateHashtable"))
        end [@@warning "-7-20"]
    

    method getLoadStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        ignore (logUtil#putF ("Trying to continue a demo lol - only continue a game canvas not the demo", self, "getLoadStateHashtable"));
        (Obj.magic (stdUtil#nULL_TABLE))
        end [@@warning "-7"]
    

    method getCurrentStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        ignore (logUtil#putF ("Trying to save the AI lol", self, "getCurrentStateHashtable"));
        (Obj.magic (stdUtil#nULL_TABLE))
        end [@@warning "-7"]
    

    method setHighScoreSubmitted ((_isNotUsed : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (paintableInterface#paint ((Obj.magic graphics)));
        ignore ((Obj.magic paintedSpecialAnimationInterface)#paintXY ((Obj.magic graphics), 0, 0));
        ignore (highScoresPaintable#paint ((Obj.magic graphics)));
        ignore ((self#getBasicGameDemoPaintable ())#paint ((Obj.magic graphics)));
        ignore (overlayPaintable#paint ((Obj.magic graphics)));
        ignore (progressPaintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (paintableInterface#paintThreed ((Obj.magic graphics)));
        ignore ((Obj.magic paintedSpecialAnimationInterface)#paintThreedXYZ ((Obj.magic graphics), 0, 0, 0))
        end [@@warning "-7-20"]
    

    method processGameOver () : unit =
        begin
        ignore (logUtil#putF ("Not Implemented since not a game", self, "setGameOver"))
        end [@@warning "-7"]
    

    method demoStateChange () : unit =
        begin
        let newState : int ref = ref ((state + 1)) in ();
        if (!newState > 2) then begin
            newState := 0
        end else if (!newState = 2) then begin
            if (not (highScoresHelper#isAnyHighScores ())) then begin
                newState := 0
            end else begin
                let highScores : Obj.t ref = ref ((Obj.repr (highScoresHelper#getNextHighScores ()))) in ();
                if ((Obj.repr (Obj.magic !highScores)) == (Obj.repr (NullHighScoresSingletonFactory.getInstance ()))) then begin
                    newState := 0
                end else begin
                    ignore ((self#getRealHighScoresPaintable ())#setHighScores ((Obj.magic !highScores)))
                end
            end
        end;
        (self#setState (!newState));
        (self#updateDemoState ())
        end [@@warning "-7"]
    

    method updateDemoState () : unit =
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((SmallIntegerSingletonFactory.getInstance ())#createInstance (state)))), self, sET_STATE))));
        ignore ((self#getBasicGameDemoPaintable ())#setState (state));
        if (state = 0) then begin
            highScoresPaintable <- (NullPaintable.getInstance ());
            paintedSpecialAnimationInterface <- Obj.repr ((self#getSpecialAnimationInterface ()));
            ignore ((self#getSpecialAnimationInterface ())#reset ())
        end else if (state = 1) then begin
            paintedSpecialAnimationInterface <- Obj.repr ((SpecialAnimation.getInstance ()))
        end else if (state = 2) then begin
            highScoresPaintable <- (self#getRealHighScoresPaintable ())
        end;
        let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
        ignore ((Obj.magic !gameAdState)#processPageAdState ())
        end [@@warning "-7"]
    

    method getNextRandom () : int =
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method createGameLayerManager ((_randomValue : int)) : AllBinaryGameLayerManager.allBinaryGameLayerManager =
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method createRunnable ((_randomLevel : int)) : GameCanvasRunnableInterface.gameCanvasRunnableInterface =
        begin
        raise (Failure (commonStrings#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method createCanvas () : unit =
        begin
        highScoresPaintable <- (NullPaintable.getInstance ());
        let randomLevel : int ref = ref ((self#getNextRandom ())) in ()
        end [@@warning "-7"]
    

    method start () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method preDemoProcess () : unit =
        begin
        ignore (overlayPaintable#update ())
        end [@@warning "-7"]
    

    method process () : unit =
        begin
        ignore ((self#getMenuInputProcessor ())#processInputList ());
        (self#preDemoProcess ());
        if (state = 0) then begin
            let indexedAnimationBehavior : IndexedAnimationBehavior.indexedAnimationBehavior ref = ref (((Obj.magic ((self#getSpecialAnimationInterface ())#getAnimationBehavior ())) :> IndexedAnimationBehavior.indexedAnimationBehavior)) in ();
            if (!indexedAnimationBehavior#loopIndex < 1) then begin
                ignore (timeDelayHelper#setStartTimeTNT ())
            end;
            let demoGameMidlet : DemoGameMidlet.demoGameMidlet ref = ref (((Obj.magic (self#getCustomCommandListener ())) :> DemoGameMidlet.demoGameMidlet)) in ()
        end
        end [@@warning "-7"]
    

    method startDemoGame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method processGame () : unit =
        begin
        ignore (gameRunnable#run ());
        ignore (specialAnimationInterface#nextFrame ());
        (self#process ())
        end [@@warning "-7"]
    

    method run () : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART_RUNNABLE, self, commonStrings#rUN));
        (try
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            ignore (!progressCanvas#addNormalPortion (50, "Demo Thread"));
            ignore (self#setCurrentThread ());
            (self#setRunning (true));
            if (features#isFeature ((MainFeatureFactory.getInstance ())#lOAD_ONDEMAND)) then begin
                ignore (!progressCanvas#end_ ())
            end else begin
                ignore (!progressCanvas#addNormalPortion (50, "Demo Thread Running"))
            end;
            ignore ((Obj.magic fullScreenUtil)#initOnRun (self, (self#getCustomCommandListener ())));
            (self#initMenu ());
            (self#initPostPaint ());
            (self#updateDemoState ());
            if (features#isDefault (openGLFeatureFactory#oPENGL_AS_GAME_THREAD)) then begin
                ignore ((Obj.magic (java_call_static "OpenGLThreadUtil.getInstance" (Obj.repr ())))#onResume ())
            end;
            if ((features#isDefault (openGLFeatureFactory#oPENGL_AS_GAME_THREAD)) || (J2MEUtil.isHTML ())) then begin
                ()
            end else begin
                while (self#isRunning ()) do
                    ignore (loopTimeHelper#setStartTimeTNT ());
                    (self#processGame ());
                    ignore (self#processLoopSleep ())
                done;
                (self#end_ ())
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, commonStrings#rUN, e))
        end);
        ignore (logUtil#putF (commonStrings#eND_RUNNABLE, self, commonStrings#rUN))
        end [@@warning "-7"]
    

    method setRunning ((running : bool)) : unit =
        begin
        ignore (super#setRunning (running));
        (try
            if ((((features#isDefault (openGLFeatureFactory#oPENGL)) || (J2MEUtil.isHTML ()))) && (not running)) then begin
                let currentDisplayableFactory : CurrentDisplayableFactory.currentDisplayableFactory ref = ref (((CurrentDisplayableFactory.getInstance ()) :> CurrentDisplayableFactory.currentDisplayableFactory)) in ();
                ignore (!currentDisplayableFactory#clearRunnable ());
                (self#end_ ())
            end
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, sET_RUNNING, e))
        end)
        end [@@warning "-7"]
    

    method end_ () : unit =
        begin
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (baseGameStatistics#add ((java_string_of (Obj.repr ((((new StringMaker.stringMaker ())#append (bOT_GAME_STATS))#append ((java_string_of (Obj.repr baseGameStatistics))))#append ((CommonSeps.getInstance ())#nEW_LINE))))));
        ignore (baseGameStatistics#init ());
        if (features#isFeature ((MainFeatureFactory.getInstance ())#lOAD_ONDEMAND)) then begin
            ignore (!progressCanvas#start ())
        end;
        ignore (logUtil#putF ("Demo End", self, commonStrings#rUN));
        (self#close ());
        ignore ((DisplayChangeEventHandler.getInstance ())#removeListener (self))
        end [@@warning "-7"]
    

    method setGameState : 'any1. 'any1 -> unit = fun (_gameState) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getGameState () : GameState.gameState =
        begin
        (gameStateFactory#pLAYING_GAME_STATE :> GameState.gameState)
        end [@@warning "-7"]
    

    method getState () : int =
        begin
        state
        end [@@warning "-7"]
    

    method setState ((state_arg : int)) : unit =
        begin
        state <- state_arg
        end [@@warning "-7"]
    

    method isHighScoreSubmitted () : bool =
        begin
        ignore (logUtil#putF ("Wow the AI got a high score!", self, "isHighScoreSubmitted"));
        false
        end [@@warning "-7"]
    

    method getRealHighScoresPaintable () : HighScoresPaintable.highScoresPaintable =
        begin
        (realHighScoresPaintable :> HighScoresPaintable.highScoresPaintable)
        end [@@warning "-7"]
    

    method setSpecialAnimationInterface : 'any1. 'any1 -> unit = fun (specialAnimationInterface_arg) ->
        let specialAnimationInterface_arg = Obj.repr specialAnimationInterface_arg in
        begin
        ignore ((Obj.magic specialAnimationInterface_arg)#setFrame (0));
        specialAnimationInterface <- (Obj.magic specialAnimationInterface_arg)
        end [@@warning "-7-20"]
    

    method getSpecialAnimationInterface () : SpecialAnimation.specialAnimation =
        begin
        (specialAnimationInterface :> SpecialAnimation.specialAnimation)
        end [@@warning "-7"]
    

    method setPaintableInterface : 'any1. 'any1 -> unit = fun (paintableInterface_arg) ->
        let paintableInterface_arg = Obj.repr paintableInterface_arg in
        begin
        paintableInterface <- (Obj.magic paintableInterface_arg)
        end [@@warning "-7-20"]
    

    method getPaintableInterface () : PaintableInterface.paintableInterface =
        begin
        (paintableInterface :> PaintableInterface.paintableInterface)
        end [@@warning "-7"]
    

    method setDefaultPaintableInterface : 'any1. 'any1 -> unit = fun (defaultPaintableInterface_arg) ->
        let defaultPaintableInterface_arg = Obj.repr defaultPaintableInterface_arg in
        begin
        defaultPaintableInterface <- (Obj.magic defaultPaintableInterface_arg)
        end [@@warning "-7-20"]
    

    method getDefaultPaintableInterface () : Paintable.paintable =
        begin
        (defaultPaintableInterface :> Paintable.paintable)
        end [@@warning "-7"]
    

    method getHighScoresFactoryInterface () : HighScoresFactoryInterface.highScoresFactoryInterface =
        begin
        (highScoresFactoryInterface :> HighScoresFactoryInterface.highScoresFactoryInterface)
        end [@@warning "-7"]
    

    method setMenuInputProcessor : 'any1. 'any1 -> unit = fun (menuInputProcessor_arg) ->
        let menuInputProcessor_arg = Obj.repr menuInputProcessor_arg in
        begin
        menuInputProcessor <- (Obj.magic menuInputProcessor_arg)
        end [@@warning "-7-20"]
    

    method getMenuInputProcessor () : BasicMenuInputProcessor.basicMenuInputProcessor =
        begin
        (menuInputProcessor :> BasicMenuInputProcessor.basicMenuInputProcessor)
        end [@@warning "-7"]
    

    method getMenuForm () : ScrollSelectionForm.scrollSelectionForm =
        begin
        (menuForm :> ScrollSelectionForm.scrollSelectionForm)
        end [@@warning "-7"]
    

    method setMenuForm : 'any1. 'any1 -> unit = fun (menuForm_arg) ->
        let menuForm_arg = Obj.repr menuForm_arg in
        begin
        menuForm <- (Obj.magic menuForm_arg)
        end [@@warning "-7-20"]
    

    method isInitialized () : bool =
        begin
        initialized
        end [@@warning "-7"]
    

    method getOverlayPaintable () : Paintable.paintable =
        begin
        (overlayPaintable :> Paintable.paintable)
        end [@@warning "-7"]
    

    method setBasicGameDemoPaintable : 'any1. 'any1 -> unit = fun (basicGameDemoPaintable_arg) ->
        let basicGameDemoPaintable_arg = Obj.repr basicGameDemoPaintable_arg in
        begin
        basicGameDemoPaintable <- (Obj.magic basicGameDemoPaintable_arg)
        end [@@warning "-7-20"]
    

    method getBasicGameDemoPaintable () : StatePaintable.statePaintable =
        begin
        (basicGameDemoPaintable :> StatePaintable.statePaintable)
        end [@@warning "-7"]
    

    method setTempWait ((tempWait_arg : int)) : unit =
        begin
        tempWait <- tempWait_arg
        end [@@warning "-7"]
    

    method getTempWait () : int =
        begin
        tempWait
        end [@@warning "-7"]
    

    method isSingleThread () : bool =
        begin
        (((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) || (SWTUtil.get_isSWT ()))
        end [@@warning "-7"]
    

    method isRunningInAnotherThread () : bool =
        try
        begin
        let features_arg : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let openGLFeatureFactory_arg : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        if (!features_arg#isDefault (!openGLFeatureFactory_arg#oPENGL_AS_GAME_THREAD)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr ((self#isRunning ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getGameInitializationInterfaceFactoryInterface () : BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory =
        begin
        (gameInitializationInterfaceFactoryInterface :> BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory)
        end [@@warning "-7"]

    initializer
      begin
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        features <- ((Features.getInstance ()) :> Features.features);
        openGLFeatureFactory <- ((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory);
        myCommandsFactory <- ((MyCommandsFactory.getInstance ()) :> MyCommandsFactory.myCommandsFactory);
        gameAdStateFactory <- ((GameAdStateFactory.getInstance ()) :> GameAdStateFactory.gameAdStateFactory);
        gameStateFactory <- ((GameStateFactory.getInstance ()) :> GameStateFactory.gameStateFactory);
        gameInputStrings <- ((GameInputStrings.getInstance ()) :> GameInputStrings.gameInputStrings);
        formUtil <- ((FormUtil.getInstance ()) :> FormUtil.formUtil);
        basicGameDemoPaintable <- ((StatePaintableFactory.getInstance ()) :> StatePaintable.statePaintable);
        specialAnimationInterface <- ((SpecialAnimation.getInstance ()) :> SpecialAnimation.specialAnimation);
        paintedSpecialAnimationInterface <- (Obj.repr (SpecialAnimation.getInstance ()));
        fullScreenUtil <- (Obj.repr (Obj.magic (java_call_static "FullScreenUtil.getInstance" (Obj.repr ()))));
        highScoresHelper <- ((new HighScoresHelper.highScoresHelper ()) :> HighScoresHelper.highScoresHelper);
        realHighScoresPaintable <- ((new HighScoresPaintable.highScoresPaintable ()) :> HighScoresPaintable.highScoresPaintable);
        highScoresPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        state <- 0;
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (6000)) :> TimeDelayHelper.timeDelayHelper);
        ();
        menuInputProcessor <- ((NoMenuInputProcessor.getInstance ()) :> BasicMenuInputProcessor.basicMenuInputProcessor);
        menuForm <- ((ScrollSelectionForm.getNullScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm);
        ();
        initialized <- false;
        defaultPaintableInterface <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        paintableInterface <- ((NullPaintable.getInstance ()) :> PaintableInterface.paintableInterface);
        ();
        tempWait <- (NullWaitGameRunnable.getInstance ())#wAIT;
        inputToGameKeyMapping <- ((((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ())#getInputMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping);
        gameRunnable <- ((NullWaitGameRunnable.getInstance ()) :> GameRunnable.gameRunnable);
        progressPaintable <- ((ProgressCanvasFactory.getLazyInstance ()) :> PaintableInterface.paintableInterface);
        isSingleKeyRepeatableProcessing <- (features#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_REPEAT_PRESS));
        nONE <- ((GameKeyFactory.getInstance ())#nONE :> GameKey.gameKey);
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        sET_STATE <- "setState";
        baseGameStatistics <- ((Obj.magic (java_call_static "GameStatisticsFactory.getInstance" (Obj.repr ()))) :> BaseGameStatistics.baseGameStatistics);
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setWait ((NullWaitGameRunnable.getInstance ())#wAIT));
        gameInitializationInterfaceFactoryInterface <- gameInitializationInterfaceFactoryInterface_arg;
        ignore ((GameInitializationUtil.getInstance ())#initDemo (abeClientInformation, self, gameInitializationInterfaceFactoryInterface_arg));
        ignore ((ResizableListenerHandler.getInstance ())#fireEvent (false));
        overlayPaintable <- overlayPaintable_arg;
        highScoresFactoryInterface <- highScoresFactoryInterface_arg;
        (self#setDefaultPaintableInterface (paintable));
        (self#setPaintableInterface ((self#getDefaultPaintableInterface ())));
        if isContinue then begin
            ignore (self#addCommand ((GameCommandsFactory.getInstance ())#cONTINUE_COMMAND))
        end;
        if ((ChangedGameFeatureListener.getInstance ())#isChangedFeature ((GameFeatureFactory.getInstance ())#sOUND)) then begin
            (self#mediaInit ())
        end;
        ignore ((DisplayChangeEventHandler.getInstance ())#addListenerInterface (self))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StartCanvas" (fun arguments -> Obj.repr (new startCanvas (Obj.obj arguments)))


