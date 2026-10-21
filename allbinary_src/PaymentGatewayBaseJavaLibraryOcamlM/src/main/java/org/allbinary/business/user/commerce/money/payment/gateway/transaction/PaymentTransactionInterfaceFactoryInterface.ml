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
(* package org.allbinary.business.user.commerce.money.payment.gateway.transaction *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.business.user.commerce.money.payment.types.TenderType *)

class virtual paymentTransactionInterfaceFactoryInterface =
  object
    method virtual getInstance : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
    method virtual getSaleTransaction : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
    method virtual getCreditTransaction : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
    method virtual getAuthorizationTransaction : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
    method virtual getCaptureDelayedTransaction : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
    method virtual getVoidTransaction : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
    method virtual getInquiryTransaction : 'any1 . 'any1 -> PaymentTransactionInterface.paymentTransactionInterface
  end


