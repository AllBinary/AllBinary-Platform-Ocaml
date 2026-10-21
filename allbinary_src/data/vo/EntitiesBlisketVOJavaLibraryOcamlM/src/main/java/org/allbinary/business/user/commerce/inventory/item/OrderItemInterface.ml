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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.address.StreetAddress *)

class virtual orderItemInterface =
  object
    inherit ItemInterface.itemInterface
    method virtual setGroup : string -> unit
    method virtual setTax : string -> unit
    method virtual setShippingType : string -> unit
    method virtual setShippingCost : string -> unit
    method virtual setShippingAddress : 'any1 . 'any1 -> unit
    method virtual setSpecial : string -> unit
    method virtual getGroup : unit -> string
    method virtual getTax : unit -> string
    method virtual getShippingType : unit -> string
    method virtual getShippingCost : unit -> string
    method virtual getShippingAddress : unit -> StreetAddress.streetAddress
    method virtual getSpecial : unit -> string
  end


