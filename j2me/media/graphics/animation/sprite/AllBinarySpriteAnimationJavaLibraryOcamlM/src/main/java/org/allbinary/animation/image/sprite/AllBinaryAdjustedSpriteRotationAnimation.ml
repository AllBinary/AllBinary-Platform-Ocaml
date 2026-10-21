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
(* package org.allbinary.animation.image.sprite *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)
(* import org.allbinary.animation.AnimationBehavior *)

class allBinaryAdjustedSpriteRotationAnimation (sprite, image, (dx_arg : int), (dy_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit AllBinarySpriteRotationAnimation.allBinarySpriteRotationAnimation (sprite, image, animationBehavior)
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (g, (x : int), (y : int)) ->
        let g = Obj.repr g in
        begin
        ignore (sprite#setPosition ((x + dx), (y + dy)));
        ignore (self#paint ((Obj.magic g)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        dx <- dx_arg;
        dy <- dy_arg
      end
  end
let () = java_register_constructor "AllBinaryAdjustedSpriteRotationAnimation" (fun arguments -> Obj.repr (new allBinaryAdjustedSpriteRotationAnimation (Obj.obj arguments)))


