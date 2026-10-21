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
(* package org.allbinary.business.user.commerce.inventory.item.option *)

open Allbinary_java [@@warning "-33"]

let xML_FILE_STATUS : string = "XMLOPTIONITEM_XML_FILE_STATUS"
let get_xML_FILE_STATUS () = xML_FILE_STATUS
let () = java_register_static "XmlOptionItemData.get_xML_FILE_STATUS" (fun _ -> Obj.repr (get_xML_FILE_STATUS ()))
let oPTION_XML_FILE : string = "XMLOPTIONITEM_OPTION_XML_FILE"
let get_oPTION_XML_FILE () = oPTION_XML_FILE
let () = java_register_static "XmlOptionItemData.get_oPTION_XML_FILE" (fun _ -> Obj.repr (get_oPTION_XML_FILE ()))
class xmlOptionItemData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "XmlOptionItemData" (fun arguments -> Obj.repr (new xmlOptionItemData (Obj.obj arguments)))


