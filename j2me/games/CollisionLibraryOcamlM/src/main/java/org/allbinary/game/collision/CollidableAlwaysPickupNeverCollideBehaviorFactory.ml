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

class collidableAlwaysPickupNeverCollideBehaviorFactory () =
  object
    inherit CollidableBaseBehaviorFactory.collidableBaseBehaviorFactory ()
    val mutable instance : CollidableAlwaysPickupNeverCollideBehavior.collidableAlwaysPickupNeverCollideBehavior = (Obj.magic 0)
    method instance = instance
    method set_instance value' = instance <- value'
    

    method createBehavior () : CollidableBaseBehavior.collidableBaseBehavior =
        begin
        (instance :> CollidableBaseBehavior.collidableBaseBehavior)
        end [@@warning "-7"]

    initializer
      begin
        instance <- ((new CollidableAlwaysPickupNeverCollideBehavior.collidableAlwaysPickupNeverCollideBehavior ()) :> CollidableAlwaysPickupNeverCollideBehavior.collidableAlwaysPickupNeverCollideBehavior);
        ()
      end
  end
let () = java_register_constructor "CollidableAlwaysPickupNeverCollideBehaviorFactory" (fun arguments -> Obj.repr (new collidableAlwaysPickupNeverCollideBehaviorFactory (Obj.obj arguments)))

let instanceC = (new collidableAlwaysPickupNeverCollideBehaviorFactory ())
let get_instanceC () = instanceC
let () = java_register_static "CollidableAlwaysPickupNeverCollideBehaviorFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "CollidableAlwaysPickupNeverCollideBehaviorFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


