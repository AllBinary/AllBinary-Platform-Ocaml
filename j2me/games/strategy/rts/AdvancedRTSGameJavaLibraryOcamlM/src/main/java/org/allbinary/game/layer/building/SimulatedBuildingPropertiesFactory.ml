(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2025 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.layer.building *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.combat.damage.DamageFloaters *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.game.tracking.TrackingEventHandler *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class simulatedBuildingPropertiesFactory () =
  object
    inherit BuildingPropertiesFactory.buildingPropertiesFactory ()
    

    method getEfficiencyPerLevel : 'any1. 'any1 -> int = fun (_buildingLayer) ->
        begin
        0
        end [@@warning "-7-20"]
    

    method getDamageFloaters : 'any1. 'any1 -> DamageFloaters.damageFloaters = fun (_buildingLayer) ->
        begin
        let damageFloaters : DamageFloaters.damageFloaters ref = ref (((DamageFloaters.getInstance ()) :> DamageFloaters.damageFloaters)) in ();
        damageFloatersPaintableInterface <- !damageFloaters;
        (!damageFloaters :> DamageFloaters.damageFloaters)
        end [@@warning "-7-20"]
    

    method getHealthBar : 'any1. 'any1 -> Paintable.paintable = fun (_buildingLayer) ->
        begin
        ((NullPaintable.getInstance ()) :> Paintable.paintable)
        end [@@warning "-7-20"]
    

    method getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#nULL_TABLE))
        end [@@warning "-7"]
    

    method getTrackingEvent : 'any1. 'any1 -> TrackingEvent.trackingEvent = fun (_buildingLayer) ->
        begin
        ((new TrackingEvent.trackingEvent ((TrackingEventHandler.getInstance ()))) :> TrackingEvent.trackingEvent)
        end [@@warning "-7-20"]

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SimulatedBuildingPropertiesFactory" (fun arguments -> Obj.repr (new simulatedBuildingPropertiesFactory (Obj.obj arguments)))

let instanceC = (new simulatedBuildingPropertiesFactory ())
let get_instanceC () = instanceC
let () = java_register_static "SimulatedBuildingPropertiesFactory.get_instanceC" (fun _ -> Obj.repr (get_instanceC ()))

let getInstance () =
        begin
        instanceC
        end
let () = java_register_static "SimulatedBuildingPropertiesFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


