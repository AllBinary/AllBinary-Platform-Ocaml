(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
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
(* import org.allbinary.game.identification.Group *)

let eventHandlerArray : WaypointEventHandler.waypointEventHandler array = [| (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()); (new WaypointEventHandler.waypointEventHandler ()) |]
let get_eventHandlerArray () = eventHandlerArray
let () = java_register_static "WaypointEventHandlerFactory.get_eventHandlerArray" (fun _ -> Obj.repr (get_eventHandlerArray ()))

let getInstance : 'any1. 'any1 -> WaypointEventHandler.waypointEventHandler = fun (groupInterface) ->
        let groupInterface = Obj.repr groupInterface in
        begin
        (eventHandlerArray.((java_to_int (Obj.repr (((Obj.magic groupInterface)#getGroupId ()))))) :> WaypointEventHandler.waypointEventHandler)
        end [@@warning "-20"]

and removeAll () : unit =
        begin
        for index = ((Array.length eventHandlerArray) - 1) downto 0 do
            ignore (eventHandlerArray.(index)#removeAllListeners ())
        done
        end

let () = java_register_static "WaypointEventHandlerFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
let () = java_register_static "WaypointEventHandlerFactory.removeAll" (fun arguments -> Obj.repr (removeAll (Obj.obj arguments)))
class waypointEventHandlerFactory () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "WaypointEventHandlerFactory" (fun arguments -> Obj.repr (new waypointEventHandlerFactory (Obj.obj arguments)))


