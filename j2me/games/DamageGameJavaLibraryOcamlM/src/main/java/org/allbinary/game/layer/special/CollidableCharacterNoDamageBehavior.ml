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
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.collision.CollisionType *)
(* import org.allbinary.game.collision.CollisionTypeFactory *)
(* import org.allbinary.game.layer.CollidableCompositeLayer *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)

class collidableCharacterNoDamageBehavior ((collidable : bool)) =
  object (self)
    inherit CollidableDestroyableDamageableBehavior.collidableDestroyableDamageableBehavior (collidable)
    
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let collisionTypeFactory : CollisionTypeFactory.collisionTypeFactory ref = ref (((CollisionTypeFactory.getInstance ()) :> CollisionTypeFactory.collisionTypeFactory)) in ();
        let collisionType : CollisionType.collisionType ref = ref (((((Obj.magic collidableInterfaceCompositeInterface)#getCollidableInferface ())#getCollisionTypeWith ((Obj.magic ownerLayer))) :> CollisionType.collisionType)) in ();
        if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#pICKUP)) then begin
            let collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref (((Obj.magic (Obj.magic ownerLayer)) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
            ignore ((!collidableDestroyableDamageableLayer#getPickupBehavior ())#doPickupLayer ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface))))
        end else begin
            ()
        end
        end [@@warning "-7-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        ignore (ForcedLogUtil.log (commonStrings#nOT_IMPLEMENTED, self))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableCharacterNoDamageBehavior" (fun arguments -> Obj.repr (new collidableCharacterNoDamageBehavior (Obj.obj arguments)))


