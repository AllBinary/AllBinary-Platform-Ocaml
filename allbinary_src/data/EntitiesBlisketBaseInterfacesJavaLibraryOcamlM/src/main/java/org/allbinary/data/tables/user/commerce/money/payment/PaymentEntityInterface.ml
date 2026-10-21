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
(* package org.allbinary.data.tables.user.commerce.money.payment *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentInterface *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual paymentEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual getLastId : string -> string
    method virtual setDefault : string * int -> unit
    method virtual getDefault : string -> PaymentInterface.paymentInterface
    method virtual get : string -> BasicArrayList.basicArrayList
    method virtual add : 'any2 . string * 'any2 -> unit
    method virtual remove : string * int -> unit
    method virtual insert : 'any1 . 'any1 -> unit
  end


