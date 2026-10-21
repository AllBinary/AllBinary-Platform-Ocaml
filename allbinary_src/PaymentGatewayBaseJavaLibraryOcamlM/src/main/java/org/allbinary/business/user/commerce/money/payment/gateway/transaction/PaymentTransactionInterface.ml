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
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)

class virtual paymentTransactionInterface =
  object
    inherit TableMappingInterface.tableMappingInterface
    inherit DomNodeInterface.domNodeInterface
    method virtual getOrderHistory : unit -> OrderHistory.orderHistory
  end


