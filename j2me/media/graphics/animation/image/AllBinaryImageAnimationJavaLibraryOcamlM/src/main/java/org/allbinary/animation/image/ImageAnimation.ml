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

class imageAnimation (image_arg, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable image : Obj.t = Obj.repr 0
    method image : 'r. 'r = Obj.magic image
    method set_image : 'v. 'v -> unit = fun value' -> image <- Obj.repr value'
    val mutable anchor : int = 0
    method anchor = anchor
    method set_anchor value' = anchor <- value'
    
    

    method getAnimationSize () : int =
        begin
        (self#getSize ())
        end [@@warning "-7"]
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method previousFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method setFrame ((_index : int)) : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method getFrame () : int =
        begin
        0
        end [@@warning "-7"]
    

    method getSize () : int =
        begin
        1
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
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic image), x, y, anchor))
        end [@@warning "-7-20"]
    

    method getImage : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic image)))
        end [@@warning "-7"]
    

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
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        image <- Obj.repr (image_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageAnimation" (fun arguments -> Obj.repr (new imageAnimation (Obj.obj arguments)))


