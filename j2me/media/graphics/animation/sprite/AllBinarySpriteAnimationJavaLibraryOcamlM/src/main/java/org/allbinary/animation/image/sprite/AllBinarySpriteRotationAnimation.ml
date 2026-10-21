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
(* import javax.microedition.lcdui.Image *)
(* import javax.microedition.lcdui.game.Sprite *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.direction.Direction *)
(* import org.allbinary.math.Angle *)
(* import org.allbinary.math.AngleFactory *)
(* import org.allbinary.math.AngleInfo *)

class allBinarySpriteRotationAnimation (sprite, image, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit HackRotationSpriteIndexedAnimation.hackRotationSpriteIndexedAnimation (sprite, image, (AngleInfo.getInstance ((java_to_int (Obj.repr ((((AngleFactory.getInstance ())#tOTAL_ANGLE / (sprite#getRawFrameCount ())))))))), animationBehavior)
    
    

    method nextRotation () : unit =
        begin
        ignore (sprite#nextFrame ());
        ignore (angleInfo#adjustAngle ((sprite#getFrame ())))
        end [@@warning "-7"]
    

    method previousRotation () : unit =
        begin
        ignore (sprite#prevFrame ());
        ignore (angleInfo#adjustAngle ((sprite#getFrame ())))
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
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (sprite#setFrame (index));
        ignore (angleInfo#adjustAngle ((self#getFrame ())))
        end [@@warning "-7"]
    

    method adjustFrameToAngle : 'any1. 'any1 -> unit = fun (angle) ->
        let angle = Obj.repr angle in
        begin
        (self#adjustFrame (((Obj.magic angle)#getValue ())))
        end [@@warning "-7-20"]
    

    method adjustFrame ((angle : int)) : unit =
        begin
        (self#setFrame ((frameUtil#getFrameForAngle (angle, (java_to_int (Obj.repr (((angleInfo#getAngleIncrementInfo ())#getAngleIncrement ()))))))))
        end [@@warning "-7"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (angleInfo#adjustAngle ((sprite#getFrame ())))
      end
  end
let () = java_register_constructor "AllBinarySpriteRotationAnimation" (fun arguments -> Obj.repr (new allBinarySpriteRotationAnimation (Obj.obj arguments)))


