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
(* package org.allbinary.data.tables.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual paymentGatewayEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual getPaymentGatewayInterface : 'any2 . string * 'any2 -> PaymentGatewayInterface.paymentGatewayInterface
    method virtual findPaymentTypeVectorByStore : string -> BasicArrayList.basicArrayList
    method virtual remove : 'any2 . string * 'any2 -> unit
    method virtual add : 'any1 . 'any1 -> unit
    method virtual update : 'any1 . 'any1 -> unit
  end


