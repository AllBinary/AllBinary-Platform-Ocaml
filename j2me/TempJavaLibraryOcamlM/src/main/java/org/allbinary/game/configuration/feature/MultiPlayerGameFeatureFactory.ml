(* Generated Code Do Not Modify *)
(* package org.allbinary.game.configuration.feature *)

open Allbinary_java [@@warning "-33"]

class multiPlayerGameFeatureFactory () =
  object
    
    

    method addCommands : 'any1. 'any1 -> unit = fun (_anyType) ->
        begin
        ()
        end

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "MultiPlayerGameFeatureFactory" (fun arguments -> Obj.repr (new multiPlayerGameFeatureFactory (Obj.obj arguments)))

let instance = (new multiPlayerGameFeatureFactory ())
let get_instance () = instance
let () = java_register_static "MultiPlayerGameFeatureFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "MultiPlayerGameFeatureFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


