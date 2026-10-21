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
(* package org.allbinary.logic.util.event.handler *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let pERFORMANCE_MESSAGE : string = "Use Custom onEvent Methods for needed optimization"
let get_pERFORMANCE_MESSAGE () = pERFORMANCE_MESSAGE
let () = java_register_static "BasicEventHandler.get_pERFORMANCE_MESSAGE" (fun _ -> Obj.repr (get_pERFORMANCE_MESSAGE ()))
class basicEventHandler () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable eventListenerInterfaceList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method eventListenerInterfaceList = eventListenerInterfaceList
    method set_eventListenerInterfaceList value' = eventListenerInterfaceList <- value'
    
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let lISTENER : string ref = ref (" Listener: ") in ();
        ignore (!stringBuffer#append ("Total Listeners: "));
        ignore (!stringBuffer#appendint ((eventListenerInterfaceList#size ())));
        let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((Obj.magic 0) :> EventListenerInterface.eventListenerInterface)) in ();
        let index : int ref = ref (0) in ();
        while (!index < (eventListenerInterfaceList#size ())) do
            (try
                eventListenerInterface := (Obj.magic eventListenerInterfaceList#objectArray.(!index));
                ignore (!stringBuffer#append (!lISTENER));
                ignore (!stringBuffer#append (((StringUtil.getInstance ())#toString (!eventListenerInterface))))
            with e -> begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#tOSTRING, e))
            end);
            index := !index + 1
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end
    

    method removeAllListeners () : unit =
        begin
        eventListenerInterfaceList <- (new BasicArrayListD.basicArrayListD ())
        end
    

    method addListenerSingleThreaded : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        if (not (eventListenerInterfaceList#contains ((Obj.magic eventListenerInterface)))) then begin
            ignore (eventListenerInterfaceList#add ((Obj.magic eventListenerInterface)))
        end
        end [@@warning "-20"]
    

    method addListenerInterface : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        if (not (eventListenerInterfaceList#contains ((Obj.magic eventListenerInterface)))) then begin
            ignore (eventListenerInterfaceList#add ((Obj.magic eventListenerInterface)))
        end
        end [@@warning "-20"]
    

    method removeListenerSingleThreaded : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (eventListenerInterfaceList#remove ((Obj.magic eventListenerInterface)))
        end [@@warning "-20"]
    

    method removeListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (eventListenerInterfaceList#remove ((Obj.magic eventListenerInterface)))
        end [@@warning "-20"]
    

    method fireEvent : 'any1. 'any1 -> unit = fun (eventObject) ->
        let eventObject = Obj.repr eventObject in
        begin
        let index : int ref = ref (0) in ();
        let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((Obj.magic 0) :> EventListenerInterface.eventListenerInterface)) in ();
        while (!index < (eventListenerInterfaceList#size ())) do
            (try
                eventListenerInterface := (Obj.magic eventListenerInterfaceList#objectArray.(!index));
                (self#process ((Obj.magic eventObject), !eventListenerInterface))
            with e -> begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end);
            index := !index + 1
        done
        end [@@warning "-20"]
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore ((Obj.magic eventListenerInterface)#onEvent ((Obj.magic eventObject)))
        end [@@warning "-20"]
    

    method getEventListenerInterfaceListP () : BasicArrayList.basicArrayList =
        begin
        (eventListenerInterfaceList :> BasicArrayList.basicArrayList)
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        eventListenerInterfaceList <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicEventHandler" (fun arguments -> Obj.repr (new basicEventHandler (Obj.obj arguments)))


