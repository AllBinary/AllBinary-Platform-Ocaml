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
(* import org.allbinary.animation.AnimationBehavior *)
(* import org.allbinary.util.CircularIndexUtil *)

class imageSegmentAnimation (image, (sequenceArray_arg : int array), (animationBehavior : AnimationBehavior.animationBehavior)) =
  object (self)
    inherit ImageAnimation.imageAnimation (image, animationBehavior)
    val mutable startX : int = 0
    method startX = startX
    method set_startX value' = startX <- value'
    val mutable startY : int = 0
    method startY = startY
    method set_startY value' = startY <- value'
    val mutable drawWidth : int = 0
    method drawWidth = drawWidth
    method set_drawWidth value' = drawWidth <- value'
    val mutable drawHeight : int = 0
    method drawHeight = drawHeight
    method set_drawHeight value' = drawHeight <- value'
    val mutable circularIndexUtil : CircularIndexUtil.circularIndexUtil = (Obj.magic 0)
    method circularIndexUtil = circularIndexUtil
    method set_circularIndexUtil value' = circularIndexUtil <- value'
    val mutable sequenceArray : int array = (Obj.magic 0)
    method sequenceArray = sequenceArray
    method set_sequenceArray value' = sequenceArray <- value'
    
    

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
        (circularIndexUtil#getSize ())
        end [@@warning "-7"]
    

    method setSequence ((sequenceArray_arg : int array)) : unit =
        begin
        sequenceArray <- sequenceArray_arg
        end [@@warning "-7"]
    

    method getSequence () : int array =
        begin
        sequenceArray
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (_graphics, (_x : int), (_y : int)) ->
        begin
        ()
        end [@@warning "-7-20"]
    

    method getStartX () : int =
        begin
        startX
        end [@@warning "-7"]
    

    method setStartX ((startX_arg : int)) : unit =
        begin
        startX <- startX_arg
        end [@@warning "-7"]
    

    method getStartY () : int =
        begin
        startY
        end [@@warning "-7"]
    

    method setStartY ((startY_arg : int)) : unit =
        begin
        startY <- startY_arg
        end [@@warning "-7"]
    

    method getDrawWidth () : int =
        begin
        drawWidth
        end [@@warning "-7"]
    

    method setDrawWidth ((drawWidth_arg : int)) : unit =
        begin
        drawWidth <- drawWidth_arg
        end [@@warning "-7"]
    

    method getDrawHeight () : int =
        begin
        drawHeight
        end [@@warning "-7"]
    

    method setDrawHeight ((drawHeight_arg : int)) : unit =
        begin
        drawHeight <- drawHeight_arg
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        startX <- 0;
        startY <- 0;
        drawWidth <- ((self#getImage ())#getWidth ());
        drawHeight <- ((self#getImage ())#getHeight ());
        circularIndexUtil <- (CircularIndexUtil.createInstance (drawHeight));
        sequenceArray <- sequenceArray_arg
      end
  end
let () = java_register_constructor "ImageSegmentAnimation" (fun arguments -> Obj.repr (new imageSegmentAnimation (Obj.obj arguments)))


