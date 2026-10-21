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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.physics.movement.Movement *)
(* import org.allbinary.view.ViewPositionBase *)

class damageWeaponLayer ((name : string), remoteInfo, (movement : Movement.movement), animationInterface, destroyedAnimationInterface, rectangle, (viewPosition : ViewPositionBase.viewPositionBase), (_username : string), (_actorSessionId : int), (_id : int), (multiPlayerType : int)) =
  object (self)
    inherit WeaponLayer.weaponLayer (name, remoteInfo, multiPlayerType, movement, animationInterface, destroyedAnimationInterface, rectangle, viewPosition)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setCollidableInferface ((new CollidableDamageWeaponBehavior.collidableDamageWeaponBehavior (true))))
      end
  end
let () = java_register_constructor "DamageWeaponLayer" (fun arguments -> Obj.repr (new damageWeaponLayer (Obj.obj arguments)))


