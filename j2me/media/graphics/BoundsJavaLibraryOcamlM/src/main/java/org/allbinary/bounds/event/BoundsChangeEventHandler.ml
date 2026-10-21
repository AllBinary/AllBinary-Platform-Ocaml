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
(* package org.allbinary.bounds.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)
(* import org.allbinary.logic.util.event.EventListenerInterface *)
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class boundsChangeEventHandler () =
  object
    inherit BasicEventHandler.basicEventHandler ()
    
    

    method process : 'any1 'any2. 'any1 * 'any2 -> unit = fun (eventObject, eventListenerInterface) ->
        let eventObject = Obj.repr eventObject in
        let eventListenerInterface = Obj.repr eventListenerInterface in
        begin
        let boundsChangeEventListener : BoundsChangeEventListener.boundsChangeEventListener ref = ref (((Obj.magic (Obj.magic eventListenerInterface)) :> BoundsChangeEventListener.boundsChangeEventListener)) in ();
        ignore (!boundsChangeEventListener#onBoundsChangeEvent ((Obj.magic (Obj.magic eventObject))))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BoundsChangeEventHandler" (fun arguments -> Obj.repr (new boundsChangeEventHandler (Obj.obj arguments)))

let sINGLETON : Obj.t ref = ref ((Obj.repr (new boundsChangeEventHandler ())))
let get_sINGLETON () = Obj.magic !sINGLETON
let set_sINGLETON value' = sINGLETON := Obj.repr value'
let () = java_register_static "BoundsChangeEventHandler.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic !sINGLETON)))
        end
let () = java_register_static "BoundsChangeEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


