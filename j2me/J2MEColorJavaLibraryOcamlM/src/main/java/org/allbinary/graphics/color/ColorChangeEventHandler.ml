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
(* package org.allbinary.graphics.color *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.handler.BasicEventHandler *)

class colorChangeEventHandler () =
  object
    inherit BasicEventHandler.basicEventHandler ()
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ColorChangeEventHandler" (fun arguments -> Obj.repr (new colorChangeEventHandler (Obj.obj arguments)))

let eventHandler = (new colorChangeEventHandler ())
let get_eventHandler () = eventHandler
let () = java_register_static "ColorChangeEventHandler.get_eventHandler" (fun _ -> Obj.repr (get_eventHandler ()))

let getInstance () =
        begin
        eventHandler
        end
let () = java_register_static "ColorChangeEventHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


