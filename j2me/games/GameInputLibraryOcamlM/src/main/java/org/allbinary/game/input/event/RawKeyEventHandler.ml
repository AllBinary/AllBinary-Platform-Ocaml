(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let tOTAL_LISTENERS : string = "Total Listeners: "
let get_tOTAL_LISTENERS () = tOTAL_LISTENERS
let () = java_register_static "RawKeyEventHandler.get_tOTAL_LISTENERS" (fun _ -> Obj.repr (get_tOTAL_LISTENERS ()))
let lISTENER_LABEL : string = " Listener: "
let get_lISTENER_LABEL () = lISTENER_LABEL
let () = java_register_static "RawKeyEventHandler.get_lISTENER_LABEL" (fun _ -> Obj.repr (get_lISTENER_LABEL ()))
class rawKeyEventHandler () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable eventListenerInterfaceList : BasicArrayList.basicArrayList = (Obj.magic 0)
    method eventListenerInterfaceList = eventListenerInterfaceList
    method set_eventListenerInterfaceList value' = eventListenerInterfaceList <- value'
    
    

    method removeAllListeners () : unit =
        begin
        eventListenerInterfaceList <- (new BasicArrayListD.basicArrayListD ())
        end
    

    method addListeners : 'any1. 'any1 -> unit = fun (vector) ->
        let vector = Obj.repr vector in
        begin
        let eventListenerInterface : RawKeyEventListener.rawKeyEventListener ref = ref (((Obj.magic 0) :> RawKeyEventListener.rawKeyEventListener)) in ();
        let size : int ref = ref (((Obj.magic vector)#size ())) in ();
        for index = 0 to !size - 1 do
            eventListenerInterface := (Obj.magic ((Obj.magic vector)#get (index)));
            (self#addListener (!eventListenerInterface))
        done
        end [@@warning "-20"]
    

    method addListenerSingleThreaded : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        if (not (eventListenerInterfaceList#contains ((Obj.magic eventListenerInterface)))) then begin
            ignore (eventListenerInterfaceList#add ((Obj.magic eventListenerInterface)))
        end
        end [@@warning "-20"]
    

    method addListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
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
    

    method fireEvent ((keyCode : int), (deviceId : int), (repeated : bool)) : unit =
        begin
        let eventListenerInterface : RawKeyEventListener.rawKeyEventListener ref = ref (((Obj.magic 0) :> RawKeyEventListener.rawKeyEventListener)) in ();
        let index : int ref = ref (0) in ();
        while (!index < (eventListenerInterfaceList#size ())) do
            (try
                eventListenerInterface := (Obj.magic (eventListenerInterfaceList#get (!index)));
                (self#process (keyCode, deviceId, repeated, !eventListenerInterface))
            with e -> begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end);
            index := !index + 1
        done
        end
    

    method process : 'any4. int * int * bool * 'any4 -> unit = fun ((keyCode : int), (deviceId : int), (repeated : bool), eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore ((Obj.magic eventListenerInterface)#onEventRaw (keyCode, deviceId, repeated))
        end [@@warning "-20"]
    

    method getEventListenerInterfaceListP () : BasicArrayList.basicArrayList =
        begin
        (eventListenerInterfaceList :> BasicArrayList.basicArrayList)
        end
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (tOTAL_LISTENERS));
        ignore (!stringBuffer#appendint ((eventListenerInterfaceList#size ())));
        let eventListenerInterface : RawKeyEventListener.rawKeyEventListener ref = ref (((Obj.magic 0) :> RawKeyEventListener.rawKeyEventListener)) in ();
        let index : int ref = ref (0) in ();
        while (!index < (eventListenerInterfaceList#size ())) do
            (try
                eventListenerInterface := (Obj.magic (eventListenerInterfaceList#get (!index)));
                ignore (!stringBuffer#append (lISTENER_LABEL));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !eventListenerInterface))))
            with e -> begin
                let commonStrings : CommonStrings.commonStrings ref = ref (((CommonStrings.getInstance ()) :> CommonStrings.commonStrings)) in ();
                ignore ((Obj.magic logUtil)#put (!commonStrings#eXCEPTION, self, !commonStrings#tOSTRING, e))
            end);
            index := !index + 1
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        eventListenerInterfaceList <- (new BasicArrayListD.basicArrayListD ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "RawKeyEventHandler" (fun arguments -> Obj.repr (new rawKeyEventHandler (Obj.obj arguments)))

let instance = (new rawKeyEventHandler ())
let get_instance () = instance
let () = java_register_static "RawKeyEventHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "RawKeyEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


