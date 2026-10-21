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
(* import org.allbinary.game.input.PlayerGameInput *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class pressGameKeyEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (playerGameInput) ->
        let playerGameInput = Obj.repr playerGameInput in
        begin
        if (not (list#contains ((Obj.magic playerGameInput)))) then begin
            ignore (list#add ((Obj.magic playerGameInput)))
        end
        end [@@warning "-7-20"]
    

    method removeAllListeners () : unit =
        begin
        ignore (list#clear ());
        ignore (super#removeAllListeners ())
        end [@@warning "-7"]
    

    method removeListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (list#remove ((Obj.magic eventListenerInterface)));
        ignore (super#removeListener ((Obj.magic eventListenerInterface)))
        end [@@warning "-7-20"]
    

    method fireEvent : 'any1. 'any1 -> unit = fun (eventObject) ->
        let eventObject = Obj.repr eventObject in
        begin
        let index : int ref = ref ((list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            (try
                let playerGameInput : PlayerGameInput.playerGameInput ref = ref (((Obj.magic list#objectArray.(!index)) :> PlayerGameInput.playerGameInput)) in ();
                ignore (!playerGameInput#onPressGameKeyEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        ignore (super#fireEvent ((Obj.magic eventObject)))
        end [@@warning "-7-20"]
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let pressGameKeyEventListenerInterface : PressGameKeyEventListenerInterface.pressGameKeyEventListenerInterface ref = ref ((((Obj.magic (Obj.magic eventListenerInterface))) :> PressGameKeyEventListenerInterface.pressGameKeyEventListenerInterface)) in ();
        ignore (!pressGameKeyEventListenerInterface#onPressGameKeyEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "PressGameKeyEventHandler" (fun arguments -> Obj.repr (new pressGameKeyEventHandler (Obj.obj arguments)))

let instance = (new pressGameKeyEventHandler ())
let get_instance () = instance
let () = java_register_static "PressGameKeyEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PressGameKeyEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


