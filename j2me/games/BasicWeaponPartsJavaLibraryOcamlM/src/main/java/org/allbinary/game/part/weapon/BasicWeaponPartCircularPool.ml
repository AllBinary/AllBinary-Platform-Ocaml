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
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.graphics.RelativeRelationship *)
(* import org.allbinary.layer.AllBinaryLayer *)

class basicWeaponPartCircularPool () =
  object
    val mutable basicWeaponPart : BasicWeaponPart.basicWeaponPart = (Obj.magic 0)
    method basicWeaponPart = basicWeaponPart
    method set_basicWeaponPart value' = basicWeaponPart <- value'
    

    method init : 'any1. 'any1 -> unit = fun (basicWeaponPartFactoryInterface) ->
        let basicWeaponPartFactoryInterface = Obj.repr basicWeaponPartFactoryInterface in
        begin
        basicWeaponPart <- ((Obj.magic basicWeaponPartFactoryInterface)#getInstance ())
        end [@@warning "-20"]
    

    method getInstance : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> BasicWeaponPart.basicWeaponPart = fun (sourceLayerInterface, weaponProperties, scoreableInterface, relativeRelationship) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        let weaponProperties = Obj.repr weaponProperties in
        let scoreableInterface = Obj.repr scoreableInterface in
        let relativeRelationship = Obj.repr relativeRelationship in
        begin
        ignore (basicWeaponPart#init ((Obj.magic sourceLayerInterface), (Obj.magic weaponProperties), (Obj.magic scoreableInterface), (Obj.magic relativeRelationship)));
        (basicWeaponPart :> BasicWeaponPart.basicWeaponPart)
        end [@@warning "-20"]

    initializer
      begin
        basicWeaponPart <- ((BasicWeaponPart.get_nULL_BASIC_WEAPON_PART ()) :> BasicWeaponPart.basicWeaponPart);
        ()
      end
  end
let () = java_register_constructor "BasicWeaponPartCircularPool" (fun arguments -> Obj.repr (new basicWeaponPartCircularPool (Obj.obj arguments)))

let nULL_BASIC_WEAPON_PART_CIRCULAR_POOL = (new basicWeaponPartCircularPool ())
let get_nULL_BASIC_WEAPON_PART_CIRCULAR_POOL () = nULL_BASIC_WEAPON_PART_CIRCULAR_POOL
let () = java_register_static "BasicWeaponPartCircularPool.get_nULL_BASIC_WEAPON_PART_CIRCULAR_POOL" (fun _ -> Obj.repr (get_nULL_BASIC_WEAPON_PART_CIRCULAR_POOL ()))


