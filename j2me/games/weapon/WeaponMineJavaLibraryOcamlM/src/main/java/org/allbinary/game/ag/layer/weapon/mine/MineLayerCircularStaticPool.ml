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
(* import org.allbinary.game.layer.weapon.WeaponLayerCircularPool *)
(* import org.allbinary.view.ViewPositionFactoryInterface *)

let wEAPON_LAYER_CIRCULAR_STATIC_POOL : WeaponLayerCircularPool.weaponLayerCircularPool ref = ref (((new WeaponLayerCircularPool.weaponLayerCircularPool ()) :> WeaponLayerCircularPool.weaponLayerCircularPool))
let get_wEAPON_LAYER_CIRCULAR_STATIC_POOL () = !wEAPON_LAYER_CIRCULAR_STATIC_POOL
let set_wEAPON_LAYER_CIRCULAR_STATIC_POOL value' = wEAPON_LAYER_CIRCULAR_STATIC_POOL := value'
let () = java_register_static "MineLayerCircularStaticPool.get_wEAPON_LAYER_CIRCULAR_STATIC_POOL" (fun _ -> Obj.repr (get_wEAPON_LAYER_CIRCULAR_STATIC_POOL ()))

let init : 'any1. 'any1 -> unit = fun (viewPositionFactoryInterface) ->
        let viewPositionFactoryInterface = Obj.repr viewPositionFactoryInterface in
        begin
        ignore (Obj.magic (java_call_static "MineCountedPickedUpLayerInterfaceFactory.init" (Obj.repr ())));
        ignore (!wEAPON_LAYER_CIRCULAR_STATIC_POOL#initAllBinaryLayerCircularPool ((new MineLayerFactory.mineLayerFactory ((Obj.magic viewPositionFactoryInterface))), 20))
        end [@@warning "-20"]

and getInstance () : WeaponLayerCircularPool.weaponLayerCircularPool =
        begin
        (!wEAPON_LAYER_CIRCULAR_STATIC_POOL :> WeaponLayerCircularPool.weaponLayerCircularPool)
        end

let () = java_register_static "MineLayerCircularStaticPool.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))
let () = java_register_static "MineLayerCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class mineLayerCircularStaticPool () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "MineLayerCircularStaticPool" (fun arguments -> Obj.repr (new mineLayerCircularStaticPool (Obj.obj arguments)))


