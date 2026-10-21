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

class captionAnimation (animationInterface_arg, overlayAnimationInterface_arg, (captionDx_arg : int), (captionDy_arg : int), (dx_arg : int), (dy_arg : int)) =
  object
    inherit Animation.animation ()
    val mutable animationInterface : Obj.t = Obj.repr 0
    method animationInterface : 'r. 'r = Obj.magic animationInterface
    method set_animationInterface : 'v. 'v -> unit = fun value' -> animationInterface <- Obj.repr value'
    val mutable overlayAnimationInterface : Obj.t = Obj.repr 0
    method overlayAnimationInterface : 'r. 'r = Obj.magic overlayAnimationInterface
    method set_overlayAnimationInterface : 'v. 'v -> unit = fun value' -> overlayAnimationInterface <- Obj.repr value'
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
        ignore ((Obj.magic animationInterface)#paintXY ((Obj.magic graphics), (x + captionDx), (y + captionDy)));
        ignore ((Obj.magic overlayAnimationInterface)#paintXY ((Obj.magic graphics), ((x + captionDx) + dx), ((y + captionDy) + dy)))
        end [@@warning "-7-20"]
    

    method paintThreedXYZ : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (x : int), (y : int), (z : int)) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic animationInterface)#paintThreedXYZ ((Obj.magic graphics), (x + captionDx), (y + captionDy), z));
        ignore ((Obj.magic overlayAnimationInterface)#paintThreedXYZ ((Obj.magic graphics), ((x + captionDx) + dx), ((y + captionDy) + dy), z))
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
        animationInterface <- Obj.repr (animationInterface_arg);
        overlayAnimationInterface <- Obj.repr (overlayAnimationInterface_arg);
        captionDx <- captionDx_arg;
        captionDy <- captionDy_arg;
        dx <- dx_arg;
        dy <- dy_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "CaptionAnimation" (fun arguments -> Obj.repr (new captionAnimation (Obj.obj arguments)))


