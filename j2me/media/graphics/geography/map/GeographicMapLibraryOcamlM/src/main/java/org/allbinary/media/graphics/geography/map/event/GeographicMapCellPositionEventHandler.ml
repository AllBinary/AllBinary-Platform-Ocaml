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
(* package org.allbinary.media.graphics.geography.map.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.game.layer.geographic.map.MiniMapLayer *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class geographicMapCellPositionEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (miniMapLayer) ->
        let miniMapLayer = Obj.repr miniMapLayer in
        begin
        if (not (list#contains ((Obj.magic miniMapLayer)))) then begin
            ignore (list#add ((Obj.magic miniMapLayer)))
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
                let miniMapLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (list#get (!index))))) in ();
                ignore ((Obj.magic !miniMapLayer)#onGeographicMapCellPositionEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        ignore (super#fireEvent ((Obj.magic eventObject)))
        end [@@warning "-7-20"]
    

    method fireRemoveEvent : 'any1. 'any1 -> unit = fun (eventObject) ->
        let eventObject = Obj.repr eventObject in
        begin
        let list_arg : BasicArrayList.basicArrayList ref = ref ((eventListenerInterfaceList :> BasicArrayList.basicArrayList)) in ();
        let index : int ref = ref ((list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            (try
                let miniMapLayer : Obj.t ref = ref ((Obj.repr (Obj.magic (list#get (!index))))) in ();
                ignore ((Obj.magic !miniMapLayer)#onRemoveGeographicMapCellPositionEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((Obj.magic 0) :> EventListenerInterface.eventListenerInterface)) in ();
        let geographicMapCellPositionEventListenerInterface : GeographicMapCellPositionEventListenerInterface.geographicMapCellPositionEventListenerInterface ref = ref (((Obj.magic 0) :> GeographicMapCellPositionEventListenerInterface.geographicMapCellPositionEventListenerInterface)) in ();
        let size : int ref = ref ((!list_arg#size ())) in ();
        for index = 0 to !size - 1 do
            (try
                eventListenerInterface := (Obj.magic (!list_arg#get (index)));
                geographicMapCellPositionEventListenerInterface := ((Obj.magic !eventListenerInterface));
                ignore (!geographicMapCellPositionEventListenerInterface#onRemoveGeographicMapCellPositionEvent ((Obj.magic (Obj.magic eventObject))))
            with e -> begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done
        end [@@warning "-7-20"]
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let geographicMapCellPositionEventListenerInterface : GeographicMapCellPositionEventListenerInterface.geographicMapCellPositionEventListenerInterface ref = ref ((((Obj.magic (Obj.magic eventListenerInterface))) :> GeographicMapCellPositionEventListenerInterface.geographicMapCellPositionEventListenerInterface)) in ();
        ignore (!geographicMapCellPositionEventListenerInterface#onGeographicMapCellPositionEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "GeographicMapCellPositionEventHandler" (fun arguments -> Obj.repr (new geographicMapCellPositionEventHandler (Obj.obj arguments)))

let instance = ref ((new geographicMapCellPositionEventHandler ()))
let get_instance () = !instance
let set_instance value' = instance := value'
let () = java_register_static "GeographicMapCellPositionEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        !instance
        end
let () = java_register_static "GeographicMapCellPositionEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


