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

class lockableFormPaintableFactory ((lockedIndex_arg : int)) =
  object
    inherit ItemPaintableFactory.itemPaintableFactory ()
    val mutable lockedIndex : int = 0
    method lockedIndex = lockedIndex
    method set_lockedIndex value' = lockedIndex <- value'
    
    

    method getInstanceItemPaintable : 'any1. 'any1 -> ItemPaintable.itemPaintable = fun (_paintableForm) ->
        begin
        ((new LockablePaintable.lockablePaintable (lockedIndex)) :> ItemPaintable.itemPaintable)
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        lockedIndex <- lockedIndex_arg
      end
  end
let () = java_register_constructor "LockableFormPaintableFactory" (fun arguments -> Obj.repr (new lockableFormPaintableFactory (Obj.obj arguments)))


