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
(* import org.allbinary.game.physics.velocity.VelocityProperties *)
(* import org.allbinary.logic.math.BasicDecimal *)

class oscillateVelocityMovement ((speedBasicDecimal : BasicDecimal.basicDecimal), (oscillateMin_arg : int), (oscillateMax_arg : int)) =
  object (self)
    inherit BasicConstantVelocityMovement.basicConstantVelocityMovement (speedBasicDecimal, (new VelocityProperties.velocityProperties ((java_to_int (Obj.repr ((speedBasicDecimal#getUnscaled ())))), (java_to_int (Obj.repr ((speedBasicDecimal#getUnscaled ()))))))) as super
    val mutable oscillateMin : int = 0
    method oscillateMin = oscillateMin
    method set_oscillateMin value' = oscillateMin <- value'
    val mutable oscillateMax : int = 0
    method oscillateMax = oscillateMax
    method set_oscillateMax value' = oscillateMax <- value'
    val mutable oscillate : int = 0
    method oscillate = oscillate
    method set_oscillate value' = oscillate <- value'
    val mutable oscillatePositive : bool = false
    method oscillatePositive = oscillatePositive
    method set_oscillatePositive value' = oscillatePositive <- value'
    
    

    method process : 'any1. 'any1 -> unit = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        ignore (super#process ((Obj.magic layer)));
        if (oscillate < oscillateMin) then begin
            oscillatePositive <- true
        end else if (oscillate > oscillateMax) then begin
            oscillatePositive <- false
        end;
        if oscillatePositive then begin
            oscillate <- oscillate + 1;
            ignore (((self#getVelocityProperties ())#getVelocityXBasicDecimalP ())#addint (2000))
        end else begin
            oscillate <- oscillate - 1;
            ignore (((self#getVelocityProperties ())#getVelocityXBasicDecimalP ())#subtractint (2000))
        end
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        oscillate <- 0;
        oscillatePositive <- false;
        ();
        (* super(...) is the inherit clause *) ();
        oscillateMin <- oscillateMin_arg;
        oscillateMax <- oscillateMax_arg
      end
  end
let () = java_register_constructor "OscillateVelocityMovement" (fun arguments -> Obj.repr (new oscillateVelocityMovement (Obj.obj arguments)))


