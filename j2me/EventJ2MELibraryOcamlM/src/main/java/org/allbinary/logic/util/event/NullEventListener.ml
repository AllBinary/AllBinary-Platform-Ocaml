(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.logic.util.event *)

open Allbinary_java [@@warning "-33"]

class nullEventListener () =
  object
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullEventListener" (fun arguments -> Obj.repr (new nullEventListener (Obj.obj arguments)))

let nULL_EVENT_LISTENER = (new nullEventListener ())
let get_nULL_EVENT_LISTENER () = nULL_EVENT_LISTENER
let () = java_register_static "NullEventListener.get_nULL_EVENT_LISTENER" (fun _ -> Obj.repr (get_nULL_EVENT_LISTENER ()))


