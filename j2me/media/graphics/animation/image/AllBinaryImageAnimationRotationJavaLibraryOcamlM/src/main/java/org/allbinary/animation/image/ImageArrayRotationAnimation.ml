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
(* package org.allbinary.animation.image *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.math.AngleInfo *)

class imageArrayRotationAnimation (imageArray, (angleInfo : AngleInfo.angleInfo), (totalAngle : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageArrayBaseRotationAnimation.imageArrayBaseRotationAnimation (imageArray, angleInfo, animationBehavior) as super
    val mutable expectedTotalFrames : int = 0
    method expectedTotalFrames = expectedTotalFrames
    method set_expectedTotalFrames value' = expectedTotalFrames <- value'
    
    

    method init : 'any2. _ * 'any2 * int -> unit = fun (_imageArray, _angleInfo, (totalAngle : int)) ->
        begin
        expectedTotalFrames <- (totalAngle / (((self#angleInfo)#getAngleIncrementInfo ())#getAngleIncrement ()));
        ignore ((self#angleInfo)#adjustAngle (0));
        if (expectedTotalFrames <> (self#getSize ())) then begin
            raise (Failure ("Wrong Number of Frames"))
        end
        end [@@warning "-7-20"]
    

    method setImageArray (imageArray) : unit =
        begin
        ignore (super#setImageArray (imageArray));
        ignore ((self#angleInfo)#adjustAngle (0))
        end [@@warning "-7"]

    initializer
      begin
        expectedTotalFrames <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        (self#init (imageArray, angleInfo, totalAngle))
      end
  end
let () = java_register_constructor "ImageArrayRotationAnimation" (fun arguments -> Obj.repr (new imageArrayRotationAnimation (Obj.obj arguments)))

let createAnimation : 'any1 'any2. 'any1 * 'any2 -> _ = fun (anyType, animationBehavior) ->
        let anyType = Obj.repr anyType in
        let animationBehavior = Obj.repr animationBehavior in
        begin
        let imageRotationAnimationInfo : ImageArrayRotationAnimationInfo.imageArrayRotationAnimationInfo ref = ref (((Obj.magic anyType) :> ImageArrayRotationAnimationInfo.imageArrayRotationAnimationInfo)) in ();
        (new imageArrayRotationAnimation ((!imageRotationAnimationInfo#getImageArray ()), (!imageRotationAnimationInfo#getAngleInfoP ()), (!imageRotationAnimationInfo#getTotalAngle ()), (Obj.magic animationBehavior)))
        end [@@warning "-20"]
let () = java_register_static "ImageArrayRotationAnimation.createAnimation" (fun arguments -> Obj.repr (createAnimation (Obj.obj arguments)))


