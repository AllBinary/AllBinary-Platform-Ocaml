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
(* import org.allbinary.graphics.form.item.ABCustomItem *)

class tempHorizontalItemIndexDx (scrollCurrentSelectionForm_arg) =
  object
    inherit ItemIndexDx.itemIndexDx ()
    val mutable scrollCurrentSelectionForm : Obj.t = Obj.repr 0
    method scrollCurrentSelectionForm : 'r. 'r = Obj.magic scrollCurrentSelectionForm
    method set_scrollCurrentSelectionForm : 'v. 'v -> unit = fun value' -> scrollCurrentSelectionForm <- Obj.repr value'
    
    

    method getDx : 'any2. int * 'any2 * int * int -> int = fun ((index : int), item, (dx : int), (dy : int)) ->
        let item = Obj.repr item in
        begin
        ((Obj.magic scrollCurrentSelectionForm)#getXTempHorizontalForm (index, (Obj.magic item), dx, dy))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        scrollCurrentSelectionForm <- Obj.repr (scrollCurrentSelectionForm_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "TempHorizontalItemIndexDx" (fun arguments -> Obj.repr (new tempHorizontalItemIndexDx (Obj.obj arguments)))


