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
(* package org.allbinary.game.ag.layer.pickup.life *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory *)
(* import org.allbinary.game.layer.pickup.IconLayerFactory *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactory *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterfaceFactoryInterface *)
(* import org.allbinary.game.layer.pickup.PickedUpLayerTypeFactory *)
(* import org.allbinary.game.layer.pickup.PickupProcessorInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)

let pickedUpLayerInterfaceFactoryInterface : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface ref = ref (((CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()) :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface))
let get_pickedUpLayerInterfaceFactoryInterface () = !pickedUpLayerInterfaceFactoryInterface
let set_pickedUpLayerInterfaceFactoryInterface value' = pickedUpLayerInterfaceFactoryInterface := value'
let () = java_register_static "LifePickedUpLayerInterfaceFactory.get_pickedUpLayerInterfaceFactoryInterface" (fun _ -> Obj.repr (get_pickedUpLayerInterfaceFactoryInterface ()))

let getInstance () : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface =
        begin
        (!pickedUpLayerInterfaceFactoryInterface :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface)
        end

let () = java_register_static "LifePickedUpLayerInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class lifePickedUpLayerInterfaceFactory () =
  object
    inherit PickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactory ((PickedUpLayerTypeFactory.getInstance ())#lIFE, (IconLayerFactory.getInstance ((((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((LifeResources.getInstance ())#rESOURCE))#getInstance (0)), 10, 10)), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((LifeResources.getInstance ())#rESOURCE))#getInstance (0)))
    val mutable pool : LifeLayerCircularStaticPool.lifeLayerCircularStaticPool = (Obj.magic 0)
    method pool = pool
    method set_pool value' = pool <- value'
    
    

    method getTotal () : int =
        begin
        1
        end [@@warning "-7"]
    

    method process : 'any1. 'any1 -> unit = fun (sourceLayerInterface) ->
        let sourceLayerInterface = Obj.repr sourceLayerInterface in
        begin
        ignore (pool#visit ((Obj.magic sourceLayerInterface)))
        end [@@warning "-7-20"]

    initializer
      begin
        pool <- ((new LifeLayerCircularStaticPool.lifeLayerCircularStaticPool ((new LifeLayerFactory.lifeLayerFactory ()), 1)) :> LifeLayerCircularStaticPool.lifeLayerCircularStaticPool);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "LifePickedUpLayerInterfaceFactory" (fun arguments -> Obj.repr (new lifePickedUpLayerInterfaceFactory (Obj.obj arguments)))

let init () : unit =
        begin
        pickedUpLayerInterfaceFactoryInterface := (new lifePickedUpLayerInterfaceFactory ())
        end
let () = java_register_static "LifePickedUpLayerInterfaceFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


