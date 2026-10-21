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
(* import javax.microedition.lcdui.game.Sprite *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)

class rightToLeftImageAnimation (image, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageSegmentAnimation.imageSegmentAnimation (image, (PrimitiveIntUtil.getArrayInstance ()), animationBehavior) as super
    val mutable startWidth : int = 0
    method startWidth = startWidth
    method set_startWidth value' = startWidth <- value'
    val mutable currentWidth : int = 0
    method currentWidth = currentWidth
    method set_currentWidth value' = currentWidth <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method nextFrame () : unit =
        begin
        ignore (super#previousFrame ());
        (self#update ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (super#nextFrame ());
        (self#update ())
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (super#setFrame (index));
        (self#update ())
        end [@@warning "-7"]
    

    method update () : unit =
        begin
        startWidth <- (((self#getDrawWidth ()) * (self#getFrame ())) / (self#getSize ()));
        currentWidth <- ((self#getDrawWidth ()) - startWidth)
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawRegion ((self#getImage ()), startWidth, (self#getStartY ()), currentWidth, (self#getDrawHeight ()), (Obj.magic (java_call_static "Sprite.get_tRANS_NONE" (Obj.repr ()))), (x + startWidth), y, anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        startWidth <- 0;
        currentWidth <- 0;
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        (self#setFrame (((self#getSize ()) - 1)))
      end
  end
let () = java_register_constructor "RightToLeftImageAnimation" (fun arguments -> Obj.repr (new rightToLeftImageAnimation (Obj.obj arguments)))


