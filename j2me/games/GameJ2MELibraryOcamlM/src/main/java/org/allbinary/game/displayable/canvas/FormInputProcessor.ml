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
(* import javax.microedition.lcdui.Canvas *)
(* import org.allbinary.game.input.GameKey *)
(* import org.allbinary.game.input.GameKeyEventSourceInterface *)
(* import org.allbinary.game.input.GameKeyFactory *)
(* import org.allbinary.game.input.Input *)
(* import org.allbinary.game.input.InputFactory *)
(* import org.allbinary.game.input.InputProcessor *)
(* import org.allbinary.game.input.PlatformKeyFactory *)
(* import org.allbinary.game.input.event.DownKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.event.UpGameKeyEventHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.PreLogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.string.CommonSeps *)
(* import org.allbinary.string.CommonStrings *)

class formInputProcessor (allBinaryGameCanvas_arg) =
  object (self)
    inherit InputProcessor.inputProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    val mutable downKeyEventHandler : DownKeyEventHandler.downKeyEventHandler = (Obj.magic 0)
    method downKeyEventHandler = downKeyEventHandler
    method set_downKeyEventHandler value' = downKeyEventHandler <- value'
    val mutable upGameKeyEventHandler : UpGameKeyEventHandler.upGameKeyEventHandler = (Obj.magic 0)
    method upGameKeyEventHandler = upGameKeyEventHandler
    method set_upGameKeyEventHandler value' = upGameKeyEventHandler <- value'
    val mutable inputFactory : InputFactory.inputFactory = (Obj.magic 0)
    method inputFactory = inputFactory
    method set_inputFactory value' = inputFactory <- value'
    val mutable platformKeyFactory : Obj.t = Obj.repr 0
    method platformKeyFactory : 'r. 'r = Obj.magic platformKeyFactory
    method set_platformKeyFactory : 'v. 'v -> unit = fun value' -> platformKeyFactory <- Obj.repr value'
    val mutable allBinaryGameCanvas : Obj.t = Obj.repr 0
    method allBinaryGameCanvas : 'r. 'r = Obj.magic allBinaryGameCanvas
    method set_allBinaryGameCanvas : 'v. 'v -> unit = fun value' -> allBinaryGameCanvas <- Obj.repr value'
    
    

    method keyPressedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        (try
            ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append (inputFactory#kEY_CODE_LABEL))#appendint (keyCode))#append ((CommonSeps.getInstance ())#sPACE))#append (inputFactory#dEVICE_ID_LABEL))#appendint (deviceId)))), self, (self#gameInputStrings)#kEY_PRESSED))));
            let input : Obj.t ref = ref ((Obj.repr (inputFactory#getInstanceById (keyCode)))) in ();
            let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput ((Obj.magic allBinaryGameCanvas), (Obj.magic !input))) :> GameKeyEvent.gameKeyEvent)) in ();
            ignore (downKeyEventHandler#fireEventForGameKeyEvent (!gameKeyEvent))
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, (self#gameInputStrings)#aDD_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method keyReleasedByDevice : 'any1. 'any1 * int * int -> unit = fun (canvas, (keyCode : int), (deviceId : int)) ->
        let canvas = Obj.repr canvas in
        begin
        (try
            let input : Obj.t ref = ref ((Obj.repr (inputFactory#getInstanceById (keyCode)))) in ();
            if ((Obj.magic platformKeyFactory)#isEnter ((Obj.magic !input))) then begin
                ignore (Obj.magic (java_call_static "PreLogUtil.put" (Obj.repr ((java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append (inputFactory#kEY_CODE_LABEL))#appendint (keyCode))#append ((CommonSeps.getInstance ())#sPACE))#append (inputFactory#dEVICE_ID_LABEL))#appendint (deviceId)))), self, (self#gameInputStrings)#kEY_RELEASED))));
                let gameKey : GameKey.gameKey ref = ref (((GameKeyFactory.getInstance ())#kEY_NUM0 :> GameKey.gameKey)) in ();
                let gameKeyEventSourceInterface : GameKeyEventSourceInterface.gameKeyEventSourceInterface ref = ref (((Obj.magic (Obj.magic canvas)) :> GameKeyEventSourceInterface.gameKeyEventSourceInterface)) in ();
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput (!gameKeyEventSourceInterface, !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore (upGameKeyEventHandler#fireEvent (!gameKeyEvent));
                ignore ((upGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, (self#gameInputStrings)#aDD_KEY_EVENT, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        downKeyEventHandler <- ((DownKeyEventHandler.getInstance ()) :> DownKeyEventHandler.downKeyEventHandler);
        upGameKeyEventHandler <- ((UpGameKeyEventHandler.getInstance ()) :> UpGameKeyEventHandler.upGameKeyEventHandler);
        inputFactory <- ((InputFactory.getInstance ()) :> InputFactory.inputFactory);
        platformKeyFactory <- (Obj.repr (Obj.magic (java_call_static "PlatformKeyFactory.getInstance" (Obj.repr ()))));
        ();
        ();
        allBinaryGameCanvas <- Obj.repr (allBinaryGameCanvas_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "FormInputProcessor" (fun arguments -> Obj.repr (new formInputProcessor (Obj.obj arguments)))


