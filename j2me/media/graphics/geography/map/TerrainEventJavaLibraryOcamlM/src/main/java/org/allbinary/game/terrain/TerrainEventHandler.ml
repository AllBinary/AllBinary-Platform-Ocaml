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
(* package org.allbinary.game.terrain *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let hashtable : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
let get_hashtable () = Obj.magic !hashtable
let set_hashtable value' = hashtable := Obj.repr value'
let () = java_register_static "TerrainEventHandler.get_hashtable" (fun _ -> Obj.repr (get_hashtable ()))

let init () : unit =
        begin
        hashtable := Obj.repr (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ()))
        end

let () = java_register_static "TerrainEventHandler.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
class terrainEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (terrainEventListener) ->
        let terrainEventListener = Obj.repr terrainEventListener in
        begin
        if (not (list#contains ((Obj.magic terrainEventListener)))) then begin
            ignore (list#add ((Obj.magic terrainEventListener)))
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
                let terrainEventListener : TerrainEventListener.terrainEventListener ref = ref (((Obj.magic (list#get (!index))) :> TerrainEventListener.terrainEventListener)) in ();
                ignore (!terrainEventListener#onTerrainEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        ignore (super#fireEvent ((Obj.magic eventObject)))
        end [@@warning "-7-20"]
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let terrainEventListenerInterface : TerrainEventListenerInterface.terrainEventListenerInterface ref = ref (((Obj.magic (Obj.magic eventListenerInterface)) :> TerrainEventListenerInterface.terrainEventListenerInterface)) in ();
        ignore (!terrainEventListenerInterface#onTerrainEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "TerrainEventHandler" (fun arguments -> Obj.repr (new terrainEventHandler (Obj.obj arguments)))

let getInstance : 'any1. 'any1 -> _ = fun (anyType) ->
        let anyType = Obj.repr anyType in
        begin
        let eventHandlerCanBeNull : Obj.t ref = ref ((Obj.repr ((Obj.magic !hashtable)#get (anyType)))) in ();
        if (!eventHandlerCanBeNull == (Obj.magic 0)) then begin
            eventHandlerCanBeNull := (new terrainEventHandler ());
            ignore ((Obj.magic !hashtable)#put (anyType, !eventHandlerCanBeNull))
        end;
        (Obj.magic !eventHandlerCanBeNull)
        end
let () = java_register_static "TerrainEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


