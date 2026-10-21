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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.logic.system.security.licensing.LockedFeatureNotificationUtil *)
(* import org.allbinary.logic.system.security.licensing.LockedUtil *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.displayable.canvas.AllBinaryGameCanvas *)
(* import org.allbinary.game.displayable.canvas.PreGameSelectorPaintable *)
(* import org.allbinary.game.input.event.GameKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEventUtil *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.media.audio.SecondaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SelectSound *)
(* import org.allbinary.media.graphics.geography.map.racetrack.MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface *)
(* import org.allbinary.thread.ABRunnable *)
(* import org.allbinary.thread.ThreadObjectUtil *)
(* import org.allbinary.time.TimeDelayHelper *)

class mapSelectionGameInputProcessor ((gameCanvas_arg : AllBinaryGameCanvas.allBinaryGameCanvas), (raceTrackGeographicMapInterfaceFactoryInterface_arg : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface.multiLevelRaceTrackGeographicMapInterfaceFactoryInterface), (mapSelectorPaintable : PreGameSelectorPaintable.preGameSelectorPaintable), (lockedIndex_arg : int)) =
  object (self)
    inherit Processor.processor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable gameCanvas : AllBinaryGameCanvas.allBinaryGameCanvas = (Obj.magic 0)
    method gameCanvas = gameCanvas
    method set_gameCanvas value' = gameCanvas <- value'
    val mutable raceTrackGeographicMapInterfaceFactoryInterface : MultiLevelRaceTrackGeographicMapInterfaceFactoryInterface.multiLevelRaceTrackGeographicMapInterfaceFactoryInterface = (Obj.magic 0)
    method raceTrackGeographicMapInterfaceFactoryInterface = raceTrackGeographicMapInterfaceFactoryInterface
    method set_raceTrackGeographicMapInterfaceFactoryInterface value' = raceTrackGeographicMapInterfaceFactoryInterface <- value'
    val mutable preGameSelectorPaintable : PreGameSelectorPaintable.preGameSelectorPaintable = (Obj.magic 0)
    method preGameSelectorPaintable = preGameSelectorPaintable
    method set_preGameSelectorPaintable value' = preGameSelectorPaintable <- value'
    val mutable inputTimeHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method inputTimeHelper = inputTimeHelper
    method set_inputTimeHelper value' = inputTimeHelper <- value'
    val mutable playerGameInput : PlayerGameInput.playerGameInput = (Obj.magic 0)
    method playerGameInput = playerGameInput
    method set_playerGameInput value' = playerGameInput <- value'
    val mutable lockedIndex : int = 0
    method lockedIndex = lockedIndex
    method set_lockedIndex value' = lockedIndex <- value'
    val mutable abRunnable : ABRunnable.aBRunnable = (Obj.magic 0)
    method abRunnable = abRunnable
    method set_abRunnable value' = abRunnable <- value'
    
    

    method process () : unit =
        begin
        ignore ((self#getPlayerGameInput ())#update ())
        end [@@warning "-7"]
    

    method onInput : 'any1. 'any1 -> unit = fun (list) ->
        let list = Obj.repr list in
        begin
        let size : int ref = ref (((Obj.magic list)#size ())) in ();
        for index = 0 to !size - 1 do
            let anyType : Obj.t ref = ref ((Obj.repr ((Obj.magic list)#get (index)))) in ();
            let key : int ref = ref ((GameKeyEventUtil.getKey (!anyType))) in ();
            if ((((!key = (Obj.magic (java_call_static "Canvas.get_lEFT" (Obj.repr ())))) || (!key = (Obj.magic (java_call_static "Canvas.get_rIGHT" (Obj.repr ()))))) || (!key = (Obj.magic (java_call_static "Canvas.get_uP" (Obj.repr ()))))) || (!key = (Obj.magic (java_call_static "Canvas.get_dOWN" (Obj.repr ()))))) then begin
                if (inputTimeHelper#isTimeTNT ()) then begin
                    ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
                    ignore ((preGameSelectorPaintable#getPreGameSelectionForm ())#processInputKey (!key));
                    raise Java_break
                end
            end else if (!key = (Obj.magic (java_call_static "Canvas.get_kEY_NUM0" (Obj.repr ())))) then begin
                let selectedIndex : int ref = ref (((preGameSelectorPaintable#getPreGameSelectionForm ())#getSelectedIndex ())) in ();
                if ((!selectedIndex < lockedIndex) || (not ((Obj.magic (java_call_static "LockedUtil.getInstance" (Obj.repr ())))#isLocked ()))) then begin
                    if (not (abRunnable#isRunning ())) then begin
                        ignore (abRunnable#setRunning (true));
                        ignore ((ThreadObjectUtil.getInstance ())#processThread (abRunnable))
                    end;
                    raise Java_break
                end else begin
                    ignore ((LockedFeatureNotificationUtil.getInstance ())#fire ())
                end
            end;
            ignore ((Obj.magic list)#clear ())
        done
        end [@@warning "-7-20"]
    

    method processInput : 'any1. 'any1 -> unit = fun (_layerManager) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method initInputProcessors () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getName () : string =
        begin
        (java_string_of (Obj.repr self))
        end [@@warning "-7"]
    

    method getPlayerGameInput () : PlayerGameInput.playerGameInput =
        begin
        (playerGameInput :> PlayerGameInput.playerGameInput)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        inputTimeHelper <- ((new TimeDelayHelper.timeDelayHelper (650)) :> TimeDelayHelper.timeDelayHelper);
        ();
        ();
        abRunnable <- ((object (self)
        inherit ABRunnable.aBRunnable () as super
        

        method run () : unit =
            begin
            (try
                ignore (self#setRunning (true));
                ignore ((SecondaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
                let track : int ref = ref ((((preGameSelectorPaintable#getPreGameSelectionForm ())#getSelectedIndex ()) + 1)) in ();
                let wave : int ref = ref ((raceTrackGeographicMapInterfaceFactoryInterface#getFirstWaveWithTrack (!track))) in ();
                ignore (((gameCanvas#getLayerManager ())#getGameInfo ())#setCurrentLevel (!wave));
                ignore (gameCanvas#buildGameInit (false));
                ignore ((GameKeyEventHandler.getInstance ())#removeListener ((self#getPlayerGameInput ())));
                ignore (self#setRunning (false))
            with e -> begin
                ignore (self#setRunning (false));
                let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic !logUtil_arg)#put (!commonStrings#eXCEPTION, self, !commonStrings#rUN, e))
            end)
            end
    end) :> ABRunnable.aBRunnable);
        ();
        gameCanvas <- gameCanvas_arg;
        raceTrackGeographicMapInterfaceFactoryInterface <- raceTrackGeographicMapInterfaceFactoryInterface_arg;
        preGameSelectorPaintable <- mapSelectorPaintable;
        playerGameInput <- (new GameInputProcessorComposite.gameInputProcessorComposite ("Map Selection", self));
        lockedIndex <- lockedIndex_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "MapSelectionGameInputProcessor" (fun arguments -> Obj.repr (new mapSelectionGameInputProcessor (Obj.obj arguments)))


