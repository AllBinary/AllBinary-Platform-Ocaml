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
(* package org.allbinary.game.ag.layer.pickup *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.layer.pickup.CountedPickedUpLayerInterfaceFactory *)
(* import org.allbinary.game.layer.pickup.PickupLayer *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.game.tick.TickableInterface *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayerManager *)
(* import org.allbinary.view.ViewPosition *)

let nAME : string = "FallingPickupLayer"
let get_nAME () = nAME
let () = java_register_static "FallingPickupLayer.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class fallingPickupLayer (remoteInfo) =
  object (self)
    inherit PickupLayer.pickupLayer (nAME, remoteInfo, 0, (CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()), ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)), (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 0, 0)))), (ViewPosition.getInstanceD ()))
    
    

    method processTick : 'any1. 'any1 -> unit = fun (_allBinaryLayerManager) ->
        begin
        ignore (self#setPosition ((self#x), ((self#y) + 1), (self#z)))
        end [@@warning "-7-20"]
    

    method implmentsTickableInterface () : bool =
        begin
        true
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "FallingPickupLayer" (fun arguments -> Obj.repr (new fallingPickupLayer (Obj.obj arguments)))


