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
(* package org.allbinary.graphics.canvas.transition.progress *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.CommandListener *)
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.NullCanvas *)
(* import javax.microedition.lcdui.NullCommandListener *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.canvas.RunnableCanvas *)
(* import org.allbinary.game.commands.GameCommandsFactory *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.CanvasStrings *)
(* import org.allbinary.graphics.font.MyFontProcessor *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.graphics.font.UpdateMyFontProcessor *)
(* import org.allbinary.graphics.form.item.ABCustomGaugeItem *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.graphics.paint.PaintableInterface *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.midlet.AllBinaryMidlet *)
(* import org.allbinary.thread.PathFindingThreadPool *)
(* import org.allbinary.thread.ThreadPool *)

class progressCanvas ((_title : string), (backgroundBasicColor_arg : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object (self)
    inherit RunnableCanvas.runnableCanvas ((NullCommandListener.get_nULL_COMMAND_LISTENER ()), (CanvasStrings.getInstance ())#eMPTY_CHILD_NAME_LIST, false)
    val mutable hasPainted : bool = false
    method hasPainted = hasPainted
    method set_hasPainted value' = hasPainted <- value'
    val mutable backgroundBasicColor : BasicColor.basicColor = (Obj.magic 0)
    method backgroundBasicColor = backgroundBasicColor
    method set_backgroundBasicColor value' = backgroundBasicColor <- value'
    val mutable gAUGE_PAINTABLE : Paintable.paintable = (Obj.magic 0)
    method gAUGE_PAINTABLE = gAUGE_PAINTABLE
    method set_gAUGE_PAINTABLE value' = gAUGE_PAINTABLE <- value'
    val mutable maxValue : float = 0.0
    method maxValue = maxValue
    method set_maxValue value' = maxValue <- value'
    val mutable gauge : Obj.t = Obj.repr 0
    method gauge : 'r. 'r = Obj.magic gauge
    method set_gauge : 'v. 'v -> unit = fun value' -> gauge <- Obj.repr value'
    val mutable tEXT : string = ""
    method tEXT = tEXT
    method set_tEXT value' = tEXT <- value'
    val mutable updateMyFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method updateMyFontProcessor = updateMyFontProcessor
    method set_updateMyFontProcessor value' = updateMyFontProcessor <- value'
    val mutable myFontProcessor : MyFontProcessor.myFontProcessor = (Obj.magic 0)
    method myFontProcessor = myFontProcessor
    method set_myFontProcessor value' = myFontProcessor <- value'
    val mutable allbinaryMidlet : AllBinaryMidlet.allBinaryMidlet = (Obj.magic 0)
    method allbinaryMidlet = allbinaryMidlet
    method set_allbinaryMidlet value' = allbinaryMidlet <- value'
    val mutable value : float = 0.0
    method value = value
    method set_value value' = value <- value'
    val mutable text : string = ""
    method text = text
    method set_text value' = text <- value'
    val mutable background : bool = false
    method background = background
    method set_background value' = background <- value'
    val mutable paintable : PaintableInterface.paintableInterface = (Obj.magic 0)
    method paintable = paintable
    method set_paintable value' = paintable <- value'
    val mutable inProgress : bool = false
    method inProgress = inProgress
    method set_inProgress value' = inProgress <- value'
    val mutable iN_GAME_PROCESSOR : Processor.processor = (Obj.magic 0)
    method iN_GAME_PROCESSOR = iN_GAME_PROCESSOR
    method set_iN_GAME_PROCESSOR value' = iN_GAME_PROCESSOR <- value'
    val mutable inGameProcessor : Processor.processor = (Obj.magic 0)
    method inGameProcessor = inGameProcessor
    method set_inGameProcessor value' = inGameProcessor <- value'
    val mutable progressEndListener : ProgressEndListener.progressEndListener = (Obj.magic 0)
    method progressEndListener = progressEndListener
    method set_progressEndListener value' = progressEndListener <- value'
    val mutable backgroundLabel : string = ""
    method backgroundLabel = backgroundLabel
    method set_backgroundLabel value' = backgroundLabel <- value'
    val mutable sTART_BACKGROUND : string = ""
    method sTART_BACKGROUND = sTART_BACKGROUND
    method set_sTART_BACKGROUND value' = sTART_BACKGROUND <- value'
    val mutable aDD_PORTION : string = ""
    method aDD_PORTION = aDD_PORTION
    method set_aDD_PORTION value' = aDD_PORTION <- value'
    val mutable aDD_EARLY_PORTION : string = ""
    method aDD_EARLY_PORTION = aDD_EARLY_PORTION
    method set_aDD_EARLY_PORTION value' = aDD_EARLY_PORTION <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
        ignore ((Obj.magic gauge)#setHeight ((((Obj.magic !font)#getHeight ()) + 2)));
        myFontProcessor <- (MyFontProcessor.getInstance ())
        end [@@warning "-7-20"]
    

    method init : 'any1. 'any1 -> unit = fun (gameMidlet) ->
        let gameMidlet = Obj.repr gameMidlet in
        begin
        allbinaryMidlet <- (Obj.magic gameMidlet)
        end [@@warning "-7-20"]
    

    method update : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method initCommands : 'any1. 'any1 -> unit = fun (_cmdListener) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getMaxValue () : float =
        begin
        maxValue
        end [@@warning "-7"]
    

    method start () : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#sTART_METHOD_NAME));
        (self#setBackground (true));
        ignore ((Obj.magic gauge)#setHeight (30));
        ignore ((Obj.magic gauge)#setLabel (commonStrings#pLEASE_WAIT));
        (self#setText (tEXT));
        (self#setValue (0));
        inGameProcessor <- (Processor.getInstance ());
        paintable <- gAUGE_PAINTABLE;
        inProgress <- true
        end [@@warning "-7"]
    

    method startBackground ((background_arg : bool)) : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, sTART_BACKGROUND));
        (self#setBackground (background_arg));
        myFontProcessor <- updateMyFontProcessor;
        ignore ((Obj.magic gauge)#setLabel (backgroundLabel));
        (self#setText (tEXT));
        (self#setValue (0));
        inGameProcessor <- (Processor.getInstance ());
        paintable <- gAUGE_PAINTABLE
        end [@@warning "-7"]
    

    method endActual () : unit =
        begin
        ignore (allbinaryMidlet#commandAction ((GameCommandsFactory.getInstance ())#sHOW_GAME_CANVAS, (Obj.magic (java_call_static "NullCanvas.get_nULL_CANVAS" (Obj.repr ())))));
        inProgress <- false;
        (self#inGame ())
        end [@@warning "-7"]
    

    method inGame () : unit =
        begin
        ignore (progressEndListener#onEndEvent ());
        inGameProcessor <- iN_GAME_PROCESSOR
        end [@@warning "-7"]
    

    method end_ () : unit =
        begin
        ignore (logUtil#putF (commonStrings#sTART, self, commonStrings#eND_METHOD_NAME));
        ignore ((Obj.magic gauge)#setValue ((self#getMaxValue ())));
        (self#endActual ());
        paintable <- (NullPaintable.getInstance ())
        end [@@warning "-7"]
    

    method endFromInitialLazyLoadingComplete () : unit =
        begin
        ignore (progressEndListener#onEndEvent ());
        ignore ((Obj.magic gauge)#setValue ((self#getMaxValue ())));
        inGameProcessor <- iN_GAME_PROCESSOR
        end [@@warning "-7"]
    

    method isInGame () : bool =
        try
        begin
        if ((Obj.repr inGameProcessor) == (Obj.repr iN_GAME_PROCESSOR)) then begin
            raise (Java_return (Obj.repr (true)))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method endIfPaintedSinceStart () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method addEarlyPortion ((value_arg : int), (text_arg : string), (index : int)) : unit =
        begin
        (self#setText ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (text_arg))#append ((java_string_of (Obj.repr ((SmallIntegerSingletonFactory.getInstance ())#getAt (index))))))))));
        ignore ((Obj.magic gauge)#setValue ((((Obj.magic gauge)#getValue ()) +. ((self#getMaxValue ()) /. (float_of_int (value_arg))))))
        end [@@warning "-7"]
    

    method addPortion ((value_arg : int), (text_arg : string), (index : int)) : unit =
        begin
        (self#setText ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (text_arg))#append ((java_string_of (Obj.repr ((SmallIntegerSingletonFactory.getInstance ())#getAt (index))))))))));
        ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (text, self, aDD_PORTION))));
        ignore ((Obj.magic gauge)#setValue ((((Obj.magic gauge)#getValue ()) +. ((self#getMaxValue ()) /. (float_of_int (value_arg))))))
        end [@@warning "-7"]
    

    method addNormalPortion ((value_arg : int), (text_arg : string)) : unit =
        begin
        if (text <> text_arg) then begin
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr (text_arg, self, aDD_PORTION))))
        end;
        (self#setText (text_arg));
        ignore ((Obj.magic gauge)#setValue ((((Obj.magic gauge)#getValue ()) +. ((self#getMaxValue ()) /. (float_of_int (value_arg))))))
        end [@@warning "-7"]
    

    method setValue ((value_arg : int)) : unit =
        begin
        value <- (float_of_int (value_arg));
        ignore ((Obj.magic gauge)#setValue ((float_of_int (value_arg))))
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (paintable#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paint2 : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (myFontProcessor#process ((Obj.magic graphics)));
        ignore ((Obj.magic graphics)#setColor ((backgroundBasicColor#intValue ())));
        ignore ((Obj.magic graphics)#fillRect (0, 0, (displayInfo#getLastWidth ()), (displayInfo#getLastHeight ())));
        ignore ((Obj.magic gauge)#paintXY ((Obj.magic graphics), 0, 0));
        hasPainted <- true
        end [@@warning "-7-20"]
    

    method paintThreed : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getValue () : float =
        begin
        value
        end [@@warning "-7"]
    

    method setText ((text_arg : string)) : unit =
        begin
        text <- text_arg
        end [@@warning "-7"]
    

    method getText () : string =
        begin
        text
        end [@@warning "-7"]
    

    method setBackground ((background_arg : bool)) : unit =
        begin
        background <- background_arg
        end [@@warning "-7"]
    

    method isBackground () : bool =
        begin
        background
        end [@@warning "-7"]

    initializer
      begin
        hasPainted <- false;
        ();
        gAUGE_PAINTABLE <- ((new ProgressPaintable.progressPaintable (self)) :> Paintable.paintable);
        maxValue <- 100.0;
        ();
        tEXT <- commonStrings#lOADING;
        updateMyFontProcessor <- ((new UpdateMyFontProcessor.updateMyFontProcessor (self)) :> MyFontProcessor.myFontProcessor);
        myFontProcessor <- (updateMyFontProcessor :> MyFontProcessor.myFontProcessor);
        allbinaryMidlet <- ((AllBinaryMidlet.getNullInstance ()) :> AllBinaryMidlet.allBinaryMidlet);
        value <- 0.0;
        text <- tEXT;
        background <- true;
        paintable <- (gAUGE_PAINTABLE :> PaintableInterface.paintableInterface);
        inProgress <- false;
        iN_GAME_PROCESSOR <- ((object (self)
        inherit Processor.processor () as super
        pathFindingThreadPool <- (Obj.repr (PathFindingThreadPool.getInstance ()))
        

        method process () : unit =
            begin
            ignore (pathFindingThreadPool#runAPriorityTask ())
            end
    end) :> Processor.processor);
        inGameProcessor <- ((Processor.getInstance ()) :> Processor.processor);
        progressEndListener <- ((ProgressEndListener.get_instance ()) :> ProgressEndListener.progressEndListener);
        backgroundLabel <- "Background AI Game Loading...";
        sTART_BACKGROUND <- "startBackground";
        aDD_PORTION <- "addPortion";
        aDD_EARLY_PORTION <- "addEarlyPortion";
        ();
        (* super(...) is the inherit clause *) ();
        backgroundBasicColor <- backgroundBasicColor_arg;
        gauge <- Obj.repr ((Obj.obj (java_new "ABCustomGaugeItem" (Obj.repr ((StringUtil.getInstance ())#eMPTY_STRING, (int_of_float (maxValue)), 0, backgroundBasicColor_arg, foregroundBasicColor)))))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ProgressCanvas" (fun arguments -> Obj.repr (new progressCanvas (Obj.obj arguments)))


