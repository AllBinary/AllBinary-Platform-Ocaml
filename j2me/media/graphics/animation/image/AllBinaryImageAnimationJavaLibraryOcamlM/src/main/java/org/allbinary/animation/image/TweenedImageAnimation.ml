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
(* import org.allbinary.DisposalUtil *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.util.CircularIndexUtil *)

class tweenedImageAnimation (image_arg, (dx_arg : int), (dy_arg : int), (totalFrames_arg : int), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    val mutable totalFrames : int = 0
    method totalFrames = totalFrames
    method set_totalFrames value' = totalFrames <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        ignore (circularIndexUtil#next ())
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ignore (circularIndexUtil#previous ())
        end [@@warning "-7"]
    

    method setFrame ((index : int)) : unit =
        begin
        ignore (circularIndexUtil#setIndex (index))
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        (circularIndexUtil#getIndex ())
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        totalFrames
        end [@@warning "-7"]
    

    method setSequence ((_sequence : int array)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        (PrimitiveIntUtil.getArrayInstance ())
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        let frame : int ref = ref ((self#getFrame ())) in ();
        let currentX : int ref = ref ((dx * !frame)) in ();
        let currentY : int ref = ref ((dy * !frame)) in ();
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic image), (x + !currentX), (y + !currentY), anchor))
        end [@@warning "-7-20"]
    

    method close () : unit =
        begin
        ignore ((Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ())))#disposeImage ((Obj.magic image)))
        end [@@warning "-7"]
    

    method finalize () : unit =
        begin
        ignore ((Obj.magic (java_call_static "DisposalUtil.getInstance" (Obj.repr ())))#disposeImage ((Obj.magic image)))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        image <- Obj.repr (image_arg);
        dx <- dx_arg;
        dy <- dy_arg;
        totalFrames <- totalFrames_arg;
        circularIndexUtil <- (CircularIndexUtil.createInstance (totalFrames))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TweenedImageAnimation" (fun arguments -> Obj.repr (new tweenedImageAnimation (Obj.obj arguments)))


