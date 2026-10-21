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
(* import org.allbinary.game.physics.FrictionProperties *)
(* import org.allbinary.game.physics.friction.FrictionData *)

class vehicleFrictionProperties ((tireFriction : int), (brakeFriction : int), (airFriction : int), (crashFriction : int)) =
  object
    inherit FrictionProperties.frictionProperties ()
    val mutable tIRE_FRICTION_NOMINATOR : int = 0
    method tIRE_FRICTION_NOMINATOR = tIRE_FRICTION_NOMINATOR
    method set_tIRE_FRICTION_NOMINATOR value' = tIRE_FRICTION_NOMINATOR <- value'
    val mutable bRAKE_FRICTION_NOMINATOR : int = 0
    method bRAKE_FRICTION_NOMINATOR = bRAKE_FRICTION_NOMINATOR
    method set_bRAKE_FRICTION_NOMINATOR value' = bRAKE_FRICTION_NOMINATOR <- value'
    val mutable aIR_FRICTION_NOMINATOR : int = 0
    method aIR_FRICTION_NOMINATOR = aIR_FRICTION_NOMINATOR
    method set_aIR_FRICTION_NOMINATOR value' = aIR_FRICTION_NOMINATOR <- value'
    val mutable cRASH_FRICTION_NOMINATOR : int = 0
    method cRASH_FRICTION_NOMINATOR = cRASH_FRICTION_NOMINATOR
    method set_cRASH_FRICTION_NOMINATOR value' = cRASH_FRICTION_NOMINATOR <- value'
    
    

    method getTireFrictionNominator () : int =
        begin
        tIRE_FRICTION_NOMINATOR
        end [@@warning "-7"]
    

    method getBrakeFrictionNominator () : int =
        begin
        bRAKE_FRICTION_NOMINATOR
        end [@@warning "-7"]
    

    method getAirFrictionNominator () : int =
        begin
        aIR_FRICTION_NOMINATOR
        end [@@warning "-7"]
    

    method getCrashFrictionNominator () : int =
        begin
        cRASH_FRICTION_NOMINATOR
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        tIRE_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - tireFriction);
        bRAKE_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - brakeFriction);
        aIR_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - airFriction);
        cRASH_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - crashFriction)
      end
  end
let () = java_register_constructor "VehicleFrictionProperties" (fun arguments -> Obj.repr (new vehicleFrictionProperties (Obj.obj arguments)))


