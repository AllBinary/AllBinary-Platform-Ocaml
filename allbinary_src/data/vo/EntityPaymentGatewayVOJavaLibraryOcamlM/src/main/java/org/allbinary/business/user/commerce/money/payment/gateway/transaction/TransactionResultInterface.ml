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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)

class virtual transactionResultInterface =
  object
    method virtual toString : unit -> string
    method virtual getValues : unit -> BasicArrayList.basicArrayList
    method virtual getResult : unit -> string
    method virtual getPnRef : unit -> string
    method virtual getRespMsg : unit -> string
    method virtual getAvsAddr : unit -> string
    method virtual getAvsZip : unit -> string
    method virtual getOrigResult : unit -> string
    method virtual getStatus : unit -> string
    method virtual getFraudCode : unit -> string
    method virtual getFraudMsg : unit -> string
    method virtual getErrCode : unit -> string
    method virtual getScore : unit -> string
    method virtual getReason1 : unit -> string
    method virtual getReason2 : unit -> string
    method virtual getReason3 : unit -> string
    method virtual getException1 : unit -> string
    method virtual getException2 : unit -> string
    method virtual getException3 : unit -> string
    method virtual getException4 : unit -> string
    method virtual getException5 : unit -> string
    method virtual getException6 : unit -> string
    method virtual getException7 : unit -> string
  end


