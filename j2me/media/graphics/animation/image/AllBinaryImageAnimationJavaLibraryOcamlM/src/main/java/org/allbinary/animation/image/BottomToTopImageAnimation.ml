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

class bottomToTopImageAnimation (image, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageSegmentAnimation.imageSegmentAnimation (image, (PrimitiveIntUtil.getArrayInstance ()), animationBehavior) as super
    val mutable startHeight : int = 0
    method startHeight = startHeight
    method set_startHeight value' = startHeight <- value'
    val mutable currentHeight : int = 0
    method currentHeight = currentHeight
    method set_currentHeight value' = currentHeight <- value'
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
        startHeight <- (((self#getDrawHeight ()) * (self#getFrame ())) / (self#getSize ()));
        currentHeight <- ((self#getDrawHeight ()) - startHeight)
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawRegion ((self#getImage ()), (self#getStartX ()), startHeight, (self#getDrawWidth ()), currentHeight, (Obj.magic (java_call_static "Sprite.get_tRANS_NONE" (Obj.repr ()))), x, (y + startHeight), anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        startHeight <- 0;
        currentHeight <- 0;
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        (self#setFrame (((self#getSize ()) - 1)))
      end
  end
let () = java_register_constructor "BottomToTopImageAnimation" (fun arguments -> Obj.repr (new bottomToTopImageAnimation (Obj.obj arguments)))


