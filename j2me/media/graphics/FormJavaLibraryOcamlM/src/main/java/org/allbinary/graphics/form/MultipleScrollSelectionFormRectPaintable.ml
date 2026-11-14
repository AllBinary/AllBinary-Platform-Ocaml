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
(* import org.allbinary.graphics.paint.Paintable *)

class multipleScrollSelectionFormRectPaintable (multipleScrollSelectionForm_arg) =
  object
    inherit Paintable.paintable ()
    val mutable multipleScrollSelectionForm : Obj.t = Obj.repr 0
    method multipleScrollSelectionForm : 'r. 'r = Obj.magic multipleScrollSelectionForm
    method set_multipleScrollSelectionForm : 'v. 'v -> unit = fun value' -> multipleScrollSelectionForm <- Obj.repr value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore ((Obj.magic multipleScrollSelectionForm)#fillRect ((Obj.magic graphics)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        multipleScrollSelectionForm <- Obj.repr (multipleScrollSelectionForm_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "MultipleScrollSelectionFormRectPaintable" (fun arguments -> Obj.repr (new multipleScrollSelectionFormRectPaintable (Obj.obj arguments)))


