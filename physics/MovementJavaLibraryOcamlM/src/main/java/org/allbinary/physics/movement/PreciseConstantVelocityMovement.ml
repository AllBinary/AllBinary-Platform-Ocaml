(* Generated Code Do Not Modify *)
(* package org.allbinary.physics.movement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.game.layer.AllBinaryGameLayer *)
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.math.MathUtil *)
(* import org.allbinary.logic.math.ScaleFactorFactory *)

class preciseConstantVelocityMovement ((basicDecimal : BasicDecimal.basicDecimal), (velocityProperties : BasicVelocityProperties.basicVelocityProperties)) =
  object (self)
    inherit BasicConstantVelocityMovement.basicConstantVelocityMovement (basicDecimal, velocityProperties)
    val mutable accumulatedX : int = 0
    method accumulatedX = accumulatedX
    method set_accumulatedX value' = accumulatedX <- value'
    val mutable accumulatedY : int = 0
    method accumulatedY = accumulatedY
    method set_accumulatedY value' = accumulatedY <- value'
    val mutable accumulatedZ : int = 0
    method accumulatedZ = accumulatedZ
    method set_accumulatedZ value' = accumulatedZ <- value'
    val mutable factorValue : int = 0
    method factorValue = factorValue
    method set_factorValue value' = factorValue <- value'
    
    

    method init : 'any1. 'any1 * int * int -> unit = fun (_speedBasicDecimal, (_angle : int), (_otherAngle : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method process : 'any1. 'any1 -> unit = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        let mathUtil : MathUtil.mathUtil ref = ref (((MathUtil.getInstance ()) :> MathUtil.mathUtil)) in ();
        let velocityProperties : BasicVelocityProperties.basicVelocityProperties ref = ref (((self#getVelocityProperties ()) :> BasicVelocityProperties.basicVelocityProperties)) in ();
        accumulatedX <- (java_to_int (Obj.repr (((accumulatedX + ((!velocityProperties#getVelocityXBasicDecimalP ())#getUnscaled ()))))));
        accumulatedY <- (java_to_int (Obj.repr (((accumulatedY + ((!velocityProperties#getVelocityYBasicDecimalP ())#getUnscaled ()))))));
        accumulatedZ <- (java_to_int (Obj.repr (((accumulatedZ + ((!velocityProperties#getVelocityZBasicDecimalP ())#getUnscaled ()))))));
        ignore ((Obj.magic layer)#moveDXYZ ((accumulatedX / factorValue), (accumulatedY / factorValue), (accumulatedZ / factorValue)));
        if ((!mathUtil#abs (accumulatedX)) > factorValue) then begin
            accumulatedX <- 0
        end;
        if ((!mathUtil#abs (accumulatedY)) > factorValue) then begin
            accumulatedY <- 0
        end;
        if ((!mathUtil#abs (accumulatedZ)) > factorValue) then begin
            accumulatedZ <- 0
        end
        end [@@warning "-7-20"]

    initializer
      begin
        accumulatedX <- 0;
        accumulatedY <- 0;
        accumulatedZ <- 0;
        factorValue <- (ScaleFactorFactory.getInstance ())#dEFAULT_SCALE_VALUE;
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PreciseConstantVelocityMovement" (fun arguments -> Obj.repr (new preciseConstantVelocityMovement (Obj.obj arguments)))


