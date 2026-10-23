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
(* package org.allbinary.game.ag.layer.hud.basic.notification *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.game.graphics.hud.BasicHud *)
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationListenerInterface *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventStrings *)

class gameNotificationHud ((location : int), (direction : int), (bufferZone : int), (basicColor : BasicColor.basicColor)) =
  object (self)
    inherit BasicHud.basicHud (location, direction, bufferZone, basicColor)
    val mutable mETHOD_NAME : string = ""
    method mETHOD_NAME = mETHOD_NAME
    method set_mETHOD_NAME value' = mETHOD_NAME <- value'
    val mutable lastGameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method lastGameNotificationEvent = lastGameNotificationEvent
    method set_lastGameNotificationEvent value' = lastGameNotificationEvent <- value'
    
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ignore (ForcedLogUtil.log ((EventStrings.getInstance ())#pERFORMANCE_MESSAGE, self))
        end [@@warning "-7-20"]
    

    method onGameNotificationEvent : 'any1. 'any1 -> unit = fun (gameNotificationEvent) ->
        let gameNotificationEvent = Obj.repr gameNotificationEvent in
        begin
        if ((Obj.repr lastGameNotificationEvent) != (Obj.repr (Obj.magic gameNotificationEvent))) then begin
            lastGameNotificationEvent <- (Obj.magic gameNotificationEvent);
            ignore ((self#logUtil)#putF (((Obj.magic gameNotificationEvent)#getString ()), self, mETHOD_NAME))
        end;
        (self#add (((Obj.magic gameNotificationEvent)#getString ()), ((Obj.magic gameNotificationEvent)#getSeconds ()), ((Obj.magic gameNotificationEvent)#getBasicColorP ()), ((Obj.magic gameNotificationEvent)#getPermanent ())))
        end [@@warning "-7-20"]
    

    method add : 'any3. string * int * 'any3 * bool -> unit = fun ((_string : string), (_seconds : int), _basicColor, (_permanent : bool)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method processTick () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paint : 'any1. 'any1 -> unit = fun (_graphics) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method clear () : unit =
        begin
        ()
        end [@@warning "-7"]

    initializer
      begin
        mETHOD_NAME <- "onGameNotificationEvent";
        lastGameNotificationEvent <- ((GameNotification.get_nULL_GAME_NOTIFICATION_EVENT ()) :> GameNotificationEvent.gameNotificationEvent);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "GameNotificationHud" (fun arguments -> Obj.repr (new gameNotificationHud (Obj.obj arguments)))

let nULL_GAME_NOTIFICATION = (new gameNotificationHud ((BasicHudFactory.getInstance ())#tOPCENTER, (BasicHudFactory.getInstance ())#hORIZONTAL, 0, (BasicColorFactory.getInstance ())#rED))
let get_nULL_GAME_NOTIFICATION () = nULL_GAME_NOTIFICATION
let () = java_register_static "GameNotificationHud.get_nULL_GAME_NOTIFICATION" (fun _ -> Obj.repr (get_nULL_GAME_NOTIFICATION ()))


