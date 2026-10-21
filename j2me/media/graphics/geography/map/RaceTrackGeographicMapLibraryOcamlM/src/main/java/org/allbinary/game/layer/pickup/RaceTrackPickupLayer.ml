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
(* import org.allbinary.animation.NullAnimationFactory *)
(* import org.allbinary.game.identification.BasicGroupFactory *)
(* import org.allbinary.game.layer.AllBinaryTiledLayer *)
(* import org.allbinary.game.multiplayer.layer.RemoteInfo *)
(* import org.allbinary.game.view.TileLayerPositionIntoViewPosition *)
(* import org.allbinary.graphics.PointFactory *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.view.ViewPosition *)
(* import org.allbinary.view.event.ViewPositionEventHandler *)

let nAME : string = "RaceTrackPickupLayer"
let get_nAME () = nAME
let () = java_register_static "RaceTrackPickupLayer.get_nAME" (fun _ -> Obj.repr (get_nAME ()))
class raceTrackPickupLayer () =
  object (self)
    inherit PickupLayer.pickupLayer (nAME, (Obj.magic (java_call_static "RemoteInfo.get_rEMOTE_INFO" (Obj.repr ()))), 0, (CountedPickedUpLayerInterfaceFactory.get_nULL_COUNTED_PICKUP_LAYER_FACTORY ()), ((NullAnimationFactory.getFactoryInstance ())#getInstance (0)), (Obj.obj (java_new "Rectangle" (Obj.repr ((Obj.magic (java_call_static "PointFactory.getInstance" (Obj.repr ())))#zERO_ZERO, 0, 0)))), (new TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ())) as super
    val mutable viewPositionEventHandler : ViewPositionEventHandler.viewPositionEventHandler = (Obj.magic 0)
    method viewPositionEventHandler = viewPositionEventHandler
    method set_viewPositionEventHandler value' = viewPositionEventHandler <- value'
    
    

    method setTiledLayer : 'any1. 'any1 -> unit = fun (tiledLayer) ->
        let tiledLayer = Obj.repr tiledLayer in
        begin
        let viewPosition : TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition ref = ref (((Obj.magic (self#getViewPosition ())) :> TileLayerPositionIntoViewPosition.tileLayerPositionIntoViewPosition)) in ();
        ignore (!viewPosition#setTiledLayer ((Obj.magic tiledLayer)));
        ignore (viewPositionEventHandler#addListener ((Obj.magic self)))
        end [@@warning "-7-20"]
    

    method setDestroyed ((destroyed : bool)) : unit =
        begin
        ignore (super#setDestroyed (destroyed));
        if (self#isDestroyed ()) then begin
            ignore (viewPositionEventHandler#removeListener (self))
        end
        end [@@warning "-7"]

    initializer
      begin
        viewPositionEventHandler <- ((ViewPositionEventHandler.getInstance ()) :> ViewPositionEventHandler.viewPositionEventHandler);
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "RaceTrackPickupLayer" (fun arguments -> Obj.repr (new raceTrackPickupLayer (Obj.obj arguments)))


