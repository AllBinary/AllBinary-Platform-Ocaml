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
(* package org.allbinary.business.user.commerce.inventory.order *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)

class virtual orderInterface =
  object
    method virtual setShippingMethod : string -> unit
    method virtual setPaymentMethod : string -> unit
    method virtual setSpecial : string -> unit
    method virtual setStoreName : string -> unit
    method virtual setUserComments : string -> unit
    method virtual setUserCancelComments : string -> unit
    method virtual setStoreComments : string -> unit
    method virtual setStoreCancelComments : string -> unit
    method virtual getBasket : unit -> BasketInterface.basketInterface
    method virtual getShippingMethod : unit -> string
    method virtual getPaymentMethod : unit -> string
    method virtual getSpecial : unit -> string
    method virtual getId : unit -> string
    method virtual getStoreName : unit -> string
    method virtual getUserComments : unit -> string
    method virtual getUserCancelComments : unit -> string
    method virtual getStoreComments : unit -> string
    method virtual getStoreCancelComments : unit -> string
  end


