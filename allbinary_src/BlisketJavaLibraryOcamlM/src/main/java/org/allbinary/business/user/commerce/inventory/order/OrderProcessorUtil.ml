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
[@@@warning "-20"]
(* import org.allbinary.data.generator.OrderIdGenerator *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntity *)

class orderProcessorUtil () =
  object
    val mutable oRDER_PROCESSED : string = ""
    method oRDER_PROCESSED = oRDER_PROCESSED
    method set_oRDER_PROCESSED value' = oRDER_PROCESSED <- value'
    

    method process : 'any2. string * 'any2 -> string = fun ((userName : string), order) ->
        let order = Obj.repr order in
        begin
        let orderItems : OrderItemsEntity.orderItemsEntity ref = ref (((new OrderItemsEntity.orderItemsEntity ()) :> OrderItemsEntity.orderItemsEntity)) in ();
        let orderHistory : OrderHistoryEntity.orderHistoryEntity ref = ref (((new OrderHistoryEntity.orderHistoryEntity ()) :> OrderHistoryEntity.orderHistoryEntity)) in ();
        ignore ((Obj.magic order)#setId (((new OrderIdGenerator.orderIdGenerator ())#getNext ())));
        ignore (!orderItems#insert (userName, (Obj.magic order)));
        ignore (!orderHistory#insert (userName, (Obj.magic order)));
        oRDER_PROCESSED
        end [@@warning "-20"]

    initializer
      begin
        oRDER_PROCESSED <- "Order Processed";
        ()
      end
  end
let () = java_register_constructor "OrderProcessorUtil" (fun arguments -> Obj.repr (new orderProcessorUtil (Obj.obj arguments)))

let instance = (new orderProcessorUtil ())
let get_instance () = instance
let () = java_register_static "OrderProcessorUtil.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "OrderProcessorUtil.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


