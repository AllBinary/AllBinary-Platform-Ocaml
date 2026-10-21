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
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.layer.AllBinaryLayerCircularPool *)

class weaponLayerCircularPool () =
  object
    inherit AllBinaryLayerCircularPool.allBinaryLayerCircularPool () as super
    
    

    method getInstanceWeaponLayer : 'any1 'any7 'any8. 'any1 * int * int * int * int * int * 'any7 * 'any8 -> WeaponLayer.weaponLayer = fun (sourceLayerInterface, (x : int), (y : int), (z : int), (angle : int), (otherAngle : int), weaponProperties, scoreable) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        let weaponProperties = Obj.repr weaponProperties in
        let scoreable = Obj.repr scoreable in
        begin
        let weaponLayer : WeaponLayer.weaponLayer ref = ref (((Obj.magic (super#getNextInstance ())) :> WeaponLayer.weaponLayer)) in ();
        ignore (!weaponLayer#initXYZ (x, y, z));
        ignore (!weaponLayer#init ((Obj.magic sourceLayerInterface), angle, otherAngle, (Obj.magic weaponProperties), (Obj.magic scoreable)));
        (!weaponLayer :> WeaponLayer.weaponLayer)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "WeaponLayerCircularPool" (fun arguments -> Obj.repr (new weaponLayerCircularPool (Obj.obj arguments)))


