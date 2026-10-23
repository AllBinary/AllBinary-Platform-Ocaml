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
(* package org.allbinary.game.ag.layer.hud.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Font *)
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.business.advertisement.GameAdStateFactory *)
(* import org.allbinary.canvas.Processor *)
(* import org.allbinary.game.GameAdState *)
(* import org.allbinary.game.ag.layer.hud.basic.notification.GameNotification *)
(* import org.allbinary.game.ag.layer.hud.basic.notification.GameNotificationHud *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.graphics.CustomGPoint *)
(* import org.allbinary.graphics.GPoint *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.displayable.DisplayInfoSingleton *)
(* import org.allbinary.graphics.font.UpdateMyFontInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.time.GameTickTimeDelayHelper *)
(* import org.allbinary.time.GameTickTimeDelayHelperFactory *)
(* import org.allbinary.time.TimeDelayHelper *)
(* import org.allbinary.util.CircularIndexUtil *)

class playerGameNotificationHud ((location : int), (direction : int), (bufferZone : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit GameNotificationHud.gameNotificationHud (location, direction, bufferZone, basicColor) as super
    val mutable gameTickTimeDelayHelper : GameTickTimeDelayHelper.gameTickTimeDelayHelper = (Obj.magic 0)
    method gameTickTimeDelayHelper = gameTickTimeDelayHelper
    method set_gameTickTimeDelayHelper value' = gameTickTimeDelayHelper <- value'
    val mutable eMPTY_STRING : string = ""
    method eMPTY_STRING = eMPTY_STRING
    method set_eMPTY_STRING value' = eMPTY_STRING <- value'
    val mutable displayInfo : DisplayInfoSingleton.displayInfoSingleton = (Obj.magic 0)
    method displayInfo = displayInfo
    method set_displayInfo value' = displayInfo <- value'
    val mutable timeDelayHelper : TimeDelayHelper.timeDelayHelper = (Obj.magic 0)
    method timeDelayHelper = timeDelayHelper
    method set_timeDelayHelper value' = timeDelayHelper <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable gameNotification : GameNotification.gameNotification = (Obj.magic 0)
    method gameNotification = gameNotification
    method set_gameNotification value' = gameNotification <- value'
    val mutable permanentGameNotification : GameNotification.gameNotification = (Obj.magic 0)
    method permanentGameNotification = permanentGameNotification
    method set_permanentGameNotification value' = permanentGameNotification <- value'
    val mutable setAndRemoveProcessor : Processor.processor = (Obj.magic 0)
    method setAndRemoveProcessor = setAndRemoveProcessor
    method set_setAndRemoveProcessor value' = setAndRemoveProcessor <- value'
    val mutable nextUnremoveableProcessor : Processor.processor = (Obj.magic 0)
    method nextUnremoveableProcessor = nextUnremoveableProcessor
    method set_nextUnremoveableProcessor value' = nextUnremoveableProcessor <- value'
    val mutable processor : Processor.processor = (Obj.magic 0)
    method processor = processor
    method set_processor value' = processor <- value'
    val mutable pERMANENT_GAME_NOTIFICATION : string = ""
    method pERMANENT_GAME_NOTIFICATION = pERMANENT_GAME_NOTIFICATION
    method set_pERMANENT_GAME_NOTIFICATION value' = pERMANENT_GAME_NOTIFICATION <- value'
    val mutable lastString : string = ""
    method lastString = lastString
    method set_lastString value' = lastString <- value'
    val mutable string : string = ""
    method string = string
    method set_string value' = string <- value'
    val mutable point : CustomGPoint.customGPoint = (Obj.magic 0)
    method point = point
    method set_point value' = point <- value'
    val mutable width : int = 0
    method width = width
    method set_width value' = width <- value'
    
    

    method updateMeasurement : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        (try
            ignore (super#updateMeasurement ((Obj.magic graphics)));
            let font : Obj.t ref = ref ((Obj.repr ((Obj.magic graphics)#getFont ()))) in ();
            width <- ((Obj.magic !font)#stringWidth (string));
            ignore (processor#process ());
            processor <- (Processor.getInstance ())
        with e -> begin
            let logUtil : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
            let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
            ignore ((Obj.magic !logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#uPDATE, e))
        end)
        end [@@warning "-7-20"]
    

    method getPoint ((x : int), (y : int)) : GPoint.gPoint =
        begin
        point <- (CustomGPoint.getInstance3 (0, 0));
        ignore (point#setX (x));
        ignore (point#setY (y));
        (point :> GPoint.gPoint)
        end [@@warning "-7"]
    

    method add : 'any3. string * int * 'any3 * bool -> unit = fun ((string_arg : string), (seconds : int), basicColor, (permanent : bool)) ->
        let basicColor = Obj.repr basicColor in
        begin
        if permanent then begin
            if (lastString <> string_arg) then begin
                lastString <- string_arg;
                ignore ((self#logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (pERMANENT_GAME_NOTIFICATION))#append (string_arg)))), self, (self#commonStrings)#aDD))
            end;
            ignore (permanentGameNotification#add (string_arg, seconds, (Obj.magic basicColor)));
            ignore (circularIndexUtil#setSize ((permanentGameNotification#getSize ())))
        end else begin
            ignore (gameNotification#add (string_arg, seconds, (Obj.magic basicColor)))
        end
        end [@@warning "-7-20"]
    

    method processTick () : unit =
        begin
        if (timeDelayHelper#isTime (gameTickTimeDelayHelper#startTime)) then begin
            let gameAdState : Obj.t ref = ref ((Obj.repr ((GameAdStateFactory.getInstance ())#getCurrentInstance ()))) in ();
            if ((Obj.magic !gameAdState)#isShowingAtLocation ((self#getLocation ()))) then begin
                (self#set_offsetY) ((-54))
            end else begin
                (self#set_offsetY) (0)
            end;
            if ((gameNotification#getSize ()) > 0) then begin
                (self#setAndRemove ())
            end else if ((permanentGameNotification#getSize ()) > 0) then begin
                (self#setNextUnremoveable ())
            end else begin
                string <- eMPTY_STRING
            end
        end
        end [@@warning "-7"]
    

    method setAndRemove () : unit =
        begin
        string <- (Obj.magic (gameNotification#stringList#removeAt (0)));
        processor <- setAndRemoveProcessor
        end [@@warning "-7"]
    

    method setAndRemoveProcess () : unit =
        begin
        ignore (self#setX (((((displayInfo#getLastWidth ()) - width)) asr 1)));
        ignore (point#setX ((self#getX ())));
        ignore (point#setY ((self#getY ())));
        let time : int ref = ref ((Obj.magic (gameNotification#timeList#removeAt (0)))) in ();
        let iTime : int ref = ref ((!time * 1000)) in ();
        if (!iTime = 0) then begin
            iTime := 500
        end;
        timeDelayHelper#set_delay (!iTime);
        ignore (self#setBasicColorP ((Obj.magic (gameNotification#colorList#removeAt (0)))))
        end [@@warning "-7"]
    

    method setNextUnremoveable () : unit =
        begin
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        string <- (Obj.magic permanentGameNotification#stringList#objectArray.(!index));
        processor <- nextUnremoveableProcessor
        end [@@warning "-7"]
    

    method setNextUnremoveableProcess () : unit =
        begin
        let index : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore (self#setX (((((displayInfo#getLastWidth ()) - width)) asr 1)));
        ignore (point#setX ((self#getX ())));
        ignore (point#setY ((self#getY ())));
        let time : int ref = ref ((Obj.magic permanentGameNotification#timeList#objectArray.(!index))) in ();
        timeDelayHelper#set_delay ((!time * 1000));
        ignore (self#setBasicColorP ((Obj.magic permanentGameNotification#colorList#objectArray.(!index))));
        ignore (circularIndexUtil#next ())
        end [@@warning "-7"]
    

    method clear () : unit =
        begin
        ignore (gameNotification#clear ());
        ignore (permanentGameNotification#clear ())
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((self#myFontProcessor)#process ((Obj.magic graphics)));
        ignore (super#paintString ((Obj.magic graphics), string))
        end [@@warning "-7-20"]

    initializer
      begin
        gameTickTimeDelayHelper <- ((GameTickTimeDelayHelperFactory.getInstance ()) :> GameTickTimeDelayHelper.gameTickTimeDelayHelper);
        eMPTY_STRING <- (StringUtil.getInstance ())#eMPTY_STRING;
        displayInfo <- ((DisplayInfoSingleton.getInstance ()) :> DisplayInfoSingleton.displayInfoSingleton);
        timeDelayHelper <- ((new TimeDelayHelper.timeDelayHelper (0)) :> TimeDelayHelper.timeDelayHelper);
        ();
        gameNotification <- ((new GameNotification.gameNotification ()) :> GameNotification.gameNotification);
        permanentGameNotification <- ((new GameNotification.gameNotification ()) :> GameNotification.gameNotification);
        setAndRemoveProcessor <- ((new SetAndRemoveProcessor.setAndRemoveProcessor (self)) :> Processor.processor);
        nextUnremoveableProcessor <- ((new NextUnremoveableProcessor.nextUnremoveableProcessor (self)) :> Processor.processor);
        processor <- ((Processor.getInstance ()) :> Processor.processor);
        pERMANENT_GAME_NOTIFICATION <- "Permanent Game Notification: ";
        lastString <- (StringUtil.getInstance ())#eMPTY_STRING;
        string <- eMPTY_STRING;
        point <- ((CustomGPoint.get_nULL_CUSTOM_POINT ()) :> CustomGPoint.customGPoint);
        width <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        circularIndexUtil <- (CircularIndexUtil.createInstance (0));
        let gameNotificationEventHandler : GameNotificationEventHandler.gameNotificationEventHandler ref = ref (((GameNotificationEventHandler.getInstance ()) :> GameNotificationEventHandler.gameNotificationEventHandler)) in ();
        ignore (!gameNotificationEventHandler#removeAllListeners ());
        ignore (!gameNotificationEventHandler#addListenerInterface (self))
      end
  end
let () = java_register_constructor "PlayerGameNotificationHud" (fun arguments -> Obj.repr (new playerGameNotificationHud (Obj.obj arguments)))


