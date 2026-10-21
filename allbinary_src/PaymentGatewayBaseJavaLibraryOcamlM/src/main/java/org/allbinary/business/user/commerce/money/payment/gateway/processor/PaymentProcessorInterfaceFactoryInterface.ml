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
(* package org.allbinary.business.user.commerce.money.payment.gateway.processor *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)

class virtual paymentProcessorInterfaceFactoryInterface =
  object
    method virtual getInstance : 'any1 'any2 . 'any1 * 'any2 -> PaymentProcessorInterface.paymentProcessorInterface
  end


