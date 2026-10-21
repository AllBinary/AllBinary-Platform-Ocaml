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
(* package org.allbinary.game.physics.velocity *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.math.BasicDecimal *)
(* import org.allbinary.logic.math.vector.AxisMathVectorUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.PositionStrings *)
(* import org.allbinary.string.CommonSeps *)

class basicVelocityProperties () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable velocityXBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method velocityXBasicDecimal = velocityXBasicDecimal
    method set_velocityXBasicDecimal value' = velocityXBasicDecimal <- value'
    val mutable velocityYBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method velocityYBasicDecimal = velocityYBasicDecimal
    method set_velocityYBasicDecimal value' = velocityYBasicDecimal <- value'
    val mutable velocityZBasicDecimal : BasicDecimal.basicDecimal = (Obj.magic 0)
    method velocityZBasicDecimal = velocityZBasicDecimal
    method set_velocityZBasicDecimal value' = velocityZBasicDecimal <- value'
    val mutable axisMathVectorUtil : AxisMathVectorUtil.axisMathVectorUtil = (Obj.magic 0)
    method axisMathVectorUtil = axisMathVectorUtil
    method set_axisMathVectorUtil value' = axisMathVectorUtil <- value'
    val mutable directionUtil : DirectionUtil.directionUtil = (Obj.magic 0)
    method directionUtil = directionUtil
    method set_directionUtil value' = directionUtil <- value'
    
    

    method zero () : unit =
        begin
        ignore (velocityXBasicDecimal#setint (0));
        ignore (velocityYBasicDecimal#setint (0));
        ignore (velocityZBasicDecimal#setint (0))
        end
    

    method getVelocityXBasicDecimalP () : BasicDecimal.basicDecimal =
        begin
        (velocityXBasicDecimal :> BasicDecimal.basicDecimal)
        end
    

    method getVelocityYBasicDecimalP () : BasicDecimal.basicDecimal =
        begin
        (velocityYBasicDecimal :> BasicDecimal.basicDecimal)
        end
    

    method getVelocityZBasicDecimalP () : BasicDecimal.basicDecimal =
        begin
        (velocityZBasicDecimal :> BasicDecimal.basicDecimal)
        end
    

    method setVelocityWithBigDecimalAndDirection : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (magnitudeBasicDecimal, direction, otherDirection) ->
        let magnitudeBasicDecimal = Obj.repr magnitudeBasicDecimal in
        let direction = Obj.repr direction in
        let otherDirection = Obj.repr otherDirection in
        begin
        let angle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic direction))) :> Angle.angle)) in ();
        let otherAngle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic otherDirection))) :> Angle.angle)) in ();
        (self#setVelocityWithBigDecimal ((Obj.magic magnitudeBasicDecimal), !angle, !otherAngle))
        end [@@warning "-20"]
    

    method setVelocityWithDirection : 'any2 'any3. int * 'any2 * 'any3 -> unit = fun ((magnitude : int), direction, otherDirection) ->
        let direction = Obj.repr direction in
        let otherDirection = Obj.repr otherDirection in
        begin
        let angle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic direction))) :> Angle.angle)) in ();
        let otherAngle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic otherDirection))) :> Angle.angle)) in ();
        (self#setVelocity (magnitude, !angle, !otherAngle))
        end [@@warning "-20"]
    

    method addVelocityWithBigDecimalAndDirection : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (magnitudeBasicDecimal, direction, otherDirection) ->
        let magnitudeBasicDecimal = Obj.repr magnitudeBasicDecimal in
        let direction = Obj.repr direction in
        let otherDirection = Obj.repr otherDirection in
        begin
        let angle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic direction))) :> Angle.angle)) in ();
        let otherAngle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic otherDirection))) :> Angle.angle)) in ();
        (self#addVelocityWithBigDecimal ((Obj.magic magnitudeBasicDecimal), !angle, !otherAngle))
        end [@@warning "-20"]
    

    method addVelocityWithDirection : 'any2 'any3. int * 'any2 * 'any3 -> unit = fun ((magnitude : int), direction, otherDirection) ->
        let direction = Obj.repr direction in
        let otherDirection = Obj.repr otherDirection in
        begin
        let angle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic direction))) :> Angle.angle)) in ();
        let otherAngle : Angle.angle ref = ref (((directionUtil#getAngle ((Obj.magic otherDirection))) :> Angle.angle)) in ();
        (self#addVelocity (magnitude, !angle, !otherAngle))
        end [@@warning "-20"]
    

    method setVelocityWithBigDecimal : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (magnitudeBasicDecimal, angle, otherAngle) ->
        let magnitudeBasicDecimal = Obj.repr magnitudeBasicDecimal in
        let angle = Obj.repr angle in
        let otherAngle = Obj.repr otherAngle in
        begin
        let magnitude : int ref = ref (((Obj.magic magnitudeBasicDecimal)#getUnscaled ())) in ();
        (self#setVelocity (!magnitude, (Obj.magic angle), (Obj.magic otherAngle)))
        end [@@warning "-20"]
    

    method addVelocityWithBigDecimal : 'any1 'any2 'any3. 'any1 * 'any2 * 'any3 -> unit = fun (magnitudeBasicDecimal, angle, otherAngle) ->
        let magnitudeBasicDecimal = Obj.repr magnitudeBasicDecimal in
        let angle = Obj.repr angle in
        let otherAngle = Obj.repr otherAngle in
        begin
        let magnitude : int ref = ref (((Obj.magic magnitudeBasicDecimal)#getUnscaled ())) in ();
        (self#addVelocity (!magnitude, (Obj.magic angle), (Obj.magic otherAngle)))
        end [@@warning "-20"]
    

    method setVelocity : 'any2 'any3. int * 'any2 * 'any3 -> unit = fun ((magnitude : int), angle, otherAngle) ->
        let angle = Obj.repr angle in
        let otherAngle = Obj.repr otherAngle in
        begin
        (self#setVelocityi (magnitude, (java_to_int (Obj.repr (((Obj.magic angle)#getValue ())))), (java_to_int (Obj.repr (((Obj.magic otherAngle)#getValue ()))))))
        end [@@warning "-20"]
    

    method addVelocity : 'any2 'any3. int * 'any2 * 'any3 -> unit = fun ((magnitude : int), angle, otherAngle) ->
        let angle = Obj.repr angle in
        let otherAngle = Obj.repr otherAngle in
        begin
        (self#addVelocityi (magnitude, (java_to_int (Obj.repr (((Obj.magic angle)#getValue ())))), (java_to_int (Obj.repr (((Obj.magic otherAngle)#getValue ()))))))
        end [@@warning "-20"]
    

    method setVelocityi ((magnitude : int), (angle : int), (otherAngle : int)) : unit =
        begin
        let xVector : int ref = ref ((((axisMathVectorUtil#calculateX (magnitude, angle)) / (velocityXBasicDecimal#getScaledFactorValue ())))) in ();
        let yVector : int ref = ref ((((axisMathVectorUtil#calculateY (magnitude, angle)) / (velocityYBasicDecimal#getScaledFactorValue ())))) in ();
        let zVector : int ref = ref ((((axisMathVectorUtil#calculateZ (magnitude, otherAngle)) / (velocityZBasicDecimal#getScaledFactorValue ())))) in ();
        ignore (velocityXBasicDecimal#setlong (!xVector));
        ignore (velocityYBasicDecimal#setlong (!yVector));
        ignore (velocityZBasicDecimal#setlong (!zVector))
        end
    

    method addVelocityi ((magnitude : int), (angle : int), (otherAngle : int)) : unit =
        begin
        let xVector : int ref = ref ((((axisMathVectorUtil#calculateX (magnitude, angle)) / (velocityXBasicDecimal#getScaledFactorValue ())))) in ();
        let yVector : int ref = ref ((((axisMathVectorUtil#calculateY (magnitude, angle)) / (velocityYBasicDecimal#getScaledFactorValue ())))) in ();
        let zVector : int ref = ref ((((axisMathVectorUtil#calculateZ (magnitude, otherAngle)) / (velocityZBasicDecimal#getScaledFactorValue ())))) in ();
        ignore (velocityXBasicDecimal#addlong (!xVector));
        ignore (velocityYBasicDecimal#addlong (!yVector));
        ignore (velocityZBasicDecimal#addlong (!zVector))
        end
    

    method toString () : string =
        begin
        let commonSeps : CommonSeps.commonSeps ref = ref (((CommonSeps.getInstance ()) :> CommonSeps.commonSeps)) in ();
        let positionStrings : PositionStrings.positionStrings ref = ref (((PositionStrings.getInstance ()) :> PositionStrings.positionStrings)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        ignore (!stringBuffer#append ("Velocity "));
        ignore (!stringBuffer#append (!positionStrings#x_LABEL));
        ignore (!stringBuffer#append ((!stringUtil#toString (velocityXBasicDecimal))));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (!positionStrings#y_LABEL));
        ignore (!stringBuffer#append ((!stringUtil#toString (velocityYBasicDecimal))));
        ignore (!stringBuffer#append (!commonSeps#sPACE));
        ignore (!stringBuffer#append (!positionStrings#z_LABEL));
        ignore (!stringBuffer#append ((!stringUtil#toString (velocityZBasicDecimal))));
        (java_string_of (Obj.repr !stringBuffer))
        end

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        axisMathVectorUtil <- ((AxisMathVectorUtil.getInstance ()) :> AxisMathVectorUtil.axisMathVectorUtil);
        directionUtil <- ((DirectionUtil.getInstance ()) :> DirectionUtil.directionUtil);
        ();
        velocityXBasicDecimal <- (new BasicDecimal.basicDecimal (0));
        velocityYBasicDecimal <- (new BasicDecimal.basicDecimal (0));
        velocityZBasicDecimal <- (new BasicDecimal.basicDecimal (0))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicVelocityProperties" (fun arguments -> Obj.repr (new basicVelocityProperties (Obj.obj arguments)))


