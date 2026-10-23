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
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.color.BasicColorUtil *)

class adjustedSpriteIndexedAnimation (sprite, image, (basicColorArray : BasicColor.basicColor array), (dx_arg : int), (dy_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit SpriteIndexedAnimation.spriteIndexedAnimation (sprite, image, basicColorArray, animationBehavior) as super
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method paintFrame : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (frame : int), (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (self#setFrame (frame));
        ignore ((self#sprite)#setPosition ((x + dx), (y + dy)));
        ignore (super#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (g, (x : int), (y : int)) ->
        let g = Obj.repr g in
        begin
        ignore ((self#sprite)#setPosition ((x + dx), (y + dy)));
        ignore (super#paint ((Obj.magic g)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (g) ->
        let g = Obj.repr g in
        begin
        ignore ((self#sprite)#setPosition (dx, dy));
        ignore (super#paint ((Obj.magic g)))
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
let () = java_register_constructor "AdjustedSpriteIndexedAnimation" (fun arguments -> Obj.repr (new adjustedSpriteIndexedAnimation (Obj.obj arguments)))


