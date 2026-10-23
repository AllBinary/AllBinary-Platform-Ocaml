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
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.math.AngleFactory *)

class arcedMultiBeamWeaponPart (animationInterface, (sourceLayerInterface : AllBinaryLayer.allBinaryLayer), (weaponLayerCircularStaticPool_arg : WeaponLayerCircularPool.weaponLayerCircularPool), (total_arg : int), (weaponProperties : WeaponProperties.weaponProperties), (scoreableInterface : ScoreableInterface.scoreableInterface), (relativeRelationship : RelativeRelationship.relativeRelationship)) =
  object (self)
    inherit BasicWeaponPart.basicWeaponPart (animationInterface, sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship)
    val mutable weaponLayerCircularStaticPool : WeaponLayerCircularPool.weaponLayerCircularPool = (Obj.magic 0)
    method weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    method set_weaponLayerCircularStaticPool value' = weaponLayerCircularStaticPool <- value'
    val mutable total : int = 0
    method total = total
    method set_total value' = total <- value'
    val mutable tOTAL_ANGLE : int = 0
    method tOTAL_ANGLE = tOTAL_ANGLE
    method set_tOTAL_ANGLE value' = tOTAL_ANGLE <- value'
    
    

    method processScore : 'any1 'any4 'any5. 'any1 * int * int * 'any4 * 'any5 -> unit = fun (allbinaryLayerManager, (angle : int), (otherAngle : int), weaponProperties, scoreableInterface) ->
        let allbinaryLayerManager = Obj.repr allbinaryLayerManager in
        let weaponProperties = Obj.repr weaponProperties in
        let scoreableInterface = Obj.repr scoreableInterface in
        begin
        let increment : int ref = ref (((((total - 1)) / tOTAL_ANGLE))) in ();
        let minAngle : int ref = ref (((angle - ((((!increment * total)) asr 1))))) in ();
        let next : int ref = ref (0) in ();
        let weaponLayer : WeaponLayer.weaponLayer ref = ref (((Obj.magic 0) :> WeaponLayer.weaponLayer)) in ();
        for _index = 0 to total - 1 do
            weaponLayer := (weaponLayerCircularStaticPool#getInstanceWeaponLayer ((self#getOwnerLayerInterface ()), ((self#relativeRelationship)#getX ()), ((self#relativeRelationship)#getY ()), 0, ((!minAngle + !increment)), otherAngle, (Obj.magic weaponProperties), (Obj.magic scoreableInterface)));
            ignore ((Obj.magic allbinaryLayerManager)#append (!weaponLayer));
            next := (!next + !increment)
        done
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        tOTAL_ANGLE <- (java_to_int (Obj.repr ((AngleFactory.getInstance ())#tOTAL_ANGLE)));
        ();
        (* super(...) is the inherit clause *) ();
        total <- total_arg;
        weaponLayerCircularStaticPool <- weaponLayerCircularStaticPool_arg
      end
  end
let () = java_register_constructor "ArcedMultiBeamWeaponPart" (fun arguments -> Obj.repr (new arcedMultiBeamWeaponPart (Obj.obj arguments)))


