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
(* package org.allbinary.input.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class virtualKeyboardEventHandler () =
  object (self)
    inherit BasicEventHandler.basicEventHandler ()
    val mutable sHOW_EVENT : VirtualKeyboardEvent.virtualKeyboardEvent = (Obj.magic 0)
    method sHOW_EVENT = sHOW_EVENT
    method set_sHOW_EVENT value' = sHOW_EVENT <- value'
    val mutable hIDE_EVENT : VirtualKeyboardEvent.virtualKeyboardEvent = (Obj.magic 0)
    method hIDE_EVENT = hIDE_EVENT
    method set_hIDE_EVENT value' = hIDE_EVENT <- value'
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let virtualKeyboardEventListenerInterface : VirtualKeyboardEventListenerInterface.virtualKeyboardEventListenerInterface ref = ref (((Obj.magic (Obj.magic eventListenerInterface)) :> VirtualKeyboardEventListenerInterface.virtualKeyboardEventListenerInterface)) in ();
        ignore (!virtualKeyboardEventListenerInterface#onVirtualKeyboardEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]
    

    method open_ () : unit =
        begin
        (try
            ignore (Unix.sleepf (Float.of_int (120) /. 1000.0));
            ignore (self#fireEvent (sHOW_EVENT))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, "open", e))
        end)
        end [@@warning "-7"]
    

    method close () : unit =
        begin
        (try
            ignore (Unix.sleepf (Float.of_int (120) /. 1000.0));
            ignore (self#fireEvent (hIDE_EVENT))
        with e -> begin
            ignore ((self#logUtil)#put ((self#commonStrings)#eXCEPTION, self, (self#commonStrings)#cLOSE, e))
        end)
        end [@@warning "-7"]

    initializer
      begin
        sHOW_EVENT <- ((new VirtualKeyboardEvent.virtualKeyboardEvent ((BooleanFactory.getInstance ())#tRUE)) :> VirtualKeyboardEvent.virtualKeyboardEvent);
        hIDE_EVENT <- ((new VirtualKeyboardEvent.virtualKeyboardEvent ((BooleanFactory.getInstance ())#fALSE)) :> VirtualKeyboardEvent.virtualKeyboardEvent);
        ();
        ()
      end
  end
let () = java_register_constructor "VirtualKeyboardEventHandler" (fun arguments -> Obj.repr (new virtualKeyboardEventHandler (Obj.obj arguments)))

let gameKeyEventHandler = (new virtualKeyboardEventHandler ())
let get_gameKeyEventHandler () = gameKeyEventHandler
let () = java_register_static "VirtualKeyboardEventHandler.get_gameKeyEventHandler" (fun _ -> Obj.repr (get_gameKeyEventHandler ()))

let getInstance () =
        begin
        gameKeyEventHandler
        end
let () = java_register_static "VirtualKeyboardEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


