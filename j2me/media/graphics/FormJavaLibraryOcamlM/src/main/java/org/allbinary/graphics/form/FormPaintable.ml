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

class formPaintable ((form_arg : PaintableForm.paintableForm)) =
  object
    inherit Paintable.paintable ()
    val mutable form : PaintableForm.paintableForm = (Obj.magic 0)
    method form = form
    method set_form value' = form <- value'
    
    

    method paint : 'any1. 'any1 -> unit = fun (graphics) ->
        let graphics = Obj.repr graphics in
        begin
        ignore (form#paint ((Obj.magic graphics)))
        end [@@warning "-7-20"]
    

    method getForm () : PaintableForm.paintableForm =
        begin
        (form :> PaintableForm.paintableForm)
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        form <- form_arg
      end
  end
let () = java_register_constructor "FormPaintable" (fun arguments -> Obj.repr (new formPaintable (Obj.obj arguments)))


