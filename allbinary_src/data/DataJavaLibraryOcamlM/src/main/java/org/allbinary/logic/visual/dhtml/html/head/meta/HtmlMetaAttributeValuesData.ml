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

class htmlMetaAttributeValuesData () =
  object
    val mutable aBSTRACT : string = ""
    method aBSTRACT = aBSTRACT
    method set_aBSTRACT value' = aBSTRACT <- value'
    val mutable dESCRIPTION : string = ""
    method dESCRIPTION = dESCRIPTION
    method set_dESCRIPTION value' = dESCRIPTION <- value'
    val mutable kEYWORDS : string = ""
    method kEYWORDS = kEYWORDS
    method set_kEYWORDS value' = kEYWORDS <- value'
    

    initializer
      begin
        aBSTRACT <- "abstract";
        dESCRIPTION <- "description";
        kEYWORDS <- "keywords";
        ();
        ()
      end
  end
let () = java_register_constructor "HtmlMetaAttributeValuesData" (fun arguments -> Obj.repr (new htmlMetaAttributeValuesData (Obj.obj arguments)))

let instance = (new htmlMetaAttributeValuesData ())
let get_instance () = instance
let () = java_register_static "HtmlMetaAttributeValuesData.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlMetaAttributeValuesData.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


