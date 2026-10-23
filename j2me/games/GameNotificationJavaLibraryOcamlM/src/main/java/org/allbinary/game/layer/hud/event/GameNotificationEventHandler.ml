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
(* package org.allbinary.game.layer.hud.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.NullEventListener *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.BasicArrayList *)

class gameNotificationEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable enabled : bool = false
    method enabled = enabled
    method set_enabled value' = enabled <- value'
    
    

    method removeAllListeners () : unit =
        begin
        let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((NullEventListener.get_nULL_EVENT_LISTENER ()) :> EventListenerInterface.eventListenerInterface)) in ();
        let list : BasicArrayList.basicArrayList ref = ref (((self#eventListenerInterfaceList) :> BasicArrayList.basicArrayList)) in ();
        if ((!list#size ()) > 0) then begin
            eventListenerInterface := (Obj.magic !list#objectArray.(0))
        end;
        ignore (super#removeAllListeners ());
        if ((Obj.repr !eventListenerInterface) != (Obj.repr (NullEventListener.get_nULL_EVENT_LISTENER ()))) then begin
            ignore (self#addListenerInterface (!eventListenerInterface))
        end
        end [@@warning "-7"]
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        try
        begin
        if (not enabled) then begin
            raise (Java_return (Obj.repr (())))
        end;
        let gameNotificationListenerInterface : GameNotificationListenerInterface.gameNotificationListenerInterface ref = ref (((Obj.magic (Obj.magic eventListenerInterface)) :> GameNotificationListenerInterface.gameNotificationListenerInterface)) in ();
        ignore (!gameNotificationListenerInterface#onGameNotificationEvent ((Obj.magic (Obj.magic eventObject))))
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]

    initializer
      begin
        enabled <- true;
        ();
        ()
      end
  end
let () = java_register_constructor "GameNotificationEventHandler" (fun arguments -> Obj.repr (new gameNotificationEventHandler (Obj.obj arguments)))

let instance = (new gameNotificationEventHandler ())
let get_instance () = instance
let () = java_register_static "GameNotificationEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameNotificationEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


