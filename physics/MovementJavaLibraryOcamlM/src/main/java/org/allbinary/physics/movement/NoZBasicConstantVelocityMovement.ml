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
(* import org.allbinary.game.physics.velocity.BasicVelocityProperties *)
(* import org.allbinary.game.physics.velocity.VelocityInterfaceCompositeInterface *)
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.math.vector.AxisMathVectorUtil *)
(* import org.allbinary.math.AngleFactory *)

class noZBasicConstantVelocityMovement ((basicDecimal : BasicDecimal.basicDecimal), (velocityProperties_arg : BasicVelocityProperties.basicVelocityProperties)) =
  object (self)
    inherit Movement.movement ()
    val mutable velocityProperties : BasicVelocityProperties.basicVelocityProperties = (Obj.magic 0)
    method velocityProperties = velocityProperties
    method set_velocityProperties value' = velocityProperties <- value'
    val mutable speedBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method speedBasicDecimal = speedBasicDecimal
    method set_speedBasicDecimal value' = speedBasicDecimal <- value'
    val mutable axisMathVectorUtil : AxisMathVectorUtil.axisMathVectorUtil = (Obj.magic 0)
    method axisMathVectorUtil = axisMathVectorUtil
    method set_axisMathVectorUtil value' = axisMathVectorUtil <- value'
    
    

    method init : 'any1. 'any1 * int * int -> unit = fun (speedBasicDecimal_arg, (angle : int), (otherAngle : int)) ->
        let speedBasicDecimal_arg = Obj.repr speedBasicDecimal_arg in
        begin
        speedBasicDecimal <- (Obj.magic speedBasicDecimal_arg);
        let angleFactory : AngleFactory.angleFactory ref = ref (((AngleFactory.getInstance ()) :> AngleFactory.angleFactory)) in ();
        ignore (velocityProperties#setVelocityWithBigDecimal ((Obj.magic speedBasicDecimal_arg), (!angleFactory#getAt (angle)), (!angleFactory#getAt (otherAngle))))
        end [@@warning "-7-20"]
    

    method moveOutsideRadius : 'any1. 'any1 * int * int * int -> unit = fun (layer, (radius : int), (angle : int), (_otherAngle : int)) ->
        let layer = Obj.repr layer in
        begin
        let scaleFactorValue : int ref = ref ((speedBasicDecimal#getScaledFactorValue ())) in ();
        let xVector : int ref = ref ((java_to_int (Obj.repr ((((axisMathVectorUtil#calculateX (radius, angle)) / !scaleFactorValue)))))) in ();
        let yVector : int ref = ref ((java_to_int (Obj.repr ((((axisMathVectorUtil#calculateY (radius, angle)) / !scaleFactorValue)))))) in ();
        ignore ((Obj.magic layer)#moveDXYZ (!xVector, !yVector, 0))
        end [@@warning "-7-20"]
    

    method process : 'any1. 'any1 -> unit = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        ignore ((Obj.magic layer)#moveDXYZ (((velocityProperties#getVelocityXBasicDecimalP ())#getScaled ()), ((velocityProperties#getVelocityYBasicDecimalP ())#getScaled ()), 0))
        end [@@warning "-7-20"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr velocityProperties))
        end [@@warning "-7"]
    

    method stop () : unit =
        begin
        ignore (velocityProperties#zero ())
        end [@@warning "-7"]
    

    method getVelocityProperties () : BasicVelocityProperties.basicVelocityProperties =
        begin
        (velocityProperties :> BasicVelocityProperties.basicVelocityProperties)
        end [@@warning "-7"]
    

    method setVelocityProperties : 'any1. 'any1 -> unit = fun (velocityProperties_arg) ->
        let velocityProperties_arg = Obj.repr velocityProperties_arg in
        begin
        velocityProperties <- (Obj.magic velocityProperties_arg)
        end [@@warning "-7-20"]
    

    method setSpeedBasicDecimal : 'any1. 'any1 -> unit = fun (speedBasicDecimal_arg) ->
        let speedBasicDecimal_arg = Obj.repr speedBasicDecimal_arg in
        begin
        speedBasicDecimal <- (Obj.magic speedBasicDecimal_arg)
        end [@@warning "-7-20"]
    

    method getSpeedBasicDecimal () : BasicDecimal.basicDecimal =
        begin
        (speedBasicDecimal :> BasicDecimal.basicDecimal)
        end [@@warning "-7"]

    initializer
      begin
        ();
        speedBasicDecimal <- ((BasicDecimal.get_zERO_BIGDECIMAL ()) :> BasicDecimal.basicDecimal);
        axisMathVectorUtil <- ((AxisMathVectorUtil.getInstance ()) :> AxisMathVectorUtil.axisMathVectorUtil);
        ();
        (self#setSpeedBasicDecimal (basicDecimal));
        velocityProperties <- velocityProperties_arg
      end
  end
let () = java_register_constructor "NoZBasicConstantVelocityMovement" (fun arguments -> Obj.repr (new noZBasicConstantVelocityMovement (Obj.obj arguments)))


