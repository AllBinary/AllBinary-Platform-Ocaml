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
(* package org.allbinary.game.ag.layer.weapon.mine *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.combat.weapon.WeaponProperties *)
(* import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory *)
(* import org.allbinary.game.layer.pickup.IconLayerFactory *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory *)
(* import org.allbinary.game.layer.weapon.WeaponLayerCircularPool *)
(* import org.allbinary.game.score.ScoreableInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.math.SmallIntegerSingletonFactory *)
(* import org.allbinary.util.ABHashtable *)

let pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface ref = ref (((CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()) :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface))
let get_pickedUpLayerInterfaceFactoryInterface () = !pickedUpLayerInterfaceFactoryInterface
let set_pickedUpLayerInterfaceFactoryInterface value' = pickedUpLayerInterfaceFactoryInterface := value'
let () = java_register_static "MineCountedPickedUpLayerInterfaceFactory.get_pickedUpLayerInterfaceFactoryInterface" (fun _ -> Obj.repr (get_pickedUpLayerInterfaceFactoryInterface ()))

let getInstance () : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface =
        begin
        (!pickedUpLayerInterfaceFactoryInterface :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface)
        end

let () = java_register_static "MineCountedPickedUpLayerInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class mineCountedPickedUpLayerInterfaceFactory () =
  object
    inherit CountedPickedUpLayerInterfaceFactory.countedPickedUpLayerInterfaceFactory ((PickedUpLayerTypeFactory.getInstance ())#mINE, (IconLayerFactory.getInstance ((((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((MineWeaponResources.getInstance ())#dROP_ICON_RESOURCE))#getInstance (0)), 10, 10)), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((MineWeaponResources.getInstance ())#dROP_RESOURCE))#getInstance (0)))
    val mutable weaponLayerCircularStaticPool : WeaponLayerCircularPool.weaponLayerCircularPool = (Obj.magic 0)
    method weaponLayerCircularStaticPool = weaponLayerCircularStaticPool
    method set_weaponLayerCircularStaticPool value' = weaponLayerCircularStaticPool <- value'
    val mutable weaponProperties : WeaponProperties.weaponProperties = (Obj.magic 0)
    method weaponProperties = weaponProperties
    method set_weaponProperties value' = weaponProperties <- value'
    val mutable smallIntegerSingletonFactory : SmallIntegerSingletonFactory.smallIntegerSingletonFactory = (Obj.magic 0)
    method smallIntegerSingletonFactory = smallIntegerSingletonFactory
    method set_smallIntegerSingletonFactory value' = smallIntegerSingletonFactory <- value'
    
    

    method getTotal () : int =
        begin
        3
        end [@@warning "-7"]
    

    method getNextInstance : 'any1. 'any1 * int * int * int -> AllBinaryLayer.allBinaryLayer = fun (hashtable, (x : int), (y : int), (z : int)) ->
        let hashtable = Obj.repr hashtable in
        begin
        let sourceLayerInterface : AllBinaryLayer.allBinaryLayer ref = ref (((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (smallIntegerSingletonFactory#getAt (0)))))) :> AllBinaryLayer.allBinaryLayer)) in ();
        let angle : int ref = ref ((Obj.magic ((Obj.magic hashtable)#get ((Obj.magic (smallIntegerSingletonFactory#getAt (1))))))) in ();
        let scoreableInterface : ScoreableInterface.scoreableInterface ref = ref (((Obj.magic !sourceLayerInterface) :> ScoreableInterface.scoreableInterface)) in ();
        ((weaponLayerCircularStaticPool#getInstanceWeaponLayer (!sourceLayerInterface, x, y, z, (java_to_int (Obj.repr (!angle))), 0, weaponProperties, !scoreableInterface)) :> AllBinaryLayer.allBinaryLayer)
        end [@@warning "-7-20"]

    initializer
      begin
        weaponLayerCircularStaticPool <- ((MineLayerCircularStaticPool.getInstance ()) :> WeaponLayerCircularPool.weaponLayerCircularPool);
        weaponProperties <- ((new WeaponProperties.weaponProperties ((-1), (-1), 0, 8000, 10)) :> WeaponProperties.weaponProperties);
        smallIntegerSingletonFactory <- ((SmallIntegerSingletonFactory.getInstance ()) :> SmallIntegerSingletonFactory.smallIntegerSingletonFactory);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "MineCountedPickedUpLayerInterfaceFactory" (fun arguments -> Obj.repr (new mineCountedPickedUpLayerInterfaceFactory (Obj.obj arguments)))

let init () : unit =
        begin
        pickedUpLayerInterfaceFactoryInterface := (new mineCountedPickedUpLayerInterfaceFactory ())
        end
let () = java_register_static "MineCountedPickedUpLayerInterfaceFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


