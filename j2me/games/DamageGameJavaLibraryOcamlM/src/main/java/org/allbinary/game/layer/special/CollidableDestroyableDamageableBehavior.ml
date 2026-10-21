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
(* package org.allbinary.game.layer.special *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.collision.CollidableBaseBehavior *)
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.combat.damage.DamageUtil *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)

class collidableDestroyableDamageableBehavior ((collidable : bool)) =
  object (self)
    inherit CollidableBaseBehavior.collidableBaseBehavior (collidable) as super
    val mutable damageUtil : DamageUtil.damageUtil = (Obj.magic 0)
    method damageUtil = damageUtil
    method set_damageUtil value' = damageUtil <- value'
    
    

    method isCollision : 'any1 'any2. 'any1 * 'any2 -> bool = fun (ownerLayer, collisionLayer) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collisionLayer = Obj.repr collisionLayer in
        try
        begin
        if ((Obj.repr ((Obj.magic ownerLayer)#getGroupInterface ()).(0)) != (Obj.repr ((Obj.magic collisionLayer)#getGroupInterface ()).(0))) then begin
            raise (Java_return (Obj.repr ((super#isCollision ((Obj.magic ownerLayer), (Obj.magic collisionLayer))))))
        end;
        false
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let ownerCollidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic (Obj.magic ownerLayer)) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
        let collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic (Obj.magic collidableInterfaceCompositeInterface)) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
        ignore (!ownerCollidableDestroyableDamageableLayer#damage ((!collidableDestroyableDamageableLayer#getDamage (0)), 0))
        end [@@warning "-7-20"]
    

    method isCollisionInterface : 'any1 'any2. 'any1 * 'any2 -> bool = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        ignore (ForcedLogUtil.log ("No Longer Used", self));
        false
        end [@@warning "-7-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        ignore (ForcedLogUtil.log ("No Longer Used", self))
        end [@@warning "-7-20"]

    initializer
      begin
        damageUtil <- ((DamageUtil.getInstance ()) :> DamageUtil.damageUtil);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableDestroyableDamageableBehavior" (fun arguments -> Obj.repr (new collidableDestroyableDamageableBehavior (Obj.obj arguments)))


