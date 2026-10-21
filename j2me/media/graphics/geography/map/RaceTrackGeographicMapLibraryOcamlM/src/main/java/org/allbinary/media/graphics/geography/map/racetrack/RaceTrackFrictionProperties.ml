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
(* package org.allbinary.media.graphics.geography.map.racetrack *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.physics.friction.FrictionData *)

class raceTrackFrictionProperties ((roadFriction : int), (groundFriction : int)) =
  object
    val mutable rOAD_FRICTION_NOMINATOR : int = 0
    method rOAD_FRICTION_NOMINATOR = rOAD_FRICTION_NOMINATOR
    method set_rOAD_FRICTION_NOMINATOR value' = rOAD_FRICTION_NOMINATOR <- value'
    val mutable gROUND_FRICTION_NOMINATOR : int = 0
    method gROUND_FRICTION_NOMINATOR = gROUND_FRICTION_NOMINATOR
    method set_gROUND_FRICTION_NOMINATOR value' = gROUND_FRICTION_NOMINATOR <- value'
    
    

    method getRoadFrictionNominator () : int =
        begin
        rOAD_FRICTION_NOMINATOR
        end
    

    method getGroundFrictionNominator () : int =
        begin
        gROUND_FRICTION_NOMINATOR
        end

    initializer
      begin
        ();
        ();
        ();
        rOAD_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - roadFriction);
        gROUND_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - groundFriction)
      end
  end
let () = java_register_constructor "RaceTrackFrictionProperties" (fun arguments -> Obj.repr (new raceTrackFrictionProperties (Obj.obj arguments)))


