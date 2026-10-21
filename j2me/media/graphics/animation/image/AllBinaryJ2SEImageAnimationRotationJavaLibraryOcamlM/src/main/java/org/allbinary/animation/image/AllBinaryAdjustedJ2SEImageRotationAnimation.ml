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
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.math.AngleInfo *)

class allBinaryAdjustedJ2SEImageRotationAnimation (originalImage, image, (angleInfo : AngleInfo.angleInfo), (totalAngle : int), (dx_arg : int), (dy_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit AllBinaryJ2SEImageRotationAnimation.allBinaryJ2SEImageRotationAnimation (originalImage, image, angleInfo, totalAngle, animationBehavior) as super
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method init ((dx_arg : int), (dy_arg : int)) : unit =
        begin
        dx <- dx_arg;
        dy <- dy_arg
        end [@@warning "-7"]
    

    method setDx ((dx_arg : int)) : unit =
        begin
        dx <- dx_arg
        end [@@warning "-7"]
    

    method getDx () : int =
        begin
        dx
        end [@@warning "-7"]
    

    method setDy ((dy_arg : int)) : unit =
        begin
        dy <- dy_arg
        end [@@warning "-7"]
    

    method getDy () : int =
        begin
        dy
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintXY ((Obj.magic graphics), (x + dx), (y + dy)))
        end [@@warning "-7-20"]

    initializer
      begin
        dx <- 0;
        dy <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        (self#init (dx_arg, dy_arg))
      end
  end
let () = java_register_constructor "AllBinaryAdjustedJ2SEImageRotationAnimation" (fun arguments -> Obj.repr (new allBinaryAdjustedJ2SEImageRotationAnimation (Obj.obj arguments)))


