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
(* import org.allbinary.game.layer.CollidableCompositeLayer *)

class collidableNeverCollideBehavior ((isCollidable : bool)) =
  object
    inherit CollidableBaseBehavior.collidableBaseBehavior (isCollidable)
    
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_ownerLayer, _allbinaryCollidableLayer) ->
        begin
        false
        end [@@warning "-7-20"]
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _allbinaryCollidableLayer) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method isCollisionInterface : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        false
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableNeverCollideBehavior" (fun arguments -> Obj.repr (new collidableNeverCollideBehavior (Obj.obj arguments)))


