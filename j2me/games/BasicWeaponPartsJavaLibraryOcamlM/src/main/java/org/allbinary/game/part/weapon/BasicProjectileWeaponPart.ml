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
(* package org.allbinary.game.part.weapon *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.layer.weapon.WeaponLayer *)
(* import org.allbinary.game.layer.weapon.WeaponLayerCircularPool *)
(* import org.allbinary.game.score.NoScoreable *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)

class basicProjectileWeaponPart (animationInterface, (sourceLayerInterface : AllBinaryLayer.allBinaryLayer), (weaponLayerCircularStaticPool_arg : WeaponLayerCircularPool.weaponLayerCircularPool), (weaponProperties : WeaponProperties.weaponProperties), (scoreableInterface : ScoreableInterface.scoreableInterface), (relativeRelationship : RelativeRelationship.relativeRelationship)) =
  object (self)
    inherit BasicWeaponPart.basicWeaponPart (animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
    val mutable weaponLayerCircularStaticPool : WeaponLayerCircularPool.weaponLayerCircularPool = (Obj.magic 0)
    method weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    method set_weaponLayerCircularStaticPool value' = weaponLayerCircularStaticPool <- value'
    
    

    method processScore : 'any1 'any4 'any5. 'any1 * int * int * 'any4 * 'any5 -> unit = fun (allbinaryLayerManager, (angle : int), (otherAngle : int), weaponProperties, scoreableInterface) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let weaponProperties = Obj.repr weaponProperties in
        let scoreableInterface = Obj.repr scoreableInterface in
        begin
        let weaponLayer : WeaponLayer.weaponLayer ref = ref (((weaponLayerCircularStaticPool#getInstanceWeaponLayer ((self#getOwnerLayerInterface ()), (relativeRelationship#getX ()), (relativeRelationship#getY ()), (relativeRelationship#getZ ()), angle, otherAngle, (Obj.magic weaponProperties), (Obj.magic scoreableInterface))) :> WeaponLayer.weaponLayer)) in ();
        ignore ((Obj.magic allbinaryLayerManager)#append (!weaponLayer))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        weaponLayerCircularStaticPool <- weaponLayerCircularStaticPool_arg
      end
  end
let () = java_register_constructor "BasicProjectileWeaponPart" (fun arguments -> Obj.repr (new basicProjectileWeaponPart (Obj.obj arguments)))

let createBasicProjectileWeaponPart : 'any1 'any2. 'any1 * 'any2 -> _ = fun (animationInterface, weaponLayerCircularStaticPool_arg) ->
        let animationInterface = Obj.repr animationInterface in
        let weaponLayerCircularStaticPool_arg = Obj.repr weaponLayerCircularStaticPool_arg in
        begin
        (new basicProjectileWeaponPart ((Obj.magic animationInterface), (AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()), (Obj.magic weaponLayerCircularStaticPool_arg), (WeaponProperties.get_nULL_WEAPON_PROPERTIES ()), (NoScoreable.getInstance ()), (RelativeRelationship.get_nULL_RELATIVE_RELATIONSHIP ())))
        end [@@warning "-20"]
let () = java_register_static "BasicProjectileWeaponPart.createBasicProjectileWeaponPart" (fun arguments -> Obj.repr (createBasicProjectileWeaponPart (Obj.obj arguments)))


