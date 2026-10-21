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
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.AnimationBehaviorFactory *)
(* import org.allbinary.animation.AnimationInterfaceFactoryInterface *)
(* import org.allbinary.logic.communication.log.ForcedLogUtil *)
(* import org.allbinary.media.ScaleProperties *)

class imageArrayAnimationFactory (imageArray_arg, (dx_arg : int), (dy_arg : int), (animationBehaviorFactory_arg : AnimationBehaviorFactory.animationBehaviorFactory)) =
  object
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
    val mutable animationBehaviorFactory : AnimationBehaviorFactory.animationBehaviorFactory = (Obj.magic 0)
    method animationBehaviorFactory = animationBehaviorFactory
    method set_animationBehaviorFactory value' = animationBehaviorFactory <- value'
    
    

    method getInstance : 'return. int -> 'return = fun ((_instanceId : int)) ->
        try
        begin
        if ((dx <> 0) || (dy <> 0)) then begin
            raise (Java_return (Obj.repr ((new AdjustedImageArrayAnimation.adjustedImageArrayAnimation ((Obj.magic imageArray), dx, dy, (animationBehaviorFactory#getOrCreateInstance ()))))))
        end else begin
            raise (Java_return (Obj.repr ((new ImageArrayAnimation.imageArrayAnimation ((Obj.magic imageArray), (AnimationBehavior.getInstance ()))))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method setInitialScale : 'any1. 'any1 -> unit = fun (_scaleProperties) ->
        begin
        ()
        end [@@warning "-20"]

    initializer
      begin
        dx <- 0;
        dy <- 0;
        ();
        ();
        ();
        imageArray <- Obj.repr (imageArray_arg);
        animationBehaviorFactory <- animationBehaviorFactory_arg;
        dx <- dx_arg;
        dy <- dy_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageArrayAnimationFactory" (fun arguments -> Obj.repr (new imageArrayAnimationFactory (Obj.obj arguments)))


