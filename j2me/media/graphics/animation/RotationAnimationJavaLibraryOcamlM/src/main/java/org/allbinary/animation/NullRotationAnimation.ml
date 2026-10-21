(* Generated Code Do Not Modify *)
(* package org.allbinary.animation *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class nullRotationAnimation ((angleInfo : AngleInfo.angleInfo), (circularIndexUtil : CircularIndexUtil.circularIndexUtil), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object
    inherit RotationAnimation.rotationAnimation (angleInfo, circularIndexUtil, animationBehavior)
    
    

    method getAnimationSize () : int =
        begin
        0
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "NullRotationAnimation" (fun arguments -> Obj.repr (new nullRotationAnimation (Obj.obj arguments)))

let createTotalAngle : 'any1 'any3. 'any1 * int * 'any3 -> _ = fun (angleInfo, (totalAngle : int), animationBehavior) ->
        let angleInfo = Obj.repr angleInfo in
        let animationBehavior = Obj.repr animationBehavior in
        begin
        (new nullRotationAnimation ((Obj.magic angleInfo), (CircularIndexUtil.createInstance ((totalAngle / (((Obj.magic angleInfo)#getAngleIncrementInfo ())#getAngleIncrement ())))), (Obj.magic animationBehavior)))
        end [@@warning "-20"]

and createQuarter : 'any1. 'any1 -> _ = fun (animationBehavior) ->
        let animationBehavior = Obj.repr animationBehavior in
        begin
        (new nullRotationAnimation ((AngleInfo.getInstance ((AngleFactory.getInstance ())#qUARTER_TOTAL_ANGLE)), (CircularIndexUtil.createInstance (4)), (Obj.magic animationBehavior)))
        end [@@warning "-20"]
let () = java_register_static "NullRotationAnimation.createTotalAngle" (fun arguments -> Obj.repr (createTotalAngle (Obj.obj arguments)))
let () = java_register_static "NullRotationAnimation.createQuarter" (fun arguments -> Obj.repr (createQuarter (Obj.obj arguments)))


