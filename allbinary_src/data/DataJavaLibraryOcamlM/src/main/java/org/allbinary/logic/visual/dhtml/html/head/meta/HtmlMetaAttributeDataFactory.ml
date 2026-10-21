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
[@@@warning "-20"]

class htmlMetaAttributeDataFactory () =
  object
    val mutable nAME : HtmlMetaAttributeData.htmlMetaAttributeData = (Obj.magic 0)
    method nAME = nAME
    method set_nAME value' = nAME <- value'
    val mutable hTTP_EQUIV : HtmlMetaAttributeData.htmlMetaAttributeData = (Obj.magic 0)
    method hTTP_EQUIV = hTTP_EQUIV
    method set_hTTP_EQUIV value' = hTTP_EQUIV <- value'
    val mutable cONTENT : HtmlMetaAttributeData.htmlMetaAttributeData = (Obj.magic 0)
    method cONTENT = cONTENT
    method set_cONTENT value' = cONTENT <- value'
    

    initializer
      begin
        nAME <- ((new HtmlMetaAttributeData.htmlMetaAttributeData (0, "HTMLMETA_ATTRIBUTE_NAME")) :> HtmlMetaAttributeData.htmlMetaAttributeData);
        hTTP_EQUIV <- ((new HtmlMetaAttributeData.htmlMetaAttributeData (1, "HTMLMETA_ATTRIBUTE_HTTPEQUIV")) :> HtmlMetaAttributeData.htmlMetaAttributeData);
        cONTENT <- ((new HtmlMetaAttributeData.htmlMetaAttributeData (2, "HTMLMETA_ATTRIBUTE_CONTENT")) :> HtmlMetaAttributeData.htmlMetaAttributeData);
        ();
        ()
      end
  end
let () = java_register_constructor "HtmlMetaAttributeDataFactory" (fun arguments -> Obj.repr (new htmlMetaAttributeDataFactory (Obj.obj arguments)))

let instance = (new htmlMetaAttributeDataFactory ())
let get_instance () = instance
let () = java_register_static "HtmlMetaAttributeDataFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "HtmlMetaAttributeDataFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


