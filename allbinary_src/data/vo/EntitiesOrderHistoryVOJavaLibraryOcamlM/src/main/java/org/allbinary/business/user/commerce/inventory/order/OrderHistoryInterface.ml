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
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.payment.Payment *)

class virtual orderHistoryInterface =
  object
    method virtual setUserName : string -> unit
    method virtual setDefaultShippingAddress : 'any1 . 'any1 -> unit
    method virtual setBillingAddress : 'any1 . 'any1 -> unit
    method virtual setPaymentInfo : 'any1 . 'any1 -> unit
    method virtual setShipDate : string -> unit
    method virtual setOrderDate : string -> unit
    method virtual setTransDate : string -> unit
    method virtual setCancelDate : string -> unit
    method virtual setStatus : string -> unit
    method virtual setSubTotal : 'any1 . 'any1 -> unit
    method virtual setShippingCost : 'any1 . 'any1 -> unit
    method virtual setTaxes : 'any1 . 'any1 -> unit
    method virtual setTotal : 'any1 . 'any1 -> unit
    method virtual getUserName : unit -> string
    method virtual getShippingAddress : unit -> StreetAddress.streetAddress
    method virtual getBillingAddress : unit -> StreetAddress.streetAddress
    method virtual getPaymentInfo : unit -> Payment.payment
    method virtual getShipDate : unit -> string
    method virtual getOrderDate : unit -> string
    method virtual getTransDate : unit -> string
    method virtual getCancelDate : unit -> string
    method virtual getStatus : unit -> string
    method virtual getSubTotal : unit -> Money.money
    method virtual getShippingCost : unit -> Money.money
    method virtual getTaxes : unit -> Money.money
    method virtual getTotal : unit -> Money.money
    method virtual getPaymentMethod : unit -> string
  end


