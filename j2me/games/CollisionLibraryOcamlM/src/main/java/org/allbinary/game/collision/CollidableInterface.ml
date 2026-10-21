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
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.NamedInterface *)

class virtual collidableInterface =
  object
    inherit NamedInterface.namedInterface
    method virtual isCollidable : 'any1 . 'any1 -> bool
    method virtual isCollision : 'any1 'any2 . 'any1 * 'any2 -> bool
    method virtual collide : 'any1 'any2 . 'any1 * 'any2 -> unit
    method virtual getCollisionTypeWith : 'any1 . 'any1 -> CollisionType.collisionType
  end


