(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2022 AllBinary 
   
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

class adjustedImageAnimation (image, (dx_arg : int), (dy_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageAnimation.imageAnimation (image, animationBehavior) as super
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method init ((dx_arg : int), (dy_arg : int)) : unit =
        begin
        (self#setDx (dx_arg));
        (self#setDy (dy_arg))
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (super#paintXY ((Obj.magic graphics), (x + dx), (y + dy)))
        end [@@warning "-7-20"]
    

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

    initializer
      begin
        dx <- 0;
        dy <- 0;
        ();
        (* super(...) is the inherit clause *) ();
        (self#init (dx_arg, dy_arg))
      end
  end
let () = java_register_constructor "AdjustedImageAnimation" (fun arguments -> Obj.repr (new adjustedImageAnimation (Obj.obj arguments)))


