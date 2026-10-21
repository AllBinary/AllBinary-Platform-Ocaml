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
(* package org.allbinary.business.context.modules.storefront.statistics.orders.history *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface *)
(* import org.allbinary.logic.StdUtil *)

class storeFrontOrdersHistoryStatistics ((storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object (self)
    val mutable numberOfOrdersLong : int = (Obj.magic 0)
    method numberOfOrdersLong = numberOfOrdersLong
    method set_numberOfOrdersLong value' = numberOfOrdersLong <- value'
    val mutable subTotalMoney : Money.money = (Obj.magic 0)
    method subTotalMoney = subTotalMoney
    method set_subTotalMoney value' = subTotalMoney <- value'
    val mutable shippingCostMoney : Money.money = (Obj.magic 0)
    method shippingCostMoney = shippingCostMoney
    method set_shippingCostMoney value' = shippingCostMoney <- value'
    val mutable taxesMoney : Money.money = (Obj.magic 0)
    method taxesMoney = taxesMoney
    method set_taxesMoney value' = taxesMoney <- value'
    val mutable totalMoney : Money.money = (Obj.magic 0)
    method totalMoney = totalMoney
    method set_totalMoney value' = totalMoney <- value'
    
    

    method getNumberOfOrders () : int =
        begin
        numberOfOrdersLong
        end
    

    method getSubTotal () : Money.money =
        begin
        (subTotalMoney :> Money.money)
        end
    

    method getShippingCost () : Money.money =
        begin
        (shippingCostMoney :> Money.money)
        end
    

    method getTaxes () : Money.money =
        begin
        (taxesMoney :> Money.money)
        end
    

    method getTotal () : Money.money =
        begin
        (totalMoney :> Money.money)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        let storeFrontOrdersHistoryStatisticsData : StoreFrontOrdersHistoryStatisticsData.storeFrontOrdersHistoryStatisticsData ref = ref (((StoreFrontOrdersHistoryStatisticsData.getInstance ()) :> StoreFrontOrdersHistoryStatisticsData.storeFrontOrdersHistoryStatisticsData)) in ();
        ignore (!hashMap#put (!storeFrontOrdersHistoryStatisticsData#nUMBEROFORDERS, (java_string_of (Obj.repr (self#getNumberOfOrders ())))));
        ignore (!hashMap#put (!storeFrontOrdersHistoryStatisticsData#sUBTOTAL, (java_string_of (Obj.repr (self#getSubTotal ())))));
        ignore (!hashMap#put (!storeFrontOrdersHistoryStatisticsData#sHIPPINGCOST, (java_string_of (Obj.repr (self#getShippingCost ())))));
        ignore (!hashMap#put (!storeFrontOrdersHistoryStatisticsData#tAXES, (java_string_of (Obj.repr (self#getTaxes ())))));
        ignore (!hashMap#put (!storeFrontOrdersHistoryStatisticsData#tOTAL, (java_string_of (Obj.repr (self#getTotal ())))));
        (!hashMap :> java_hash_map)
        end
    

    method toVector () : BasicArrayList.basicArrayList =
        begin
        ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end
    

    method getKey () : Obj.t =
        begin
        (Obj.repr ((Obj.magic 0)))
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        subTotalMoney <- (new Money.money ());
        shippingCostMoney <- (new Money.money ());
        taxesMoney <- (new Money.money ());
        totalMoney <- (new Money.money ());
        let orderHistoryEntityInterface : OrderHistoryEntityInterface.orderHistoryEntityInterface ref = ref (((OrderHistoryEntityFactory.getInstance ()) :> OrderHistoryEntityInterface.orderHistoryEntityInterface)) in ();
        let orderHistoryInterfaceVector : BasicArrayList.basicArrayList ref = ref (((!orderHistoryEntityInterface#getStoreOrders (storeFrontInterface)) :> BasicArrayList.basicArrayList)) in ();
        let numberOfOrders : int ref = ref (0) in ();
        let orderHistoryInterface : OrderHistoryInterface.orderHistoryInterface ref = ref (((Obj.magic 0) :> OrderHistoryInterface.orderHistoryInterface)) in ();
        let size : int ref = ref ((!orderHistoryInterfaceVector#size ())) in ();
        for index = 0 to !size - 1 do
            orderHistoryInterface := (Obj.magic (!orderHistoryInterfaceVector#get (index)));
            numberOfOrders := (!numberOfOrders + 1);
            ignore (subTotalMoney#add ((!orderHistoryInterface#getSubTotal ())));
            ignore (shippingCostMoney#add ((!orderHistoryInterface#getShippingCost ())));
            ignore (taxesMoney#add ((!orderHistoryInterface#getTaxes ())));
            ignore (totalMoney#add ((!orderHistoryInterface#getTotal ())))
        done;
        numberOfOrdersLong <- (Obj.obj (java_new "Long" (Obj.repr (!numberOfOrders))))
      end
  end
let () = java_register_constructor "StoreFrontOrdersHistoryStatistics" (fun arguments -> Obj.repr (new storeFrontOrdersHistoryStatistics (Obj.obj arguments)))


