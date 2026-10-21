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
(* package org.allbinary.game.ag.layer.pickup.points *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.game.configuration.GameConfigurationUtil *)
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
let () = java_register_static "Points30kPickedUpLayerInterfaceFactory.get_pickedUpLayerInterfaceFactoryInterface" (fun _ -> Obj.repr (get_pickedUpLayerInterfaceFactoryInterface ()))

let getInstance () : PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface =
        begin
        (!pickedUpLayerInterfaceFactoryInterface :> PickedUpLayerInterfaceFactoryInterface.pickedUpLayerInterfaceFactoryInterface)
        end

let () = java_register_static "Points30kPickedUpLayerInterfaceFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class points30kPickedUpLayerInterfaceFactory () =
  object
    inherit PickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactory ((PickedUpLayerTypeFactory.getInstance ())#pOINTS, (IconLayerFactory.getInstance ((((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((PointsResources.getInstance ())#rESOURCE_3))#getInstance (0)), 10, 10)), (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((PointsResources.getInstance ())#rESOURCE_3))#getInstance (0)))
    val mutable pool : PointsLayerCircularStaticPool.pointsLayerCircularStaticPool = (Obj.magic 0)
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
        pool <- ((new PointsLayerCircularStaticPool.pointsLayerCircularStaticPool ((new PointsLayerFactory.pointsLayerFactory ((((GameConfigurationUtil.getInstance ())#getCompetitionValue ()) * 30000))), 1)) :> PointsLayerCircularStaticPool.pointsLayerCircularStaticPool);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "Points30kPickedUpLayerInterfaceFactory" (fun arguments -> Obj.repr (new points30kPickedUpLayerInterfaceFactory (Obj.obj arguments)))

let init () : unit =
        begin
        pickedUpLayerInterfaceFactoryInterface := (new points30kPickedUpLayerInterfaceFactory ())
        end
let () = java_register_static "Points30kPickedUpLayerInterfaceFactory.init" (fun arguments -> Obj.repr (init (Obj.obj arguments)))


