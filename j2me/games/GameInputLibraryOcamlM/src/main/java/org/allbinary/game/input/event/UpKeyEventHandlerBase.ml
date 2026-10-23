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
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.EventStrings *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

let tOTAL_LISTENERS : string = " Total PlayerGameInput Listeners: "
let get_tOTAL_LISTENERS () = tOTAL_LISTENERS
let () = java_register_static "UpKeyEventHandlerBase.get_tOTAL_LISTENERS" (fun _ -> Obj.repr (get_tOTAL_LISTENERS ()))
let lISTENER_LABEL : string = " PlayerGameInput Listener: "
let get_lISTENER_LABEL () = lISTENER_LABEL
let () = java_register_static "UpKeyEventHandlerBase.get_lISTENER_LABEL" (fun _ -> Obj.repr (get_lISTENER_LABEL ()))
class upKeyEventHandlerBase () =
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
    

    method removeListenerSingleThreaded : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (list#remove ((Obj.magic eventListenerInterface)));
        ignore (super#removeListenerSingleThreaded ((Obj.magic eventListenerInterface)))
        end [@@warning "-7-20"]
    

    method removeListener : 'any1. 'any1 -> unit = fun (eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        ignore (list#remove ((Obj.magic eventListenerInterface)));
        ignore (super#removeListener ((Obj.magic eventListenerInterface)))
        end [@@warning "-7-20"]
    

    method fireEventForInteger ((eventObject : int)) : unit =
        begin
        let index : int ref = ref ((list#size ())) in ();
        while ((index := !index - 1; !index) >= 0) do
            (try
                let playerGameInput : PlayerGameInput.playerGameInput ref = ref (((Obj.magic list#objectArray.(!index)) :> PlayerGameInput.playerGameInput)) in ();
                ignore (!playerGameInput#onUpKeyEvent (eventObject))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end)
        done;
        let index : int ref = ref (0) in ();
        let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((Obj.magic 0) :> EventListenerInterface.eventListenerInterface)) in ();
        while (!index < ((self#eventListenerInterfaceList)#size ())) do
            (try
                eventListenerInterface := (Obj.magic ((self#eventListenerInterfaceList)#get (!index)));
                (self#processForInteger (eventObject, !eventListenerInterface))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (EventStrings.getInstance ())#fIRE_EVENT, e))
            end);
            index := !index + 1
        done
        end [@@warning "-7"]
    

    method processForInteger : 'any2. int * 'any2 -> unit = fun ((eventObject : int), eventListenerInterface) ->
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let upKeyEventListenerInterface : UpKeyEventListenerInterface.upKeyEventListenerInterface ref = ref (((Obj.magic (Obj.magic eventListenerInterface)) :> UpKeyEventListenerInterface.upKeyEventListenerInterface)) in ();
        ignore (!upKeyEventListenerInterface#onUpKeyEvent (eventObject))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((super#toString ())));
        ignore (!stringBuffer#append (tOTAL_LISTENERS));
        ignore (!stringBuffer#appendint ((list#size ())));
        for index = 0 to (list#size ()) - 1 do
            (try
                let eventListenerInterface : EventListenerInterface.eventListenerInterface ref = ref (((Obj.magic (list#get (index))) :> EventListenerInterface.eventListenerInterface)) in ();
                ignore (!stringBuffer#append (lISTENER_LABEL));
                ignore (!stringBuffer#append ((java_string_of (Obj.repr !eventListenerInterface))))
            with e -> begin
                ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#tOSTRING, e))
            end)
        done;
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]

    initializer
      begin
        list <- ((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList);
        ();
        ()
      end
  end
let () = java_register_constructor "UpKeyEventHandlerBase" (fun arguments -> Obj.repr (new upKeyEventHandlerBase (Obj.obj arguments)))


