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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.animation.NullIndexedAnimationFactory *)
(* import org.allbinary.game.combat.damage.ExplosionResources *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.physics.movement.Movement *)
(* import org.allbinary.view.ViewPositionBase *)


let createDestroyed : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#getProcedural ((ExplosionResources.getInstance ())#tHIRD_EXPLOSION_RESOURCE))#getInstanceAnimation (((NullIndexedAnimationFactory.getFactoryInstance ())#getInstance (0))))))
        end

let () = java_register_static "SimpleWeaponLayer.createDestroyed" (fun arguments -> Obj.repr (createDestroyed (Obj.obj arguments)))
class simpleWeaponLayer ((name : string), remoteInfo, (multiPlayerType : int), (movement : Movement.movement), animationInterface, destroyedAnimationInterface, rectangle, (viewPosition : ViewPositionBase.viewPositionBase)) =
  object (self)
    inherit WeaponLayer.weaponLayer (name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setCollidableInferface ((new CollidableWeaponBehavior.collidableWeaponBehavior (true))))
      end
  end
let () = java_register_constructor "SimpleWeaponLayer" (fun arguments -> Obj.repr (new simpleWeaponLayer (Obj.obj arguments)))


