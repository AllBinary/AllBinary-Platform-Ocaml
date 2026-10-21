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
(* package org.allbinary.graphics *)

open Allbinary_java [@@warning "-33"]

class resizableListenerHandler () =
  object
    

    method setListener : 'any1. 'any1 -> unit = fun (_resizableListenerInterface) ->
        begin
        ()
        end [@@warning "-20"]
    

    method fire ((_isFullScreen : bool)) : unit =
        begin
        ()
        end
    

    method fireEvent ((_value : bool)) : unit =
        begin
        ()
        end

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ResizableListenerHandler" (fun arguments -> Obj.repr (new resizableListenerHandler (Obj.obj arguments)))

let instance = (new resizableListenerHandler ())
let get_instance () = instance
let () = java_register_static "ResizableListenerHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ResizableListenerHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


