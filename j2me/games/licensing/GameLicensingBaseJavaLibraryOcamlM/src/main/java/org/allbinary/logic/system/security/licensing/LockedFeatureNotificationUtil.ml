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
(* package org.allbinary.logic.system.security.licensing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.audio.PrimaryPlayerQueueFactory *)

class lockedFeatureNotificationUtil () =
  object (self)
    val mutable gameNotificationEvent : GameNotificationEvent.gameNotificationEvent = (Obj.magic 0)
    method gameNotificationEvent = gameNotificationEvent
    method set_gameNotificationEvent value' = gameNotificationEvent <- value'
    

    method fire () : unit =
        begin
        ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((ErrorSound.getInstance ())));
        ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (gameNotificationEvent))
        end
    

    method fireWithColor : 'any1. 'any1 -> unit = fun (basicColor) ->
        let basicColor = Obj.repr basicColor in
        begin
        ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((ErrorSound.getInstance ())));
        ignore (gameNotificationEvent#setBasicColorP ((Obj.magic basicColor)));
        ignore ((GameNotificationEventHandler.getInstance ())#fireEvent (gameNotificationEvent))
        end [@@warning "-20"]

    initializer
      begin
        gameNotificationEvent <- ((new GameNotificationEvent.gameNotificationEvent (self, (LicenseStrings.getInstance ())#lOCKED, ((SmallIntegerSingletonFactory.getInstance ())#getAt (3)), (BasicColorFactory.getInstance ())#rED, (BooleanFactory.getInstance ())#fALSE)) :> GameNotificationEvent.gameNotificationEvent);
        ()
      end
  end
let () = java_register_constructor "LockedFeatureNotificationUtil" (fun arguments -> Obj.repr (new lockedFeatureNotificationUtil (Obj.obj arguments)))

let instance = (new lockedFeatureNotificationUtil ())
let get_instance () = instance
let () = java_register_static "LockedFeatureNotificationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "LockedFeatureNotificationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


