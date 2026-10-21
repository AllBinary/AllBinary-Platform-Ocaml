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

class htmlPasswordInput ((before : string), (name : string), (value : string), (after : string)) =
  object (self)
    inherit HtmlLengthInput.htmlLengthInput (before, (HtmlInputData.getInstance ())#pASSWORD, name, value, after)
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setSize ((Obj.obj (java_new "Integer" (Obj.repr (32))))));
        ignore (self#setMaxLength ((Obj.obj (java_new "Integer" (Obj.repr (128))))))
      end
  end
let () = java_register_constructor "HtmlPasswordInput" (fun arguments -> Obj.repr (new htmlPasswordInput (Obj.obj arguments)))


