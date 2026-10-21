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
(* package org.allbinary.logic.visual.dhtml.html.input *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.java.bool.BooleanFactory *)

class htmlRadioInput ((before : string), (name : string), (value : string), (after : string)) =
  object
    inherit HtmlValueInput.htmlValueInput (before, (HtmlInputData.getInstance ())#rADIO, name, value, after) as super
    val mutable cHECKED : string = ""
    method cHECKED = cHECKED
    method set_cHECKED value' = cHECKED <- value'
    
    

    method setSelected () : unit =
        begin
        ignore (super#addAttribute (cHECKED, (BooleanFactory.getInstance ())#tRUE_STRING))
        end [@@warning "-7"]

    initializer
      begin
        cHECKED <- "checked";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "HtmlRadioInput" (fun arguments -> Obj.repr (new htmlRadioInput (Obj.obj arguments)))


