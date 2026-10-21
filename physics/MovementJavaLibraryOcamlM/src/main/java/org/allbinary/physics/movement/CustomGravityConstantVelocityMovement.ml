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
(* package org.allbinary.physics.movement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryGameLayer *)
(* import org.allbinary.game.physics.acceleration.GravityUtil *)
(* import org.allbinary.game.physics.velocity.VelocityProperties *)
(* import org.allbinary.logic.math.BasicDecimal *)

class customGravityConstantVelocityMovement ((speedBasicDecimal : BasicDecimal.basicDecimal), (customGravity_arg : int)) =
  object (self)
    inherit BasicConstantVelocityMovement.basicConstantVelocityMovement (speedBasicDecimal, (new VelocityProperties.velocityProperties ((java_to_int (Obj.repr ((speedBasicDecimal#getUnscaled ())))), (java_to_int (Obj.repr ((speedBasicDecimal#getUnscaled ()))))))) as super
    val mutable customGravity : int = 0
    method customGravity = customGravity
    method set_customGravity value' = customGravity <- value'
    val mutable gravityUtil : GravityUtil.gravityUtil = (Obj.magic 0)
    method gravityUtil = gravityUtil
    method set_gravityUtil value' = gravityUtil <- value'
    
    

    method process : 'any1. 'any1 -> unit = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        ignore (super#process ((Obj.magic layer)));
        ignore (gravityUtil#process ((self#getVelocityProperties ()), customGravity));
        let velocityProperties : VelocityProperties.velocityProperties ref = ref (((Obj.magic (self#getVelocityProperties ())) :> VelocityProperties.velocityProperties)) in ();
        ignore (!velocityProperties#limitMaxYForwardVelocity ())
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        gravityUtil <- ((GravityUtil.getInstance ()) :> GravityUtil.gravityUtil);
        ();
        (* super(...) is the inherit clause *) ();
        customGravity <- customGravity_arg
      end
  end
let () = java_register_constructor "CustomGravityConstantVelocityMovement" (fun arguments -> Obj.repr (new customGravityConstantVelocityMovement (Obj.obj arguments)))


