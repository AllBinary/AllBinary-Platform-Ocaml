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
(* package org.allbinary.animation.caption *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)

class captionAnimation ((animationInterface_arg : Animation.animation), (overlayAnimationInterface_arg : Animation.animation), (captionDx_arg : int), (captionDy_arg : int), (dx_arg : int), (dy_arg : int)) =
  object
    inherit Animation.animation ()
    val mutable animationInterface : Animation.animation = (Obj.magic 0)
    method animationInterface = animationInterface
    method set_animationInterface value' = animationInterface <- value'
    val mutable overlayAnimationInterface : Animation.animation = (Obj.magic 0)
    method overlayAnimationInterface = overlayAnimationInterface
    method set_overlayAnimationInterface value' = overlayAnimationInterface <- value'
    val mutable captionDx : int = 0
    method captionDx = captionDx
    method set_captionDx value' = captionDx <- value'
    val mutable captionDy : int = 0
    method captionDy = captionDy
    method set_captionDy value' = captionDy <- value'
    val mutable dx : int = 0
    method dx = dx
    method set_dx value' = dx <- value'
    val mutable dy : int = 0
    method dy = dy
    method set_dy value' = dy <- value'
    
    

    method nextFrame () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method paintXY : 'any1. 'any1 * int * int -> unit = fun (graphics, (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintXY ((Obj.magic graphics), (x + captionDx), (y + captionDy)));
        ignore (overlayAnimationInterface#paintXY ((Obj.magic graphics), ((x + captionDx) + dx), ((y + captionDy) + dy)))
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (animationInterface#paintThreedXYZ ((Obj.magic graphics), (x + captionDx), (y + captionDy), z));
        ignore (overlayAnimationInterface#paintThreedXYZ ((Obj.magic graphics), ((x + captionDx) + dx), ((y + captionDy) + dy), z))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        animationInterface <- animationInterface_arg;
        overlayAnimationInterface <- overlayAnimationInterface_arg;
        captionDx <- captionDx_arg;
        captionDy <- captionDy_arg;
        dx <- dx_arg;
        dy <- dy_arg
      end
  end
let () = java_register_constructor "CaptionAnimation" (fun arguments -> Obj.repr (new captionAnimation (Obj.obj arguments)))


