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
(* package org.allbinary.business.user.commerce.inventory.item.custom *)

open Allbinary_java [@@warning "-33"]

let pACKAGE : string = "CUSTOMITEM_PACKAGE"
let get_pACKAGE () = pACKAGE
let () = java_register_static "CustomItemData.get_pACKAGE" (fun _ -> Obj.repr (get_pACKAGE ()))
class customItemData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "CustomItemData" (fun arguments -> Obj.repr (new customItemData (Obj.obj arguments)))


