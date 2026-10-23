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
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.direction.DirectionUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.math.FrameUtil *)
(* import org.allbinary.util.CircularIndexUtil *)

class rotationAnimation ((angleInfo_arg : AngleInfo.angleInfo), (circularIndexUtil_arg : CircularIndexUtil.circularIndexUtil), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior) as super
    val mutable frameUtil : FrameUtil.frameUtil = (Obj.magic 0)
    method frameUtil = frameUtil
    method set_frameUtil value' = frameUtil <- value'
    val mutable directionUtil : DirectionUtil.directionUtil = (Obj.magic 0)
    method directionUtil = directionUtil
    method set_directionUtil value' = directionUtil <- value'
    val mutable angleInfo : AngleInfo.angleInfo = (Obj.magic 0)
    method angleInfo = angleInfo
    method set_angleInfo value' = angleInfo <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    
    

    method nextRotationX () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method previousRotationX () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method nextRotation () : unit =
        begin
        ignore (angleInfo#adjustAngle ((circularIndexUtil#next ())))
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore (angleInfo#adjustAngle ((circularIndexUtil#previous ())))
        end [@@warning "-7"]
    

    method nextRotationZ () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method previousRotationZ () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (circularIndexUtil#setIndex (index));
        let newFrame : int ref = ref ((circularIndexUtil#getIndex ())) in ();
        ignore (angleInfo#adjustAngle (!newFrame))
        end [@@warning "-7"]
    

    method setFrameByDirection : 'any1. 'any1 -> unit = fun (direction) ->
        let direction = Obj.repr direction in
        begin
        let angle : Angle.angle ref = ref (((directionUtil#getFrameAngle ((Obj.magic direction))) :> Angle.angle)) in ();
        (self#adjustFrameToAngle (!angle))
        end [@@warning "-7-20"]
    

    method setFrameToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        (self#adjustFrameToAngle ((Obj.magic angle)))
        end [@@warning "-7-20"]
    

    method adjustFrameToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        (self#adjustFrame (((Obj.magic angle)#getValue ())))
        end [@@warning "-7-20"]
    

    method adjustFrame ((angle : int)) : unit =
        begin
        (self#setFrame ((frameUtil#getFrameForAngle (angle, (java_to_int (Obj.repr (((angleInfo#getAngleIncrementInfo ())#getAngleIncrement ()))))))))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (circularIndexUtil#getIndex ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        (circularIndexUtil#getSize ())
        end [@@warning "-7"]
    

    method getAngleInfoP () : AngleInfo.angleInfo =
        begin
        (angleInfo :> AngleInfo.angleInfo)
        end [@@warning "-7"]
    

    method toString () : string =
        begin
        (java_string_of (Obj.repr ((((((new StringMaker.stringMaker ())#append ((super#toString ())))#append ("circularIndexUtil: "))#append ((java_string_of (Obj.repr circularIndexUtil))))#append ("angleInfo: "))#append ((java_string_of (Obj.repr angleInfo))))))
        end [@@warning "-7"]

    initializer
      begin
        frameUtil <- ((FrameUtil.getInstance ()) :> FrameUtil.frameUtil);
        directionUtil <- ((DirectionUtil.getInstance ()) :> DirectionUtil.directionUtil);
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        angleInfo <- angleInfo_arg;
        circularIndexUtil <- circularIndexUtil_arg
      end
  end
let () = java_register_constructor "RotationAnimation" (fun arguments -> Obj.repr (new rotationAnimation (Obj.obj arguments)))


