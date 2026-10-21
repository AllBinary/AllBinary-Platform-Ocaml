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
(* package org.allbinary.business.context.modules.storefront.statistics *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatistics *)
(* import org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatistics *)
(* import org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatistics *)
(* import org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatistics *)
(* import org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface *)

class realTimeStoreFrontStatistics ((storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object
    val mutable storeFrontAdvertisementsStatisticsInterface : StoreFrontAdvertisementsStatisticsInterface.storeFrontAdvertisementsStatisticsInterface = (Obj.magic 0)
    method storeFrontAdvertisementsStatisticsInterface = storeFrontAdvertisementsStatisticsInterface
    method set_storeFrontAdvertisementsStatisticsInterface value' = storeFrontAdvertisementsStatisticsInterface <- value'
    val mutable storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface = (Obj.magic 0)
    method storeFrontUsersStatisticsInterface = storeFrontUsersStatisticsInterface
    method set_storeFrontUsersStatisticsInterface value' = storeFrontUsersStatisticsInterface <- value'
    val mutable storeFrontInventoryStatisticsInterface : StoreFrontInventoryStatisticsInterface.storeFrontInventoryStatisticsInterface = (Obj.magic 0)
    method storeFrontInventoryStatisticsInterface = storeFrontInventoryStatisticsInterface
    method set_storeFrontInventoryStatisticsInterface value' = storeFrontInventoryStatisticsInterface <- value'
    val mutable storeFrontOrderHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface = (Obj.magic 0)
    method storeFrontOrderHistoryStatisticsInterface = storeFrontOrderHistoryStatisticsInterface
    method set_storeFrontOrderHistoryStatisticsInterface value' = storeFrontOrderHistoryStatisticsInterface <- value'
    
    

    method getAdvertisements () : StoreFrontAdvertisementsStatisticsInterface.storeFrontAdvertisementsStatisticsInterface =
        begin
        (storeFrontAdvertisementsStatisticsInterface :> StoreFrontAdvertisementsStatisticsInterface.storeFrontAdvertisementsStatisticsInterface)
        end
    

    method getUsers () : StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface =
        begin
        (storeFrontUsersStatisticsInterface :> StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface)
        end
    

    method getInventory () : StoreFrontInventoryStatisticsInterface.storeFrontInventoryStatisticsInterface =
        begin
        (storeFrontInventoryStatisticsInterface :> StoreFrontInventoryStatisticsInterface.storeFrontInventoryStatisticsInterface)
        end
    

    method getOrders () : StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface =
        begin
        (storeFrontOrderHistoryStatisticsInterface :> StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface)
        end

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        storeFrontAdvertisementsStatisticsInterface <- (Obj.magic (new StoreFrontAdvertisementsStatistics.storeFrontAdvertisementsStatistics (storeFrontInterface)));
        storeFrontUsersStatisticsInterface <- (Obj.magic (new StoreFrontUsersStatistics.storeFrontUsersStatistics (storeFrontInterface)));
        storeFrontInventoryStatisticsInterface <- (Obj.magic (new StoreFrontInventoryStatistics.storeFrontInventoryStatistics (storeFrontInterface)));
        storeFrontOrderHistoryStatisticsInterface <- (Obj.magic (new StoreFrontOrdersHistoryStatistics.storeFrontOrdersHistoryStatistics (storeFrontInterface)))
      end
  end
let () = java_register_constructor "RealTimeStoreFrontStatistics" (fun arguments -> Obj.repr (new realTimeStoreFrontStatistics (Obj.obj arguments)))


