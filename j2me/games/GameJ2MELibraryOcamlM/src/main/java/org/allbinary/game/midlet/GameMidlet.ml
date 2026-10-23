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
(* package org.allbinary.game.midlet *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Enumeration *)
(* import javax.microedition.lcdui.Canvas *)
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Displayable *)
(* import javax.microedition.lcdui.NullCanvas *)
(* import javax.microedition.midlet.MIDletStateChangeException *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.TsUtil *)
(* import org.allbinary.business.advertisement.GameAdStateFactory *)
(* import org.allbinary.canvas.FullScreenUtil *)
(* import org.allbinary.canvas.GameStatisticsFactory *)
(* import org.allbinary.debug.DebugFactory *)
(* import org.allbinary.debug.DebugInterface *)
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.GameMode *)
(* import org.allbinary.game.GameStrings *)
(* import org.allbinary.game.GameTypeFactory *)
(* import org.allbinary.game.PlayerTypesFactory *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.GameOptionsForm *)
(* import org.allbinary.game.configuration.GameOptionsFormFactory *)
(* import org.allbinary.game.configuration.InGameFeatures *)
(* import org.allbinary.game.configuration.InGameOptionsForm *)
(* import org.allbinary.game.configuration.InGameOptionsFormFactory *)
(* import org.allbinary.game.configuration.LoadGameForm *)
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.event.GameFeatureEventHandler *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFormUtil *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.game.configuration.persistance.GamePersistanceSingleton *)
(* import org.allbinary.game.configuration.persistance.KeyValuePersistance *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.displayable.canvas.BasicPaintablesCanvas *)
(* import org.allbinary.game.displayable.canvas.DemoCanvas *)
(* import org.allbinary.game.displayable.canvas.GameCanvasRunnableInterface *)
(* import org.allbinary.game.displayable.canvas.GameEventHandlerUtil *)
(* import org.allbinary.game.displayable.canvas.GameInputMappingCanvas *)
(* import org.allbinary.game.displayable.canvas.GameInputMappingInstructionsCanvas *)
(* import org.allbinary.game.displayable.canvas.MenuListener *)
(* import org.allbinary.game.displayable.canvas.NullGameCanvasRunnable *)
(* import org.allbinary.game.input.TextNotificationUtil *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.game.paint.help.HelpPaintable *)
(* import org.allbinary.game.score.HighScoreCommands *)
(* import org.allbinary.game.score.HighScoreCommandsFactory *)
(* import org.allbinary.game.score.displayable.HighScoreTextBox *)
(* import org.allbinary.game.score.displayable.HighScoreUtil *)
(* import org.allbinary.game.score.displayable.HighScoresCanvas *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.graphics.ResizableListenerHandler *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.ColorChangeEventHandler *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.MyCanvas *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.graphics.displayable.screen.AboutCommandProcessor *)
(* import org.allbinary.graphics.displayable.screen.AboutPaintableFactory *)
(* import org.allbinary.graphics.displayable.screen.CommandForm *)
(* import org.allbinary.graphics.displayable.screen.WebCommandProcessor *)
(* import org.allbinary.input.AllBinarySensorManager *)
(* import org.allbinary.input.event.VirtualKeyboardEventHandler *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.system.security.licensing.ClientInformationFactory *)
(* import org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory *)
(* import org.allbinary.logic.system.security.licensing.LockableFeature *)
(* import org.allbinary.logic.system.security.licensing.LockableFeatureFactory *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.audio.AllBinaryMediaManager *)
(* import org.allbinary.midlet.MidletStrings *)
(* import org.allbinary.midlet.ProgressMidlet *)
(* import org.allbinary.thread.NullThread *)
(* import org.allbinary.thread.ThreadFactoryUtil *)
(* import org.allbinary.thread.ThreadUtil *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.EnumerationUtil *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class gameMidlet ((clientInformationFactory : ClientInformationFactory.clientInformationFactory)) =
  object (self)
    inherit ProgressMidlet.progressMidlet (clientInformationFactory) as super
    val mutable enumerationUtil : EnumerationUtil.enumerationUtil = (Obj.magic 0)
    method enumerationUtil = enumerationUtil
    method set_enumerationUtil value' = enumerationUtil <- value'
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable features : Features.features = (Obj.magic 0)
    method features = features
    method set_features value' = features <- value'
    val mutable midletStrings : MidletStrings.midletStrings = (Obj.magic 0)
    method midletStrings = midletStrings
    method set_midletStrings value' = midletStrings <- value'
    val mutable myCommandsFactory : MyCommandsFactory.myCommandsFactory = (Obj.magic 0)
    method myCommandsFactory = myCommandsFactory
    method set_myCommandsFactory value' = myCommandsFactory <- value'
    val mutable gameStrings : GameStrings.gameStrings = (Obj.magic 0)
    method gameStrings = gameStrings
    method set_gameStrings value' = gameStrings <- value'
    val mutable gameAdStateFactory : GameAdStateFactory.gameAdStateFactory = (Obj.magic 0)
    method gameAdStateFactory = gameAdStateFactory
    method set_gameAdStateFactory value' = gameAdStateFactory <- value'
    val mutable gameStateFactory : GameStateFactory.gameStateFactory = (Obj.magic 0)
    method gameStateFactory = gameStateFactory
    method set_gameStateFactory value' = gameStateFactory <- value'
    val mutable tsUtil : Obj.t = Obj.repr 0
    method tsUtil : 'r. 'r = Obj.magic tsUtil
    method set_tsUtil : 'v. 'v -> unit = fun value' -> tsUtil <- Obj.repr value'
    val mutable dISPLAYABLE : string = ""
    method dISPLAYABLE = dISPLAYABLE
    method set_dISPLAYABLE value' = dISPLAYABLE <- value'
    val mutable cOMMAND_NAME : string = ""
    method cOMMAND_NAME = cOMMAND_NAME
    method set_cOMMAND_NAME value' = cOMMAND_NAME <- value'
    val mutable nO_COMMAND : string = ""
    method nO_COMMAND = nO_COMMAND
    method set_nO_COMMAND value' = nO_COMMAND <- value'
    val mutable nO_DISPLAYABLE : string = ""
    method nO_DISPLAYABLE = nO_DISPLAYABLE
    method set_nO_DISPLAYABLE value' = nO_DISPLAYABLE <- value'
    val mutable cOMMAND_ACTION : string = ""
    method cOMMAND_ACTION = cOMMAND_ACTION
    method set_cOMMAND_ACTION value' = cOMMAND_ACTION <- value'
    val mutable pAUSE_APP_BACKGROUND : string = ""
    method pAUSE_APP_BACKGROUND = pAUSE_APP_BACKGROUND
    method set_pAUSE_APP_BACKGROUND value' = pAUSE_APP_BACKGROUND <- value'
    val mutable uN_PAUSE_APP_BACKGROUND : string = ""
    method uN_PAUSE_APP_BACKGROUND = uN_PAUSE_APP_BACKGROUND
    method set_uN_PAUSE_APP_BACKGROUND value' = uN_PAUSE_APP_BACKGROUND <- value'
    val mutable aboutCommandProcessor : AboutCommandProcessor.aboutCommandProcessor = (Obj.magic 0)
    method aboutCommandProcessor = aboutCommandProcessor
    method set_aboutCommandProcessor value' = aboutCommandProcessor <- value'
    val mutable webCommandProcessor : Obj.t = Obj.repr 0
    method webCommandProcessor : 'r. 'r = Obj.magic webCommandProcessor
    method set_webCommandProcessor : 'v. 'v -> unit = fun value' -> webCommandProcessor <- Obj.repr value'
    val mutable gameMidletStateFactory : GameMidletStateFactory.gameMidletStateFactory = (Obj.magic 0)
    method gameMidletStateFactory = gameMidletStateFactory
    method set_gameMidletStateFactory value' = gameMidletStateFactory <- value'
    val mutable gameStartTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method gameStartTimeHelper = gameStartTimeHelper
    method set_gameStartTimeHelper value' = gameStartTimeHelper <- value'
    val mutable fullScreenUtil : Obj.t = Obj.repr 0
    method fullScreenUtil : 'r. 'r = Obj.magic fullScreenUtil
    method set_fullScreenUtil : 'v. 'v -> unit = fun value' -> fullScreenUtil <- Obj.repr value'
    val mutable debugInterface : DebugInterface.debugInterface = (Obj.magic 0)
    method debugInterface = debugInterface
    method set_debugInterface value' = debugInterface <- value'
    val mutable allbinaryGameCanvasRunnableInterface : GameCanvasRunnableInterface.gameCanvasRunnableInterface = (Obj.magic 0)
    method allbinaryGameCanvasRunnableInterface = allbinaryGameCanvasRunnableInterface
    method set_allbinaryGameCanvasRunnableInterface value' = allbinaryGameCanvasRunnableInterface <- value'
    val mutable thread : java_thread = (Obj.magic 0)
    method thread = thread
    method set_thread value' = thread <- value'
    val mutable loadGameForm : Obj.t = Obj.repr 0
    method loadGameForm : 'r. 'r = Obj.magic loadGameForm
    method set_loadGameForm : 'v. 'v -> unit = fun value' -> loadGameForm <- Obj.repr value'
    val mutable isFullScreen : bool = false
    method isFullScreen = isFullScreen
    method set_isFullScreen value' = isFullScreen <- value'
    val mutable resized : bool = false
    method resized = resized
    method set_resized value' = resized <- value'
    val mutable startedBefore : bool = false
    method startedBefore = startedBefore
    method set_startedBefore value' = startedBefore <- value'
    
    

    method init () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setDemo () : unit =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method createGame () : unit =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method mediaShutdown () : unit =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method stopAll () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method pauseApp () : unit =
        begin
        (self#pauseAppBackground (true));
        let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
        ignore (((Obj.magic !gameAdState)#getAdvertisements ())#stopAll ())
        end [@@warning "-7"]
    

    method pauseAppBackground ((_background : bool)) : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, pAUSE_APP_BACKGROUND));
        if ((Obj.repr allbinaryGameCanvasRunnableInterface) != (Obj.repr (NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()))) then begin
            ignore (allbinaryGameCanvasRunnableInterface#pause ())
        end else begin
            ignore ((self#logUtil)#putF ("<<<<<< Null", self, pAUSE_APP_BACKGROUND))
        end;
        ignore ((Obj.magic (java_call_static "AllBinarySensorManager.getInstance" (Obj.repr ())))#shutdown ())
        end [@@warning "-7"]
    

    method unPauseApp () : unit =
        begin
        (self#unPauseAppBackground (true));
        let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
        ignore (((Obj.magic !gameAdState)#getAdvertisements ())#startAll ())
        end [@@warning "-7"]
    

    method unPauseAppBackground ((_background : bool)) : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, uN_PAUSE_APP_BACKGROUND));
        ignore ((Obj.magic (java_call_static "AllBinarySensorManager.getInstance" (Obj.repr ())))#init ());
        let gameCanvasRunnableInterface : GameCanvasRunnableInterface.gameCanvasRunnableInterface ref = ref ((allbinaryGameCanvasRunnableInterface :> GameCanvasRunnableInterface.gameCanvasRunnableInterface)) in ();
        if ((Obj.repr !gameCanvasRunnableInterface) != (Obj.repr (NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()))) then begin
            ignore (!gameCanvasRunnableInterface#unPause ())
        end else begin
            ignore ((self#logUtil)#putF ("<<<<<< Null", self, uN_PAUSE_APP_BACKGROUND))
        end
        end [@@warning "-7"]
    

    method destroyAppInRunnable ((unconditional : bool), (isProgress : bool)) : unit =
        begin
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        if isProgress then begin
            ignore (!progressCanvas#start ());
            (self#commandAction (myCommandsFactory#sET_DISPLAYABLE, !progressCanvas))
        end;
        (self#destroyApp (unconditional));
        if isProgress then begin
            ignore (!progressCanvas#end_ ())
        end
        end [@@warning "-7"]
    

    method destroyApp ((_unconditional : bool)) : unit =
        begin
        let mETHOD_NAME : string ref = ref ("GameMidlet::destroyApp") in ();
        (try
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (Obj.magic (java_call_static "GameStatisticsFactory.getInstance" (Obj.repr ()))))), self, !mETHOD_NAME))));
            let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
            ignore (((Obj.magic !gameAdState)#getAdvertisements ())#stopAll ());
            if (not (self#isDestroyed ())) then begin
                (self#stopGameCanvasRunnableInterface ());
                (self#setGameCanvasRunnableInterface ((NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ())));
                (self#mediaShutdown ())
            end else begin
                ignore ((self#logUtil)#putF ("Midlet Managment Error: Midlet Should Only Be Destroyed Once", self, !mETHOD_NAME))
            end;
            ignore (super#destroyApp (true));
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((self#commonStrings)#eND, self, !mETHOD_NAME))))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, !mETHOD_NAME, e))
        end);
        ignore ((self#logUtil)#putF ((self#commonStrings)#eND, self, !mETHOD_NAME))
        end [@@warning "-7"]
    

    method startApp () : unit =
        begin
        (try
            let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
            ignore (((Obj.magic !gameAdState)#getAdvertisements ())#startAll ());
            let sTART_APP : string ref = ref ("startApp") in ();
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, !sTART_APP));
            let gameCanvasRunnableInterface : Obj.t ref = ref ((Obj.repr allbinaryGameCanvasRunnableInterface)) in ();
            if ((Obj.repr !gameCanvasRunnableInterface) == (Obj.repr (NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()))) then begin
                ignore (gameMidletStateFactory#setCurrentGameState (gameStateFactory#nO_GAME_STATE));
                (self#setDemo ())
            end else begin
                ignore ((self#logUtil)#putF ("GameCanvasRunnableInterface is available", self, !sTART_APP));
                if ((Obj.repr !gameCanvasRunnableInterface) == (Obj.repr (self#getCurrentDisplayable ()))) then begin
                    (self#unPauseAppBackground (false))
                end else begin
                    ignore ((self#logUtil)#putF ("GameCanvasRunnableInterface is not current displayable", self, !sTART_APP))
                end
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "startApp", e));
            (self#destroyApp (false));
            ignore (self#notifyDestroyed ())
        end)
        end [@@warning "-7"]
    

    method commandAction : 'any1 'any2. 'any1 * 'any2 -> unit = fun (command, displayable) ->
        let command = Obj.repr command in
        let displayable = Obj.repr displayable in
        begin
        (try
            let displayableAsString : string ref = ref (nO_DISPLAYABLE) in ();
            if ((Obj.magic displayable) != (Obj.magic 0)) then begin
                displayableAsString := (java_string_of (Obj.repr (Obj.magic displayable)))
            end;
            let label : string ref = ref (nO_COMMAND) in ();
            if ((Obj.magic command) != (Obj.magic 0)) then begin
                label := ((Obj.magic command)#getLabel ())
            end;
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((((new StringMaker.stringMaker ())#append (cOMMAND_NAME))#append (!label))#append (dISPLAYABLE))#append (!displayableAsString)))), self, cOMMAND_ACTION))));
            let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
            let allbinaryGameCanvasRunnableInterface_arg : GameCanvasRunnableInterface.gameCanvasRunnableInterface ref = ref ((allbinaryGameCanvasRunnableInterface :> GameCanvasRunnableInterface.gameCanvasRunnableInterface)) in ();
            let gameCanvasRunnableInterface : Obj.t ref = ref ((Obj.repr !allbinaryGameCanvasRunnableInterface_arg)) in ();
            if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sHOW_GAME_CANVAS)) then begin
                if (((Obj.repr ((self#getDisplay ())#getCurrent ())) != (Obj.repr !gameCanvasRunnableInterface)) && ((Obj.repr (!allbinaryGameCanvasRunnableInterface_arg#getType ())) != (Obj.repr ((NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ())#getType ())))) then begin
                    ignore (self#setDisplay ((Obj.magic !gameCanvasRunnableInterface)))
                end;
                (self#unPauseAppBackground (false))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS)) then begin
                let menuListener : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic displayable)))) in ();
                ignore ((Obj.magic !menuListener)#close ());
                ignore (self#setDisplay ((Obj.magic !gameCanvasRunnableInterface)));
                (self#unPauseAppBackground (false))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#eXIT_COMMAND)) then begin
                if ((((GameMidletEventHandler.getInstance ())#getEventListenerInterfaceListP ())#size ()) = 0) then begin
                    ignore (self#exitProgress (true))
                end;
                ignore ((GameMidletEventHandler.getInstance ())#fireEvent ((new DemoGameMidletEvent.demoGameMidletEvent (self, (DemoGameMidletStateFactory.getInstance ())#nONE))))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#eXIT_WITHOUT_PROGRESS_COMMAND)) then begin
                ignore (self#exitProgress (false))
            end else if ((((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sTART_COMMAND)) || ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#rESTART_COMMAND))) || ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#cONTINUE_COMMAND))) then begin
                if (((Obj.repr (gameMidletStateFactory#getCurrentGameState ())) != (Obj.repr gameStateFactory#pLAYING_GAME_STATE)) || ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#rESTART_COMMAND))) then begin
                    if (gameStartTimeHelper#isTimeTNT ()) then begin
                        if (((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sTART_COMMAND)) && (self#isDemoLoading ())) then begin
                            ignore ((self#logUtil)#putF ("Trying to Start Game Before Loading Complete", self, midletStrings#cOMMAND_ACTION))
                        end else begin
                            startedBefore <- true;
                            (self#createGame ());
                            ignore (gameMidletStateFactory#setCurrentGameState (gameStateFactory#pLAYING_GAME_STATE))
                        end
                    end else begin
                        ignore ((self#logUtil)#putF ("Starting Game Too Often", self, midletStrings#cOMMAND_ACTION))
                    end
                end else begin
                    ignore ((self#logUtil)#putF ("Already in playing state", self, cOMMAND_ACTION))
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#bUY_COMMAND)) then begin
                let inApplicationPurchaseFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "InApplicationPurchaseFactory.getInstance" (Obj.repr ()))))) in ();
                let list : BasicArrayList.basicArrayList ref = ref ((((LockableFeatureFactory.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
                let lockableFeature : LockableFeature.lockableFeature ref = ref (((Obj.magic (!list#get (0))) :> LockableFeature.lockableFeature)) in ();
                if (((!list#size ()) > 0) && (not ((Obj.magic !inApplicationPurchaseFactory)#isPurchased (!lockableFeature)))) then begin
                    ignore ((Obj.magic !inApplicationPurchaseFactory)#purchase (!lockableFeature))
                end else begin
                    ignore ((TextNotificationUtil.getInstance ())#fireSuccess ("Already Purchased"))
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#qUIT_COMMAND)) then begin
                if (gameStartTimeHelper#isTimeTNT ()) then begin
                    if (java_instanceof (Obj.repr (Obj.magic displayable)) "HighScoreTextBox") then begin
                        let menuListener : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic displayable)))) in ();
                        ignore ((Obj.magic !menuListener)#close ())
                    end;
                    (self#stopGameCanvasRunnableInterface ());
                    ignore (gameMidletStateFactory#setCurrentGameState (gameStateFactory#nO_GAME_STATE));
                    (self#setDemo ())
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr myCommandsFactory#rESUME_COMMAND)) then begin
                (self#unPauseAppBackground (false))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr myCommandsFactory#pAUSE_COMMAND)) then begin
                (self#pauseAppBackground (false))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr myCommandsFactory#sET_DISPLAYABLE)) then begin
                (self#pauseAppBackground (false));
                ignore (self#setDisplay ((Obj.magic displayable)))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sET_MENU_DISPLAYABLE)) then begin
                (self#pauseAppBackground (false));
                let menuListener : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic displayable)))) in ();
                ignore ((Obj.magic !menuListener)#open_ ());
                ignore (self#setDisplay ((Obj.magic displayable)))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sTART_TRACE)) then begin
                ignore (debugInterface#start ());
                let gameCanvas : Obj.t ref = ref ((Obj.repr (Obj.magic !allbinaryGameCanvasRunnableInterface_arg))) in ();
                ignore ((Obj.magic !gameCanvas)#addCommand (!gameCommandsFactory#sTOP_TRACE));
                ignore ((Obj.magic !gameCanvas)#removeCommand (!gameCommandsFactory#sTART_TRACE))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sTOP_TRACE)) then begin
                (self#pauseAppBackground (false));
                ignore (debugInterface#stop ());
                (self#unPauseAppBackground (false));
                let gameCanvas : Obj.t ref = ref ((Obj.repr (Obj.magic !allbinaryGameCanvasRunnableInterface_arg))) in ();
                ignore ((Obj.magic !gameCanvas)#addCommand (!gameCommandsFactory#sTART_TRACE));
                ignore ((Obj.magic !gameCanvas)#removeCommand (!gameCommandsFactory#sTOP_TRACE))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#dEFAULT_OPTIONS)) then begin
                let tempDisplayable : Obj.t ref = ref ((Obj.repr (Obj.magic displayable))) in ();
                if (java_instanceof (Obj.repr (Obj.magic !tempDisplayable)) "GameOptionsForm") then begin
                    ignore ((GameFeatureFormUtil.getInstance ())#setDefault ((Obj.magic (Obj.magic !tempDisplayable))))
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (GameInputMappingInstructionsCanvas.get_dISPLAY ()))) then begin
                let tempDisplayable : Obj.t ref = ref ((Obj.repr (Obj.magic displayable))) in ();
                if (java_instanceof (Obj.repr (Obj.magic !tempDisplayable)) "GameInputMappingCanvas") then begin
                    let gameInputMappingCanvas : GameInputMappingCanvas.gameInputMappingCanvas ref = ref (((Obj.magic (Obj.magic !tempDisplayable)) :> GameInputMappingCanvas.gameInputMappingCanvas)) in ();
                    ignore (!gameInputMappingCanvas#update ())
                end;
                (self#commandAction (!gameCommandsFactory#sET_MENU_DISPLAYABLE, (self#getInputMappingInstructionsCanvas ())))
            end else if ((HighScoreCommandsFactory.getInstance ())#isHighScoreCommand ((Obj.magic command))) then begin
                let tempDisplayable : Obj.t ref = ref ((Obj.repr (Obj.magic displayable))) in ();
                if (java_instanceof (Obj.repr (Obj.magic !tempDisplayable)) "HighScoresCanvas") then begin
                    let highScoresCanvas : HighScoresCanvas.highScoresCanvas ref = ref (((Obj.magic (Obj.magic !tempDisplayable)) :> HighScoresCanvas.highScoresCanvas)) in ();
                    ignore (!highScoresCanvas#updateCommand ((Obj.magic command)))
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (HighScoreCommands.getInstance ())#dISPLAY)) then begin
                (self#commandAction (!gameCommandsFactory#sET_MENU_DISPLAYABLE, (self#createHighScoresCanvas ())))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (GameInputMappingInstructionsCanvas.get_cLOSE ()))) then begin
                let menuListener : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic displayable)))) in ();
                ignore ((Obj.magic !menuListener)#close ());
                (self#commandAction ((GameInputMappingCanvas.get_dISPLAY ()), (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ())))))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (GameInputMappingCanvas.get_dISPLAY ()))) then begin
                if (J2MEUtil.isHTML ()) then begin
                    (self#pauseAppBackground (false))
                end;
                (self#commandAction (!gameCommandsFactory#sET_MENU_DISPLAYABLE, (self#getInputMappingCanvas ())))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (GameInputMappingCanvas.get_dEFAULT ()))) then begin
                let tempDisplayable : Obj.t ref = ref ((Obj.repr (Obj.magic displayable))) in ();
                if (java_instanceof (Obj.repr (Obj.magic !tempDisplayable)) "GameInputMappingCanvas") then begin
                    let gameInputMappingCanvas : GameInputMappingCanvas.gameInputMappingCanvas ref = ref (((Obj.magic (Obj.magic !tempDisplayable)) :> GameInputMappingCanvas.gameInputMappingCanvas)) in ();
                    ignore (!gameInputMappingCanvas#setDefault ())
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (InGameOptionsForm.get_dISPLAY ()))) then begin
                (self#pauseAppBackground (false));
                let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
                ignore (!progressCanvas#addNormalPortion (50, "In Game Options"));
                let layerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager ref = ref (((self#createGameLayerManager ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager)) in ();
                let inGameOptionsFormFactory : InGameOptionsFormFactory.inGameOptionsFormFactory ref = ref (((InGameOptionsFormFactory.getInstance ()) :> InGameOptionsFormFactory.inGameOptionsFormFactory)) in ();
                ignore (!inGameOptionsFormFactory#init (self, (new InGameFeatures.inGameFeatures ()), "Options In Game", (!layerManager#getBackgroundBasicColor ()), (!layerManager#getForegroundBasicColor ())));
                let inGameOptionsForm : Obj.t ref = ref ((Obj.repr (!inGameOptionsFormFactory#get ()))) in ();
                ignore (!inGameOptionsForm#setItemStateListener (!allbinaryGameCanvasRunnableInterface_arg));
                (self#commandAction (!gameCommandsFactory#sET_MENU_DISPLAYABLE, !inGameOptionsForm))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (InGameOptionsForm.get_dEFAULT ()))) then begin
                let inGameOptionsForm : InGameOptionsForm.inGameOptionsForm ref = ref (((Obj.magic ((InGameOptionsFormFactory.getInstance ())#get ())) :> InGameOptionsForm.inGameOptionsForm)) in ();
                ignore ((GameFeatureFormUtil.getInstance ())#setDefault (!inGameOptionsForm))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#dISPLAY_OPTIONS)) then begin
                ignore (Obj.magic (java_call_static "AllBinaryMediaManager.setMuted" (Obj.repr (true))));
                (self#stopAll ());
                let mainFeatureFactory : MainFeatureFactory.mainFeatureFactory ref = ref (((MainFeatureFactory.getInstance ()) :> MainFeatureFactory.mainFeatureFactory)) in ();
                isFullScreen <- (features#isFeature (!mainFeatureFactory#fULL_SCREEN));
                ignore ((ResizableListenerHandler.getInstance ())#fireEvent (true));
                (self#setResized (false));
                (self#commandAction (!gameCommandsFactory#sET_MENU_DISPLAYABLE, (self#getGameOptionsForm ())))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#cLOSE_OPTIONS)) then begin
                ignore ((ResizableListenerHandler.getInstance ())#fireEvent (false));
                (self#commandAction (!gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS, (Obj.magic displayable)));
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Close isFullScreen/change: "));
                ignore (!stringBuffer#appendboolean (isFullScreen));
                ignore (!stringBuffer#appendboolean (((Obj.magic fullScreenUtil)#isScreenChange (isFullScreen))));
                ignore (!stringBuffer#append (" isResized: "));
                ignore (!stringBuffer#appendboolean ((self#isResized ())));
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr !stringBuffer)), self, cOMMAND_ACTION))));
                if ((self#isResized ()) || ((Obj.magic fullScreenUtil)#isScreenChange (isFullScreen))) then begin
                    (self#updateFullScreen ())
                end;
                ignore (Obj.magic (java_call_static "AllBinaryMediaManager.setMuted" (Obj.repr (false))))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#dISPLAY_LOAD_FORM)) then begin
                (self#pauseAppBackground (false));
                let keyValuePersistance : Obj.t ref = ref ((Obj.repr (GamePersistanceSingleton.getInstance ()))) in ();
                ignore ((Obj.magic !keyValuePersistance)#clear ());
                ignore ((Obj.magic !keyValuePersistance)#loadAll ((self#abeClientInformation)));
                if ((Obj.repr (self#getLoadGameForm ())) == (Obj.repr (Obj.magic (java_call_static "CommandForm.getNullCommandForm" (Obj.repr ()))))) then begin
                    let layerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager ref = ref (((self#createGameLayerManager ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager)) in ();
                    (self#setLoadGameForm ((new LoadGameForm.loadGameForm (self, "Load Game", (!layerManager#getBackgroundBasicColor ()), (!layerManager#getForegroundBasicColor ())))))
                end else begin
                    ignore ((self#getLoadGameForm ())#update ())
                end;
                (self#commandAction (!gameCommandsFactory#sET_MENU_DISPLAYABLE, (self#getLoadGameForm ())))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#lOAD_FILE)) then begin
                let loadGameForm_arg : LoadGameForm.loadGameForm ref = ref (((Obj.magic (self#getLoadGameForm ())) :> LoadGameForm.loadGameForm)) in ();
                let index : int ref = ref ((!loadGameForm_arg#getSelectedId ())) in ();
                if (!index <> (-1)) then begin
                    let keyValuePersistance : Obj.t ref = ref ((Obj.repr (GamePersistanceSingleton.getInstance ()))) in ();
                    ignore (self#setStartStateHashtable (((Obj.magic !keyValuePersistance)#get (!index))));
                    let menuListener : Obj.t ref = ref ((Obj.repr (self#getLoadGameForm ()))) in ();
                    ignore ((Obj.magic !menuListener)#close ());
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ()))))), self, cOMMAND_ACTION))));
                    (self#commandAction (!gameCommandsFactory#sTART_COMMAND, (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ())))));
                    ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ()))))), self, cOMMAND_ACTION))))
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#dELETE_FILE)) then begin
                let loadGameForm_arg : LoadGameForm.loadGameForm ref = ref (((Obj.magic (self#getLoadGameForm ())) :> LoadGameForm.loadGameForm)) in ();
                let index : int ref = ref ((!loadGameForm_arg#getSelectedText ())) in ();
                if (!index <> (-1)) then begin
                    let keyValuePersistance : Obj.t ref = ref ((Obj.repr (GamePersistanceSingleton.getInstance ()))) in ();
                    ignore ((Obj.magic !keyValuePersistance)#delete ((self#abeClientInformation), !index));
                    ignore ((Obj.magic !keyValuePersistance)#clear ());
                    ignore ((Obj.magic !keyValuePersistance)#loadAllSize ((self#abeClientInformation), 1));
                    ignore ((self#getLoadGameForm ())#update ())
                end
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#sAVE)) then begin
                let keyValuePersistance : Obj.t ref = ref ((Obj.repr (GamePersistanceSingleton.getInstance ()))) in ();
                (self#pauseAppBackground (false));
                ignore ((Obj.magic !keyValuePersistance)#save ((self#abeClientInformation), (self#getCurrentStateHashtable ())));
                (self#unPauseAppBackground (false))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr (HighScoreUtil.get_sUBMIT_TEXTBOX_COMMAND ()))) then begin
                ignore ((self#logUtil)#putF ("Submitted Score", self, cOMMAND_ACTION));
                if (java_instanceof (Obj.repr (Obj.magic displayable)) "HighScoreTextBox") then begin
                    let highScoreTextBox : HighScoreTextBox.highScoreTextBox ref = ref (((Obj.magic (Obj.magic displayable)) :> HighScoreTextBox.highScoreTextBox)) in ();
                    !highScoreTextBox#set_submitted (true)
                end;
                ignore (!allbinaryGameCanvasRunnableInterface_arg#setHighScoreSubmitted (true));
                (self#commandAction (!gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS, (Obj.magic displayable)))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#dISPLAY_ABOUT)) then begin
                ignore (aboutCommandProcessor#process (self, !gameCommandsFactory#sET_MENU_DISPLAYABLE, (self#getAboutCanvas ())))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#oPEN_WEB_URL)) then begin
                ignore ((Obj.magic webCommandProcessor)#process (self, !gameCommandsFactory#oPEN_WEB_URL, (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ())))))
            end else if ((Obj.repr (Obj.magic command)) == (Obj.repr !gameCommandsFactory#tOGGLE_KEYBOARD)) then begin
                let virtualKeyboardEventHandler : VirtualKeyboardEventHandler.virtualKeyboardEventHandler ref = ref (((VirtualKeyboardEventHandler.getInstance ()) :> VirtualKeyboardEventHandler.virtualKeyboardEventHandler)) in ();
                ignore (!virtualKeyboardEventHandler#fireEvent (!virtualKeyboardEventHandler#sHOW_EVENT))
            end else if (((Obj.magic tsUtil)#compareTo (((Obj.magic command)#getLabel ()), (!gameCommandsFactory#tOGGLE_FULLSCREEN#getLabel ()))) == 0) then begin
                let mainFeatureFactory : MainFeatureFactory.mainFeatureFactory ref = ref (((MainFeatureFactory.getInstance ()) :> MainFeatureFactory.mainFeatureFactory)) in ();
                let isFullScreen_arg : bool ref = ref ((features#isFeature (!mainFeatureFactory#fULL_SCREEN))) in ();
                if !isFullScreen_arg then begin
                    ignore (features#removeDefault (!mainFeatureFactory#fULL_SCREEN))
                end else begin
                    ignore (features#addDefault (!mainFeatureFactory#fULL_SCREEN))
                end;
                (self#updateFullScreen ())
            end
        with e -> begin
            ignore ((self#logUtil)#put ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#commonStrings)#eXCEPTION_LABEL))#append (((Obj.magic command)#getLabel ()))))), self, midletStrings#cOMMAND_ACTION, e));
            if ((Obj.repr (Obj.magic command)) != (Obj.repr (GameCommandsFactory.getInstance ())#eXIT_COMMAND)) then begin
                ignore (self#exitProgress (false))
            end
        end)
        end [@@warning "-7-20"]
    

    method updateFullScreen () : unit =
        begin
        let mainFeatureFactory : MainFeatureFactory.mainFeatureFactory ref = ref (((MainFeatureFactory.getInstance ()) :> MainFeatureFactory.mainFeatureFactory)) in ();
        let isFullScreen_arg : bool ref = ref ((features#isFeature (!mainFeatureFactory#fULL_SCREEN))) in ();
        let displayable : Obj.t ref = ref ((Obj.repr ((self#getDisplay ())#getCurrent ()))) in ();
        if (java_instanceof (Obj.repr (Obj.magic !displayable)) "Canvas") then begin
            let canvas : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !displayable)))) in ();
            ignore ((Obj.magic !canvas)#setFullScreenMode (!isFullScreen_arg))
        end
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method getInputMappingInstructionsCanvas () : MyCanvas.myCanvas =
        begin
        ((new GameInputMappingInstructionsCanvas.gameInputMappingInstructionsCanvas (self, (self#createGameLayerManager ()))) :> MyCanvas.myCanvas)
        end [@@warning "-7"]
    

    method getInputMappingCanvas () : MyCanvas.myCanvas =
        begin
        ((new GameInputMappingCanvas.gameInputMappingCanvas ((self#abeClientInformation), self, (self#createGameLayerManager ()), (self#getHelpPaintable ()))) :> MyCanvas.myCanvas)
        end [@@warning "-7"]
    

    method getAboutCanvas () : MyCanvas.myCanvas =
        begin
        ((new BasicPaintablesCanvas.basicPaintablesCanvas (self, (CanvasStrings.getInstance ())#aBOUT, (self#createGameLayerManager ()), (Obj.magic (java_call_static "AboutPaintableFactory.getInstance" (Obj.repr ())))#paintableArray)) :> MyCanvas.myCanvas)
        end [@@warning "-7"]
    

    method getHelpPaintable () : HelpPaintable.helpPaintable =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method createHighScoresCanvas () : HighScoresCanvas.highScoresCanvas =
        begin
        raise (Failure ((self#commonStrings)#nOT_IMPLEMENTED))
        end [@@warning "-7"]
    

    method startGameCanvasRunnableInterface () : unit =
        begin
        let threadFactoryUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "ThreadFactoryUtil.getInstance" (Obj.repr ()))))) in ();
        thread <- ((Obj.magic !threadFactoryUtil)#getInstanceGameCanvasRunnable (allbinaryGameCanvasRunnableInterface));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Thread Priority: "))#appendint ((java_to_int (Obj.repr ((thread#getPriority ())))))))), self, "startGameCanvasRunnableInterface"));
        ignore (allbinaryGameCanvasRunnableInterface#setThread (thread));
        ignore ((Obj.magic !threadFactoryUtil)#start (thread))
        end [@@warning "-7"]
    

    method stopGameCanvasRunnableInterface () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, gameStrings#sTOP_GAME_CANVAS_RUNNABLE_INTERFACE));
        ignore ((GameNotificationEventHandler.getInstance ())#removeAllListeners ());
        ignore ((ColorChangeEventHandler.getInstance ())#removeAllListeners ());
        ignore (GameEventHandlerUtil.removeAllListeners ());
        let gameCanvasRunnableInterface : GameCanvasRunnableInterface.gameCanvasRunnableInterface ref = ref ((allbinaryGameCanvasRunnableInterface :> GameCanvasRunnableInterface.gameCanvasRunnableInterface)) in ();
        if ((Obj.repr !gameCanvasRunnableInterface) != (Obj.repr (NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()))) then begin
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Set Running False: "))#append ((java_string_of (Obj.repr !gameCanvasRunnableInterface)))))), self, gameStrings#sTOP_GAME_CANVAS_RUNNABLE_INTERFACE));
            ignore (!gameCanvasRunnableInterface#setRunning (false))
        end else begin
            ignore ((self#logUtil)#putF ("StopGame - Could Not Stop", self, gameStrings#sTOP_GAME_CANVAS_RUNNABLE_INTERFACE))
        end;
        ignore ((ThreadUtil.getInstance ())#join (thread));
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        if (features#isFeature ((MainFeatureFactory.getInstance ())#lOAD_ALL)) then begin
            ignore (!progressCanvas#addNormalPortion (50, "Stopped Game Runnable"))
        end else begin
            ignore (!progressCanvas#addNormalPortion (50, "Stopped Main Runnable"))
        end;
        ignore ((self#logUtil)#putF ((self#commonStrings)#eND, self, gameStrings#sTOP_GAME_CANVAS_RUNNABLE_INTERFACE))
        end [@@warning "-7"]
    

    method getGameCanvasRunnableInterface () : GameCanvasRunnableInterface.gameCanvasRunnableInterface =
        begin
        (allbinaryGameCanvasRunnableInterface :> GameCanvasRunnableInterface.gameCanvasRunnableInterface)
        end [@@warning "-7"]
    

    method setGameCanvasRunnableInterface : 'any1. 'any1 -> unit = fun (gameCanvasRunnableInterface) ->
        let gameCanvasRunnableInterface = Obj.repr gameCanvasRunnableInterface in
        begin
        allbinaryGameCanvasRunnableInterface <- (Obj.magic gameCanvasRunnableInterface)
        end [@@warning "-7-20"]
    

    method createGameLayerManager () : AllBinaryGameLayerManager.allBinaryGameLayerManager =
        begin
        let gameInfo : GameInfo.gameInfo ref = ref (((new GameInfo.gameInfo ((GameTypeFactory.getInstance ())#sINGLE_PLAYER, (GameMode.get_sERVER ()), (PlayerTypesFactory.getInstance ())#pLAYER_TYPE_ONE, 1, 1)) :> GameInfo.gameInfo)) in ();
        ((new AllBinaryGameLayerManager.allBinaryGameLayerManager (basicColorFactory#bLACK, basicColorFactory#wHITE, !gameInfo)) :> AllBinaryGameLayerManager.allBinaryGameLayerManager)
        end [@@warning "-7"]
    

    method getGameOptionsForm : 'return. unit -> 'return = fun () ->
        begin
        let layerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager ref = ref (((self#createGameLayerManager ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager)) in ();
        (Obj.magic (((GameOptionsFormFactory.getInstance ())#init (self, "Game Options", (!layerManager#getBackgroundBasicColor ()), (!layerManager#getForegroundBasicColor ())))))
        end [@@warning "-7"]
    

    method save () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, (self#commonStrings)#sAVE));
        let hashtable : Obj.t ref = ref ((Obj.repr (self#getCurrentStateHashtable ()))) in ();
        ignore ((GamePersistanceSingleton.getInstance ())#save ((self#abeClientInformation), (Obj.magic !hashtable)))
        end [@@warning "-7"]
    

    method getCurrentStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, self, "getCurrentStateHashtable"));
        let hashtable : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))) in ();
        if ((Obj.repr allbinaryGameCanvasRunnableInterface) != (Obj.repr (NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()))) then begin
            let currentHashtable : Obj.t ref = ref ((Obj.repr (allbinaryGameCanvasRunnableInterface#getCurrentStateHashtable ()))) in ();
            let enumeration : java_enumeration ref = ref ((((Obj.magic !currentHashtable)#keys ()) :> java_enumeration)) in ();
            let key : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
            while (enumerationUtil#hasMoreElements (!enumeration)) do
                key := (enumerationUtil#nextElement (!enumeration));
                ignore ((Obj.magic !hashtable)#put (!key, ((Obj.magic !currentHashtable)#get (!key))))
            done
        end;
        (Obj.magic ((Obj.magic !hashtable)))
        end [@@warning "-7"]
    

    method setLoadGameForm : 'any1. 'any1 -> unit = fun (loadGameForm_arg) ->
        let loadGameForm_arg = Obj.repr loadGameForm_arg in
        begin
        loadGameForm <- Obj.repr ((Obj.magic loadGameForm_arg))
        end [@@warning "-7-20"]
    

    method getLoadGameForm : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic loadGameForm)))
        end [@@warning "-7"]
    

    method setResized ((resized_arg : bool)) : unit =
        begin
        resized <- resized_arg
        end [@@warning "-7"]
    

    method isResized () : bool =
        begin
        resized
        end [@@warning "-7"]
    

    method isDemoLoading () : bool =
        try
        begin
        if startedBefore then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let displayable : Obj.t ref = ref ((Obj.repr ((self#getDisplay ())#getCurrent ()))) in ();
        if (java_instanceof (Obj.repr (Obj.magic !displayable)) "DemoCanvas") then begin
            let demoCanvas : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic !displayable)))) in ();
            if ((Obj.magic !demoCanvas)#isDemoLoading ()) then begin
                raise (Java_return (Obj.repr (true)))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        enumerationUtil <- ((EnumerationUtil.getInstance ()) :> EnumerationUtil.enumerationUtil);
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        features <- ((Features.getInstance ()) :> Features.features);
        midletStrings <- ((MidletStrings.getInstance ()) :> MidletStrings.midletStrings);
        myCommandsFactory <- ((MyCommandsFactory.getInstance ()) :> MyCommandsFactory.myCommandsFactory);
        gameStrings <- ((GameStrings.getInstance ()) :> GameStrings.gameStrings);
        gameAdStateFactory <- ((GameAdStateFactory.getInstance ()) :> GameAdStateFactory.gameAdStateFactory);
        gameStateFactory <- ((GameStateFactory.getInstance ()) :> GameStateFactory.gameStateFactory);
        tsUtil <- (Obj.repr (Obj.magic (java_call_static "TsUtil.getInstance" (Obj.repr ()))));
        dISPLAYABLE <- " Displayable: ";
        cOMMAND_NAME <- "command Name/Label: ";
        nO_COMMAND <- "No Command";
        nO_DISPLAYABLE <- "No Displayable";
        cOMMAND_ACTION <- (java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("GameMidlet::"))#append (midletStrings#cOMMAND_ACTION))));
        pAUSE_APP_BACKGROUND <- "pauseAppBackground";
        uN_PAUSE_APP_BACKGROUND <- "unPauseAppBackground";
        aboutCommandProcessor <- ((AboutCommandProcessor.getInstance ()) :> AboutCommandProcessor.aboutCommandProcessor);
        webCommandProcessor <- (Obj.repr (Obj.magic (java_call_static "WebCommandProcessor.getInstance" (Obj.repr ()))));
        gameMidletStateFactory <- ((GameMidletStateFactory.getInstance ()) :> GameMidletStateFactory.gameMidletStateFactory);
        gameStartTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (240)) :> TimeDelayHelper.timeDelayHelper);
        fullScreenUtil <- (Obj.repr (Obj.magic (java_call_static "FullScreenUtil.getInstance" (Obj.repr ()))));
        ();
        allbinaryGameCanvasRunnableInterface <- ((NullGameCanvasRunnable.get_nULL_GAME_CANVAS_RUNNABLE ()) :> GameCanvasRunnableInterface.gameCanvasRunnableInterface);
        thread <- ((NullThread.get_nULL_THREAD ()) :> java_thread);
        ();
        isFullScreen <- false;
        resized <- false;
        startedBefore <- false;
        ();
        (* super(...) is the inherit clause *) ();
        ignore ((SmallIntegerSingletonFactory.getInstance ())#initWithRange (0x291, 6));
        loadGameForm <- Obj.repr ((Obj.magic (java_call_static "CommandForm.getNullCommandForm" (Obj.repr ()))));
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#init (self));
        ignore ((GameFeatureEventHandler.getInstance ())#addListenerInterface ((ChangedGameFeatureListener.getInstance ())));
        ignore ((GamePersistanceSingleton.getInstance ())#clear ());
        debugInterface <- (DebugFactory.getInstance ());
        (self#init ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameMidlet" (fun arguments -> Obj.repr (new gameMidlet (Obj.obj arguments)))


