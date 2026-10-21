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
(* import org.allbinary.game.input.InputProcessor *)
(* import org.allbinary.game.input.PlatformInputMappingFactory *)
(* import org.allbinary.game.input.event.DownGameKeyEventHandler *)
(* import org.allbinary.game.input.event.DownKeyEventHandler *)
(* import org.allbinary.game.input.event.GameKeyEvent *)
(* import org.allbinary.game.input.event.GameKeyEventFactory *)
(* import org.allbinary.game.input.event.UpGameKeyEventHandler *)
(* import org.allbinary.game.input.mapping.InputToGameKeyMapping *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.logic.string.StringMaker *)

class gameCanvasInputProcessor (allBinaryGameCanvas_arg) =
  object (self)
    inherit InputProcessor.inputProcessor ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable allBinaryGameCanvas : Obj.t = Obj.repr 0
    method allBinaryGameCanvas : 'r. 'r = Obj.magic allBinaryGameCanvas
    method set_allBinaryGameCanvas : 'v. 'v -> unit = fun value' -> allBinaryGameCanvas <- Obj.repr value'
    val mutable downGameKeyEventHandler : DownGameKeyEventHandler.downGameKeyEventHandler = (Obj.magic 0)
    method downGameKeyEventHandler = downGameKeyEventHandler
    method set_downGameKeyEventHandler value' = downGameKeyEventHandler <- value'
    val mutable upGameKeyEventHandler : UpGameKeyEventHandler.upGameKeyEventHandler = (Obj.magic 0)
    method upGameKeyEventHandler = upGameKeyEventHandler
    method set_upGameKeyEventHandler value' = upGameKeyEventHandler <- value'
    val mutable downKeyEventHandler : DownKeyEventHandler.downKeyEventHandler = (Obj.magic 0)
    method downKeyEventHandler = downKeyEventHandler
    method set_downKeyEventHandler value' = downKeyEventHandler <- value'
    val mutable smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory = (Obj.magic 0)
    method smallIntegerSingletonFactory = smallIntegerSingletonFactory
    method set_smallIntegerSingletonFactory value' = smallIntegerSingletonFactory <- value'
    val mutable inputToGameKeyMapping : InputToGameKeyMapping.inputToGameKeyMapping = (Obj.magic 0)
    method inputToGameKeyMapping = inputToGameKeyMapping
    method set_inputToGameKeyMapping value' = inputToGameKeyMapping <- value'
    val mutable nONE : GameKey.gameKey = (Obj.magic 0)
    method nONE = nONE
    method set_nONE value' = nONE <- value'
    val mutable gameKeyEventFactory : GameKeyEventFactory.gameKeyEventFactory = (Obj.magic 0)
    method gameKeyEventFactory = gameKeyEventFactory
    method set_gameKeyEventFactory value' = gameKeyEventFactory <- value'
    
    

    method keyPressedByDevice ((keyCode : int), (deviceId : int)) : unit =
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref (((inputToGameKeyMapping#getInstanceForCanvas ((Obj.magic allBinaryGameCanvas), keyCode)) :> GameKey.gameKey)) in ();
            if ((Obj.repr !gameKey) != (Obj.repr nONE)) then begin
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput ((Obj.magic allBinaryGameCanvas), !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore (downGameKeyEventHandler#fireEvent (!gameKeyEvent));
                ignore ((downGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent))
            end else begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#nO_KEY))#appendint (keyCode)))), self, gameInputStrings#aDD_KEY_EVENT))
            end;
            let keyCodeAsInteger : int ref = ref ((smallIntegerSingletonFactory#getAtNoThrow (keyCode))) in ();
            ignore (downKeyEventHandler#fireEventI (!keyCodeAsInteger));
            ignore ((downKeyEventHandler#getInstanceForDevice (deviceId))#fireEventI (!keyCodeAsInteger))
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Key Event Error", self, gameInputStrings#aDD_KEY_EVENT, e))
        end)
        end [@@warning "-7"]
    

    method keyReleasedByDevice : 'any1. 'any1 * int * int -> unit = fun (canvas, (keyCode : int), (deviceId : int)) ->
        let canvas = Obj.repr canvas in
        begin
        (self#removeGameKeyEvent ((Obj.magic canvas), keyCode, deviceId, false))
        end [@@warning "-7-20"]
    

    method removeGameKeyEvent : 'any1. 'any1 * int * int * bool -> unit = fun (canvas, (keyCode : int), (deviceId : int), (_repeated : bool)) ->
        let canvas = Obj.repr canvas in
        begin
        (try
            let gameKey : GameKey.gameKey ref = ref (((inputToGameKeyMapping#getInstanceForCanvas ((Obj.magic canvas), keyCode)) :> GameKey.gameKey)) in ();
            if ((Obj.repr !gameKey) != (Obj.repr nONE)) then begin
                let gameKeyEventSourceInterface : GameKeyEventSourceInterface.gameKeyEventSourceInterface ref = ref (((Obj.magic (Obj.magic canvas)) :> GameKeyEventSourceInterface.gameKeyEventSourceInterface)) in ();
                let gameKeyEvent : GameKeyEvent.gameKeyEvent ref = ref (((gameKeyEventFactory#getInstanceForInput (!gameKeyEventSourceInterface, !gameKey)) :> GameKeyEvent.gameKeyEvent)) in ();
                ignore (upGameKeyEventHandler#fireEvent (!gameKeyEvent));
                ignore ((upGameKeyEventHandler#getInstanceForDevice (deviceId))#fireEvent (!gameKeyEvent))
            end else begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (((new StringMaker.stringMaker ())#append (gameInputStrings#nO_KEY))#appendint (keyCode)))), self, gameInputStrings#rEMOVE_KEY_EVENT))
            end
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("Key Event Error", self, gameInputStrings#rEMOVE_KEY_EVENT, e))
        end)
        end [@@warning "-7-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        downGameKeyEventHandler <- ((DownGameKeyEventHandler.getInstance ()) :> DownGameKeyEventHandler.downGameKeyEventHandler);
        upGameKeyEventHandler <- ((UpGameKeyEventHandler.getInstance ()) :> UpGameKeyEventHandler.upGameKeyEventHandler);
        downKeyEventHandler <- ((DownKeyEventHandler.getInstance ()) :> DownKeyEventHandler.downKeyEventHandler);
        smallIntegerSingletonFactory <- ((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory);
        inputToGameKeyMapping <- ((((Obj.magic (java_call_static "PlatformInputMappingFactory.getInstance" (Obj.repr ())))#getPersistentInputMappingInstance ())#getInputMapping ()) :> InputToGameKeyMapping.inputToGameKeyMapping);
        nONE <- ((GameKeyFactory.getInstance ())#nONE :> GameKey.gameKey);
        gameKeyEventFactory <- ((GameKeyEventFactory.getInstance ()) :> GameKeyEventFactory.gameKeyEventFactory);
        ();
        allBinaryGameCanvas <- Obj.repr (allBinaryGameCanvas_arg);
        ignore (inputToGameKeyMapping#init ((Obj.magic allBinaryGameCanvas)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameCanvasInputProcessor" (fun arguments -> Obj.repr (new gameCanvasInputProcessor (Obj.obj arguments)))


