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
(* import org.allbinary.animation.RotationAnimation *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.math.AngleInfo *)
(* import org.allbinary.util.CircularIndexUtil *)

class hackRotationSpriteIndexedAnimation (sprite_arg, image_arg, (angleInfo : AngleInfo.angleInfo), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit RotationAnimation.rotationAnimation (angleInfo, (CircularIndexUtil.createInstance ((360 / ((angleInfo#getAngleIncrementInfo ())#getAngleIncrement ())))), animationBehavior)
    val mutable sprite : Obj.t = Obj.repr 0
    method sprite : 'r. 'r = Obj.magic sprite
    method set_sprite : 'v. 'v -> unit = fun value' -> sprite <- Obj.repr value'
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method paintFrame : 'any1. 'any1 * int * int * int -> unit = fun (g, (frame : int), (x : int), (y : int)) ->
        let g = Obj.repr g in
        begin
        (self#setFrame (frame));
        (self#paintXY ((Obj.magic g), x, y))
        end [@@warning "-7-20"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (g, (x : int), (y : int)) ->
        let g = Obj.repr g in
        begin
        ignore ((Obj.magic sprite)#setPosition (x, y));
        (self#paint ((Obj.magic g)))
        end [@@warning "-7-20"]
    

    method paint : 'any1. 'any1 -> unit = fun (g) ->
        let g = Obj.repr g in
        begin
        ignore ((Obj.magic sprite)#paint ((Obj.magic g)))
        end [@@warning "-7-20"]
    

    method nextRotation () : unit =
        begin
        ignore ((Obj.magic sprite)#nextFrame ())
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore ((Obj.magic sprite)#prevFrame ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        ((Obj.magic sprite)#getRawFrameCount ())
        end [@@warning "-7"]
    

    method setFrame ((frame : int)) : unit =
        begin
        ignore ((Obj.magic sprite)#setFrame (frame))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        ((Obj.magic sprite)#getFrame ())
        end [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        sprite <- Obj.repr (sprite_arg);
        image <- Obj.repr (image_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "HackRotationSpriteIndexedAnimation" (fun arguments -> Obj.repr (new hackRotationSpriteIndexedAnimation (Obj.obj arguments)))


