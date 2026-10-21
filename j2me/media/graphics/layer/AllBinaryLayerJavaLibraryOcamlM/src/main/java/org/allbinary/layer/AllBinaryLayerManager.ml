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
(* package org.allbinary.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.layer.event.LayerManagerEvent *)
(* import org.allbinary.layer.event.LayerManagerEventHandler *)

class allBinaryLayerManager () =
  object (self)
    inherit LayerManager.layerManager ((LayerManagerNoDebug.getInstance ())) as super
    val mutable layerManagerEventHandler : LayerManagerEventHandler.layerManagerEventHandler = (Obj.magic 0)
    method layerManagerEventHandler = layerManagerEventHandler
    method set_layerManagerEventHandler value' = layerManagerEventHandler <- value'
    val mutable createLayerManagerEvent : LayerManagerEvent.layerManagerEvent = (Obj.magic 0)
    method createLayerManagerEvent = createLayerManagerEvent
    method set_createLayerManagerEvent value' = createLayerManagerEvent <- value'
    val mutable deleteLayerManagerEvent : LayerManagerEvent.layerManagerEvent = (Obj.magic 0)
    method deleteLayerManagerEvent = deleteLayerManagerEvent
    method set_deleteLayerManagerEvent value' = deleteLayerManagerEvent <- value'
    val mutable basicLayerProcessorArray : Obj.t = Obj.repr 0
    method basicLayerProcessorArray : 'r. 'r = Obj.magic basicLayerProcessorArray
    method set_basicLayerProcessorArray : 'v. 'v -> unit = fun value' -> basicLayerProcessorArray <- Obj.repr value'
    
    

    method getLayerProcessorArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic basicLayerProcessorArray)))
        end [@@warning "-7"]
    

    method setLayerProcessorArray (layerProcessorArray) : unit =
        begin
        basicLayerProcessorArray <- Obj.repr (layerProcessorArray)
        end [@@warning "-7"]
    

    method log () : unit =
        begin
        let size : int ref = ref ((Array.length (Obj.magic basicLayerProcessorArray))) in ();
        for index = 0 to !size - 1 do
            let layerProcessorInterface : Obj.t ref = ref ((Obj.repr (Obj.magic basicLayerProcessorArray).(index))) in ()
        done
        end [@@warning "-7"]
    

    method append : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        if (not (self#contains ((Obj.magic layerInterface)))) then begin
            (self#appendProcessors ((Obj.magic layerInterface)));
            ignore (super#append ((Obj.magic layerInterface)))
        end
        end [@@warning "-7-20"]
    

    method appendAt : 'any1. 'any1 * int -> unit = fun (layerInterface, (index : int)) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        if (not (self#contains ((Obj.magic layerInterface)))) then begin
            (self#appendProcessors ((Obj.magic layerInterface)));
            ignore (super#appendAt ((Obj.magic layerInterface), index))
        end
        end [@@warning "-7-20"]
    

    method appendProcessors : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (createLayerManagerEvent#setLayerInterface ((Obj.magic layerInterface)));
        ignore (layerManagerEventHandler#fireEvent (createLayerManagerEvent));
        let layerProcessorInterface : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let index : int ref = ref ((Array.length (Obj.magic basicLayerProcessorArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            layerProcessorInterface := Obj.repr ((Obj.magic basicLayerProcessorArray).(!index));
            if ((Obj.magic !layerProcessorInterface)#isProcessorLayer ((Obj.magic layerInterface))) then begin
                ignore (((Obj.magic !layerProcessorInterface)#getLayerManager ())#append ((Obj.magic layerInterface)))
            end
        done
        end [@@warning "-7-20"]
    

    method remove : 'any1. 'any1 -> unit = fun (layerInterface) ->
        let layerInterface = Obj.repr layerInterface in
        begin
        ignore (deleteLayerManagerEvent#setLayerInterface ((Obj.magic layerInterface)));
        ignore (layerManagerEventHandler#fireDeleteEvent (deleteLayerManagerEvent));
        let layerProcessorInterface : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let index : int ref = ref ((Array.length (Obj.magic basicLayerProcessorArray))) in ();
        while ((index := !index - 1; !index) >= 0) do
            layerProcessorInterface := Obj.repr ((Obj.magic basicLayerProcessorArray).(!index));
            ignore (((Obj.magic !layerProcessorInterface)#getLayerManager ())#remove ((Obj.magic layerInterface)))
        done;
        ignore (super#remove ((Obj.magic layerInterface)))
        end [@@warning "-7-20"]
    

    method process () : unit =
        begin
        let layerProcessorInterface : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref ((Array.length (Obj.magic basicLayerProcessorArray))) in ();
        for index = 0 to !size - 1 do
            layerProcessorInterface := Obj.repr ((Obj.magic basicLayerProcessorArray).(index));
            ignore ((Obj.magic !layerProcessorInterface)#process (self))
        done
        end [@@warning "-7"]
    

    method cleanup () : unit =
        begin
        let layerProcessorInterface : Obj.t ref = ref ((Obj.repr (Obj.magic 0))) in ();
        let size : int ref = ref ((Array.length (Obj.magic basicLayerProcessorArray))) in ();
        for index = 0 to !size - 1 do
            layerProcessorInterface := Obj.repr ((Obj.magic basicLayerProcessorArray).(index));
            ignore (((Obj.magic !layerProcessorInterface)#getLayerManager ())#cleanup ())
        done;
        ignore (super#cleanup ())
        end [@@warning "-7"]

    initializer
      begin
        layerManagerEventHandler <- ((LayerManagerEventHandler.getInstance ()) :> LayerManagerEventHandler.layerManagerEventHandler);
        createLayerManagerEvent <- ((new LayerManagerEvent.layerManagerEvent (self, layerManagerEventHandler#cREATE)) :> LayerManagerEvent.layerManagerEvent);
        deleteLayerManagerEvent <- ((new LayerManagerEvent.layerManagerEvent (self, layerManagerEventHandler#dELETE)) :> LayerManagerEvent.layerManagerEvent);
        basicLayerProcessorArray <- (Obj.repr (Array.make (0) (Obj.magic 0)));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AllBinaryLayerManager" (fun arguments -> Obj.repr (new allBinaryLayerManager (Obj.obj arguments)))


