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
(* package org.allbinary.data.tables.user.commerce.money.payment.transaction *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface *)
(* import org.allbinary.data.tables.BasicDataTableInterface *)

class virtual transactionResultEntityInterface =
  object
    inherit BasicDataTableInterface.basicDataTableInterface
    method virtual getTransactionResultInterface : string -> TransactionResultInterface.transactionResultInterface
    method virtual remove : string * string -> unit
    method virtual add : 'any3 . string * string * 'any3 -> unit
  end


