(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2006 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
   
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.game.behavior.topview *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.game.physics.FrictionProperties *)
(* import org.allbinary.game.physics.friction.FrictionData *)

class characterFrictionProperties ((airFriction : int), (waterFriction : int), (collisionFriction : int)) =
  object
    inherit FrictionProperties.frictionProperties ()
    val mutable wATER_FRICTION_NOMINATOR : int = 0
    method wATER_FRICTION_NOMINATOR = wATER_FRICTION_NOMINATOR
    method set_wATER_FRICTION_NOMINATOR value' = wATER_FRICTION_NOMINATOR <- value'
    val mutable aIR_FRICTION_NOMINATOR : int = 0
    method aIR_FRICTION_NOMINATOR = aIR_FRICTION_NOMINATOR
    method set_aIR_FRICTION_NOMINATOR value' = aIR_FRICTION_NOMINATOR <- value'
    val mutable cOLLISION_FRICTION_NOMINATOR : int = 0
    method cOLLISION_FRICTION_NOMINATOR = cOLLISION_FRICTION_NOMINATOR
    method set_cOLLISION_FRICTION_NOMINATOR value' = cOLLISION_FRICTION_NOMINATOR <- value'
    
    

    method getWATER_FRICTION_NOMINATOR () : int =
        begin
        wATER_FRICTION_NOMINATOR
        end [@@warning "-7"]
    

    method getAIR_FRICTION_NOMINATOR () : int =
        begin
        aIR_FRICTION_NOMINATOR
        end [@@warning "-7"]
    

    method getCOLLISION_FRICTION_NOMINATOR () : int =
        begin
        cOLLISION_FRICTION_NOMINATOR
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        aIR_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - airFriction);
        cOLLISION_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - collisionFriction);
        wATER_FRICTION_NOMINATOR <- ((FrictionData.getFrictionDenominator ()) - waterFriction)
      end
  end
let () = java_register_constructor "CharacterFrictionProperties" (fun arguments -> Obj.repr (new characterFrictionProperties (Obj.obj arguments)))


