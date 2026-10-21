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
(* package org.allbinary.android.input.motion.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class analogControllerConfigurationEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler () as super
    val mutable list : BasicArrayList.basicArrayList = (Obj.magic 0)
    method list = list
    method set_list value' = list <- value'
    
    

    method addListener : 'any1. 'any1 -> unit = fun (analogControllerConfigurationEventListenerInterface) ->
        let analogControllerConfigurationEventListenerInterface = Obj.repr analogControllerConfigurationEventListenerInterface in
        begin
        if (not (list#contains ((Obj.magic analogControllerConfigurationEventListenerInterface)))) then begin
            ignore (list#add ((Obj.magic analogControllerConfigurationEventListenerInterface)))
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
                let playerGameInput : AnalogControllerConfigurationEventListenerInterface.analogControllerConfigurationEventListenerInterface ref = ref (((Obj.magic list#objectArray.(!index)) :> AnalogControllerConfigurationEventListenerInterface.analogControllerConfigurationEventListenerInterface)) in ();
                ignore (!playerGameInput#onAnalogControllerConfigurationEvent ((Obj.magic (Obj.magic eventObject))))
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
        let analogControllerConfigurationEventListenerInterface : AnalogControllerConfigurationEventListenerInterface.analogControllerConfigurationEventListenerInterface ref = ref ((((Obj.magic (Obj.magic eventListenerInterface))) :> AnalogControllerConfigurationEventListenerInterface.analogControllerConfigurationEventListenerInterface)) in ();
        ignore (!analogControllerConfigurationEventListenerInterface#onAnalogControllerConfigurationEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "AnalogControllerConfigurationEventHandler" (fun arguments -> Obj.repr (new analogControllerConfigurationEventHandler (Obj.obj arguments)))

let instance = (new analogControllerConfigurationEventHandler ())
let get_instance () = instance
let () = java_register_static "AnalogControllerConfigurationEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "AnalogControllerConfigurationEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


