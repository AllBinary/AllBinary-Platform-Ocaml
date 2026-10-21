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
[@@@warning "-20"]
(* import org.allbinary.layer.AllBinaryLayerCircularPool *)

class pickupLayerCircularStaticPool () =
  object (self)
    inherit AllBinaryLayerCircularPool.allBinaryLayerCircularPool ()
    
    

    method getInstanceXYZ : 'any1. 'any1 * int * int * int -> PickedUpLayerInterface.pickedUpLayerInterface = fun (pickedUpLayerInterfaceFactoryInterface, (x : int), (y : int), (z : int)) ->
        let pickedUpLayerInterfaceFactoryInterface = Obj.repr pickedUpLayerInterfaceFactoryInterface in
        begin
        let pickupLayer : PickupLayer.pickupLayer ref = ref (((Obj.magic (self#getNextInstance ())) :> PickupLayer.pickupLayer)) in ();
        ignore (!pickupLayer#initXYZ (x, y, z));
        ignore (!pickupLayer#init ((Obj.magic pickedUpLayerInterfaceFactoryInterface), ((Obj.magic pickedUpLayerInterfaceFactoryInterface)#getAnimationInterface ())));
        (!pickupLayer :> PickedUpLayerInterface.pickedUpLayerInterface)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "PickupLayerCircularStaticPool" (fun arguments -> Obj.repr (new pickupLayerCircularStaticPool (Obj.obj arguments)))

let sINGLETON = ref ((new pickupLayerCircularStaticPool ()))
let get_sINGLETON () = !sINGLETON
let set_sINGLETON value' = sINGLETON := value'
let () = java_register_static "PickupLayerCircularStaticPool.get_sINGLETON" (fun _ -> Obj.repr (get_sINGLETON ()))

let getInstance () =
        begin
        !sINGLETON
        end
let () = java_register_static "PickupLayerCircularStaticPool.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


