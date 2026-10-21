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
(* import javax.microedition.lcdui.Command *)
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.J2MEUtil *)
(* import org.allbinary.game.GameInfo *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.game.displayable.canvas.GameCommandCanvas *)
(* import org.allbinary.game.layer.AllBinaryGameLayerManager *)
(* import org.allbinary.game.paint.ColorFillBasePaintable *)
(* import org.allbinary.game.paint.ColorFillPaintableFactory *)
(* import org.allbinary.game.score.HighScoreCommandsFactory *)
(* import org.allbinary.game.score.HighScores *)
(* import org.allbinary.game.score.HighScoresCanvasInputProcessor *)
(* import org.allbinary.game.score.HighScoresCanvasInputProcessorFactoryInterface *)
(* import org.allbinary.game.score.HighScoresFactoryInterface *)
(* import org.allbinary.game.score.HighScoresHelperBase *)
(* import org.allbinary.game.score.HighScoresPaintable *)
(* import org.allbinary.game.score.HighScoresResultsListener *)
(* import org.allbinary.game.score.NoHighScoresFactory *)
(* import org.allbinary.game.score.NullHighScoresSingletonFactory *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.SimpleTextPaintable *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.thread.ARunnable *)
(* import org.allbinary.thread.SecondaryThreadPool *)
(* import org.allbinary.logic.ABSystemWrapper *)

let nAME : string = "HighScoresCanvas"
let get_nAME () = nAME
let () = java_register_static "HighScoresCanvas.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class highScoresCanvas (commandListener, (allBinaryGameLayerManager : AllBinaryGameLayerManager.allBinaryGameLayerManager), (gameInfo_arg : GameInfo.gameInfo), (paintable_arg : HighScoresPaintable.highScoresPaintable), (highScoresFactoryInterface_arg : HighScoresFactoryInterface.highScoresFactoryInterface), highScoresCanvasInputProcessorFactoryInterface) =
  object (self)
    inherit GameCommandCanvas.gameCommandCanvas (commandListener, nAME, (allBinaryGameLayerManager#getBackgroundBasicColor ()), (allBinaryGameLayerManager#getForegroundBasicColor ())) as super
    val mutable paintable : Paintable.paintable = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    val mutable highScoreCommandsFactory : HighScoreCommandsFactory.highScoreCommandsFactory = (Obj.magic 0)
    method highScoreCommandsFactory = highScoreCommandsFactory
    method set_highScoreCommandsFactory value' = highScoreCommandsFactory <- value'
    val mutable waitPaintable : SimpleTextPaintable.simpleTextPaintable = (Obj.magic 0)
    method waitPaintable = waitPaintable
    method set_waitPaintable value' = waitPaintable <- value'
    val mutable highScoresPaintable : HighScoresPaintable.highScoresPaintable = (Obj.magic 0)
    method highScoresPaintable = highScoresPaintable
    method set_highScoresPaintable value' = highScoresPaintable <- value'
    val mutable highScoresFactoryInterface : HighScoresFactoryInterface.highScoresFactoryInterface = (Obj.magic 0)
    method highScoresFactoryInterface = highScoresFactoryInterface
    method set_highScoresFactoryInterface value' = highScoresFactoryInterface <- value'
    val mutable colorFillPaintable : ColorFillBasePaintable.colorFillBasePaintable = (Obj.magic 0)
    method colorFillPaintable = colorFillPaintable
    method set_colorFillPaintable value' = colorFillPaintable <- value'
    val mutable highScoresHelper : HighScoresHelperBase.highScoresHelperBase = (Obj.magic 0)
    method highScoresHelper = highScoresHelper
    method set_highScoresHelper value' = highScoresHelper <- value'
    val mutable gameInfo : GameInfo.gameInfo = (Obj.magic 0)
    method gameInfo = gameInfo
    method set_gameInfo value' = gameInfo <- value'
    val mutable highScoresCanvasInputProcessor : Obj.t = Obj.repr 0
    method highScoresCanvasInputProcessor : 'r. 'r = Obj.magic highScoresCanvasInputProcessor
    method set_highScoresCanvasInputProcessor : 'v. 'v -> unit = fun value' -> highScoresCanvasInputProcessor <- Obj.repr value'
    val mutable currentCommand : Obj.t = Obj.repr 0
    method currentCommand : 'r. 'r = Obj.magic currentCommand
    method set_currentCommand : 'v. 'v -> unit = fun value' -> currentCommand <- Obj.repr value'
    val mutable hasPainted : bool = false
    method hasPainted = hasPainted
    method set_hasPainted value' = hasPainted <- value'
    
    

    method initCommands : 'any1. 'any1 -> unit = fun (cmdListener) ->
        let cmdListener = Obj.repr cmdListener in
        begin
        ignore (self#removeAllCommands ());
        ignore (self#addCommand ((GameCommandsFactory.getInstance ())#cLOSE_AND_SHOW_GAME_CANVAS));
        ignore (self#setCommandListener ((Obj.magic cmdListener)))
        end [@@warning "-7-20"]
    

    method open_ () : unit =
        begin
        ignore (super#open_ ());
        ignore ((Obj.magic highScoresCanvasInputProcessor)#open_ ())
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        ignore (super#close ());
        ignore ((Obj.magic highScoresCanvasInputProcessor)#close ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (colorFillPaintable#paint ((Obj.magic graphics)));
        ignore (paintable#paint ((Obj.magic graphics)));
        if ((Obj.repr waitPaintable) != (Obj.repr paintable)) then begin
            ignore ((Obj.magic highScoresCanvasInputProcessor)#paint ((Obj.magic graphics)))
        end;
        ignore (super#paint ((Obj.magic graphics)));
        hasPainted <- true
        end [@@warning "-7-20"]
    

    method executeUpdate () : unit =
        begin
        (try
            ignore (highScoresFactoryInterface#fetchHighScores ((self#getGameInfo ()), self))
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, commonStrings#uPDATE, e))
        end)
        end [@@warning "-7"]
    

    method getHighScoresPaintable () : HighScoresPaintable.highScoresPaintable =
        begin
        (highScoresPaintable :> HighScoresPaintable.highScoresPaintable)
        end [@@warning "-7"]
    

    method setHighScoresArray (highScoresArray) : unit =
        begin
        (try
            if (highScoresArray != (Obj.magic 0)) then begin
                ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#sTART))#appendint ((Array.length highScoresArray))))), self, "setHighScoresArray"))
            end else begin
                ignore (logUtil#putF (commonStrings#sTART, self, "setHighScoresArray"))
            end;
            ignore (highScoresHelper#setHighScoresArray (highScoresArray));
            (self#updateCommand ((Obj.magic currentCommand)));
            (self#setPaintable ((self#getHighScoresPaintable ())))
        with e -> begin
            ignore (logUtil#put (commonStrings#eXCEPTION, self, commonStrings#uPDATE, e))
        end)
        end [@@warning "-7"]
    

    method updateCommand : 'any1. 'any1 -> unit = fun (command) ->
        let command = Obj.repr command in
        begin
        ignore (logUtil#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (commonStrings#sTART))#append ((stringUtil#toString ((Obj.magic command))))))), self, commonStrings#uPDATE));
        let gameCommandsFactory : GameCommandsFactory.gameCommandsFactory ref = ref (((GameCommandsFactory.getInstance ()) :> GameCommandsFactory.gameCommandsFactory)) in ();
        if (highScoreCommandsFactory#isHighScoreCommand ((Obj.magic command))) then begin
            let index : int ref = ref ((highScoreCommandsFactory#getIndex ((Obj.magic command)))) in ();
            let nextIndex : int ref = ref ((!index + 1)) in ();
            let highScoresArray : Obj.t ref = ref ((Obj.repr (highScoresHelper#getHighScoresArray ()))) in ();
            if (!nextIndex >= (Array.length (Obj.magic !highScoresArray))) then begin
                nextIndex := 0
            end;
            if ((Array.length (Obj.magic !highScoresArray)) > 0) then begin
                ignore ((self#getHighScoresPaintable ())#setHighScores ((Obj.magic !highScoresArray).(!index)))
            end else begin
                ignore ((self#getHighScoresPaintable ())#setHighScores ((NullHighScoresSingletonFactory.getInstance ())))
            end;
            if (!index <> !nextIndex) then begin
                ignore (self#removeAllCommands ());
                ignore (self#addCommand (!gameCommandsFactory#cLOSE_AND_SHOW_GAME_CANVAS));
                ignore (self#addCommand (highScoreCommandsFactory#hIGH_SCORE_COMMANDS.(!nextIndex)))
            end
        end;
        currentCommand <- Obj.repr ((Obj.magic command));
        (self#close ());
        ignore (super#initMenu ());
        (self#open_ ());
        ignore (repaintBehavior#onChangeRepaint (self))
        end [@@warning "-7-20"]
    

    method getGameInfo () : GameInfo.gameInfo =
        begin
        (gameInfo :> GameInfo.gameInfo)
        end [@@warning "-7"]
    

    method setPaintable : 'any1. 'any1 -> unit = fun (paintable_arg) ->
        let paintable_arg = Obj.repr paintable_arg in
        begin
        paintable <- (Obj.magic paintable_arg);
        ignore (repaintBehavior#onChangeRepaint (self))
        end [@@warning "-7-20"]

    initializer
      begin
        paintable <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        highScoreCommandsFactory <- ((HighScoreCommandsFactory.getInstance ()) :> HighScoreCommandsFactory.highScoreCommandsFactory);
        waitPaintable <- ((new SimpleTextPaintable.simpleTextPaintable (commonStrings#pLEASE_WAIT_FOR_SERVER, (BasicColorFactory.getInstance ())#wHITE)) :> SimpleTextPaintable.simpleTextPaintable);
        ();
        ();
        ();
        highScoresHelper <- ((new HighScoresHelperBase.highScoresHelperBase ()) :> HighScoresHelperBase.highScoresHelperBase);
        ();
        ();
        currentCommand <- (Obj.repr highScoreCommandsFactory#hIGH_SCORE_COMMANDS.(0));
        hasPainted <- false;
        ();
        (* super(...) is the inherit clause *) ();
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR));
        highScoresPaintable <- paintable_arg;
        highScoresFactoryInterface <- highScoresFactoryInterface_arg;
        highScoresCanvasInputProcessor <- Obj.repr ((highScoresCanvasInputProcessorFactoryInterface#getInstance (self)));
        gameInfo <- gameInfo_arg;
        ignore (waitPaintable#setBasicColorP ((allBinaryGameLayerManager#getForegroundBasicColor ())));
        ignore ((self#getHighScoresPaintable ())#setBasicColorP ((allBinaryGameLayerManager#getForegroundBasicColor ())));
        colorFillPaintable <- ((Obj.magic (java_call_static "ColorFillPaintableFactory.getInstance" (Obj.repr ())))#getInstance ((allBinaryGameLayerManager#getBackgroundBasicColor ()), false));
        if ((Obj.repr (highScoresHelper#getHighScoresArray ())) == (Obj.repr (NoHighScoresFactory.getInstance ())#nO_HIGH_SCORES)) then begin
            (self#setPaintable (waitPaintable))
        end else begin
            ignore (logUtil#putF ("Show HighScores that are already loaded", self, commonStrings#cONSTRUCTOR));
            (self#updateCommand ((Obj.magic currentCommand)));
            (self#setPaintable ((self#getHighScoresPaintable ())))
        end;
        (* Java nested class HighScoreRunnable: move it to its own module *) ();
        ignore ((SecondaryThreadPool.getInstance ())#runTask ((new HighScoreRunnable.highScoreRunnable (self))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "HighScoresCanvas" (fun arguments -> Obj.repr (new highScoresCanvas (Obj.obj arguments)))


