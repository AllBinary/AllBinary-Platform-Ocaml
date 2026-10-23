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
(* package org.allbinary.layer.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class layerManagerEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    val mutable cREATE : string = ""
    method cREATE = cREATE
    method set_cREATE value' = cREATE <- value'
    val mutable dELETE : string = ""
    method dELETE = dELETE
    method set_dELETE value' = dELETE <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (layerManagerEventListener) ->
        let layerManagerEventListener = Obj.repr layerManagerEventListener in
        begin
        if (not (list#contains ((Obj.magic layerManagerEventListener)))) then begin
            ignore (list#add ((Obj.magic layerManagerEventListener)))
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
                let layerManagerEventListener : LayerManagerEventListener.layerManagerEventListener ref = ref (((Obj.magic list#objectArray.(!index)) :> LayerManagerEventListener.layerManagerEventListener)) in ();
                ignore (!layerManagerEventListener#onCreateLayerManagerEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        ignore (super#fireEvent ((Obj.magic eventObject)))
        end [@@warning "-7-20"]
    

    method fireDeleteEvent : 'any1. 'any1 -> unit = fun (eventObject) ->
        let eventObject = Obj.repr eventObject in
        begin
        let index : int ref = ref ((list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            (try
                let layerManagerEventListener : LayerManagerEventListener.layerManagerEventListener ref = ref (((Obj.magic list#objectArray.(!index)) :> LayerManagerEventListener.layerManagerEventListener)) in ();
                ignore (!layerManagerEventListener#onDeleteLayerManagerEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        let eventListenerInterfaceList : BasicArrayList.basicArrayList ref = ref (((self#eventListenerInterfaceList) :> BasicArrayList.basicArrayList)) in ();
        let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((Obj.magic 0) :> EventListenerInterface.eventListenerInterface)) in ();
        let layerManagerEventListenerInterface : LayerManagerEventListenerInterface.layerManagerEventListenerInterface ref = ref (((Obj.magic 0) :> LayerManagerEventListenerInterface.layerManagerEventListenerInterface)) in ();
        let index : int ref = ref (0) in ();
        while (!index < (!eventListenerInterfaceList#size ())) do
            (try
                eventListenerInterface := (Obj.magic !eventListenerInterfaceList#objectArray.(!index));
                layerManagerEventListenerInterface := ((Obj.magic !eventListenerInterface));
                ignore (!layerManagerEventListenerInterface#onDeleteLayerManagerEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end);
            index := !index + 1
        done
        end [@@warning "-7-20"]
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let layerManagerEventListenerInterface : LayerManagerEventListenerInterface.layerManagerEventListenerInterface ref = ref ((((Obj.magic (Obj.magic eventListenerInterface))) :> LayerManagerEventListenerInterface.layerManagerEventListenerInterface)) in ();
        ignore (!layerManagerEventListenerInterface#onCreateLayerManagerEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        cREATE <- "Create";
        dELETE <- "Delete";
        ();
        ()
      end
  end
let () = java_register_constructor "LayerManagerEventHandler" (fun arguments -> Obj.repr (new layerManagerEventHandler (Obj.obj arguments)))

let instance = ref ((new layerManagerEventHandler ()))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "LayerManagerEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end
let () = java_register_static "LayerManagerEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


