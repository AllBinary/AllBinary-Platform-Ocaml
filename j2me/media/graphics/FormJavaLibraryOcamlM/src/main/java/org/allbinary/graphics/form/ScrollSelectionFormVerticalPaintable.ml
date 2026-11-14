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
(* import org.allbinary.graphics.form.item.ABCustomItem *)

class scrollSelectionFormVerticalPaintable (scrollSelectionForm_arg) =
  object
    inherit ItemIndexPaintable.itemIndexPaintable ()
    val mutable scrollSelectionForm : Obj.t = Obj.repr 0
    method scrollSelectionForm : 'r. 'r = Obj.magic scrollSelectionForm
    method set_scrollSelectionForm : 'v. 'v -> unit = fun value' -> scrollSelectionForm <- Obj.repr value'
    
    

    method paint : 'any1 'any3. 'any1 * int * 'any3 * int * int -> int = fun (graphics, (index : int), item, (dx : int), (dy : int)) ->
        let graphics = Obj.repr graphics in
        let item = Obj.repr item in
        begin
        ((Obj.magic scrollSelectionForm)#paintItemVertical ((Obj.magic graphics), index, (Obj.magic item), dx, dy))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        scrollSelectionForm <- Obj.repr (scrollSelectionForm_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "ScrollSelectionFormVerticalPaintable" (fun arguments -> Obj.repr (new scrollSelectionFormVerticalPaintable (Obj.obj arguments)))


