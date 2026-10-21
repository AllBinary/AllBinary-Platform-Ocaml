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
(* package org.allbinary.game.input.mapping.event *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.util.event.AllBinaryEventObject *)

class nullInputMappingEventListener () =
  object
    

    method onInputMappingEvent : 'any1. 'any1 -> unit = fun (_inputMappingEvent) ->
        begin
        ()
        end [@@warning "-20"]
    

    method onEvent : 'any1. 'any1 -> unit = fun (_eventObject) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "NullInputMappingEventListener" (fun arguments -> Obj.repr (new nullInputMappingEventListener (Obj.obj arguments)))

let nULL_INPUT_MAPPING_EVENT_LISTENER = (new nullInputMappingEventListener ())
let get_nULL_INPUT_MAPPING_EVENT_LISTENER () = nULL_INPUT_MAPPING_EVENT_LISTENER
let () = java_register_static "NullInputMappingEventListener.get_nULL_INPUT_MAPPING_EVENT_LISTENER" (fun _ -> Obj.repr (get_nULL_INPUT_MAPPING_EVENT_LISTENER ()))


