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
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.string.CommonStrings *)

class gameKeyEventHandler () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    val mutable pressGameKeyEventHandler : PressGameKeyEventHandler.pressGameKeyEventHandler = (Obj.magic 0)
    method pressGameKeyEventHandler = pressGameKeyEventHandler
    method set_pressGameKeyEventHandler value' = pressGameKeyEventHandler <- value'
    val mutable upGameKeyEventHandler : UpGameKeyEventHandler.upGameKeyEventHandler = (Obj.magic 0)
    method upGameKeyEventHandler = upGameKeyEventHandler
    method set_upGameKeyEventHandler value' = upGameKeyEventHandler <- value'
    val mutable downGameKeyEventHandler : DownGameKeyEventHandler.downGameKeyEventHandler = (Obj.magic 0)
    method downGameKeyEventHandler = downGameKeyEventHandler
    method set_downGameKeyEventHandler value' = downGameKeyEventHandler <- value'
    

    method removeAllListeners () : unit =
        begin
        ignore (pressGameKeyEventHandler#removeAllListeners ());
        ignore (upGameKeyEventHandler#removeAllListeners ());
        ignore (downGameKeyEventHandler#removeAllListeners ())
        end
    

    method addListenerForPlayer : 'any1. 'any1 * int -> unit = fun (eventListenerInterface, (playerInputId : int)) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (Obj.magic eventListenerInterface))), self, commonStrings#aDD_LISTENER));
        ignore (pressGameKeyEventHandler#addListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        ignore ((upGameKeyEventHandler#getInstanceForPlayer (playerInputId))#addListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        ignore ((downGameKeyEventHandler#getInstanceForPlayer (playerInputId))#addListenerSingleThreaded ((Obj.magic eventListenerInterface)))
        end [@@warning "-20"]
    

    method addListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (Obj.magic eventListenerInterface))), self, commonStrings#aDD_LISTENER));
        ignore (pressGameKeyEventHandler#addListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        ignore (upGameKeyEventHandler#addListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        ignore (downGameKeyEventHandler#addListenerSingleThreaded ((Obj.magic eventListenerInterface)))
        end [@@warning "-20"]
    

    method removeListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (Obj.magic eventListenerInterface))), self, commonStrings#rEMOVE_LISTENER));
        ignore (pressGameKeyEventHandler#removeListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        ignore (upGameKeyEventHandler#removeListenerSingleThreaded ((Obj.magic eventListenerInterface)));
        ignore (downGameKeyEventHandler#removeListenerSingleThreaded ((Obj.magic eventListenerInterface)))
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        pressGameKeyEventHandler <- ((PressGameKeyEventHandler.getInstance ()) :> PressGameKeyEventHandler.pressGameKeyEventHandler);
        upGameKeyEventHandler <- ((UpGameKeyEventHandler.getInstance ()) :> UpGameKeyEventHandler.upGameKeyEventHandler);
        downGameKeyEventHandler <- ((DownGameKeyEventHandler.getInstance ()) :> DownGameKeyEventHandler.downGameKeyEventHandler);
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "GameKeyEventHandler" (fun arguments -> Obj.repr (new gameKeyEventHandler (Obj.obj arguments)))

let instance = (new gameKeyEventHandler ())
let get_instance () = instance
let () = java_register_static "GameKeyEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "GameKeyEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


