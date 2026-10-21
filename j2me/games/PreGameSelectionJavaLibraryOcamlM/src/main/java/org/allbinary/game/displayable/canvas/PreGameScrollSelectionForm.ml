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
(* import org.allbinary.graphics.form.item.ABCustomItem *)
(* import org.allbinary.graphics.Rectangle *)
(* import org.allbinary.graphics.color.BasicColor *)
(* import org.allbinary.graphics.form.FormTypeFactory *)
(* import org.allbinary.graphics.form.ItemPaintableFactory *)
(* import org.allbinary.graphics.form.ScrollCurrentSelectionForm *)

class preGameScrollSelectionForm ((title : string), items, (formPaintableFactory : ItemPaintableFactory.itemPaintableFactory), (backgroundBasicColor : BasicColor.basicColor), (foregroundBasicColor : BasicColor.basicColor)) =
  object
    inherit ScrollCurrentSelectionForm.scrollCurrentSelectionForm (title, items, formPaintableFactory, 0, 3, false, backgroundBasicColor, foregroundBasicColor) as super
    
    

    method init : 'any1. 'any1 -> unit = fun (rectangle) ->
        let rectangle = Obj.repr rectangle in
        begin
        ignore (super#init ((Obj.magic rectangle), (FormTypeFactory.getInstance ())#tEMP_HORIZONTAL_FORM))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "PreGameScrollSelectionForm" (fun arguments -> Obj.repr (new preGameScrollSelectionForm (Obj.obj arguments)))


