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
(* package org.allbinary.game.displayable.canvas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.microedition.lcdui.Graphics *)
(* import org.allbinary.image.GameFeatureImageCacheFactory *)
(* import org.allbinary.logic.system.security.licensing.LockedResources *)
(* import org.allbinary.logic.system.security.licensing.LockedUtil *)
(* import org.allbinary.graphics.form.LockablePaintable *)
(* import org.allbinary.graphics.form.ScrollCurrentSelectionForm *)

class preGameLockablePaintable ((paintableForm_arg : ScrollCurrentSelectionForm.scrollCurrentSelectionForm), (lockedIndex : int)) =
  object (self)
    inherit LockablePaintable.lockablePaintable (lockedIndex)
    val mutable halfWidth : int = 0
    method halfWidth = halfWidth
    method set_halfWidth value' = halfWidth <- value'
    val mutable paintableForm : ScrollCurrentSelectionForm.scrollCurrentSelectionForm = (Obj.magic 0)
    method paintableForm = paintableForm
    method set_paintableForm value' = paintableForm <- value'
    
    

    method paint : 'any1. 'any1 * int * int * int -> unit = fun (graphics, (_currentIndex : int), (_x : int), (_y : int)) ->
        let graphics = Obj.repr graphics in
        begin
        if (((Obj.magic (java_call_static "LockedUtil.getInstance" (Obj.repr ())))#isLocked ()) && (((self#getPaintableForm ())#getSelectedIndex ()) >= (self#getLockedIndex ()))) then begin
            ignore ((self#getAnimation ())#paintXY ((Obj.magic graphics), (((self#getPaintableForm ())#getDx ()) - halfWidth), (((self#getPaintableForm ())#getDy ()) + 34)))
        end
        end [@@warning "-7-20"]
    

    method getPaintableForm () : ScrollCurrentSelectionForm.scrollCurrentSelectionForm =
        begin
        (paintableForm :> ScrollCurrentSelectionForm.scrollCurrentSelectionForm)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        paintableForm <- paintableForm_arg;
        halfWidth <- ((((GameFeatureImageCacheFactory.getInstance ())#getWithKey ((LockedResources.getInstance ())#lOCKED_DEMO_GAME_FEATURE_RESOURCE))#getWidth ()) / 2)
      end
  end
let () = java_register_constructor "PreGameLockablePaintable" (fun arguments -> Obj.repr (new preGameLockablePaintable (Obj.obj arguments)))


