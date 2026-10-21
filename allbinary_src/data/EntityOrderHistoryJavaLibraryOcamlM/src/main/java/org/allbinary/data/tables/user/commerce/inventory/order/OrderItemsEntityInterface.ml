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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketReview *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual orderItemsEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual setStatus : string * string * string -> unit
    method virtual isEverythingShipped : string -> bool
    method virtual getBasketReview : string -> BasketReview.basketReview
    method virtual insert : 'any2 . string * 'any2 -> unit
    (* Java overload insert(BasicArrayList) is not converted: OCaml has one method per name *)
  end


