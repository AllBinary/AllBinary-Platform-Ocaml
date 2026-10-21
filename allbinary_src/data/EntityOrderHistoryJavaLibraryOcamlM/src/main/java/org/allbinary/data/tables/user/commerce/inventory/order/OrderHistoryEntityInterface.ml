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
(* package org.allbinary.data.tables.user.commerce.inventory.order *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.Order *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual orderHistoryEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual insert : 'any2 . string * 'any2 -> unit
    method virtual setStatus : string * string -> unit
    method virtual setPaymentMethod : string * string -> unit
    method virtual getStoreOrders : 'any1 . 'any1 -> BasicArrayList.basicArrayList
    method virtual getOrders : string -> BasicArrayList.basicArrayList
    (* Java overload getOrders(String, String, String) is not converted: OCaml has one method per name *)
    method virtual getOrder : string -> OrderHistory.orderHistory
    method virtual update : java_hash_map * java_hash_map -> unit
  end


