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
(* import org.allbinary.game.combat.damage.PtsDamageFloaters *)
(* import org.allbinary.game.configuration.feature.Features *)
(* import org.allbinary.game.configuration.feature.GameFeatureFactory *)
(* import org.allbinary.game.graphics.hud.BasicHudFactory *)
(* import org.allbinary.game.health.HealthBar *)
(* import org.allbinary.game.health.HealthBarTwodAnimation *)
(* import org.allbinary.game.tracking.TrackingEvent *)
(* import org.allbinary.graphics.paint.NullPaintable *)
(* import org.allbinary.graphics.paint.Paintable *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.util.ABHashtable *)

class buildingPropertiesFactory () =
  object
    val mutable damageFloatersPaintableInterface : Paintable.paintable = (Obj.magic 0)
    method damageFloatersPaintableInterface = damageFloatersPaintableInterface
    method set_damageFloatersPaintableInterface value' = damageFloatersPaintableInterface <- value'
    

    method getEfficiencyPerLevel : 'any1. 'any1 -> int = fun (buildingLayer) ->
        let buildingLayer = Obj.repr buildingLayer in
        begin
        ((10000 / ((Obj.magic buildingLayer)#getMaxLevel ())) + (10000 mod ((Obj.magic buildingLayer)#getMaxLevel ())))
        end [@@warning "-20"]
    

    method getDamageFloaters : 'any1. 'any1 -> DamageFloaters.damageFloaters = fun (buildingLayer) ->
        let buildingLayer = Obj.repr buildingLayer in
        begin
        let damageFloaters : DamageFloaters.damageFloaters ref = ref (((DamageFloaters.getInstance ()) :> DamageFloaters.damageFloaters)) in ();
        if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#dAMAGE_FLOATERS)) then begin
            damageFloaters := (new PtsDamageFloaters.ptsDamageFloaters ((Obj.magic buildingLayer)));
            damageFloatersPaintableInterface <- !damageFloaters
        end else begin
            damageFloaters := (new DamageFloaters.damageFloaters ())
        end;
        (!damageFloaters :> DamageFloaters.damageFloaters)
        end [@@warning "-20"]
    

    method getHealthBar : 'any1. 'any1 -> Paintable.paintable = fun (buildingLayer) ->
        let buildingLayer = Obj.repr buildingLayer in
        begin
        let healthBar : Paintable.paintable ref = ref (((NullPaintable.getInstance ()) :> Paintable.paintable)) in ();
        if ((Features.getInstance ())#isFeature ((GameFeatureFactory.getInstance ())#hEALTH_BARS)) then begin
            healthBar := (new HealthBar.healthBar ((Obj.magic buildingLayer), ((Obj.magic buildingLayer)#getHealthInterface ()), (new HealthBarTwodAnimation.healthBarTwodAnimation ((Obj.magic (Obj.magic buildingLayer)), (BasicHudFactory.getInstance ())#bOTTOMLEFT)), (-1)))
        end;
        (!healthBar :> Paintable.paintable)
        end [@@warning "-20"]
    

    method getHashtable : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic (((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashtable ())))
        end
    

    method getTrackingEvent : 'any1. 'any1 -> TrackingEvent.trackingEvent = fun (buildingLayer) ->
        let buildingLayer = Obj.repr buildingLayer in
        begin
        ((new TrackingEvent.trackingEvent ((Obj.magic buildingLayer))) :> TrackingEvent.trackingEvent)
        end [@@warning "-20"]

    initializer
      begin
        damageFloatersPaintableInterface <- ((NullPaintable.getInstance ()) :> Paintable.paintable);
        ()
      end
  end
let () = java_register_constructor "BuildingPropertiesFactory" (fun arguments -> Obj.repr (new buildingPropertiesFactory (Obj.obj arguments)))

let instance = (new buildingPropertiesFactory ())
let get_instance () = instance
let () = java_register_static "BuildingPropertiesFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "BuildingPropertiesFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


