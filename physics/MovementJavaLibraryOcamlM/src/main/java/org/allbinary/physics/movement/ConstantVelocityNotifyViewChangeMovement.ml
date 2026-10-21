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
(* import org.allbinary.layer.AllBinaryLayer *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.math.vector.AxisMathVectorUtil *)
(* import org.allbinary.math.AngleFactory *)

class constantVelocityNotifyViewChangeMovement () =
  object
    inherit Movement.movement ()
    val mutable basicVelocityProperties : BasicVelocityProperties.basicVelocityProperties = (Obj.magic 0)
    method basicVelocityProperties = basicVelocityProperties
    method set_basicVelocityProperties value' = basicVelocityProperties <- value'
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
        ignore (basicVelocityProperties#setVelocityWithBigDecimal ((Obj.magic speedBasicDecimal_arg), (!angleFactory#getAt (angle)), (!angleFactory#getAt (otherAngle))))
        end [@@warning "-7-20"]
    

    method moveOutsideRadius : 'any1. 'any1 * int * int * int -> unit = fun (layer, (radius : int), (angle : int), (otherAngle : int)) ->
        let layer = Obj.repr layer in
        begin
        let scaleFactorValue : int ref = ref ((speedBasicDecimal#getScaledFactorValue ())) in ();
        let xVector : int ref = ref ((java_to_int (Obj.repr ((((axisMathVectorUtil#calculateX (radius, angle)) / !scaleFactorValue)))))) in ();
        let yVector : int ref = ref ((java_to_int (Obj.repr ((((axisMathVectorUtil#calculateY (radius, angle)) / !scaleFactorValue)))))) in ();
        let zVector : int ref = ref ((java_to_int (Obj.repr ((((axisMathVectorUtil#calculateZ (radius, otherAngle)) / !scaleFactorValue)))))) in ();
        ignore ((Obj.magic layer)#moveDXYZ (!xVector, !yVector, !zVector))
        end [@@warning "-7-20"]
    

    method process : 'any1. 'any1 -> unit = fun (layer) ->
        let layer = Obj.repr layer in
        begin
        let x : int ref = ref (((basicVelocityProperties#getVelocityXBasicDecimalP ())#getScaled ())) in ();
        let y : int ref = ref (((basicVelocityProperties#getVelocityYBasicDecimalP ())#getScaled ())) in ();
        let z : int ref = ref (((basicVelocityProperties#getVelocityZBasicDecimalP ())#getScaled ())) in ();
        ignore ((Obj.magic layer)#moveDXYZ (!x, !y, !z));
        if (((!x <> 0) || (!y <> 0)) || (!z <> 0)) then begin
            ignore ((Obj.magic layer)#onViewPositionChangeEvent ())
        end
        end [@@warning "-7-20"]
    

    method stop () : unit =
        begin
        ignore (basicVelocityProperties#zero ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        axisMathVectorUtil <- ((AxisMathVectorUtil.getInstance ()) :> AxisMathVectorUtil.axisMathVectorUtil);
        ();
        speedBasicDecimal <- (BasicDecimal.get_zERO_BIGDECIMAL ());
        basicVelocityProperties <- (new BasicVelocityProperties.basicVelocityProperties ())
      end
  end
let () = java_register_constructor "ConstantVelocityNotifyViewChangeMovement" (fun arguments -> Obj.repr (new constantVelocityNotifyViewChangeMovement (Obj.obj arguments)))


