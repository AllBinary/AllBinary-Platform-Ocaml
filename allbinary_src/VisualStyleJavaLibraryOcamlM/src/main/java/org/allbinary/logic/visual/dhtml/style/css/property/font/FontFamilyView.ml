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
(* package org.allbinary.logic.visual.dhtml.style.css.property.font *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.logic.visual.dhtml.style.css.property.CssPropertyView *)
(* import org.w3c.dom.Node *)

class fontFamilyView () =
  object
    inherit CssPropertyView.cssPropertyView ((FontFamilyData.getInstance ())#vALUE)
    
    

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "FontFamilyView" (fun arguments -> Obj.repr (new fontFamilyView (Obj.obj arguments)))


