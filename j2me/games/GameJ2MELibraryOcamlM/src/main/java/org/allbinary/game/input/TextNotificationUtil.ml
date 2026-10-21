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
(* import org.allbinary.game.layer.hud.event.GameNotificationEvent *)
(* import org.allbinary.game.layer.hud.event.GameNotificationEventHandler *)
(* import org.allbinary.graphics.color.BasicColorFactory *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.media.audio.ErrorSound *)
(* import org.allbinary.media.audio.PrimaryPlayerQueueFactory *)
(* import org.allbinary.media.audio.SelectSound *)

class textNotificationUtil () =
  object (self)
    val mutable tWO : int = (Obj.magic 0)
    method tWO = tWO
    method set_tWO value' = tWO <- value'
    val mutable fALSE : bool = (Obj.magic 0)
    method fALSE = fALSE
    method set_fALSE value' = fALSE <- value'
    val mutable gameNotificationEventHandler : GameNotificationEventHandler.gameNotificationEventHandler = (Obj.magic 0)
    method gameNotificationEventHandler = gameNotificationEventHandler
    method set_gameNotificationEventHandler value' = gameNotificationEventHandler <- value'
    

    method fireError ((message : string)) : unit =
        begin
        ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((ErrorSound.getInstance ())));
        (self#fire (message))
        end
    

    method fireNew ((message : string)) : unit =
        begin
        ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
        (self#fire (message))
        end
    

    method fireSuccess ((message : string)) : unit =
        begin
        ignore ((PrimaryPlayerQueueFactory.getInstance ())#add ((SelectSound.getInstance ())));
        (self#fire (message))
        end
    

    method fire ((message : string)) : unit =
        begin
        let gameNotificationEvent : GameNotificationEvent.gameNotificationEvent ref = ref (((new GameNotificationEvent.gameNotificationEvent (self, message, tWO, (BasicColorFactory.getInstance ())#rED, fALSE)) :> GameNotificationEvent.gameNotificationEvent)) in ();
        ignore (gameNotificationEventHandler#fireEvent (!gameNotificationEvent))
        end

    initializer
      begin
        tWO <- ((SmallIntegerSingletonFactory.getInstance ())#getAt (2));
        fALSE <- (BooleanFactory.getInstance ())#fALSE;
        gameNotificationEventHandler <- ((GameNotificationEventHandler.getInstance ()) :> GameNotificationEventHandler.gameNotificationEventHandler);
        ()
      end
  end
let () = java_register_constructor "TextNotificationUtil" (fun arguments -> Obj.repr (new textNotificationUtil (Obj.obj arguments)))

let instance = (new textNotificationUtil ())
let get_instance () = instance
let () = java_register_static "TextNotificationUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "TextNotificationUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


