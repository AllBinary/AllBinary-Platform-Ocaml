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
(* import org.allbinary.canvas.Processor *)

class verticalFormProcessor (scrollCurrentSelectionForm_arg) =
  object
    inherit Processor.processor ()
    val mutable scrollCurrentSelectionForm : Obj.t = Obj.repr 0
    method scrollCurrentSelectionForm : 'r. 'r = Obj.magic scrollCurrentSelectionForm
    method set_scrollCurrentSelectionForm : 'v. 'v -> unit = fun value' -> scrollCurrentSelectionForm <- Obj.repr value'
    
    

    method process () : unit =
        begin
        ignore ((Obj.magic scrollCurrentSelectionForm)#processVerticalForm ());
        ignore ((Obj.magic scrollCurrentSelectionForm)#set_processor ((Processor.getInstance ())))
        end [@@warning "-7"]

    initializer
      begin
        ();
        ();
        scrollCurrentSelectionForm <- Obj.repr (scrollCurrentSelectionForm_arg)
      end
  end [@@warning "-20"]
let () = java_register_constructor "VerticalFormProcessor" (fun arguments -> Obj.repr (new verticalFormProcessor (Obj.obj arguments)))


