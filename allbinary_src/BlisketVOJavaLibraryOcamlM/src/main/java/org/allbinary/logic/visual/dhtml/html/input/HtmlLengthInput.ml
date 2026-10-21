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

class htmlLengthInput ((before : string), (type_ : string), (name : string), (value : string), (after : string)) =
  object (self)
    inherit HtmlValueInput.htmlValueInput (before, type_, name, value, after)
    val mutable mAXLENGTH : string = ""
    method mAXLENGTH = mAXLENGTH
    method set_mAXLENGTH value' = mAXLENGTH <- value'
    val mutable sIZE : string = ""
    method sIZE = sIZE
    method set_sIZE value' = sIZE <- value'
    val mutable length : string = ""
    method length = length
    method set_length value' = length <- value'
    val mutable size : string = ""
    method size = size
    method set_size value' = size <- value'
    
    

    method setMaxLength ((length_arg : int)) : unit =
        begin
        (Array.length self) <- (Obj.obj (java_new "String" (Obj.repr (length_arg))));
        ignore (self#addAttribute (mAXLENGTH, (Array.length self)))
        end [@@warning "-7"]
    

    method setSize ((size_arg : int)) : unit =
        begin
        size <- (Obj.obj (java_new "String" (Obj.repr (size_arg))));
        ignore (self#addAttribute (mAXLENGTH, size))
        end [@@warning "-7"]

    initializer
      begin
        mAXLENGTH <- "MAXLENGTH";
        sIZE <- "SIZE";
        length <- "";
        size <- "";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "HtmlLengthInput" (fun arguments -> Obj.repr (new htmlLengthInput (Obj.obj arguments)))


