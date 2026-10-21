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
(* package org.allbinary.game.layer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.pickup.PickedUpLayerInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.game.collision.CollidableInterfaceCompositeInterface *)
(* import org.allbinary.game.collision.CollisionType *)
(* import org.allbinary.game.collision.CollisionTypeFactory *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableBehavior *)
(* import org.allbinary.game.layer.special.CollidableDestroyableDamageableLayer *)

class collidableVehicleBehavior ((collidable : bool)) =
  object (self)
    inherit CollidableDestroyableDamageableBehavior.collidableDestroyableDamageableBehavior (collidable) as super
    val mutable totalImpactVelocity : int = 0
    method totalImpactVelocity = totalImpactVelocity
    method set_totalImpactVelocity value' = totalImpactVelocity <- value'
    val mutable halfImpactVelocityX : int = 0
    method halfImpactVelocityX = halfImpactVelocityX
    method set_halfImpactVelocityX value' = halfImpactVelocityX <- value'
    val mutable halfImpactVelocityY : int = 0
    method halfImpactVelocityY = halfImpactVelocityY
    method set_halfImpactVelocityY value' = halfImpactVelocityY <- value'
    
    

    method collide : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, collidableInterfaceCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let collidableInterfaceCompositeInterface = Obj.repr collidableInterfaceCompositeInterface in
        begin
        let collisionTypeFactory : CollisionTypeFactory.collisionTypeFactory ref = ref (((CollisionTypeFactory.getInstance ()) :> CollisionTypeFactory.collisionTypeFactory)) in ();
        let collisionType : CollisionType.collisionType ref = ref (((((Obj.magic collidableInterfaceCompositeInterface)#getCollidableInferface ())#getCollisionTypeWith ((Obj.magic ownerLayer))) :> CollisionType.collisionType)) in ();
        if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#pICKUP)) then begin
            let collidableDestroyableDamageableLayer : CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer ref = ref ((((Obj.magic (Obj.magic ownerLayer))) :> CollidableDestroyableDamageableLayer.collidableDestroyableDamageableLayer)) in ();
            ignore ((!collidableDestroyableDamageableLayer#getPickupBehavior ())#doPickupLayer ((Obj.magic (Obj.magic collidableInterfaceCompositeInterface))))
        end else if ((Obj.repr !collisionType) == (Obj.repr !collisionTypeFactory#cOLLISION)) then begin
            ignore (super#collide ((Obj.magic ownerLayer), (Obj.magic collidableInterfaceCompositeInterface)))
        end else begin
            (self#collideVehicle ((Obj.magic ownerLayer), (Obj.magic (Obj.magic collidableInterfaceCompositeInterface))))
        end
        end [@@warning "-7-20"]
    

    method collideInterface : 'any1 'any2. 'any1 * 'any2 -> unit = fun (_ownerLayer, _collidableInterfaceCompositeInterface) ->
        begin
        ignore (ForcedLogUtil.log ("Don't Use Interface Version It Is Slower", self))
        end [@@warning "-7-20"]
    

    method collideVehicle : 'any1 'any2. 'any1 * 'any2 -> unit = fun (ownerLayer, vehiclePropertiesCompositeInterface) ->
        let ownerLayer = Obj.repr ownerLayer in
        let vehiclePropertiesCompositeInterface = Obj.repr vehiclePropertiesCompositeInterface in
        begin
        let ownerVehicleLayerInterface : VehiclePropertiesCompositeInterface.vehiclePropertiesCompositeInterface ref = ref ((((Obj.magic (Obj.magic ownerLayer))) :> VehiclePropertiesCompositeInterface.vehiclePropertiesCompositeInterface)) in ();
        let ownerVehicleProperties : VehicleProperties.vehicleProperties ref = ref (((!ownerVehicleLayerInterface#getVehicleProperties ()) :> VehicleProperties.vehicleProperties)) in ();
        let vehicleProperties : VehicleProperties.vehicleProperties ref = ref ((((Obj.magic vehiclePropertiesCompositeInterface)#getVehicleProperties ()) :> VehicleProperties.vehicleProperties)) in ();
        let impactVelocityX : int ref = ref (((((!ownerVehicleProperties#getVelocityProperties ())#getVelocityXBasicDecimalP ())#getUnscaled ()) - (((!vehicleProperties#getVelocityProperties ())#getVelocityXBasicDecimalP ())#getUnscaled ()))) in ();
        let impactVelocityY : int ref = ref (((((!ownerVehicleProperties#getVelocityProperties ())#getVelocityYBasicDecimalP ())#getUnscaled ()) - (((!vehicleProperties#getVelocityProperties ())#getVelocityYBasicDecimalP ())#getUnscaled ()))) in ();
        if (!impactVelocityX <> 0) then begin
            halfImpactVelocityX <- ((!impactVelocityX asr 1));
            ignore (((!ownerVehicleProperties#getVelocityProperties ())#getVelocityXBasicDecimalP ())#addlong (halfImpactVelocityX));
            ignore (((!vehicleProperties#getVelocityProperties ())#getVelocityXBasicDecimalP ())#addlong (halfImpactVelocityX))
        end else begin
            ()
        end;
        if (!impactVelocityY <> 0) then begin
            halfImpactVelocityY <- ((!impactVelocityY asr 1));
            ignore (((!ownerVehicleProperties#getVelocityProperties ())#getVelocityYBasicDecimalP ())#addlong (halfImpactVelocityY));
            ignore (((!vehicleProperties#getVelocityProperties ())#getVelocityXBasicDecimalP ())#addlong (halfImpactVelocityY))
        end else begin
            ()
        end;
        (self#collideFriction (!ownerVehicleLayerInterface));
        (self#collideFriction ((Obj.magic vehiclePropertiesCompositeInterface)));
        totalImpactVelocity <- (!impactVelocityX + !impactVelocityY)
        end [@@warning "-7-20"]
    

    method collideFriction : 'any1. 'any1 -> unit = fun (vehiclePropertiesCompositeInterface) ->
        let vehiclePropertiesCompositeInterface = Obj.repr vehiclePropertiesCompositeInterface in
        begin
        let vehicleFrictionProperties : VehicleFrictionProperties.vehicleFrictionProperties ref = ref (((((Obj.magic vehiclePropertiesCompositeInterface)#getVehicleProperties ())#getVehicleFrictionProperties ()) :> VehicleFrictionProperties.vehicleFrictionProperties)) in ();
        ignore ((((Obj.magic vehiclePropertiesCompositeInterface)#getVehicleProperties ())#getVehicleFrictionProperties ())#friction ((((Obj.magic vehiclePropertiesCompositeInterface)#getVehicleProperties ())#getVelocityProperties ()), (!vehicleFrictionProperties#getCrashFrictionNominator ())))
        end [@@warning "-7-20"]

    initializer
      begin
        totalImpactVelocity <- 0;
        halfImpactVelocityX <- 0;
        halfImpactVelocityY <- 0;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "CollidableVehicleBehavior" (fun arguments -> Obj.repr (new collidableVehicleBehavior (Obj.obj arguments)))


