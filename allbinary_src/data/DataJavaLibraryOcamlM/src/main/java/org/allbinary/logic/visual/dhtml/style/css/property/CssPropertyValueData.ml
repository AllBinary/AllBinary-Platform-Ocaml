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
(* package org.allbinary.logic.visual.dhtml.style.css.property *)

open Allbinary_java [@@warning "-33"]

class cssPropertyValueData () =
  object
    val mutable nAME : string = ""
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    

    initializer
      begin
        nAME <- "CSS_PROPERTY_VALUE";
        ();
        ()
      end
  end
let () = java_register_constructor "CssPropertyValueData" (fun arguments -> Obj.repr (new cssPropertyValueData (Obj.obj arguments)))

let instance = (new cssPropertyValueData ())
let get_instance () = instance
let () = java_register_static "CssPropertyValueData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "CssPropertyValueData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


