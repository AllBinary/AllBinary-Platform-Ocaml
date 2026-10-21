(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.waypoint *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.CollidableRTSBehavior *)
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)

class collidableWaypointBehavior ((collidable : bool)) =
  object
    inherit CollidableRTSBehavior.collidableRTSBehavior (collidable)
    
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_ownerLayer, _collisionLayer) ->
        begin
        false
        end [@@warning "-7-20"]
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collisionLayer) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method isCollisionInterface : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_ownerLayer, _collidableInterface) ->
        begin
        false
        end [@@warning "-7-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterface) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableWaypointBehavior" (fun arguments -> Obj.repr (new collidableWaypointBehavior (Obj.obj arguments)))


