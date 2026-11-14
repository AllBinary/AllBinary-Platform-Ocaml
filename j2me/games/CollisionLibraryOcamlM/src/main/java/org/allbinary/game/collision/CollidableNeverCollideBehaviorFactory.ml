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
(* package org.allbinary.game.collision *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]

let instanceC_cell : Obj.t Lazy.t ref = ref (Lazy.from_val java_null)
let get_instanceC : 'r. unit -> 'r = fun () -> Obj.magic (try Lazy.force !instanceC_cell with Lazy.Undefined -> java_null)
let set_instanceC value' = instanceC_cell := Lazy.from_val (Obj.repr value')
let () = java_register_static "CollidableNeverCollideBehaviorFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))
let () = java_register_static "CollidableNeverCollideBehaviorFactory.set_instanceC" (fun value' -> set_instanceC value'; Obj.repr ())
class collidableNeverCollideBehaviorFactory () =
  object
    inherit CollidableBaseBehaviorFactory.collidableBaseBehaviorFactory ()
    val mutable instance : Obj.t = Obj.repr 0
    method instance : 'r. 'r = Obj.magic instance
    method set_instance : 'v. 'v -> unit = fun value' -> instance <- Obj.repr value'
    

    method createBehavior : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic instance)))
        end [@@warning "-7"]

    initializer
      begin
        instance <- (Obj.repr (Obj.obj (java_new "CollidableNeverCollideBehavior" (Obj.repr (false)))));
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "CollidableNeverCollideBehaviorFactory" (fun arguments -> Obj.repr (new collidableNeverCollideBehaviorFactory (Obj.obj arguments)))

let getInstance : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (get_instanceC ()))))
        end
let () = java_register_static "CollidableNeverCollideBehaviorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))

let () = instanceC_cell := lazy (Obj.repr ((new collidableNeverCollideBehaviorFactory ())))


