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
(* import javax.microedition.lcdui.ChoiceGroup *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Item *)
(* import javax.microedition.lcdui.NullCommandListener *)
(* import org.allbinary.AndroidUtil *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.business.advertisement.GameAdStateFactory *)
(* import org.allbinary.canvas.BaseGameStatistics *)
(* import org.allbinary.canvas.GameStatisticsFactory *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.canvas.RunnableCanvas *)
(* import org.allbinary.debug.DebugFactory *)
(* import org.allbinary.debug.NoDebug *)
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.GameStrings *)
(* import org.allbinary.game.GameTypeFactory *)
(* import org.allbinary.game.Intermission *)
(* import org.allbinary.game.IntermissionCompositeInterface *)
(* import org.allbinary.game.IntermissionEnableListenerInterface *)
(* import org.allbinary.game.IntermissionInterface *)
(* import org.allbinary.game.PlayerTypesFactory *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.configuration.InGameFeatures *)
(* import org.allbinary.game.configuration.InGameOptionsForm *)
(* import org.allbinary.game.configuration.event.ChangedGameFeatureListener *)
(* import org.allbinary.game.configuration.event.GameInitializedEvent *)
(* import org.allbinary.game.configuration.event.GameInitializedEventHandler *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.game.configuration.feature.GameFeatureUtil *)
(* import org.allbinary.game.configuration.feature.InputFeatureFactory *)
(* import org.allbinary.game.configuration.feature.MainFeatureFactory *)
(* import org.allbinary.game.configuration.feature.SensorFeatureFactory *)
(* import org.allbinary.game.configuration.feature.TouchFeatureFactory *)
(* import org.allbinary.game.displayable.GameLevelDisplayChangeEventListenersFactory *)
(* import org.allbinary.game.init.BasicBuildGameInitializerFactory *)
(* import org.allbinary.game.init.GameInitializationUtil *)
(* import org.allbinary.game.input.GameInputStrings *)
(* import org.allbinary.game.input.InputProcessor *)
(* import org.allbinary.game.input.NoPlayerGameInput *)
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.game.input.event.GameKeyEventHandler *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.layer.SWTUtil *)
(* import org.allbinary.game.paint.ColorFillBasePaintable *)
(* import org.allbinary.game.paint.ColorFillPaintableFactory *)
(* import org.allbinary.game.resource.ResourceLoadingLevel *)
(* import org.allbinary.game.resource.ResourceLoadingLevelFactory *)
(* import org.allbinary.game.score.HighScore *)
(* import org.allbinary.game.score.HighScoresHelperBaseInterface *)
(* import org.allbinary.game.score.HighScoresFactoryInterface *)
(* import org.allbinary.game.score.HighScoresPaintable *)
(* import org.allbinary.game.score.NullHighScoresSingletonFactory *)
(* import org.allbinary.game.score.displayable.HighScoreTextBox *)
(* import org.allbinary.game.state.GameState *)
(* import org.allbinary.game.state.GameStateFactory *)
(* import org.allbinary.graphics.GraphicsStrings *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.ScreenCapture *)
(* import org.allbinary.graphics.ScreenCaptureFactory *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvas *)
(* import org.allbinary.graphics.canvas.transition.progress.ProgressCanvasFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.color.BasicColorSetUtil *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.GameTickDisplayInfoSingleton *)
(* import org.allbinary.graphics.displayable.command.MyCommandsFactory *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEvent *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventHandler *)
(* import org.allbinary.graphics.displayable.event.DisplayChangeEventListener *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.form.CommandCurrentSelectionFormFactory *)
(* import org.allbinary.graphics.form.FormPaintable *)
(* import org.allbinary.graphics.form.FormType *)
(* import org.allbinary.graphics.form.FormTypeFactory *)
(* import org.allbinary.graphics.form.ScrollSelectionForm *)
(* import org.allbinary.graphics.form.ScrollSelectionFormNoneFactory *)
(* import org.allbinary.graphics.form.item.CommandTextItemArrayFactory *)
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.opengles.CurrentDisplayableFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureFactory *)
(* import org.allbinary.graphics.opengles.OpenGLFeatureUtil *)
(* import org.allbinary.graphics.opengles.OpenGLThreadUtil *)
(* import org.allbinary.graphics.paint.InitUpdatePaintable *)
(* import org.allbinary.graphics.paint.NullInitUpdatePaintable *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.image.opengles.OpenGLImageSpecificFactory *)
(* import org.allbinary.input.gyro.SensorGameUpdateProcessor *)
(* import org.allbinary.input.gyro.SingleSensorGameUpdateProcessor *)
(* import org.allbinary.input.motion.button.BaseTouchInput *)
(* import org.allbinary.input.motion.button.NoButtonsTouchInputFactory *)
(* import org.allbinary.input.motion.button.TouchButtonFactory *)
(* import org.allbinary.input.motion.button.TouchButtonsPaintableFactory *)
(* import org.allbinary.input.motion.button.TouchScreenFactory *)
(* import org.allbinary.input.motion.gesture.observer.BasicMotionGesturesHandler *)
(* import org.allbinary.logic.ABSystemWrapper *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.os.OperatingSystemFactory *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.media.audio.AllBinaryMediaManager *)
(* import org.allbinary.media.audio.PlayerQueue *)
(* import org.allbinary.media.audio.PrimaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SelectSound *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.SecondaryThreadPool *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.util.BasicArrayListUtil *)

let id : int = 0
let get_id () = id
let () = java_register_static "AllBinaryGameCanvas.get_id" (fun _ -> Obj.repr (get_id ()))
let tYPE : int = 2
let get_tYPE () = tYPE
let () = java_register_static "AllBinaryGameCanvas.get_tYPE" (fun _ -> Obj.repr (get_tYPE ()))
class allBinaryGameCanvas (commandListener, (gameLayerManager_arg : AllBinaryGameLayerManager.allBinaryGameLayerManager), (highScoresFactoryInterface_arg : HighScoresFactoryInterface.highScoresFactoryInterface), (gameInitializationInterfaceFactoryInterface_arg : BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory), (buffered : bool)) =
  object (self)
    inherit RunnableCanvas.runnableCanvas (commandListener, (CanvasStrings.getInstance ())#eMPTY_CHILD_NAME_LIST, true) as super
    val mutable basicColorFactory : BasicColorFactory.basicColorFactory = (Obj.magic 0)
    method basicColorFactory = basicColorFactory
    method set_basicColorFactory value' = basicColorFactory <- value'
    val mutable basicSetColorUtil : BasicColorSetUtil.basicColorSetUtil = (Obj.magic 0)
    method basicSetColorUtil = basicSetColorUtil
    method set_basicSetColorUtil value' = basicSetColorUtil <- value'
    val mutable touchFeatureFactory : TouchFeatureFactory.touchFeatureFactory = (Obj.magic 0)
    method touchFeatureFactory = touchFeatureFactory
    method set_touchFeatureFactory value' = touchFeatureFactory <- value'
    val mutable openGLFeatureFactory : OpenGLFeatureFactory.openGLFeatureFactory = (Obj.magic 0)
    method openGLFeatureFactory = openGLFeatureFactory
    method set_openGLFeatureFactory value' = openGLFeatureFactory <- value'
    val mutable touchButtonFactory : TouchButtonFactory.touchButtonFactory = (Obj.magic 0)
    method touchButtonFactory = touchButtonFactory
    method set_touchButtonFactory value' = touchButtonFactory <- value'
    val mutable gameAdStateFactory : GameAdStateFactory.gameAdStateFactory = (Obj.magic 0)
    method gameAdStateFactory = gameAdStateFactory
    method set_gameAdStateFactory value' = gameAdStateFactory <- value'
    val mutable gameStrings : GameStrings.gameStrings = (Obj.magic 0)
    method gameStrings = gameStrings
    method set_gameStrings value' = gameStrings <- value'
    val mutable gameInputStrings : GameInputStrings.gameInputStrings = (Obj.magic 0)
    method gameInputStrings = gameInputStrings
    method set_gameInputStrings value' = gameInputStrings <- value'
    val mutable gameStateFactory : GameStateFactory.gameStateFactory = (Obj.magic 0)
    method gameStateFactory = gameStateFactory
    method set_gameStateFactory value' = gameStateFactory <- value'
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable gameTickDisplayInfoSingleton : GameTickDisplayInfoSingleton.gameTickDisplayInfoSingleton = (Obj.magic 0)
    method gameTickDisplayInfoSingleton = gameTickDisplayInfoSingleton
    method set_gameTickDisplayInfoSingleton value' = gameTickDisplayInfoSingleton <- value'
    val mutable gameRunnable : Obj.t = Obj.repr 0
    method gameRunnable : 'r. 'r = Obj.magic gameRunnable
    method set_gameRunnable : 'v. 'v -> unit = fun value' -> gameRunnable <- Obj.repr value'
    val mutable gamePauseRunnable : Obj.t = Obj.repr 0
    method gamePauseRunnable : 'r. 'r = Obj.magic gamePauseRunnable
    method set_gamePauseRunnable : 'v. 'v -> unit = fun value' -> gamePauseRunnable <- Obj.repr value'
    val mutable formUtil : FormUtil.formUtil = (Obj.magic 0)
    method formUtil = formUtil
    method set_formUtil value' = formUtil <- value'
    val mutable myFormUtil : MyFormUtil.myFormUtil = (Obj.magic 0)
    method myFormUtil = myFormUtil
    method set_myFormUtil value' = myFormUtil <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable gameSpecificPaintable : Paintable.paintable = (Obj.magic 0)
    method gameSpecificPaintable = gameSpecificPaintable
    method set_gameSpecificPaintable value' = gameSpecificPaintable <- value'
    val mutable sensorGameUpdateProcessor : Obj.t = Obj.repr 0
    method sensorGameUpdateProcessor : 'r. 'r = Obj.magic sensorGameUpdateProcessor
    method set_sensorGameUpdateProcessor : 'v. 'v -> unit = fun value' -> sensorGameUpdateProcessor <- Obj.repr value'
    val mutable endGameInfo : Obj.t = Obj.repr 0
    method endGameInfo : 'r. 'r = Obj.magic endGameInfo
    method set_endGameInfo : 'v. 'v -> unit = fun value' -> endGameInfo <- Obj.repr value'
    val mutable startIntermissionInterface : IntermissionInterface.intermissionInterface = (Obj.magic 0)
    method startIntermissionInterface = startIntermissionInterface
    method set_startIntermissionInterface value' = startIntermissionInterface <- value'
    val mutable endLevelIntermissionInterface : IntermissionInterface.intermissionInterface = (Obj.magic 0)
    method endLevelIntermissionInterface = endLevelIntermissionInterface
    method set_endLevelIntermissionInterface value' = endLevelIntermissionInterface <- value'
    val mutable gameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager = (Obj.magic 0)
    method gameLayerManager = gameLayerManager
    method set_gameLayerManager value' = gameLayerManager <- value'
    val mutable gameState : GameState.gameState = (Obj.magic 0)
    method gameState = gameState
    method set_gameState value' = gameState <- value'
    val mutable gameOver : bool = false
    method gameOver = gameOver
    method set_gameOver value' = gameOver <- value'
    val mutable initialized : bool = false
    method initialized = initialized
    method set_initialized value' = initialized <- value'
    val mutable gameStateTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method gameStateTimeHelper = gameStateTimeHelper
    method set_gameStateTimeHelper value' = gameStateTimeHelper <- value'
    val mutable highScoresHelper : HighScoresHelperBaseInterface.highScoresHelperBaseInterface = (Obj.magic 0)
    method highScoresHelper = highScoresHelper
    method set_highScoresHelper value' = highScoresHelper <- value'
    val mutable highScoreSubmitted : bool = false
    method highScoreSubmitted = highScoreSubmitted
    method set_highScoreSubmitted value' = highScoreSubmitted <- value'
    val mutable realHighScoresPaintable : HighScoresPaintable.highScoresPaintable = (Obj.magic 0)
    method realHighScoresPaintable = realHighScoresPaintable
    method set_realHighScoresPaintable value' = realHighScoresPaintable <- value'
    val mutable highScoresPaintable : Paintable.paintable = (Obj.magic 0)
    method highScoresPaintable = highScoresPaintable
    method set_highScoresPaintable value' = highScoresPaintable <- value'
    val mutable localPlayerGameInputList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method localPlayerGameInputList = localPlayerGameInputList
    method set_localPlayerGameInputList value' = localPlayerGameInputList <- value'
    val mutable isCheating : bool = false
    method isCheating = isCheating
    method set_isCheating value' = isCheating <- value'
    val mutable hashtable : Obj.t = Obj.repr 0
    method hashtable : 'r. 'r = Obj.magic hashtable
    method set_hashtable : 'v. 'v -> unit = fun value' -> hashtable <- Obj.repr value'
    val mutable isSingleKeyRepeatableProcessing : bool = false
    method isSingleKeyRepeatableProcessing = isSingleKeyRepeatableProcessing
    method set_isSingleKeyRepeatableProcessing value' = isSingleKeyRepeatableProcessing <- value'
    val mutable gameInitializationInterfaceFactoryInterface : BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory = (Obj.magic 0)
    method gameInitializationInterfaceFactoryInterface = gameInitializationInterfaceFactoryInterface
    method set_gameInitializationInterfaceFactoryInterface value' = gameInitializationInterfaceFactoryInterface <- value'
    val mutable touchButtonsPaintable : Paintable.paintable = (Obj.magic 0)
    method touchButtonsPaintable = touchButtonsPaintable
    method set_touchButtonsPaintable value' = touchButtonsPaintable <- value'
    val mutable touchPaintable : Paintable.paintable = (Obj.magic 0)
    method touchPaintable = touchPaintable
    method set_touchPaintable value' = touchPaintable <- value'
    val mutable cheatProcessor : PlayerGameInput.playerGameInput = (Obj.magic 0)
    method cheatProcessor = cheatProcessor
    method set_cheatProcessor value' = cheatProcessor <- value'
    val mutable gameInputProcessor : Processor.processor = (Obj.magic 0)
    method gameInputProcessor = gameInputProcessor
    method set_gameInputProcessor value' = gameInputProcessor <- value'
    val mutable endGameProcessor : Processor.processor = (Obj.magic 0)
    method endGameProcessor = endGameProcessor
    method set_endGameProcessor value' = endGameProcessor <- value'
    val mutable realEndGameProcessor : Processor.processor = (Obj.magic 0)
    method realEndGameProcessor = realEndGameProcessor
    method set_realEndGameProcessor value' = realEndGameProcessor <- value'
    val mutable startIntermissionProcessor : Processor.processor = (Obj.magic 0)
    method startIntermissionProcessor = startIntermissionProcessor
    method set_startIntermissionProcessor value' = startIntermissionProcessor <- value'
    val mutable realStartIntermissionProcessor : Processor.processor = (Obj.magic 0)
    method realStartIntermissionProcessor = realStartIntermissionProcessor
    method set_realStartIntermissionProcessor value' = realStartIntermissionProcessor <- value'
    val mutable endGamePaintable : Paintable.paintable = (Obj.magic 0)
    method endGamePaintable = endGamePaintable
    method set_endGamePaintable value' = endGamePaintable <- value'
    val mutable endGameStatePaintable : Paintable.paintable = (Obj.magic 0)
    method endGameStatePaintable = endGameStatePaintable
    method set_endGameStatePaintable value' = endGameStatePaintable <- value'
    val mutable nonBotPaintable : Paintable.paintable = (Obj.magic 0)
    method nonBotPaintable = nonBotPaintable
    method set_nonBotPaintable value' = nonBotPaintable <- value'
    val mutable intermissionPaintable : Paintable.paintable = (Obj.magic 0)
    method intermissionPaintable = intermissionPaintable
    method set_intermissionPaintable value' = intermissionPaintable <- value'
    val mutable startIntermissionPaintable : InitUpdatePaintable.initUpdatePaintable = (Obj.magic 0)
    method startIntermissionPaintable = startIntermissionPaintable
    method set_startIntermissionPaintable value' = startIntermissionPaintable <- value'
    val mutable mainStateProcessor : Processor.processor = (Obj.magic 0)
    method mainStateProcessor = mainStateProcessor
    method set_mainStateProcessor value' = mainStateProcessor <- value'
    val mutable processGameProcessor : Processor.processor = (Obj.magic 0)
    method processGameProcessor = processGameProcessor
    method set_processGameProcessor value' = processGameProcessor <- value'
    val mutable highScoresFactoryInterface : HighScoresFactoryInterface.highScoresFactoryInterface = (Obj.magic 0)
    method highScoresFactoryInterface = highScoresFactoryInterface
    method set_highScoresFactoryInterface value' = highScoresFactoryInterface <- value'
    val mutable startLevel : int = 0
    method startLevel = startLevel
    method set_startLevel value' = startLevel <- value'
    val mutable mainMenuInputProcessor : BasicMenuInputProcessor.basicMenuInputProcessor = (Obj.magic 0)
    method mainMenuInputProcessor = mainMenuInputProcessor
    method set_mainMenuInputProcessor value' = mainMenuInputProcessor <- value'
    val mutable popupMenuInputProcessor : BasicMenuInputProcessor.basicMenuInputProcessor = (Obj.magic 0)
    method popupMenuInputProcessor = popupMenuInputProcessor
    method set_popupMenuInputProcessor value' = popupMenuInputProcessor <- value'
    val mutable menuInputProcessor : BasicMenuInputProcessor.basicMenuInputProcessor = (Obj.magic 0)
    method menuInputProcessor = menuInputProcessor
    method set_menuInputProcessor value' = menuInputProcessor <- value'
    val mutable menuForm : ScrollSelectionForm.scrollSelectionForm = (Obj.magic 0)
    method menuForm = menuForm
    method set_menuForm value' = menuForm <- value'
    val mutable formPaintable : Paintable.paintable = (Obj.magic 0)
    method formPaintable = formPaintable
    method set_formPaintable value' = formPaintable <- value'
    val mutable openMenuPaintable : Paintable.paintable = (Obj.magic 0)
    method openMenuPaintable = openMenuPaintable
    method set_openMenuPaintable value' = openMenuPaintable <- value'
    val mutable menuPaintable : Paintable.paintable = (Obj.magic 0)
    method menuPaintable = menuPaintable
    method set_menuPaintable value' = menuPaintable <- value'
    val mutable currentTouchInputFactory : BaseTouchInput.baseTouchInput = (Obj.magic 0)
    method currentTouchInputFactory = currentTouchInputFactory
    method set_currentTouchInputFactory value' = currentTouchInputFactory <- value'
    val mutable colorFillPaintable : ColorFillBasePaintable.colorFillBasePaintable = (Obj.magic 0)
    method colorFillPaintable = colorFillPaintable
    method set_colorFillPaintable value' = colorFillPaintable <- value'
    val mutable baseGameStatistics : BaseGameStatistics.baseGameStatistics = (Obj.magic 0)
    method baseGameStatistics = baseGameStatistics
    method set_baseGameStatistics value' = baseGameStatistics <- value'
    val mutable primaryPlayerQueue : PlayerQueue.playerQueue = (Obj.magic 0)
    method primaryPlayerQueue = primaryPlayerQueue
    method set_primaryPlayerQueue value' = primaryPlayerQueue <- value'
    val mutable secondaryPlayerQueue : PlayerQueue.playerQueue = (Obj.magic 0)
    method secondaryPlayerQueue = secondaryPlayerQueue
    method set_secondaryPlayerQueue value' = secondaryPlayerQueue <- value'
    val mutable bUILD_GAME : string = ""
    method bUILD_GAME = bUILD_GAME
    method set_bUILD_GAME value' = bUILD_GAME <- value'
    val mutable gameTypeFactory : GameTypeFactory.gameTypeFactory = (Obj.magic 0)
    method gameTypeFactory = gameTypeFactory
    method set_gameTypeFactory value' = gameTypeFactory <- value'
    val mutable screenCapture : ScreenCapture.screenCapture = (Obj.magic 0)
    method screenCapture = screenCapture
    method set_screenCapture value' = screenCapture <- value'
    val mutable basicMotionGesturesHandler : Obj.t = Obj.repr 0
    method basicMotionGesturesHandler : 'r. 'r = Obj.magic basicMotionGesturesHandler
    method set_basicMotionGesturesHandler : 'v. 'v -> unit = fun value' -> basicMotionGesturesHandler <- Obj.repr value'
    val mutable gameKeyEventHandler : GameKeyEventHandler.gameKeyEventHandler = (Obj.magic 0)
    method gameKeyEventHandler = gameKeyEventHandler
    method set_gameKeyEventHandler value' = gameKeyEventHandler <- value'
    val mutable gameBehavior : Obj.t = Obj.repr 0
    method gameBehavior : 'r. 'r = Obj.magic gameBehavior
    method set_gameBehavior : 'v. 'v -> unit = fun value' -> gameBehavior <- Obj.repr value'
    val mutable menuBehavior : Obj.t = Obj.repr 0
    method menuBehavior : 'r. 'r = Obj.magic menuBehavior
    method set_menuBehavior : 'v. 'v -> unit = fun value' -> menuBehavior <- Obj.repr value'
    val mutable progressPaintable : PaintableInterface.paintableInterface = (Obj.magic 0)
    method progressPaintable = progressPaintable
    method set_progressPaintable value' = progressPaintable <- value'
    val mutable fontHeightP : int = 0
    method fontHeightP = fontHeightP
    method set_fontHeightP value' = fontHeightP <- value'
    val mutable gameCanvasStartListener : DemoPaintableInterface.demoPaintableInterface = (Obj.magic 0)
    method gameCanvasStartListener = gameCanvasStartListener
    method set_gameCanvasStartListener value' = gameCanvasStartListener <- value'
    val mutable rawGameInputProcessor : InputProcessor.inputProcessor = (Obj.magic 0)
    method rawGameInputProcessor = rawGameInputProcessor
    method set_rawGameInputProcessor value' = rawGameInputProcessor <- value'
    val mutable rawInputProcessor : InputProcessor.inputProcessor = (Obj.magic 0)
    method rawInputProcessor = rawInputProcessor
    method set_rawInputProcessor value' = rawInputProcessor <- value'
    val mutable inputProcessor : InputProcessor.inputProcessor = (Obj.magic 0)
    method inputProcessor = inputProcessor
    method set_inputProcessor value' = inputProcessor <- value'
    val mutable yIELD_SLEEP : int = 0
    method yIELD_SLEEP = yIELD_SLEEP
    method set_yIELD_SLEEP value' = yIELD_SLEEP <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append ((self#commonStrings)#sTART))#append ((self#canvasStrings)#fD_WIDTH))#appendint ((MyFontProcessor.defaultCharWidth ((Obj.magic !font)))))#append ((self#canvasStrings)#fD_HEIGHT))#appendint (((Obj.magic !font)#getHeight ()))))), (Obj.magic self), (self#canvasStrings)#uPDATE_MEASUREMENT));
            fontHeightP <- ((Obj.magic !font)#getHeight ());
            ignore (myFormUtil#updateMeasurement ((Obj.magic graphics)));
            let popupMenuRectangle : Rectangle.rectangle ref = ref (((myFormUtil#getPopupMenuRectangle ()) :> Rectangle.rectangle)) in ();
            let basicPopupMenuPaintable : BasicPopupMenuPaintable.basicPopupMenuPaintable ref = ref ((((Obj.magic (self#getOpenMenuPaintable ()))) :> BasicPopupMenuPaintable.basicPopupMenuPaintable)) in ();
            ignore (!basicPopupMenuPaintable#init (!popupMenuRectangle));
            if ((Obj.repr (self#getPopupMenuInputProcessor ())) != (Obj.repr (NoMenuInputProcessor.getInstance ()))) then begin
                let popupMenuInputProcessor_arg : Obj.t ref = ref ((Obj.repr ((Obj.magic (self#getPopupMenuInputProcessor ()))))) in ();
                ignore ((Obj.magic !popupMenuInputProcessor_arg)#init (!popupMenuRectangle))
            end;
            myFontProcessor <- (MyFontProcessor.getInstance ())
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), (self#canvasStrings)#oN_DISPLAY_CHANGE_EVENT, e))
        end)
        end [@@warning "-7-20"]
    

    method getInGameMenuBehavior : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "InGameMenuBehavior.getInstance" (Obj.repr ())))))
        end [@@warning "-7"]
    

    method setCurrentThread () : unit =
        begin
        if (J2MEUtil.isHTML ()) then begin
            ignore (super#setCurrentThreadFake ())
        end else begin
            ignore (super#setCurrentThread ())
        end
        end [@@warning "-7"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, (Obj.magic self)))
        end [@@warning "-7-20"]
    

    method onDisplayChangeEvent : 'any1. 'any1 -> unit = fun (displayChangeEvent) ->
        let displayChangeEvent = Obj.repr displayChangeEvent in
        begin
        (try
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#commonStrings)#sTART))#append ((java_string_of (Obj.repr (DisplayInfoSingleton.getInstance ()))))))), (Obj.magic self), (self#canvasStrings)#uPDATE_MEASUREMENT));
            myFontProcessor <- updateMyFontProcessor;
            ignore ((Obj.magic menuBehavior)#onDisplayChangeEvent ((Obj.magic self), (Obj.magic displayChangeEvent)))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), (self#canvasStrings)#oN_DISPLAY_CHANGE_EVENT, e))
        end)
        end [@@warning "-7-20"]
    

    method updateMenuFromEvent : 'any1. 'any1 -> unit = fun (_displayChangeEvent) ->
        begin
        let formType : FormType.formType ref = ref ((((FormTypeFactory.getInstance ())#getFormType ()) :> FormType.formType)) in ();
        let rectangle : Rectangle.rectangle ref = ref (((formUtil#createFormRectangle ()) :> Rectangle.rectangle)) in ();
        ignore (menuForm#init (!rectangle, !formType));
        if ((Obj.repr currentTouchInputFactory) != (Obj.repr (NoButtonsTouchInputFactory.getInstance ()))) then begin
            ignore (touchButtonFactory#toggle ((self#isPaused ()), (currentTouchInputFactory#getList ())))
        end;
        myFontProcessor <- updateMyFontProcessor
        end [@@warning "-7-20"]
    

    method processSleep () : unit =
        begin
        ignore (super#processSleep ());
        if (Obj.magic (java_call_static "AllBinaryMediaManager.update" (Obj.repr ()))) then begin
            if (not (primaryPlayerQueue#process ())) then begin
                ignore (secondaryPlayerQueue#process ())
            end
        end;
        if ((menuInputProcessor#processInputList ()) <> (- 1)) then begin
            ignore ((self#runnableCanvasRefreshHelper)#process ())
        end
        end [@@warning "-7"]
    

    method initPopupMenu () : unit =
        begin
        if ((Obj.repr popupMenuInputProcessor) == (Obj.repr (NoMenuInputProcessor.getInstance ()))) then begin
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            let popupMenuRectangle : Rectangle.rectangle ref = ref (((myFormUtil#getPopupMenuRectangle ()) :> Rectangle.rectangle)) in ();
            if (!features#isFeature (touchFeatureFactory#tOUCH_ENABLED)) then begin
                (self#setOpenMenuPaintable ((new BasicPopupMenuPaintable.basicPopupMenuPaintable (!popupMenuRectangle, (gameLayerManager#getBackgroundBasicColor ()), (gameLayerManager#getForegroundBasicColor ())))));
                (self#setPopupMenuInputProcessor ((Obj.obj (java_new "PopupMenuInputProcessor" (Obj.repr (((new BasicArrayListD.basicArrayListD ()) : BasicArrayListD.basicArrayListD :> BasicArrayList.basicArrayList), (- 1), (Obj.magic self), !popupMenuRectangle))))))
            end
        end else begin
            ()
        end
        end [@@warning "-7"]
    

    method initMenu () : unit =
        begin
        (try
            ignore ((Obj.magic menuBehavior)#initMenu ((Obj.magic self)))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), "initMenu", e))
        end)
        end [@@warning "-7"]
    

    method initMenu2 () : unit =
        begin
        (self#closeMenu ());
        let formType : FormType.formType ref = ref ((((FormTypeFactory.getInstance ())#getFormType ()) :> FormType.formType)) in ();
        let gameLimitedCommandTextItemArrayFactory : GameLimitedCommandTextItemArrayFactory.gameLimitedCommandTextItemArrayFactory ref = ref (((GameLimitedCommandTextItemArrayFactory.getInstance ()) :> GameLimitedCommandTextItemArrayFactory.gameLimitedCommandTextItemArrayFactory)) in ();
        let commandTextItemArrayFactory : CommandTextItemArrayFactory.commandTextItemArrayFactory ref = ref (((!gameLimitedCommandTextItemArrayFactory#getCommandTextItemArrayFactory ()) :> CommandTextItemArrayFactory.commandTextItemArrayFactory)) in ();
        let items : Obj.t ref = ref ((Obj.repr (!commandTextItemArrayFactory#getInstance ((self#getCommandStack ()), (gameLayerManager#getBackgroundBasicColor ()), (gameLayerManager#getForegroundBasicColor ()))))) in ();
        let rectangle : Rectangle.rectangle ref = ref (((formUtil#createFormRectangle ()) :> Rectangle.rectangle)) in ();
        (self#setMenuForm ((CommandCurrentSelectionFormFactory.getInstance ((StringUtil.getInstance ())#eMPTY_STRING, (Obj.magic !items), !rectangle, !formType, 25, false, (gameLayerManager#getBackgroundBasicColor ()), (gameLayerManager#getForegroundBasicColor ())))));
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref (((self#getMenuForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isFeature (touchFeatureFactory#tOUCH_ENABLED)) then begin
            mainMenuInputProcessor <- ((Obj.obj (java_new "PopupCommandFormInputProcessor" (Obj.repr (((new BasicArrayListD.basicArrayListD ()) : BasicArrayListD.basicArrayListD :> BasicArrayList.basicArrayList), (- 1), (Obj.magic self), !scrollSelectionForm, (Obj.magic (self#getPopupMenuInputProcessor ())))))) :> BasicMenuInputProcessor.basicMenuInputProcessor)
        end else begin
            ()
        end;
        (self#setMenuInputProcessor ((self#getPopupMenuInputProcessor ())));
        if ((Obj.repr !scrollSelectionForm) != (Obj.repr (ScrollSelectionFormNoneFactory.getInstance ()))) then begin
            (self#setFormPaintable ((new FormPaintable.formPaintable ((!scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm :> PaintableForm.paintableForm)))))
        end else begin
            ()
        end;
        (self#closeMenu ())
        end [@@warning "-7"]
    

    method updateMenu () : unit =
        begin
        (try
            ignore ((Obj.magic menuBehavior)#updateMenu ((Obj.magic self)))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), "initMenu", e))
        end)
        end [@@warning "-7"]
    

    method updateMenu2 () : unit =
        begin
        let scrollSelectionForm : ScrollSelectionForm.scrollSelectionForm ref = ref (((self#getMenuForm ()) :> ScrollSelectionForm.scrollSelectionForm)) in ();
        ignore (!scrollSelectionForm#deleteAll ());
        let gameLimitedCommandTextItemArrayFactory : GameLimitedCommandTextItemArrayFactory.gameLimitedCommandTextItemArrayFactory ref = ref (((GameLimitedCommandTextItemArrayFactory.getInstance ()) :> GameLimitedCommandTextItemArrayFactory.gameLimitedCommandTextItemArrayFactory)) in ();
        let commandTextItemArrayFactory : CommandTextItemArrayFactory.commandTextItemArrayFactory ref = ref (((!gameLimitedCommandTextItemArrayFactory#getCommandTextItemArrayFactory ()) :> CommandTextItemArrayFactory.commandTextItemArrayFactory)) in ();
        let items : Obj.t ref = ref ((Obj.repr (!commandTextItemArrayFactory#getInstance ((self#getCommandStack ()), (gameLayerManager#getBackgroundBasicColor ()), (gameLayerManager#getForegroundBasicColor ()))))) in ();
        let size : int ref = ref ((Array.length (Obj.magic !items))) in ();
        for index = 0 to !size - 1 do
            ignore (!scrollSelectionForm#append ((Obj.magic !items).(index)))
        done;
        let formType : FormType.formType ref = ref ((((FormTypeFactory.getInstance ())#getFormType ()) :> FormType.formType)) in ();
        let rectangle : Rectangle.rectangle ref = ref (((formUtil#createFormRectangle ()) :> Rectangle.rectangle)) in ();
        ignore (!scrollSelectionForm#init (!rectangle, !formType))
        end [@@warning "-7"]
    

    method pause () : unit =
        begin
        ignore ((Obj.magic gameBehavior)#pause ((Obj.magic self)));
        (self#closeMenu ());
        ignore (super#pause ());
        ignore (touchButtonFactory#toggle ((self#isPaused ()), ((BasicArrayListUtil.getInstance ())#getImmutableInstance ())));
        ignore ((self#tsUtil)#gc ())
        end [@@warning "-7"]
    

    method unPause () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, (Obj.magic self), gameStrings#uNPAUSE));
        (self#closeMenu ());
        ignore ((self#tsUtil)#gc ());
        ignore (super#unPause ());
        ignore (touchButtonFactory#toggle ((self#isPaused ()), ((BasicArrayListUtil.getInstance ())#getImmutableInstance ())));
        ignore ((Obj.magic gameBehavior)#unPause ((Obj.magic self)))
        end [@@warning "-7"]
    

    method isPausable () : bool =
        try
        begin
        if ((Obj.repr ((Obj.magic (java_call_static "CurrentDisplayableFactory.getInstance" (Obj.repr ())))#getUsedRunnable ())) == (Obj.repr (NullWaitGameRunnable.getInstance ()))) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr (false)))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method popupMenu () : unit =
        begin
        ignore ((Obj.magic menuBehavior)#popupMenu ((Obj.magic self)))
        end [@@warning "-7"]
    

    method popupMenu2 () : unit =
        begin
        ignore (primaryPlayerQueue#add ((SelectSound.getInstance ())));
        (self#setMenuPaintable ((self#getFormPaintable ())));
        (self#setMenuInputProcessor (mainMenuInputProcessor));
        ignore ((Obj.magic basicMotionGesturesHandler)#addListenerInterface (mainMenuInputProcessor));
        ignore (gameKeyEventHandler#addListener (mainMenuInputProcessor))
        end [@@warning "-7"]
    

    method toggleMenu () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, (Obj.magic self), gameStrings#tOGGLE_MENU));
        if ((Obj.repr (self#getMenuPaintable ())) == (Obj.repr (self#getOpenMenuPaintable ()))) then begin
            (self#pause ());
            (self#updateMenu ());
            (self#popupMenu ())
        end else if ((Obj.repr (self#getMenuPaintable ())) == (Obj.repr (self#getFormPaintable ()))) then begin
            ignore (primaryPlayerQueue#add ((SelectSound.getInstance ())));
            (self#unPause ())
        end
        end [@@warning "-7"]
    

    method closeMenu () : unit =
        begin
        ignore ((Obj.magic menuBehavior)#closeMenu ((Obj.magic self)))
        end [@@warning "-7"]
    

    method closeMenu2 () : unit =
        begin
        (self#setMenuPaintable ((self#getOpenMenuPaintable ())));
        ignore ((Obj.magic basicMotionGesturesHandler)#removeListener (mainMenuInputProcessor));
        ignore (gameKeyEventHandler#removeListener (mainMenuInputProcessor));
        (self#setMenuInputProcessor ((self#getPopupMenuInputProcessor ())))
        end [@@warning "-7"]
    

    method open_ () : unit =
        begin
        ignore ((Obj.magic basicMotionGesturesHandler)#addListenerInterface (menuInputProcessor));
        ignore (gameKeyEventHandler#addListener (menuInputProcessor))
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore ((Obj.magic basicMotionGesturesHandler)#removeListener (menuInputProcessor));
        ignore (gameKeyEventHandler#removeListener (menuInputProcessor));
        ignore (primaryPlayerQueue#clear ());
        ignore (secondaryPlayerQueue#clear ())
        end [@@warning "-7"]
    

    method processorInit () : unit =
        begin
        (self#setMainStateProcessor ((Processor.getInstance ())));
        (self#setProcessGameProcessorInit ())
        end [@@warning "-7"]
    

    method setProcessGameProcessorInit () : unit =
        begin
        (self#setProcessGameProcessor ((Obj.obj (java_new "GameProcessor" (Obj.repr ((Obj.magic self)))))))
        end [@@warning "-7"]
    

    method initSpecialPaint () : unit =
        begin
        ignore ((Obj.magic menuBehavior)#initSpecialPaint ((Obj.magic self)))
        end [@@warning "-7"]
    

    method init : 'any1. 'any1 * bool -> unit = fun (gameLayerManager_arg, (buffered : bool)) ->
        let gameLayerManager_arg = Obj.repr gameLayerManager_arg in
        begin
        ignore (gameStateTimeHelper#setStartTimeTNT ());
        (self#setHighScoreSubmitted (false));
        (self#setLayerManager ((Obj.magic gameLayerManager_arg)));
        if (not buffered) then begin
            let bUFF_MESSAGE : string ref = ref ("XXX Not Buffering Causes Concurrency Issues XXX") in ();
            ignore ((self#logUtil)#putF (!bUFF_MESSAGE, (Obj.magic self), (self#commonStrings)#cONSTRUCTOR))
        end else begin
            raise (Failure ("Buffering is disabled"))
        end;
        (self#setGameInputProcessor ((Processor.getInstance ())));
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isFeature ((GameFeatureFactory.getInstance ())#cHEATING)) then begin
            isCheating <- true;
            cheatProcessor <- ((Obj.obj (java_new "CheatGameInputProcessor" (Obj.repr ((Obj.magic self))))) :> PlayerGameInput.playerGameInput);
            ignore (gameKeyEventHandler#addListener (cheatProcessor))
        end else begin
            isCheating <- false;
            cheatProcessor <- (NoPlayerGameInput.getInstance ())
        end;
        realEndGameProcessor <- ((Obj.obj (java_new "EndGameProcessor" (Obj.repr ((Obj.magic self))))) :> Processor.processor);
        (self#setEndGameProcessor ((Processor.getInstance ())));
        realStartIntermissionProcessor <- ((Obj.obj (java_new "StartIntermissionProcessor" (Obj.repr ((Obj.magic self))))) :> Processor.processor);
        startIntermissionProcessor <- (Processor.getInstance ());
        (self#setEndGameStatePaintable ((Obj.obj (java_new "EndGamePaintable" (Obj.repr ((Obj.magic self)))))));
        (self#setEndGamePaintable ((NullPaintable.getInstance ())));
        (self#setIntermissionPaintable ((NullPaintable.getInstance ())));
        ignore ((self#getStartIntermissionInterface ())#setListener ((Obj.magic self)))
        end [@@warning "-7-20"]
    

    method notifyIntermission ((enable : bool)) : unit =
        begin
        if enable then begin
            startIntermissionProcessor <- realStartIntermissionProcessor
        end else begin
            startIntermissionProcessor <- (Processor.getInstance ())
        end;
        if enable then begin
            (self#setIntermissionPaintable ((self#getStartIntermissionPaintable ())))
        end else begin
            (self#setIntermissionPaintable ((NullPaintable.getInstance ())))
        end
        end [@@warning "-7"]
    

    method mediaInit () : unit =
        begin
        ignore (ForcedLogUtil.log ((self#commonStrings)#nOT_IMPLEMENTED, (Obj.magic self)))
        end [@@warning "-7"]
    

    method initConfigurable : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#addNormalPortion (50, "Setting Configurables"));
        ignore ((GameInitializationUtil.getInstance ())#initGame ((Obj.magic abeClientInformation), (Obj.magic self), gameInitializationInterfaceFactoryInterface));
        let gameFeatureFactory : GameFeatureFactory.gameFeatureFactory ref = ref (((GameFeatureFactory.getInstance ()) :> GameFeatureFactory.gameFeatureFactory)) in ();
        let changedGameFeatureListener : ChangedGameFeatureListener.changedGameFeatureListener ref = ref (((ChangedGameFeatureListener.getInstance ()) :> ChangedGameFeatureListener.changedGameFeatureListener)) in ();
        if (!changedGameFeatureListener#isChangedFeature (!gameFeatureFactory#sOUND)) then begin
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("Sound Changing To: "))#appendboolean ((!features#isFeature (!gameFeatureFactory#sOUND)))))), (Obj.magic self), "initConfigurable"));
            (self#mediaInit ());
            ignore (!changedGameFeatureListener#remove (!gameFeatureFactory#sOUND))
        end;
        let sensorFeatureFactory : SensorFeatureFactory.sensorFeatureFactory ref = ref (((SensorFeatureFactory.getInstance ()) :> SensorFeatureFactory.sensorFeatureFactory)) in ();
        if (((!changedGameFeatureListener#isChangedFeature (!sensorFeatureFactory#oRIENTATION_SENSORS)) || (!changedGameFeatureListener#isChangedFeature (!sensorFeatureFactory#nO_ORIENTATION))) || (!changedGameFeatureListener#isChangedFeature (!sensorFeatureFactory#sIMULATED_ORIENTATION_SENSORS))) then begin
            ignore (!changedGameFeatureListener#remove (!sensorFeatureFactory#nO_ORIENTATION));
            ignore (!changedGameFeatureListener#remove (!sensorFeatureFactory#oRIENTATION_SENSORS));
            ignore (!changedGameFeatureListener#remove (!sensorFeatureFactory#sIMULATED_ORIENTATION_SENSORS))
        end;
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        (self#loadResourceLoadingLevel (!resourceLoadingLevelFactory#lOAD_GAME))
        end [@@warning "-7-20"]
    

    method initApp : 'any1. 'any1 -> unit = fun (abeClientInformation) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        (self#initConfigurable ((Obj.magic abeClientInformation)));
        (self#processorInit ());
        ignore ((Obj.magic sensorGameUpdateProcessor)#process (gameLayerManager));
        ignore ((Obj.magic sensorGameUpdateProcessor)#sendNotifications (gameLayerManager));
        (self#initTouch ())
        end [@@warning "-7-20"]
    

    method initTouch () : unit =
        begin
        let gameInitializedEvent : GameInitializedEvent.gameInitializedEvent ref = ref (((GameInitializationUtil.getInstance ())#eVENT :> GameInitializedEvent.gameInitializedEvent)) in ();
        let resourceLoadingLevelFactory : ResourceLoadingLevelFactory.resourceLoadingLevelFactory ref = ref (((ResourceLoadingLevelFactory.getInstance ()) :> ResourceLoadingLevelFactory.resourceLoadingLevelFactory)) in ();
        ignore (!gameInitializedEvent#setResourceLoadingLevel (!resourceLoadingLevelFactory#lOAD_TOUCH));
        ignore ((GameInitializedEventHandler.getInstance ())#fireEvent (!gameInitializedEvent));
        ignore (touchButtonFactory#defaultList ());
        (self#updateTouch ());
        (self#postInitTouch ())
        end [@@warning "-7"]
    

    method updateCurrentTouchInputFactory : 'any1. 'any1 -> unit = fun (nextTouchInput) ->
        let nextTouchInput = Obj.repr nextTouchInput in
        begin
        if ((Obj.repr (Obj.magic nextTouchInput)) != (Obj.repr currentTouchInputFactory)) then begin
            currentTouchInputFactory <- (Obj.magic nextTouchInput);
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr currentTouchInputFactory)), (Obj.magic self), gameInputStrings#uDPATE_CURRENT_TOUCH_INPUT_FACTORY))));
            ignore (touchButtonFactory#toggle ((self#isPaused ()), (currentTouchInputFactory#getList ())))
        end
        end [@@warning "-7-20"]
    

    method updateTouch () : unit =
        begin
        ignore ((Obj.magic gameBehavior)#updateTouch ((Obj.magic self)))
        end [@@warning "-7"]
    

    method updateTouch2 () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isFeature (touchFeatureFactory#aUTO_HIDE_SHOW_SCREEN_BUTTONS)) then begin
            if ((((gameLayerManager#getGameInfo ())#getCurrentLevel ()) - (self#getStartLevel ())) == 1) then begin
                (self#setTouchPaintableP ((NullPaintable.getInstance ())))
            end
        end
        end [@@warning "-7"]
    

    method postInitTouch () : unit =
        begin
        (self#setTouchButtonsPaintable ((TouchButtonsPaintableFactory.getInstance ((gameLayerManager#getForegroundBasicColor ())))));
        (self#updateScreenButtonPaintable ())
        end [@@warning "-7"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        (self#addCommands ());
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method addCommands () : unit =
        begin
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        let myCommandsFactory : MyCommandsFactory.myCommandsFactory ref = ref (((MyCommandsFactory.getInstance ()) :> MyCommandsFactory.myCommandsFactory)) in ();
        if ((Obj.repr (DebugFactory.getInstance ())) != (Obj.repr (NoDebug.getInstance ()))) then begin
            ignore (self#addCommand (!gameCommandsFactory#sTART_TRACE))
        end;
        ignore (self#addCommand (!gameCommandsFactory#rESTART_COMMAND));
        ignore (self#addCommand (!myCommandsFactory#pAUSE_COMMAND));
        ignore (self#addCommand (!gameCommandsFactory#qUIT_COMMAND));
        let isOverScan : bool ref = ref ((((Obj.magic (java_call_static "OperatingSystemFactory.getInstance" (Obj.repr ())))#getOperatingSystemInstance ())#isOverScan ())) in ();
        if (J2MEUtil.isHTML ()) then begin
            ()
        end else if (SWTUtil.get_isSWT ()) then begin
            ()
        end else if (not !isOverScan) then begin
            if (((Obj.magic (java_call_static "TouchScreenFactory.getInstance" (Obj.repr ())))#isTouch ()) && ((new InGameFeatures.inGameFeatures ())#isAny ())) then begin
                ignore (self#addCommand ((InGameOptionsForm.get_dISPLAY ())))
            end;
            ignore (self#addCommand (!gameCommandsFactory#sAVE));
            ignore (self#addCommand (!gameCommandsFactory#dISPLAY_LOAD_FORM))
        end
        end [@@warning "-7"]
    

    method itemStateChanged : 'any1. 'any1 -> unit = fun (item) ->
        let item = Obj.repr item in
        begin
        (try
            let itemLabel : string ref = ref (((Obj.magic item)#getLabel ())) in ();
            ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#commonLabels)#iTEM_LABEL))#append (!itemLabel)))), (Obj.magic self), "itemStateChanged"));
            if (java_instanceof (Obj.repr (Obj.magic item)) "ChoiceGroup") then begin
                let gameFeatureUtil : GameFeatureUtil.gameFeatureUtil ref = ref (((GameFeatureUtil.getInstance ()) :> GameFeatureUtil.gameFeatureUtil)) in ();
                if (!gameFeatureUtil#isExclusive (!itemLabel)) then begin
                    ignore (!gameFeatureUtil#updateExclusiveForChoiceGroup ((Obj.magic (Obj.magic item))))
                end else begin
                    ignore (!gameFeatureUtil#updateMultiple ((Obj.magic (Obj.magic item))))
                end
            end;
            ignore ((Obj.magic sensorGameUpdateProcessor)#process (gameLayerManager));
            (self#updateTouch ());
            (self#updateScreenButtonPaintable ());
            ignore ((Obj.magic sensorGameUpdateProcessor)#sendNotifications (gameLayerManager))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), "itemStateChanged", e))
        end)
        end [@@warning "-7-20"]
    

    method updateScreenButtonPaintable () : unit =
        begin
        ignore ((Obj.magic gameBehavior)#updateScreenButtonPaintable ((Obj.magic self)))
        end [@@warning "-7"]
    

    method updateScreenButtonPaintable2 () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (!features#isFeature (touchFeatureFactory#aUTO_HIDE_SHOW_SCREEN_BUTTONS)) then begin
            (self#setTouchPaintableP ((self#getTouchButtonsPaintable ())));
            (self#setStartLevel (((gameLayerManager#getGameInfo ())#getCurrentLevel ())))
        end else if (!features#isFeature (touchFeatureFactory#sHOW_SCREEN_BUTTONS)) then begin
            (self#setTouchPaintableP ((self#getTouchButtonsPaintable ())))
        end else if (!features#isFeature (touchFeatureFactory#hIDE_SCREEN_BUTTONS)) then begin
            (self#setTouchPaintableP ((NullPaintable.getInstance ())))
        end else begin
            (self#setTouchPaintableP ((NullPaintable.getInstance ())))
        end
        end [@@warning "-7"]
    

    method getLayerManager : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (gameLayerManager))
        end [@@warning "-7"]
    

    method setLayerManager : 'any1. 'any1 -> unit = fun (layerManager) ->
        let layerManager = Obj.repr layerManager in
        begin
        gameLayerManager <- (Obj.magic layerManager)
        end [@@warning "-7-20"]
    

    method isGameOver () : bool =
        begin
        gameOver
        end [@@warning "-7"]
    

    method setGameOver ((gameOver_arg : bool)) : unit =
        begin
        gameOver <- gameOver_arg
        end [@@warning "-7"]
    

    method processGameOver () : unit =
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((self#commonStrings)#sTART, (Obj.magic self), gameStrings#sET_GAME_OVER))));
        (self#setGameOver (true));
        ignore (self#removePauseCommand ());
        (self#setGameState (gameStateFactory#sHOW_END_RESULT_GAME_STATE));
        (self#setEndGamePaintable ((self#getEndGameStatePaintable ())))
        end [@@warning "-7"]
    

    method isHighScoreSubmitted () : bool =
        begin
        highScoreSubmitted
        end [@@warning "-7"]
    

    method setHighScoreSubmitted ((highScoreSubmitted_arg : bool)) : unit =
        begin
        highScoreSubmitted <- highScoreSubmitted_arg;
        if highScoreSubmitted_arg then begin
            ignore (highScoresHelper#setSelectedHighScores ((NullHighScoresSingletonFactory.getInstance ())))
        end;
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("isHighScoreSubmitted: "))#appendboolean (highScoreSubmitted_arg)))), (Obj.magic self), "setHighScoreSubmitted"))
        end [@@warning "-7"]
    

    method getGameState : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (gameState))
        end [@@warning "-7"]
    

    method setGameState : 'any1. 'any1 -> unit = fun (gameState_arg) ->
        let gameState_arg = Obj.repr gameState_arg in
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameStrings#gAME_STATE))#append (((self#stringUtil)#toString ((Obj.magic gameState_arg))))))), (Obj.magic self), gameStrings#sET_GAME_STATE));
        gameState <- (Obj.magic gameState_arg);
        ignore (gameStateTimeHelper#setStartTimeTNT ());
        (self#updateEndGameProcessor ());
        (self#updateGameKeyEventProcessor ());
        ignore ((Obj.magic gameBehavior)#setGameState ((Obj.magic self)))
        end [@@warning "-7-20"]
    

    method updateGameState () : unit =
        begin
        let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
        ignore ((Obj.magic !gameAdState)#processAdState (gameState, ((gameLayerManager#getGameInfo ())#getGameType ())));
        if ((Obj.repr gameState) != (Obj.repr gameStateFactory#pLAYING_GAME_STATE)) then begin
            ignore ((Obj.magic !gameAdState)#processPageAdState ())
        end
        end [@@warning "-7"]
    

    method updateGameKeyEventProcessor () : unit =
        begin
        if (((Obj.repr (self#getGameState ())) != (Obj.repr gameStateFactory#pLAYING_GAME_STATE)) || isCheating) then begin
            ()
        end else begin
            ()
        end
        end [@@warning "-7"]
    

    method removeAllGameKeyInputListenersOnBuild () : unit =
        begin
        (self#removeAllGameKeyInputListeners ())
        end [@@warning "-7"]
    

    method removeAllGameKeyInputListeners () : unit =
        begin
        ignore ((Obj.magic gameBehavior)#removeAllGameKeyInputListeners ((Obj.magic self)))
        end [@@warning "-7"]
    

    method removeAllGameKeyInputListeners2 () : unit =
        begin
        ignore ((self#logUtil)#putF ("Remove PlayerInput Listeners", (Obj.magic self), "removeAllGameKeyInputListeners"));
        for index = ((localPlayerGameInputList#size ()) - 1) downto 0 do
            let playerGameInput : PlayerGameInput.playerGameInput ref = ref (((Obj.magic (localPlayerGameInputList#get (index))) :> PlayerGameInput.playerGameInput)) in ();
            (self#removeKeyInputListener (!playerGameInput));
            ignore (!playerGameInput#removeNonAIInputGameKeyEvents ())
        done
        end [@@warning "-7"]
    

    method removeKeyInputListener : 'any1. 'any1 -> unit = fun (playerGameInput) ->
        let playerGameInput = Obj.repr playerGameInput in
        begin
        ignore (gameKeyEventHandler#removeListener ((Obj.magic playerGameInput)))
        end [@@warning "-7-20"]
    

    method updateEndGameProcessor () : unit =
        begin
        ignore ((Obj.magic gameBehavior)#updateEndGameProcessor ((Obj.magic self)))
        end [@@warning "-7"]
    

    method updateEndGameProcessor2 () : unit =
        begin
        if (((Obj.repr (self#getGameState ())) == (Obj.repr gameStateFactory#sHOW_END_RESULT_GAME_STATE)) || ((Obj.repr (self#getGameState ())) == (Obj.repr gameStateFactory#sHOW_HIGH_SCORE_GAME_STATE))) then begin
            (self#setEndGameProcessor (realEndGameProcessor))
        end else begin
            (self#setEndGameProcessor ((Processor.getInstance ())))
        end
        end [@@warning "-7"]
    

    method buildGameInit ((_isPortion : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method cleanupGame () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, (Obj.magic self), (self#commonStrings)#cLEANUP));
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        ignore (!progressCanvas#addNormalPortion (10, "Cleaning Up"));
        ignore (primaryPlayerQueue#clear ());
        ignore (secondaryPlayerQueue#clear ());
        ignore ((GameLevelDisplayChangeEventListenersFactory.getInstance ())#clear ())
        end [@@warning "-7"]
    

    method loadResourceLoadingLevel : 'any1. 'any1 -> unit = fun (resourceLoadingLevel) ->
        let resourceLoadingLevel = Obj.repr resourceLoadingLevel in
        begin
        let gameInitializedEvent : GameInitializedEvent.gameInitializedEvent ref = ref (((GameInitializationUtil.getInstance ())#eVENT :> GameInitializedEvent.gameInitializedEvent)) in ();
        ignore (!gameInitializedEvent#setResourceLoadingLevel ((Obj.magic resourceLoadingLevel)));
        ignore ((GameInitializedEventHandler.getInstance ())#fireEvent (!gameInitializedEvent))
        end [@@warning "-7-20"]
    

    method loadResources ((level : int)) : unit =
        begin
        let gameInitializedEvent : GameInitializedEvent.gameInitializedEvent ref = ref (((GameInitializationUtil.getInstance ())#eVENT :> GameInitializedEvent.gameInitializedEvent)) in ();
        ignore (!gameInitializedEvent#setLevel (level));
        ignore ((GameInitializedEventHandler.getInstance ())#fireEvent (!gameInitializedEvent))
        end [@@warning "-7"]
    

    method updateColor () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method buildGame ((portion : int)) : unit =
        try
        begin
        ignore (screenCapture#endRecording ());
        ignore (screenCapture#startRecording ());
        let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        ignore (!progressCanvas#addNormalPortion (portion, "Generic Build"));
        (self#removeAllGameKeyInputListenersOnBuild ());
        (self#updateTouch ());
        ignore (!progressCanvas#addNormalPortion (portion, "High Scores"));
        ignore (highScoresFactoryInterface#fetchHighScores ((gameLayerManager#getGameInfo ()), highScoresHelper));
        (self#setHighScoresPaintable ((NullPaintable.getInstance ())));
        ignore (!progressCanvas#addNormalPortion (portion, "Finishing."));
        ignore ((self#getEndGameInfoP ())#update (((self#getLayerManager ())#getGameInfo ()), (Obj.magic self)));
        isSingleKeyRepeatableProcessing <- (!features#isFeature ((InputFeatureFactory.getInstance ())#sINGLE_KEY_REPEAT_PRESS));
        (self#setGameOver (false));
        ignore (!progressCanvas#addNormalPortion (portion, "Finishing.."));
        (self#updateColor ());
        ignore ((self#getStartIntermissionPaintable ())#update ());
        if (not (self#isRunningInAnotherThread ())) then begin
            raise (Java_return (Obj.repr (())))
        end;
        ignore (!progressCanvas#addNormalPortion (portion, "Finishing..."));
        if ((self#isMainCanvas ()) || (not (self#isInitialized ()))) then begin
            if (!features#isFeature ((MainFeatureFactory.getInstance ())#lOAD_ONDEMAND)) then begin
                if ((self#getCustomCommandListener ()) != (Obj.magic 0)) then begin
                    ignore (!progressCanvas#end_ ())
                end
            end else begin
                ignore (!progressCanvas#end_ ())
            end;
            (self#setInitialized (true))
        end;
        if ((Obj.repr (self#getCustomCommandListener ())) == (Obj.repr (NullCommandListener.get_nULL_COMMAND_LISTENER ()))) then begin
            ignore ((self#logUtil)#putF ("Show Game Paintable in DemoCanvas Thread", (Obj.magic self), bUILD_GAME));
            ignore (gameCanvasStartListener#showGamePaintable ())
        end else begin
            ignore ((self#logUtil)#putF ("No GameCanvasStartListener", (Obj.magic self), bUILD_GAME))
        end;
        ignore (colorFillPaintable#setBasicColorP ((gameLayerManager#getBackgroundBasicColor ())));
        ignore ((Obj.magic gameBehavior)#buildGame ((Obj.magic self)))
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method buildGame2 () : unit =
        begin
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#eNABLE_PLAYER_GAME_INPUTS))#appendint ((localPlayerGameInputList#size ()))))), (Obj.magic self), bUILD_GAME))));
        let playerGameInput : PlayerGameInput.playerGameInput ref = ref (((Obj.magic 0) :> PlayerGameInput.playerGameInput)) in ();
        for index = ((localPlayerGameInputList#size ()) - 1) downto 0 do
            playerGameInput := (Obj.magic (localPlayerGameInputList#get (index)));
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#eNABLE_PLAYER_GAME_INPUT))#append ((java_string_of (Obj.repr !playerGameInput)))))), (Obj.magic self), bUILD_GAME))));
            ignore (!playerGameInput#removeNonAIInputGameKeyEvents ());
            (self#addKeyInputListener (!playerGameInput))
        done
        end [@@warning "-7"]
    

    method addKeyInputListener : 'any1. 'any1 -> unit = fun (playerGameInput) ->
        let playerGameInput = Obj.repr playerGameInput in
        begin
        ignore ((GameKeyEventHandler.getInstance ())#addListenerForPlayer ((Obj.magic playerGameInput), ((Obj.magic playerGameInput)#getPlayerInputId ())))
        end [@@warning "-7-20"]
    

    method setGameCanvasStartListener : 'any1. 'any1 -> unit = fun (gameCanvasStartListener_arg) ->
        let gameCanvasStartListener_arg = Obj.repr gameCanvasStartListener_arg in
        begin
        gameCanvasStartListener <- (Obj.magic gameCanvasStartListener_arg)
        end [@@warning "-7-20"]
    

    method loadState () : unit =
        begin
        ignore ((self#logUtil)#putF ((self#commonStrings)#sTART, (Obj.magic self), (self#commonStrings)#lOAD));
        let hashtable_arg : Obj.t ref = ref ((Obj.repr (self#getLoadStateHashtable ()))) in ();
        if (((Obj.magic !hashtable_arg) != (Obj.magic 0)) && (((Obj.magic !hashtable_arg)#size ()) > 0)) then begin
            let levelAsString : string ref = ref ((Obj.magic ((Obj.magic !hashtable_arg)#get ((Obj.magic (GameInfo.get_lEVEL_NAME ())))))) in ();
            let level : int ref = ref ((java_int_value (Obj.repr (int_of_string (Stdlib.String.trim (!levelAsString)))))) in ();
            let gameInfo : GameInfo.gameInfo ref = ref (((gameLayerManager#getGameInfo ()) :> GameInfo.gameInfo)) in ();
            ignore (!gameInfo#setCurrentLevel (!level))
        end
        end [@@warning "-7"]
    

    method getLoadStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#commonLabels)#sTART_LABEL))#append (((self#stringUtil)#toString ((Obj.magic hashtable))))))), (Obj.magic self), "getLoadStateHashtable"));
        (Obj.magic ((Obj.magic hashtable)))
        end [@@warning "-7"]
    

    method setLoadStateHashtable : 'any1. 'any1 -> unit = fun (hashtable_arg) ->
        let hashtable_arg = Obj.repr hashtable_arg in
        begin
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((self#commonLabels)#sTART_LABEL))#append (((self#stringUtil)#toString ((Obj.magic hashtable_arg))))))), (Obj.magic self), "setLoadStateHashtable"));
        hashtable <- Obj.repr ((Obj.magic hashtable_arg))
        end [@@warning "-7-20"]
    

    method getCurrentStateHashtable : 'return. unit -> 'return = fun () ->
        begin
        let hashtable_arg : Obj.t ref = ref ((Obj.repr ((self#stdUtil)#createHashtable ()))) in ();
        let level : int ref = ref (((gameLayerManager#getGameInfo ())#getCurrentLevel ())) in ();
        ignore ((Obj.magic !hashtable_arg)#put ((java_string_of (Obj.repr (GameInfo.get_lEVEL_NAME ()))), (string_of_int (!level))));
        ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ("End: "))#append (((self#stringUtil)#toString ((Obj.magic !hashtable_arg))))))), (Obj.magic self), "getCurrentStateHashtable"));
        (Obj.magic ((Obj.magic !hashtable_arg)))
        end [@@warning "-7"]
    

    method paintGameOver : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ignore (ForcedLogUtil.log ((self#commonStrings)#nOT_IMPLEMENTED, (Obj.magic self)))
        end [@@warning "-7-20"]
    

    method draw : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (colorFillPaintable#paint ((Obj.magic graphics)));
        ignore (basicSetColorUtil#setBasicColorP ((Obj.magic graphics), (gameLayerManager#getForegroundBasicColor ())));
        ignore (gameSpecificPaintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method clear : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (colorFillPaintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore (baseGameStatistics#nextRefresh ());
        (self#draw ((Obj.magic graphics)));
        ignore (menuPaintable#paint ((Obj.magic graphics)));
        ignore (progressPaintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method processEndLevelIntermissionGameState () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method nonBotPaint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (endGamePaintable#paint ((Obj.magic graphics)));
        ignore (intermissionPaintable#paint ((Obj.magic graphics)));
        (self#paintIntermission ((Obj.magic graphics)));
        ignore (touchPaintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintIntermission : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

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
    

    method keyPressedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        ignore (inputProcessor#keyPressedByDevice (keyCode, deviceId))
        end [@@warning "-7"]
    

    method keyRepeatedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        if isSingleKeyRepeatableProcessing then begin
            ignore (inputProcessor#keyPressedByDevice (keyCode, deviceId))
        end
        end [@@warning "-7"]
    

    method keyReleasedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        ignore (inputProcessor#keyReleasedByDevice ((Obj.magic self), keyCode, deviceId))
        end [@@warning "-7"]
    

    method handleRawKey ((_keyCode : int), (_deviceId : int), (_repeated : bool)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method endProgress ((isProgress : bool)) : int =
        begin
        let portion : int ref = ref (30) in ();
        if (isProgress && (self#isMainCanvas ())) then begin
            let myCommandsFactory : MyCommandsFactory.myCommandsFactory ref = ref (((MyCommandsFactory.getInstance ()) :> MyCommandsFactory.myCommandsFactory)) in ();
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            ignore (!progressCanvas#start ());
            ignore ((self#getCustomCommandListener ())#commandAction (!myCommandsFactory#sET_DISPLAYABLE, !progressCanvas));
            portion := 4
        end;
        !portion
        end [@@warning "-7"]
    

    method processPlayingGame () : unit =
        begin
        ignore (cheatProcessor#update ());
        ignore (((Obj.magic sensorGameUpdateProcessor)#getInputSensor ())#update ());
        ignore (gameInputProcessor#process ());
        ignore (gameLayerManager#process ());
        ignore (startIntermissionProcessor#process ())
        end [@@warning "-7"]
    

    method threadInit () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method processGame () : unit =
        begin
        ignore (super#process ());
        if (Obj.magic (java_call_static "AllBinaryMediaManager.update" (Obj.repr ()))) then begin
            if (not (primaryPlayerQueue#process ())) then begin
                ignore (secondaryPlayerQueue#process ())
            end
        end;
        ignore (mainStateProcessor#process ());
        ignore (menuInputProcessor#processInputList ());
        ignore (endGameProcessor#process ());
        ignore (baseGameStatistics#nextFrame ())
        end [@@warning "-7"]
    

    method notifyDonePainting () : unit =
        begin
        begin (* synchronized *)
            ignore ((self#threadObjectUtil)#notifyObject ((Obj.magic self)))
        end
        end [@@warning "-7"]
    

    method shouldWait () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if (Obj.magic (java_call_static "AndroidUtil.isAndroid" (Obj.repr ()))) then begin
            ()
        end else if (!features#isFeature (openGLFeatureFactory#oPENGL_2D)) then begin
            ()
        end else begin
            if (!features#isDefault (openGLFeatureFactory#oPENGL)) then begin
                let openGLImageSpecificFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "OpenGLImageSpecificFactory.getInstance" (Obj.repr ()))))) in ();
                while (Obj.magic !openGLImageSpecificFactory)#updating do
                    ignore (Unix.sleepf (Float.of_int (yIELD_SLEEP) /. 1000.0))
                done
            end
        end
        end [@@warning "-7"]
    

    method run () : unit =
        begin
        (try
            ignore ((self#logUtil)#putF ((self#commonStrings)#sTART_RUNNABLE, (Obj.magic self), (self#commonStrings)#rUN));
            let progressCanvas : ProgressCanvas.progressCanvas ref = ref (((ProgressCanvasFactory.getInstance ()) :> ProgressCanvas.progressCanvas)) in ();
            ignore (!progressCanvas#addNormalPortion (50, "Game Thread"));
            (self#setCurrentThread ());
            (self#setRunning (true));
            if ((Obj.repr (self#getCustomCommandListener ())) == (Obj.repr (NullCommandListener.get_nULL_COMMAND_LISTENER ()))) then begin
                ignore (Unix.sleepf (Float.of_int (yIELD_SLEEP) /. 1000.0))
            end;
            (self#shouldWait ());
            (self#threadInit ());
            if ((Obj.repr (self#getCustomCommandListener ())) == (Obj.repr (NullCommandListener.get_nULL_COMMAND_LISTENER ()))) then begin
                ignore (Unix.sleepf (Float.of_int (yIELD_SLEEP) /. 1000.0))
            end;
            (self#open_ ());
            let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
            ignore ((Obj.magic !gameAdState)#init ());
            ignore ((Obj.magic !gameAdState)#setGameIsReady (true));
            ignore ((Obj.magic gameBehavior)#run ((Obj.magic self)));
            ignore ((self#logUtil)#putF ((self#commonStrings)#eND_RUNNABLE, (Obj.magic self), (self#commonStrings)#rUN))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), (self#commonStrings)#rUN, e))
        end)
        end [@@warning "-7"]
    

    method run2 () : unit =
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        if ((!features#isDefault (openGLFeatureFactory#oPENGL_AS_GAME_THREAD)) || (J2MEUtil.isHTML ())) then begin
            if (!features#isDefault (openGLFeatureFactory#oPENGL_AS_GAME_THREAD)) then begin
                ignore ((self#logUtil)#putF ((openGLFeatureFactory#oPENGL_AS_GAME_THREAD#getName ()), (Obj.magic self), (self#commonStrings)#rUN))
            end;
            if (J2MEUtil.isHTML ()) then begin
                ignore ((self#logUtil)#putF ((GraphicsStrings.getInstance ())#hTML, (Obj.magic self), (self#commonStrings)#rUN))
            end;
            let currentDisplayableFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "CurrentDisplayableFactory.getInstance" (Obj.repr ()))))) in ();
            ignore ((Obj.magic !currentDisplayableFactory)#setRunnable ((Obj.magic gameRunnable)));
            ignore ((Obj.magic !currentDisplayableFactory)#setDisplayable ((Obj.magic self)));
            ignore ((Obj.magic (java_call_static "OpenGLThreadUtil.getInstance" (Obj.repr ())))#onResume ())
        end else if (!features#isDefault (openGLFeatureFactory#oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS)) then begin
            ignore ((self#logUtil)#putF ((openGLFeatureFactory#oPENGL_AND_GAME_HAVE_DIFFERENT_THREADS#getName ()), (Obj.magic self), (self#commonStrings)#rUN));
            ignore ((Obj.magic (java_call_static "OpenGLThreadUtil.getInstance" (Obj.repr ())))#onResume ());
            while (self#isRunning ()) do
                (self#run3 ())
            done;
            (self#end_ ())
        end else begin
            ignore ((self#logUtil)#putF ("this thread", (Obj.magic self), (self#commonStrings)#rUN));
            while (self#isRunning ()) do
                (self#run3 ())
            done;
            (self#end_ ())
        end
        end [@@warning "-7"]
    

    method run3 () : unit =
        begin
        ignore ((self#loopTimeHelper)#setStartTime ((gameTickTimeDelayHelper#setStartTime ())));
        ignore (gameTickDisplayInfoSingleton#update ());
        (self#processGame ());
        ignore (self#processLoopSleep ())
        end [@@warning "-7"]
    

    method setRunning ((running : bool)) : unit =
        begin
        ignore (super#setRunning (running));
        (try
            let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
            if running then begin
                ()
            end else begin
                if ((!features#isDefault (openGLFeatureFactory#oPENGL)) || (SWTUtil.get_isSWT ())) then begin
                    if ((Obj.repr ((gameLayerManager#getGameInfo ())#getGameType ())) != (Obj.repr gameTypeFactory#bOT)) then begin
                        let currentDisplayableFactory : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "CurrentDisplayableFactory.getInstance" (Obj.repr ()))))) in ();
                        ignore ((Obj.magic !currentDisplayableFactory)#clearRunnable ())
                    end;
                    (self#end_ ())
                end
            end
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, (Obj.magic self), (self#sET_RUNNING), e))
        end)
        end [@@warning "-7"]
    

    method end_ () : unit =
        begin
        ignore (screenCapture#endRecording ());
        ignore (baseGameStatistics#add ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append ((java_string_of (Obj.repr baseGameStatistics))))#append ((CommonSeps.getInstance ())#nEW_LINE))))));
        ignore (baseGameStatistics#init ());
        ignore (gameKeyEventHandler#removeListener (cheatProcessor));
        (self#close ());
        (self#removeAllGameKeyInputListeners ());
        (self#endGameThread ())
        end [@@warning "-7"]
    

    method endGameThread () : unit =
        begin
        ignore ((DisplayChangeEventHandler.getInstance ())#removeListener ((Obj.magic self)));
        ignore ((GameLevelDisplayChangeEventListenersFactory.getInstance ())#clear ());
        let gameAdState : Obj.t ref = ref ((Obj.repr (gameAdStateFactory#getCurrentInstance ()))) in ();
        ignore ((Obj.magic !gameAdState)#notPlayingAdState ())
        end [@@warning "-7"]
    

    method createHighScore : 'return. int -> 'return = fun ((score : int)) ->
        begin
        let gameInfo : GameInfo.gameInfo ref = ref (((gameLayerManager#getGameInfo ()) :> GameInfo.gameInfo)) in ();
        (Obj.magic ((Obj.obj (java_new "HighScore" (Obj.repr (0, "NONE", (new GameInfo.gameInfo ((!gameInfo#getGameType ()), (!gameInfo#getGameMode ()), (PlayerTypesFactory.getInstance ())#pLAYER_TYPE_ONE, 0, 0)), score))))))
        end [@@warning "-7"]
    

    method setHighScore : 'any1. 'any1 * string * int * bool * bool -> unit = fun (abeClientInformation, (name : string), (score : int), (autoSubmit : bool), (isLast : bool)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        ignore ((Obj.magic gameBehavior)#setHighScore ((Obj.magic abeClientInformation), (Obj.magic self), name, score, autoSubmit, isLast))
        end [@@warning "-7-20"]
    

    method setHighScore2 : 'any1. 'any1 * string * int * bool * bool -> unit = fun (abeClientInformation, (name : string), (score : int), (autoSubmit : bool), (isLast : bool)) ->
        let abeClientInformation = Obj.repr abeClientInformation in
        begin
        let highScore : Obj.t ref = ref ((Obj.repr (self#createHighScore (score)))) in ();
        let textBox : HighScoreTextBox.highScoreTextBox ref = ref (((new HighScoreTextBox.highScoreTextBox (highScoresFactoryInterface, highScoresHelper, (Obj.magic abeClientInformation), (gameLayerManager#getGameInfo ()), (self#getCustomCommandListener ()), name, (Obj.magic !highScore), (gameLayerManager#getBackgroundBasicColor ()), (gameLayerManager#getForegroundBasicColor ()))) :> HighScoreTextBox.highScoreTextBox)) in ();
        if isLast then begin
            ignore ((self#getCustomCommandListener ())#commandAction ((GameCommandsFactory.getInstance ())#sET_MENU_DISPLAYABLE, !textBox))
        end;
        if autoSubmit then begin
            ignore ((SecondaryThreadPool.getInstance ())#runTask ((new SaveHighScoreRunnable.saveHighScoreRunnable (isLast, !textBox))))
        end
        end [@@warning "-7-20"]
    

    method getGameStateTimeHelper : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (gameStateTimeHelper))
        end [@@warning "-7"]
    

    method setInitialized ((initialized_arg : bool)) : unit =
        begin
        initialized <- initialized_arg
        end [@@warning "-7"]
    

    method isInitialized () : bool =
        begin
        initialized
        end [@@warning "-7"]
    

    method getSourceId () : int =
        begin
        id
        end [@@warning "-7"]
    

    method setProgressPaintable : 'any1. 'any1 -> unit = fun (paintable) ->
        let paintable = Obj.repr paintable in
        begin
        progressPaintable <- (Obj.magic paintable)
        end [@@warning "-7-20"]
    

    method getStartIntermissionInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (startIntermissionInterface))
        end [@@warning "-7"]
    

    method getEndLevelIntermissionInterface : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (endLevelIntermissionInterface))
        end [@@warning "-7"]
    

    method setTouchPaintableP : 'any1. 'any1 -> unit = fun (paintable) ->
        let paintable = Obj.repr paintable in
        begin
        touchPaintable <- ((Obj.magic paintable) :> Paintable.paintable)
        end [@@warning "-7-20"]
    

    method getTouchPaintableP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (touchPaintable))
        end [@@warning "-7"]
    

    method setEndGamePaintable : 'any1. 'any1 -> unit = fun (endGamePaintable_arg) ->
        let endGamePaintable_arg = Obj.repr endGamePaintable_arg in
        begin
        endGamePaintable <- (Obj.magic endGamePaintable_arg)
        end [@@warning "-7-20"]
    

    method getEndGamePaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (endGamePaintable))
        end [@@warning "-7"]
    

    method setIntermissionPaintable : 'any1. 'any1 -> unit = fun (intermissionPaintable_arg) ->
        let intermissionPaintable_arg = Obj.repr intermissionPaintable_arg in
        begin
        intermissionPaintable <- (Obj.magic intermissionPaintable_arg)
        end [@@warning "-7-20"]
    

    method getIntermissionPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (intermissionPaintable))
        end [@@warning "-7"]
    

    method getEndGameInfoP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic endGameInfo)))
        end [@@warning "-7"]
    

    method setHighScoresPaintable : 'any1. 'any1 -> unit = fun (highScoresPaintable_arg) ->
        let highScoresPaintable_arg = Obj.repr highScoresPaintable_arg in
        begin
        highScoresPaintable <- (Obj.magic highScoresPaintable_arg)
        end [@@warning "-7-20"]
    

    method getHighScoresPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (highScoresPaintable))
        end [@@warning "-7"]
    

    method getRealHighScoresPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (realHighScoresPaintable))
        end [@@warning "-7"]
    

    method clearPlayerGameInputList () : unit =
        begin
        let playerGameInput : PlayerGameInput.playerGameInput ref = ref (((Obj.magic 0) :> PlayerGameInput.playerGameInput)) in ();
        for index = ((localPlayerGameInputList#size ()) - 1) downto 0 do
            playerGameInput := (Obj.magic (localPlayerGameInputList#get (index)));
            ignore (gameKeyEventHandler#removeListener (!playerGameInput))
        done;
        ignore (localPlayerGameInputList#clear ())
        end [@@warning "-7"]
    

    method addPlayerGameInput : 'any1. 'any1 -> unit = fun (playerGameInput) ->
        let playerGameInput = Obj.repr playerGameInput in
        begin
        ignore (localPlayerGameInputList#add ((Obj.magic playerGameInput)))
        end [@@warning "-7-20"]
    

    method setMenuInputProcessor : 'any1. 'any1 -> unit = fun (menuInputProcessor_arg) ->
        let menuInputProcessor_arg = Obj.repr menuInputProcessor_arg in
        begin
        menuInputProcessor <- (Obj.magic menuInputProcessor_arg)
        end [@@warning "-7-20"]
    

    method getMenuInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (menuInputProcessor))
        end [@@warning "-7"]
    

    method getMenuForm : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (menuForm))
        end [@@warning "-7"]
    

    method setMenuForm : 'any1. 'any1 -> unit = fun (menuForm_arg) ->
        let menuForm_arg = Obj.repr menuForm_arg in
        begin
        menuForm <- (Obj.magic menuForm_arg)
        end [@@warning "-7-20"]
    

    method getStartLevel () : int =
        begin
        startLevel
        end [@@warning "-7"]
    

    method setStartLevel ((startLevel_arg : int)) : unit =
        begin
        startLevel <- startLevel_arg
        end [@@warning "-7"]
    

    method setTouchButtonsPaintable : 'any1. 'any1 -> unit = fun (touchButtonsPaintable_arg) ->
        let touchButtonsPaintable_arg = Obj.repr touchButtonsPaintable_arg in
        begin
        touchButtonsPaintable <- (Obj.magic touchButtonsPaintable_arg)
        end [@@warning "-7-20"]
    

    method getTouchButtonsPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (touchButtonsPaintable))
        end [@@warning "-7"]
    

    method setGameInputProcessor : 'any1. 'any1 -> unit = fun (gameInputProcessor_arg) ->
        let gameInputProcessor_arg = Obj.repr gameInputProcessor_arg in
        begin
        gameInputProcessor <- (Obj.magic gameInputProcessor_arg)
        end [@@warning "-7-20"]
    

    method getGameInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (gameInputProcessor))
        end [@@warning "-7"]
    

    method setEndGameProcessor : 'any1. 'any1 -> unit = fun (endGameProcessor_arg) ->
        let endGameProcessor_arg = Obj.repr endGameProcessor_arg in
        begin
        endGameProcessor <- (Obj.magic endGameProcessor_arg)
        end [@@warning "-7-20"]
    

    method getEndGameProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (endGameProcessor))
        end [@@warning "-7"]
    

    method setEndGameStatePaintable : 'any1. 'any1 -> unit = fun (endGameStatePaintable_arg) ->
        let endGameStatePaintable_arg = Obj.repr endGameStatePaintable_arg in
        begin
        endGameStatePaintable <- (Obj.magic endGameStatePaintable_arg)
        end [@@warning "-7-20"]
    

    method getEndGameStatePaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (endGameStatePaintable))
        end [@@warning "-7"]
    

    method setNonBotPaintableP : 'any1. 'any1 -> unit = fun (nonBotPaintable_arg) ->
        let nonBotPaintable_arg = Obj.repr nonBotPaintable_arg in
        begin
        nonBotPaintable <- (Obj.magic nonBotPaintable_arg)
        end [@@warning "-7-20"]
    

    method getNonBotPaintableP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (nonBotPaintable))
        end [@@warning "-7"]
    

    method setStartIntermissionPaintable : 'any1. 'any1 -> unit = fun (startIntermissionPaintable_arg) ->
        let startIntermissionPaintable_arg = Obj.repr startIntermissionPaintable_arg in
        begin
        startIntermissionPaintable <- (Obj.magic startIntermissionPaintable_arg)
        end [@@warning "-7-20"]
    

    method getStartIntermissionPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (startIntermissionPaintable))
        end [@@warning "-7"]
    

    method setMainStateProcessor : 'any1. 'any1 -> unit = fun (mainStateProcessor_arg) ->
        let mainStateProcessor_arg = Obj.repr mainStateProcessor_arg in
        begin
        mainStateProcessor <- (Obj.magic mainStateProcessor_arg)
        end [@@warning "-7-20"]
    

    method getMainStateProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (mainStateProcessor))
        end [@@warning "-7"]
    

    method setProcessGameProcessor : 'any1. 'any1 -> unit = fun (processGameProcessor_arg) ->
        let processGameProcessor_arg = Obj.repr processGameProcessor_arg in
        begin
        processGameProcessor <- (Obj.magic processGameProcessor_arg)
        end [@@warning "-7-20"]
    

    method getProcessGameProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (processGameProcessor))
        end [@@warning "-7"]
    

    method setOpenMenuPaintable : 'any1. 'any1 -> unit = fun (openMenuPaintable_arg) ->
        let openMenuPaintable_arg = Obj.repr openMenuPaintable_arg in
        begin
        openMenuPaintable <- (Obj.magic openMenuPaintable_arg)
        end [@@warning "-7-20"]
    

    method getOpenMenuPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (openMenuPaintable))
        end [@@warning "-7"]
    

    method setPopupMenuInputProcessor : 'any1. 'any1 -> unit = fun (popupMenuInputProcessor_arg) ->
        let popupMenuInputProcessor_arg = Obj.repr popupMenuInputProcessor_arg in
        begin
        popupMenuInputProcessor <- (Obj.magic popupMenuInputProcessor_arg)
        end [@@warning "-7-20"]
    

    method getPopupMenuInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (popupMenuInputProcessor))
        end [@@warning "-7"]
    

    method getSensorGameUpdateProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic sensorGameUpdateProcessor)))
        end [@@warning "-7"]
    

    method getRawGameInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (rawGameInputProcessor))
        end [@@warning "-7"]
    

    method getRawInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (rawInputProcessor))
        end [@@warning "-7"]
    

    method setInputProcessor : 'any1. 'any1 -> unit = fun (inputProcessor_arg) ->
        let inputProcessor_arg = Obj.repr inputProcessor_arg in
        begin
        inputProcessor <- (Obj.magic inputProcessor_arg)
        end [@@warning "-7-20"]
    

    method getInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (inputProcessor))
        end [@@warning "-7"]
    

    method setMenuPaintable : 'any1. 'any1 -> unit = fun (menuPaintable_arg) ->
        let menuPaintable_arg = Obj.repr menuPaintable_arg in
        begin
        menuPaintable <- (Obj.magic menuPaintable_arg)
        end [@@warning "-7-20"]
    

    method getMenuPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (menuPaintable))
        end [@@warning "-7"]
    

    method setFormPaintable : 'any1. 'any1 -> unit = fun (formPaintable_arg) ->
        let formPaintable_arg = Obj.repr formPaintable_arg in
        begin
        formPaintable <- (Obj.magic formPaintable_arg)
        end [@@warning "-7-20"]
    

    method getFormPaintable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (formPaintable))
        end [@@warning "-7"]
    

    method setGameSpecificPaintableP : 'any1. 'any1 -> unit = fun (gameSpecificPaintable_arg) ->
        let gameSpecificPaintable_arg = Obj.repr gameSpecificPaintable_arg in
        begin
        gameSpecificPaintable <- (Obj.magic gameSpecificPaintable_arg)
        end [@@warning "-7-20"]
    

    method getGameSpecificPaintableP : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (gameSpecificPaintable))
        end [@@warning "-7"]
    

    method isSingleThread () : bool =
        begin
        (((Obj.magic (java_call_static "OpenGLFeatureUtil.getInstance" (Obj.repr ())))#isAnyThreed ()) || (SWTUtil.get_isSWT ()))
        end [@@warning "-7"]
    

    method isRunningInAnotherThread () : bool =
        try
        begin
        let features : Features.features ref = ref (((Features.getInstance ()) :> Features.features)) in ();
        let openGLFeatureFactory_arg : OpenGLFeatureFactory.openGLFeatureFactory ref = ref (((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory)) in ();
        if (!features#isDefault (!openGLFeatureFactory_arg#oPENGL_AS_GAME_THREAD)) then begin
            raise (Java_return (Obj.repr (true)))
        end else begin
            raise (Java_return (Obj.repr ((self#isRunning ()))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getType () : int =
        begin
        tYPE
        end [@@warning "-7"]
    

    method getTitle () : string =
        begin
        (super#getTitle ())
        end [@@warning "-7"]
    

    method isPaused () : bool =
        begin
        (super#isPaused ())
        end [@@warning "-7"]

    initializer
      begin
        basicColorFactory <- ((BasicColorFactory.getInstance ()) :> BasicColorFactory.basicColorFactory);
        basicSetColorUtil <- ((BasicColorSetUtil.getInstance ()) :> BasicColorSetUtil.basicColorSetUtil);
        touchFeatureFactory <- ((TouchFeatureFactory.getInstance ()) :> TouchFeatureFactory.touchFeatureFactory);
        openGLFeatureFactory <- ((OpenGLFeatureFactory.getInstance ()) :> OpenGLFeatureFactory.openGLFeatureFactory);
        touchButtonFactory <- ((TouchButtonFactory.getInstance ()) :> TouchButtonFactory.touchButtonFactory);
        gameAdStateFactory <- ((GameAdStateFactory.getInstance ()) :> GameAdStateFactory.gameAdStateFactory);
        gameStrings <- ((GameStrings.getInstance ()) :> GameStrings.gameStrings);
        gameInputStrings <- ((GameInputStrings.getInstance ()) :> GameInputStrings.gameInputStrings);
        gameStateFactory <- ((GameStateFactory.getInstance ()) :> GameStateFactory.gameStateFactory);
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        gameTickDisplayInfoSingleton <- ((GameTickDisplayInfoSingleton.getInstance ()) :> GameTickDisplayInfoSingleton.gameTickDisplayInfoSingleton);
        gameRunnable <- (Obj.repr (Obj.obj (java_new "GameCanvasRunnable" (Obj.repr ((Obj.magic self))))));
        gamePauseRunnable <- (Obj.repr (Obj.obj (java_new "GameCanvasPauseRunnable" (Obj.repr ((Obj.magic self))))));
        formUtil <- ((FormUtil.getInstance ()) :> FormUtil.formUtil);
        myFormUtil <- ((MyFormUtil.getInstance ()) :> MyFormUtil.myFormUtil);
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor ((Obj.magic self))) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        gameSpecificPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        sensorGameUpdateProcessor <- (Obj.repr (Obj.obj (java_new "SingleSensorGameUpdateProcessor" (Obj.repr ()))));
        endGameInfo <- (Obj.repr (Obj.obj (java_new "EndGameInfo" (Obj.repr ()))));
        startIntermissionInterface <- ((new Intermission.intermission ()) :> IntermissionInterface.intermissionInterface);
        endLevelIntermissionInterface <- ((new Intermission.intermission ()) :> IntermissionInterface.intermissionInterface);
        gameLayerManager <- ((AllBinaryGameLayerManager.getNullInstance ()) :> AllBinaryGameLayerManager.allBinaryGameLayerManager);
        gameState <- (gameStateFactory#nO_GAME_STATE :> GameState.gameState);
        gameOver <- false;
        initialized <- false;
        gameStateTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        ();
        highScoreSubmitted <- false;
        realHighScoresPaintable <- ((new HighScoresPaintable.highScoresPaintable ()) :> HighScoresPaintable.highScoresPaintable);
        highScoresPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        localPlayerGameInputList <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        isCheating <- false;
        hashtable <- (Obj.repr (self#stdUtil)#nULL_TABLE);
        isSingleKeyRepeatableProcessing <- false;
        gameInitializationInterfaceFactoryInterface <- ((BasicBuildGameInitializerFactory.get_nULL_BASE_BUILD_GMAE_INITIALIZER_FACTORY ()) :> BasicBuildGameInitializerFactory.basicBuildGameInitializerFactory);
        touchButtonsPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        touchPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        cheatProcessor <- ((NoPlayerGameInput.getInstance ()) :> PlayerGameInput.playerGameInput);
        gameInputProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        endGameProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        realEndGameProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        startIntermissionProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        realStartIntermissionProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        endGamePaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        endGameStatePaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        nonBotPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        intermissionPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        startIntermissionPaintable <- ((NullInitUpdatePaintable.getInstance ()) :> InitUpdatePaintable.initUpdatePaintable);
        mainStateProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        processGameProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        ();
        startLevel <- 0;
        mainMenuInputProcessor <- ((NoMenuInputProcessor.getInstance ()) :> BasicMenuInputProcessor.basicMenuInputProcessor);
        popupMenuInputProcessor <- ((NoMenuInputProcessor.getInstance ()) :> BasicMenuInputProcessor.basicMenuInputProcessor);
        menuInputProcessor <- ((NoMenuInputProcessor.getInstance ()) :> BasicMenuInputProcessor.basicMenuInputProcessor);
        menuForm <- ((ScrollSelectionForm.getNullScrollSelectionForm ()) :> ScrollSelectionForm.scrollSelectionForm);
        formPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        openMenuPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        menuPaintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        currentTouchInputFactory <- ((NoButtonsTouchInputFactory.getInstance ()) :> BaseTouchInput.baseTouchInput);
        colorFillPaintable <- (((Obj.magic (java_call_static "ColorFillPaintableFactory.getInstance" (Obj.repr ())))#getInstance (basicColorFactory#bLACK, true)) :> ColorFillBasePaintable.colorFillBasePaintable);
        baseGameStatistics <- ((Obj.magic (java_call_static "GameStatisticsFactory.getInstance" (Obj.repr ()))) :> BaseGameStatistics.baseGameStatistics);
        primaryPlayerQueue <- ((PrimaryPlayerQueueFactory.getInstance ()) :> PlayerQueue.playerQueue);
        secondaryPlayerQueue <- ((SecondaryPlayerQueueFactory.getInstance ()) :> PlayerQueue.playerQueue);
        bUILD_GAME <- "buildGame";
        gameTypeFactory <- ((GameTypeFactory.getInstance ()) :> GameTypeFactory.gameTypeFactory);
        screenCapture <- ((ScreenCaptureFactory.getInstance ()) :> ScreenCapture.screenCapture);
        basicMotionGesturesHandler <- (Obj.repr (Obj.magic (java_call_static "BasicMotionGesturesHandler.getInstance" (Obj.repr ()))));
        gameKeyEventHandler <- ((GameKeyEventHandler.getInstance ()) :> GameKeyEventHandler.gameKeyEventHandler);
        gameBehavior <- (Obj.repr (Obj.magic 0));
        menuBehavior <- (Obj.repr (Obj.magic 0));
        progressPaintable <- ((ProgressCanvasFactory.getLazyInstance ()) :> PaintableInterface.paintableInterface);
        fontHeightP <- 0;
        gameCanvasStartListener <- ((NullDemoPaintable.get_nULL_DEMO_PAINTABLE ()) :> DemoPaintableInterface.demoPaintableInterface);
        rawGameInputProcessor <- ((Obj.obj (java_new "GameCanvasInputProcessor" (Obj.repr ((Obj.magic self))))) :> InputProcessor.inputProcessor);
        rawInputProcessor <- ((Obj.obj (java_new "FormInputProcessor" (Obj.repr ((Obj.magic self))))) :> InputProcessor.inputProcessor);
        inputProcessor <- ((self#getRawGameInputProcessor ()) :> InputProcessor.inputProcessor);
        yIELD_SLEEP <- 100;
        ();
        (* super(...) is the inherit clause *) ();
        highScoresHelper <- (highScoresFactoryInterface_arg#createHighScoresHelper ());
        gameInitializationInterfaceFactoryInterface <- gameInitializationInterfaceFactoryInterface_arg;
        (self#init (gameLayerManager_arg, buffered));
        highScoresFactoryInterface <- highScoresFactoryInterface_arg;
        if (((Obj.repr ((gameLayerManager#getGameInfo ())#getGameType ())) == (Obj.repr gameTypeFactory#bOT)) || ((Obj.repr ((gameLayerManager#getGameInfo ())#getGameType ())) == (Obj.repr gameTypeFactory#nONE))) then begin
            gameBehavior <- Obj.repr ((Obj.magic (java_call_static "DemoGameBehavior.getInstance" (Obj.repr ()))));
            menuBehavior <- Obj.repr ((Obj.magic (java_call_static "BaseMenuBehavior.getInstance" (Obj.repr ()))))
        end else begin
            gameBehavior <- Obj.repr ((Obj.magic (java_call_static "BaseGameBehavior.getInstance" (Obj.repr ()))));
            menuBehavior <- Obj.repr ((self#getInGameMenuBehavior ()))
        end;
        (self#initPopupMenu ());
        (self#initMenu ());
        (self#initSpecialPaint ());
        ignore ((DisplayChangeEventHandler.getInstance ())#addListenerInterface ((Obj.magic self)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryGameCanvas" (fun arguments -> Obj.repr (new allBinaryGameCanvas (Obj.obj arguments)))


