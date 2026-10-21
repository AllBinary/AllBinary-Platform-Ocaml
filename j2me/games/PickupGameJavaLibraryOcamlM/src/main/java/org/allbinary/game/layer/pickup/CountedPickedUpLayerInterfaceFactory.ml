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
(* package org.allbinary.game.layer.pickup *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.string.CommonStrings *)
(* import org.allbinary.util.ABHashtable *)
(* import org.allbinary.util.BasicArrayList *)

class countedPickedUpLayerInterfaceFactory ((pickeUpLayerType : PickedUpLayerType.pickedUpLayerType), (iconLayer : IconLayer.iconLayer), animationInterface) =
  object (self)
    inherit PickedUpLayerInterfaceFactory.pickedUpLayerInterfaceFactory (pickeUpLayerType, iconLayer, animationInterface)
    val mutable id : int = 0
    method id = id
    method set_id value' = id <- value'
    
    

    method getNextInstance : 'any1. 'any1 * int * int * int -> AllBinaryLayer.allBinaryLayer = fun (_hashtable, (_x : int), (_y : int), (_z : int)) ->
        begin
        raise (Failure ((CommonStrings.getInstance ())#nOT_IMPLEMENTED))
        end [@@warning "-7-20"]
    

    method getTotal () : int =
        begin
        (-1)
        end [@@warning "-7"]
    

    method getId () : int =
        begin
        id
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        (* super(...) is the inherit clause *) ();
        let list : BasicArrayList.basicArrayList ref = ref ((((CountedPickedUpLayerInterfaceFactoryPool.getInstance ())#getList ()) :> BasicArrayList.basicArrayList)) in ();
        id <- (!list#size ());
        ignore (!list#add (self))
      end
  end
let () = java_register_constructor "CountedPickedUpLayerInterfaceFactory" (fun arguments -> Obj.repr (new countedPickedUpLayerInterfaceFactory (Obj.obj arguments)))

let nULL_COUNTED_PICKUP_LAYER_FACTORY = (new countedPickedUpLayerInterfaceFactory ((PickedUpLayerTypeFactory.getInstance ())#nONE, (IconLayer.get_nULL_ICON_LAYER ()), ((NullAnimationFactory.getFactoryInstance ())#getInstance (0))))
let get_nULL_COUNTED_PICKUP_LAYER_FACTORY () = nULL_COUNTED_PICKUP_LAYER_FACTORY
let () = java_register_static "CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY" (fun _ -> Obj.repr (get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()))


