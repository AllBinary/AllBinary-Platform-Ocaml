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
(* package org.allbinary.game.layer.waypoint.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.RTSLayerEvent *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class waypointEventHandler () =
  object
    inherit BasicEventHandler.basicEventHandler ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let waypointEventListenerInterface : WaypointEventListenerInterface.waypointEventListenerInterface ref = ref ((((Obj.magic (Obj.magic eventListenerInterface))) :> WaypointEventListenerInterface.waypointEventListenerInterface)) in ();
        ignore (!waypointEventListenerInterface#onWaypointEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "WaypointEventHandler" (fun arguments -> Obj.repr (new waypointEventHandler (Obj.obj arguments)))


