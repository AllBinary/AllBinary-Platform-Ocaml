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
(* import org.allbinary.game.physics.velocity.VelocityProperties *)

class vehicleProperties ((velocityProperties_arg : VelocityProperties.velocityProperties), (vehicleFrictionProperties_arg : VehicleFrictionProperties.vehicleFrictionProperties)) =
  object
    val mutable velocityProperties : VelocityProperties.velocityProperties = (Obj.magic 0)
    method velocityProperties = velocityProperties
    method set_velocityProperties value' = velocityProperties <- value'
    val mutable vehicleFrictionProperties : VehicleFrictionProperties.vehicleFrictionProperties = (Obj.magic 0)
    method vehicleFrictionProperties = vehicleFrictionProperties
    method set_vehicleFrictionProperties value' = vehicleFrictionProperties <- value'
    
    

    method getVehicleFrictionProperties () : VehicleFrictionProperties.vehicleFrictionProperties =
        begin
        (vehicleFrictionProperties :> VehicleFrictionProperties.vehicleFrictionProperties)
        end
    

    method setVehicleFrictionProperties : 'any1. 'any1 -> unit = fun (vehicleFrictionProperties_arg) ->
        let vehicleFrictionProperties_arg = Obj.repr vehicleFrictionProperties_arg in
        begin
        vehicleFrictionProperties <- (Obj.magic vehicleFrictionProperties_arg)
        end [@@warning "-20"]
    

    method getVelocityProperties () : VelocityProperties.velocityProperties =
        begin
        (velocityProperties :> VelocityProperties.velocityProperties)
        end

    initializer
      begin
        ();
        ();
        ();
        velocityProperties <- velocityProperties_arg;
        vehicleFrictionProperties <- vehicleFrictionProperties_arg
      end
  end
let () = java_register_constructor "VehicleProperties" (fun arguments -> Obj.repr (new vehicleProperties (Obj.obj arguments)))


