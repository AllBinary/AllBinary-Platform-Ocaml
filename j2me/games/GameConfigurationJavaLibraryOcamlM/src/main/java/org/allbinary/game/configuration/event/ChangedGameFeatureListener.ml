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
(* package org.allbinary.game.configuration.event *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.configuration.GameConfiguration *)

let gameFeatureListener_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_gameFeatureListener : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !gameFeatureListener_cell with Lazy.Undefined -> java_null)
let set_gameFeatureListener value' = gameFeatureListener_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "ChangedGameFeatureListener.get_gameFeatureListener" (fun _ -> Obj.repr (get_gameFeatureListener ()))
let () = java_register_static "ChangedGameFeatureListener.set_gameFeatureListener" (fun value' -> set_gameFeatureListener value'; Obj.repr ())
class changedGameFeatureListener () =
  object (self)
    inherit BaseChangedGameFeatureListener.baseChangedGameFeatureListener ()
    

    method isChangedGameConfiguration : 'any1. 'any1 -> bool = fun (gameConfiguration) ->
        let gameConfiguration = Obj.repr gameConfiguration in
        begin
        ((self#list)#contains ((Obj.magic gameConfiguration)))
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "ChangedGameFeatureListener" (fun arguments -> Obj.repr (new changedGameFeatureListener (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_gameFeatureListener ()))))
        end
let () = java_register_static "ChangedGameFeatureListener.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = gameFeatureListener_cell := lazy (Obj.repr ((new changedGameFeatureListener ())))


