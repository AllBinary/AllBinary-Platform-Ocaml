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
[@@@warning "-20"]

class screenListenerHandler () =
  object
    val mutable screenListenerInterface : ScreenListenerInterface.screenListenerInterface = (Obj.magic 0)
    method screenListenerInterface = screenListenerInterface
    method set_screenListenerInterface value' = screenListenerInterface <- value'
    

    method setListener : 'any1. 'any1 -> unit = fun (screenListenerInterface_arg) ->
        let screenListenerInterface_arg = Obj.repr screenListenerInterface_arg in
        begin
        screenListenerInterface <- (Obj.magic screenListenerInterface_arg)
        end [@@warning "-20"]
    

    method fireWithState ((isFullScreen : bool)) : unit =
        begin
        ignore (screenListenerInterface#onFullScreen (isFullScreen))
        end
    

    method fire () : unit =
        begin
        ignore (screenListenerInterface#onFullScreenDisplay ())
        end

    initializer
      begin
        screenListenerInterface <- ((new ScreenEmptyListener.screenEmptyListener ()) :> ScreenListenerInterface.screenListenerInterface);
        ()
      end
  end
let () = java_register_constructor "ScreenListenerHandler" (fun arguments -> Obj.repr (new screenListenerHandler (Obj.obj arguments)))

let instance = (new screenListenerHandler ())
let get_instance () = instance
let () = java_register_static "ScreenListenerHandler.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "ScreenListenerHandler.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


