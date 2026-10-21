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
(* package org.allbinary.business.context.modules.storefront.statistics.inventory *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityInterface *)
(* import org.allbinary.logic.StdUtil *)

class storeFrontInventoryStatistics ((storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object (self)
    val mutable totalNumberOfItems : int = 0
    method totalNumberOfItems = totalNumberOfItems
    method set_totalNumberOfItems value' = totalNumberOfItems <- value'
    val mutable totalInventorySaleValueMoney : Money.money = (Obj.magic 0)
    method totalInventorySaleValueMoney = totalInventorySaleValueMoney
    method set_totalInventorySaleValueMoney value' = totalInventorySaleValueMoney <- value'
    
    

    method getNumber () : int =
        begin
        (Obj.obj (java_new "Long" (Obj.repr (totalNumberOfItems))))
        end
    

    method getTotal () : Money.money =
        begin
        (totalInventorySaleValueMoney :> Money.money)
        end
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((StoreFrontInventoryStatisticsData.getInstance ())#nUMBEROFITEMS, (java_string_of (Obj.repr (self#getNumber ())))));
        ignore (!hashMap#put ((StoreFrontInventoryStatisticsData.getInstance ())#tOTALVALUE, (java_string_of (Obj.repr (self#getTotal ())))));
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
        totalNumberOfItems <- 0;
        ();
        ();
        totalInventorySaleValueMoney <- (new Money.money ());
        let inventoryEntityInterface : InventoryEntityInterface.inventoryEntityInterface ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntityInterface.inventoryEntityInterface)) in ();
        let itemVector : BasicArrayList.basicArrayList ref = ref (((!inventoryEntityInterface#getItems (storeFrontInterface)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!itemVector#size ())) in ();
        for index = 0 to !size - 1 do
            let itemInterface : ItemInterface.itemInterface ref = ref (((Obj.magic (!itemVector#get (index))) :> ItemInterface.itemInterface)) in ();
            let numberInStock : int ref = ref (((string_of_int ((!itemInterface#getNumber ())))#intValue ())) in ();
            totalNumberOfItems <- (totalNumberOfItems + !numberInStock);
            let itemPriceMoney : Money.money ref = ref (((!itemInterface#getPrice ()) :> Money.money)) in ();
            ignore (!itemPriceMoney#multiply (!numberInStock));
            ignore (totalInventorySaleValueMoney#add ((java_string_of (Obj.repr !itemPriceMoney))))
        done
      end
  end
let () = java_register_constructor "StoreFrontInventoryStatistics" (fun arguments -> Obj.repr (new storeFrontInventoryStatistics (Obj.obj arguments)))


