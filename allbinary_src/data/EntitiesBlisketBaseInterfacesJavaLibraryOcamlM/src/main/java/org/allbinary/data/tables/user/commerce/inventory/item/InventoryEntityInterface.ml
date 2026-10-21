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
(* package org.allbinary.data.tables.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual inventoryEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual getItem : string -> ItemInterface.itemInterface
    method virtual getItems : 'any1 . 'any1 -> BasicArrayList.basicArrayList
    method virtual getWeight : string -> string
    method virtual deleteWhere : string * string -> unit
    method virtual insert : 'any1 . 'any1 -> unit
    method virtual update : java_hash_map -> unit
  end


