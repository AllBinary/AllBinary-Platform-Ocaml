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
(* import javax.microedition.lcdui.NullImage *)
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.animation.IndexedAnimation *)
(* import org.allbinary.graphics.Anchor *)
(* import org.allbinary.logic.math.PrimitiveIntUtil *)
(* import org.allbinary.util.CircularIndexUtil *)

class imageArrayAnimation (imageArray_arg, (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit IndexedAnimation.indexedAnimation (animationBehavior)
    val mutable imageArray : Obj.t = Obj.repr 0
    method imageArray : 'r. 'r = Obj.magic imageArray
    method set_imageArray : 'v. 'v -> unit = fun value' -> imageArray <- Obj.repr value'
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
    

    method getImage : 'return. int -> 'return = fun ((index : int)) ->
        begin
        (Obj.magic ((Obj.magic imageArray).(index)))
        end [@@warning "-7"]
    

    method getImageArray : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic imageArray)))
        end [@@warning "-7"]
    

    method setImageArray (imageArray_arg) : unit =
        begin
        imageArray <- Obj.repr (imageArray_arg);
        totalFrames <- (Array.length imageArray_arg);
        circularIndexUtil <- (CircularIndexUtil.createInstance (totalFrames))
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic graphics)#drawImage ((Obj.magic imageArray).((circularIndexUtil#getIndex ())), x, y, anchor))
        end [@@warning "-7-20"]

    initializer
      begin
        imageArray <- (Obj.repr (NullImage.get_nULL_IMAGE_ARRAY ()));
        totalFrames <- 0;
        circularIndexUtil <- ((CircularIndexUtil.get_nULL_CIRCULAR_INDEX_UTIL ()) :> CircularIndexUtil.circularIndexUtil);
        anchor <- (Anchor.get_tOP_LEFT ());
        ();
        (* super(...) is the inherit clause *) ();
        (self#setImageArray (imageArray_arg))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ImageArrayAnimation" (fun arguments -> Obj.repr (new imageArrayAnimation (Obj.obj arguments)))


