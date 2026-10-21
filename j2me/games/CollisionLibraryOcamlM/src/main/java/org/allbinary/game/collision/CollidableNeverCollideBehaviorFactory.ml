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

class collidableNeverCollideBehaviorFactory () =
  object
    inherit CollidableBaseBehaviorFactory.collidableBaseBehaviorFactory ()
    val mutable instance : CollidableNeverCollideBehavior.collidableNeverCollideBehavior = (Obj.magic 0)
    method instance = instance
    method set_instance value' = instance <- value'
    

    method createBehavior : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (instance))
        end [@@warning "-7"]

    initializer
      begin
        instance <- ((new CollidableNeverCollideBehavior.collidableNeverCollideBehavior (false)) :> CollidableNeverCollideBehavior.collidableNeverCollideBehavior);
        ()
      end
  end
let () = java_register_constructor "CollidableNeverCollideBehaviorFactory" (fun arguments -> Obj.repr (new collidableNeverCollideBehaviorFactory (Obj.obj arguments)))

let instanceC = (new collidableNeverCollideBehaviorFactory ())
let get_instanceC () = instanceC
let () = java_register_static "CollidableNeverCollideBehaviorFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "CollidableNeverCollideBehaviorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


