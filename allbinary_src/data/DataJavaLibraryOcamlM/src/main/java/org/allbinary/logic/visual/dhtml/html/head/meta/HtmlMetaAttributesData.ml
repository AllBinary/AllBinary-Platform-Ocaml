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
(* package org.allbinary.logic.visual.dhtml.html.head.meta *)

open Allbinary_java [@@warning "-33"]

class htmlMetaAttributesData () =
  object
    val mutable nAME_VALUE : string = ""
    method nAME_VALUE = nAME_VALUE
    method set_nAME_VALUE value' = nAME_VALUE <- value'
    val mutable hTTP_EQUIV_VALUE : string = ""
    method hTTP_EQUIV_VALUE = hTTP_EQUIV_VALUE
    method set_hTTP_EQUIV_VALUE value' = hTTP_EQUIV_VALUE <- value'
    

    initializer
      begin
        nAME_VALUE <- "name";
        hTTP_EQUIV_VALUE <- "http-equiv";
        ();
        ()
      end
  end
let () = java_register_constructor "HtmlMetaAttributesData" (fun arguments -> Obj.repr (new htmlMetaAttributesData (Obj.obj arguments)))

let instance = (new htmlMetaAttributesData ())
let get_instance () = instance
let () = java_register_static "HtmlMetaAttributesData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlMetaAttributesData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


