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
(* package org.allbinary.game.input *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

class inputProcessorFactory () =
  object
    val mutable inputProcessor : InputProcessor.inputProcessor = (Obj.magic 0)
    method inputProcessor = inputProcessor
    method set_inputProcessor value' = inputProcessor <- value'
    

    method getInputProcessor : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (inputProcessor))
        end

    initializer
      begin
        inputProcessor <- ((new InputProcessor.inputProcessor ()) :> InputProcessor.inputProcessor);
        ()
      end
  end
let () = java_register_constructor "InputProcessorFactory" (fun arguments -> Obj.repr (new inputProcessorFactory (Obj.obj arguments)))

let instance = (new inputProcessorFactory ())
let get_instance () = instance
let () = java_register_static "InputProcessorFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end
let () = java_register_static "InputProcessorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


