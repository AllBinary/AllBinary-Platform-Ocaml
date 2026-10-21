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
(* package org.allbinary.business.user.commerce.inventory.item.special *)

open Allbinary_java [@@warning "-33"]

let sTART_TIME : string = "SPECIALITEM_START_TIME"
let get_sTART_TIME () = sTART_TIME
let () = java_register_static "SpecialItemData.get_sTART_TIME" (fun _ -> Obj.repr (get_sTART_TIME ()))
let eND_TIME : string = "SPECIALITEM_END_TIME"
let get_eND_TIME () = eND_TIME
let () = java_register_static "SpecialItemData.get_eND_TIME" (fun _ -> Obj.repr (get_eND_TIME ()))
class specialItemData () =
  object

    initializer
      begin
        ()
      end
  end
let () = java_register_constructor "SpecialItemData" (fun arguments -> Obj.repr (new specialItemData (Obj.obj arguments)))


