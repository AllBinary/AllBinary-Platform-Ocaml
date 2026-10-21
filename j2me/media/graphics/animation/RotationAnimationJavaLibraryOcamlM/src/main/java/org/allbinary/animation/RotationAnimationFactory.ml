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
(* import org.allbinary.game.configuration.GameConfigurationCentral *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.media.ScaleProperties *)

class rotationAnimationFactory ((totalAngle_arg : int), (angleIncrement_arg : int)) =
  object
    val mutable totalAngle : int = 0
    method totalAngle = totalAngle
    method set_totalAngle value' = totalAngle <- value'
    val mutable angleIncrement : int = 0
    method angleIncrement = angleIncrement
    method set_angleIncrement value' = angleIncrement <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        begin
        (Obj.magic ((NullRotationAnimation.createTotalAngle ((AngleInfo.getInstance (angleIncrement)), totalAngle, (AnimationBehavior.getInstance ())))))
        end
    

    method getInstanceAnimation : 'any1 'return. 'any1 -> 'return = fun (_animationInterface) ->
        begin
        (Obj.magic ((NullRotationAnimation.createTotalAngle ((AngleInfo.getInstance (angleIncrement)), totalAngle, (AnimationBehavior.getInstance ())))))
        end [@@warning "-20"]
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        totalAngle <- totalAngle_arg;
        angleIncrement <- angleIncrement_arg
      end
  end
let () = java_register_constructor "RotationAnimationFactory" (fun arguments -> Obj.repr (new rotationAnimationFactory (Obj.obj arguments)))

let createFactory () =
        begin
        let totalAngle_arg : int ref = ref ((AngleFactory.getInstance ())#tOTAL_ANGLE) in ();
        (new rotationAnimationFactory (!totalAngle_arg, (java_to_int (Obj.repr (((!totalAngle_arg / ((GameConfigurationCentral.getInstance ())#getGameControlFidelity ()))))))))
        end
let () = java_register_static "RotationAnimationFactory.createFactory" (fun arguments -> Obj.repr (createFactory (Obj.obj arguments)))


