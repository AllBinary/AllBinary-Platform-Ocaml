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
(* package org.allbinary.game.layer.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.collision.CollidableHelperFactory *)
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.collision.CollisionHelper *)
(* import org.allbinary.game.collision.CollisionType *)
(* import org.allbinary.game.collision.CollisionTypeFactory *)
(* import org.allbinary.game.combat.damage.DamageableInterface *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior *)
(* import org.allbinary.layer.AllBinaryLayer *)

class collidableDamageWeaponBehavior ((collidable : bool)) =
  object (self)
    inherit CollidableDestroyableDamageableBehavior.collidableDestroyableDamageableBehavior (collidable) as super
    val mutable collided : bool = false
    method collided = collided
    method set_collided value' = collided <- value'
    val mutable collisionHelper : CollisionHelper.collisionHelper = (Obj.magic 0)
    method collisionHelper = collisionHelper
    method set_collisionHelper value' = collisionHelper <- value'
    
    

    method init : 'any1. 'any1 -> unit = fun (sourceLayerInterface) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        begin
        (self#setCollided (false));
        ignore (collisionHelper#setOwnerLayerInterface ((Obj.magic sourceLayerInterface)))
        end [@@warning "-7-20"]
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collisionLayer) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collisionLayer = Obj.repr collisionLayer in
        try
        begin
        if (collisionHelper#isCollidable ((Obj.magic collisionLayer))) then begin
            if ((Obj.repr ((Obj.magic ownerLayer)#getGroupInterface ()).(0)) != (Obj.repr ((Obj.magic collisionLayer)#getGroupInterface ()).(0))) then begin
                raise (Java_return (Obj.repr ((super#isCollision ((Obj.magic ownerLayer), (Obj.magic collisionLayer))))))
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collisionLayer) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collisionLayer = Obj.repr collisionLayer in
        begin
        ignore (super#collide ((Obj.magic ownerLayer), (Obj.magic collisionLayer)));
        collided <- true
        end [@@warning "-7-20"]
    

    method isCollisionInterface : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        try
        begin
        if (collisionHelper#isCollidable ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)))) then begin
            let layerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)) :> AllBinaryLayer.allBinaryLayer)) in ();
            if ((Obj.repr ((Obj.magic ownerLayer)#getGroupInterface ()).(0)) != (Obj.repr (!layerInterface#getGroupInterface ()).(0))) then begin
                if ((self#layerCollisionUtil)#isCollision ((Obj.magic ownerLayer), !layerInterface)) then begin
                    raise (Java_return (Obj.repr (true)))
                end
            end
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        ignore ((self#damageUtil)#process ((Obj.magic (Obj.magic ownerLayer)), (Obj.magic (Obj.magic collidableInterfaceCompositeInterface))));
        collided <- true
        end [@@warning "-7-20"]
    

    method getCollisionTypeWith : 'any1. 'any1 -> CollisionType.collisionType = fun (_layerInterface) ->
        begin
        ((CollisionTypeFactory.getInstance ())#cOLLISION :> CollisionType.collisionType)
        end [@@warning "-7-20"]
    

    method isCollided () : bool =
        begin
        collided
        end [@@warning "-7"]
    

    method setCollided ((collided_arg : bool)) : unit =
        begin
        collided <- collided_arg
        end [@@warning "-7"]

    initializer
      begin
        collided <- false;
        ();
        ();
        (* super(...) is the inherit clause *) ();
        (self#setCollided (false));
        ignore (self#setCollidable (true));
        collisionHelper <- (CollidableHelperFactory.getInstance ())
      end
  end
let () = java_register_constructor "CollidableDamageWeaponBehavior" (fun arguments -> Obj.repr (new collidableDamageWeaponBehavior (Obj.obj arguments)))


