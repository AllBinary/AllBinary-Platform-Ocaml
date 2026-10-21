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
(* import org.allbinary.math.NoDecimalTrigTable *)

class straightMultiProjectileWeaponPart (animationInterface, (sourceLayerInterface : AllBinaryLayer.allBinaryLayer), (weaponLayerCircularStaticPool_arg : WeaponLayerCircularPool.weaponLayerCircularPool), (total_arg : int), (weaponProperties : WeaponProperties.weaponProperties), (scoreableInterface : ScoreableInterface.scoreableInterface), (relativeRelationship : RelativeRelationship.relativeRelationship)) =
  object (self)
    inherit BasicWeaponPart.basicWeaponPart (animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
    val mutable weaponLayerCircularStaticPool : WeaponLayerCircularPool.weaponLayerCircularPool = (Obj.magic 0)
    method weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    method set_weaponLayerCircularStaticPool value' = weaponLayerCircularStaticPool <- value'
    val mutable total : int = 0
    method total = total
    method set_total value' = total <- value'
    val mutable noDecimalTrigTable : NoDecimalTrigTable.noDecimalTrigTable = (Obj.magic 0)
    method noDecimalTrigTable = noDecimalTrigTable
    method set_noDecimalTrigTable value' = noDecimalTrigTable <- value'
    
    

    method processScore : 'any1 'any4 'any5. 'any1 * int * int * 'any4 * 'any5 -> unit = fun (allbinaryLayerManager, (angle : int), (otherAngle : int), weaponProperties, scoreableInterface) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let weaponProperties = Obj.repr weaponProperties in
        let scoreableInterface = Obj.repr scoreableInterface in
        begin
        let sourceLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((self#getOwnerLayerInterface ()) :> AllBinaryLayer.allBinaryLayer)) in ();
        let reducedWidth : int ref = ref (((((!sourceLayerInterface#getWidth ()) * 8) / 10))) in ();
        let halfWidth : int ref = ref (((!reducedWidth asr 1))) in ();
        let x : int ref = ref ((relativeRelationship#getX ())) in ();
        let y : int ref = ref ((relativeRelationship#getY ())) in ();
        let sine : int ref = ref (0) in ();
        let beamX : int ref = ref (0) in ();
        let cosine : int ref = ref (0) in ();
        let beamY : int ref = ref (0) in ();
        let weaponLayer : WeaponLayer.weaponLayer ref = ref (((Obj.magic 0) :> WeaponLayer.weaponLayer)) in ();
        let increment : int ref = ref ((!reducedWidth / ((total - 1)))) in ();
        let next : int ref = ref ((-!halfWidth)) in ();
        for _index = 0 to total - 1 do
            sine := (java_to_int (Obj.repr (((!next * (noDecimalTrigTable#sin (angle)))))));
            beamX := (java_to_int (Obj.repr (((!sine / noDecimalTrigTable#sCALE)))));
            cosine := (java_to_int (Obj.repr (((!next * (noDecimalTrigTable#cos (angle)))))));
            beamY := (-(java_to_int (Obj.repr (((!cosine / noDecimalTrigTable#sCALE))))));
            weaponLayer := (weaponLayerCircularStaticPool#getInstanceWeaponLayer (!sourceLayerInterface, (!x + !beamX), (!y + !beamY), 0, angle, otherAngle, (Obj.magic weaponProperties), (Obj.magic scoreableInterface)));
            ignore ((Obj.magic allbinaryLayerManager)#append (!weaponLayer));
            next := (!next + !increment)
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        noDecimalTrigTable <- ((NoDecimalTrigTable.getInstance ()) :> NoDecimalTrigTable.noDecimalTrigTable);
        ();
        (* super(...) is the inherit clause *) ();
        total <- total_arg;
        weaponLayerCircularStaticPool <- weaponLayerCircularStaticPool_arg
      end
  end
let () = java_register_constructor "StraightMultiProjectileWeaponPart" (fun arguments -> Obj.repr (new straightMultiProjectileWeaponPart (Obj.obj arguments)))

let createStraightMultiProjectileWeaponPart : 'any1 'any2. 'any1 * 'any2 -> _ = fun (animationInterface, weaponLayerCircularStaticPool_arg) ->
        let animationInterface = Obj.repr animationInterface in
        let weaponLayerCircularStaticPool_arg = Obj.repr weaponLayerCircularStaticPool_arg in
        begin
        (new straightMultiProjectileWeaponPart ((Obj.magic animationInterface), (AllBinaryLayer.get_nULL_ALLBINARY_LAYER ()), (Obj.magic weaponLayerCircularStaticPool_arg), 2, (WeaponProperties.get_nULL_WEAPON_PROPERTIES ()), (NoScoreable.getInstance ()), (RelativeRelationship.get_nULL_RELATIVE_RELATIONSHIP ())))
        end [@@warning "-20"]
let () = java_register_static "StraightMultiProjectileWeaponPart.createStraightMultiProjectileWeaponPart" (fun arguments -> Obj.repr (createStraightMultiProjectileWeaponPart (Obj.obj arguments)))


