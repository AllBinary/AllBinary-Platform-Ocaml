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
(* package org.allbinary.business.user.commerce.inventory *)

open Allbinary_java [@@warning "-33"]

let iNVENTORY : string = "INVENTORY"
let get_iNVENTORY () = iNVENTORY
let () = java_register_static "InventoryData.get_iNVENTORY" (fun _ -> Obj.repr (get_iNVENTORY ()))
class inventoryData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "InventoryData" (fun arguments -> Obj.repr (new inventoryData (Obj.obj arguments)))


