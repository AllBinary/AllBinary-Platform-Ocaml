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
(* import org.allbinary.graphics.form.ItemPaintable *)
(* import org.allbinary.graphics.form.ItemPaintableFactory *)
(* import org.allbinary.graphics.form.PaintableForm *)
(* import org.allbinary.graphics.form.ScrollCurrentSelectionForm *)

class preGameLockableFormPaintableFactory ((lockedIndex_arg : int)) =
  object
    inherit ItemPaintableFactory.itemPaintableFactory ()
    val mutable lockedIndex : int = 0
    method lockedIndex = lockedIndex
    method set_lockedIndex value' = lockedIndex <- value'
    
    

    method getInstanceItemPaintable : 'any1. 'any1 -> ItemPaintable.itemPaintable = fun (paintableForm) ->
        let paintableForm = Obj.repr paintableForm in
        begin
        ((new PreGameLockablePaintable.preGameLockablePaintable ((Obj.magic (Obj.magic paintableForm)), lockedIndex)) :> ItemPaintable.itemPaintable)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        lockedIndex <- lockedIndex_arg
      end
  end
let () = java_register_constructor "PreGameLockableFormPaintableFactory" (fun arguments -> Obj.repr (new preGameLockableFormPaintableFactory (Obj.obj arguments)))


