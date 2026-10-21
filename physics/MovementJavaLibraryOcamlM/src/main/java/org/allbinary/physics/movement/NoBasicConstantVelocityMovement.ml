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
(* import org.allbinary.game.layer.AllBinaryGameLayer *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.logic.math.BasicDecimal *)

class noBasicConstantVelocityMovement () =
  object
    inherit BasicConstantVelocityMovement.basicConstantVelocityMovement ((BasicDecimal.get_zERO_BIGDECIMAL ()), (new BasicVelocityProperties.basicVelocityProperties ()))
    
    

    method process : 'any1. 'any1 -> unit = fun (_layer) ->
        begin
        ()
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NoBasicConstantVelocityMovement" (fun arguments -> Obj.repr (new noBasicConstantVelocityMovement (Obj.obj arguments)))


