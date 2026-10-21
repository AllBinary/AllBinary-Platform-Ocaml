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
(* package org.allbinary.graphics.form *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.animation.Animation *)
(* import org.allbinary.animation.FeaturedAnimationInterfaceFactoryInterfaceFactory *)
(* import org.allbinary.logic.system.security.licensing.LockedResources *)
(* import org.allbinary.logic.system.security.licensing.LockedUtil *)

class lockablePaintable ((lockedIndex_arg : int)) =
  object (self)
    inherit ItemPaintable.itemPaintable ()
    val mutable animation : Obj.t = Obj.repr 0
    method animation : 'r. 'r = Obj.magic animation
    method set_animation : 'v. 'v -> unit = fun value' -> animation <- Obj.repr value'
    val mutable lockedIndex : int = 0
    method lockedIndex = lockedIndex
    method set_lockedIndex value' = lockedIndex <- value'
    
    

    method paint : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (currentIndex : int), (x : int), (y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        if (((Obj.magic (java_call_static "LockedUtil.getInstance" (Obj.repr ())))#isLocked ()) && (currentIndex >= (self#getLockedIndex ()))) then begin
            ignore ((self#getAnimation ())#paintXY ((Obj.magic graphics), x, y))
        end
        end [@@warning "-7-20"]
    

    method getLockedIndex () : int =
        begin
        lockedIndex
        end [@@warning "-7"]
    

    method getAnimation : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic animation)))
        end [@@warning "-7"]

    initializer
      begin
        animation <- (Obj.repr (((FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance ())#get ((LockedResources.getInstance ())#lOCKED_DEMO_GAME_FEATURE_RESOURCE))#getInstance (0)));
        ();
        ();
        lockedIndex <- lockedIndex_arg
      end
  end [@@warning "-20"]
let () = java_register_constructor "LockablePaintable" (fun arguments -> Obj.repr (new lockablePaintable (Obj.obj arguments)))


