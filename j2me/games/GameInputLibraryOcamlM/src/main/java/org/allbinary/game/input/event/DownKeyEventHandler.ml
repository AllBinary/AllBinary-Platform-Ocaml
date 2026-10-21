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
(* package org.allbinary.game.input.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.input.LocalPlayerInputIdFactory *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)

let instanceArray : DownKeyEventHandlerBase.downKeyEventHandlerBase array = [| (new DownKeyEventHandlerBase.downKeyEventHandlerBase ()); (new DownKeyEventHandlerBase.downKeyEventHandlerBase ()); (new DownKeyEventHandlerBase.downKeyEventHandlerBase ()); (new DownKeyEventHandlerBase.downKeyEventHandlerBase ()); (new DownKeyEventHandlerBase.downKeyEventHandlerBase ()); (new DownKeyEventHandlerBase.downKeyEventHandlerBase ()) |]
let get_instanceArray () = instanceArray
let () = java_register_static "DownKeyEventHandler.get_instanceArray" (fun _ -> Obj.repr (get_instanceArray ()))
class downKeyEventHandler () =
  object
    inherit DownKeyEventHandlerBase.downKeyEventHandlerBase () as super
    val mutable playerInputIdFactory : LocalPlayerInputIdFactory.localPlayerInputIdFactory = (Obj.magic 0)
    method playerInputIdFactory = playerInputIdFactory
    method set_playerInputIdFactory value' = playerInputIdFactory <- value'
    

    method getInstanceForDevice ((deviceId : int)) : DownKeyEventHandlerBase.downKeyEventHandlerBase =
        begin
        let playerInputId : int ref = ref ((playerInputIdFactory#getPlayerForDevice (deviceId))) in ();
        (instanceArray.(!playerInputId) :> DownKeyEventHandlerBase.downKeyEventHandlerBase)
        end [@@warning "-7"]
    

    method getInstanceForPlayer ((playerInputId : int)) : DownKeyEventHandlerBase.downKeyEventHandlerBase =
        begin
        (instanceArray.(playerInputId) :> DownKeyEventHandlerBase.downKeyEventHandlerBase)
        end [@@warning "-7"]
    
    

    method removeAllListeners () : unit =
        begin
        ignore (super#removeAllListeners ());
        for index = ((Array.length instanceArray) - 1) downto 0 do
            ignore (instanceArray.(index)#removeAllListeners ())
        done
        end [@@warning "-7"]
    

    method removeListenerSingleThreaded : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (super#removeListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        for index = ((Array.length instanceArray) - 1) downto 0 do
            ignore (instanceArray.(index)#removeListenerSingleThreaded ((Obj.magic eventListenerInterface)))
        done
        end [@@warning "-7-20"]
    

    method removeListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (super#removeListener ((Obj.magic eventListenerInterface)));
        for index = ((Array.length instanceArray) - 1) downto 0 do
            ignore (instanceArray.(index)#removeListener ((Obj.magic eventListenerInterface)))
        done
        end [@@warning "-7-20"]

    initializer
      begin
        playerInputIdFactory <- ((LocalPlayerInputIdFactory.getInstance ()) :> LocalPlayerInputIdFactory.localPlayerInputIdFactory);
        ();
        ()
      end
  end
let () = java_register_constructor "DownKeyEventHandler" (fun arguments -> Obj.repr (new downKeyEventHandler (Obj.obj arguments)))

let instance = (new downKeyEventHandler ())
let get_instance () = instance
let () = java_register_static "DownKeyEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "DownKeyEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


