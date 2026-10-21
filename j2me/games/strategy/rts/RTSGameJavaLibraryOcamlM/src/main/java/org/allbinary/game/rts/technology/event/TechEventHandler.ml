(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2002 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot  
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.rts.technology.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class techEventHandler () =
  object
    inherit BasicEventHandler.basicEventHandler ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let techEventListenerInterface : TechEventListenerInterface.techEventListenerInterface ref = ref ((((Obj.magic (Obj.magic eventListenerInterface))) :> TechEventListenerInterface.techEventListenerInterface)) in ();
        ignore (!techEventListenerInterface#onTechEvent ((Obj.magic eventObject)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "TechEventHandler" (fun arguments -> Obj.repr (new techEventHandler (Obj.obj arguments)))

let eventHandler = (new techEventHandler ())
let get_eventHandler () = eventHandler
let () = java_register_static "TechEventHandler.get_eventHandler" (fun _ -> Obj.repr (get_eventHandler ()))

let getInstance () =
        begin
        eventHandler
        end
let () = java_register_static "TechEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


