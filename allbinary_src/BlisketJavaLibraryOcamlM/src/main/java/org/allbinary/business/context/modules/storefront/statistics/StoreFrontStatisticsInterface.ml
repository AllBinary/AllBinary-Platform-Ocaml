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
(* import org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface *)

class virtual storeFrontStatisticsInterface =
  object
    method virtual getAdvertisements : unit -> StoreFrontAdvertisementsStatisticsInterface.storeFrontAdvertisementsStatisticsInterface
    method virtual getUsers : unit -> StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface
    method virtual getInventory : unit -> StoreFrontInventoryStatisticsInterface.storeFrontInventoryStatisticsInterface
    method virtual getOrders : unit -> StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface
  end


