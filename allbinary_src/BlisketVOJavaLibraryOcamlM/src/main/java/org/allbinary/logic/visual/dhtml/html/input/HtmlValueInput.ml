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
(* import org.allbinary.logic.string.StringUtil *)

class htmlValueInput ((before : string), (type_ : string), (name : string), (value_arg : string), (after : string)) =
  object (self)
    inherit HtmlInput.htmlInput (before, type_, name, after)
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    val mutable vALUE : string = ""
    method vALUE = vALUE
    method set_vALUE value' = vALUE <- value'
    

    initializer
      begin
        ();
        vALUE <- "VALUE";
        ();
        (* super(...) is the inherit clause *) ();
        let stringUtil : StringUtil.stringUtil ref = ref (((StringUtil.getInstance ()) :> StringUtil.stringUtil)) in ();
        value <- !stringUtil#eMPTY_STRING;
        ignore (self#addAttribute (vALUE, value_arg))
      end
  end
let () = java_register_constructor "HtmlValueInput" (fun arguments -> Obj.repr (new htmlValueInput (Obj.obj arguments)))


