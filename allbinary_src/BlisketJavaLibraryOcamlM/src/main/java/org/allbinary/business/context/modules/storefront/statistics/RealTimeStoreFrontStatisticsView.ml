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
(* import org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.advertisements.StoreFrontAdvertisementsStatisticsView *)
(* import org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.inventory.StoreFrontInventoryStatisticsView *)
(* import org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.orders.history.StoreFrontOrdersHistoryStatisticsView *)
(* import org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsInterface *)
(* import org.allbinary.business.context.modules.storefront.statistics.users.StoreFrontUsersStatisticsView *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.business.user.role.UserRoleFactory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class realTimeStoreFrontStatisticsView ((storeFrontStatisticsInterface_arg : StoreFrontStatisticsInterface.storeFrontStatisticsInterface), (userRole_arg : UserRole.userRole)) =
  object
    val mutable storeFrontStatisticsInterface : StoreFrontStatisticsInterface.storeFrontStatisticsInterface = (Obj.magic 0)
    method storeFrontStatisticsInterface = storeFrontStatisticsInterface
    method set_storeFrontStatisticsInterface value' = storeFrontStatisticsInterface <- value'
    val mutable userRole : UserRole.userRole = (Obj.magic 0)
    method userRole = userRole
    method set_userRole value' = userRole <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((StoreFrontStatisticsData.getInstance ())#nAME)))) in ();
        let storeFrontAdvertisementsStatisticsInterface : StoreFrontAdvertisementsStatisticsInterface.storeFrontAdvertisementsStatisticsInterface ref = ref (((storeFrontStatisticsInterface#getAdvertisements ()) :> StoreFrontAdvertisementsStatisticsInterface.storeFrontAdvertisementsStatisticsInterface)) in ();
        let storeFrontAdvertisementsStatisticsDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((new StoreFrontAdvertisementsStatisticsView.storeFrontAdvertisementsStatisticsView (!storeFrontAdvertisementsStatisticsInterface)) :> DomNodeInterface.domNodeInterface)) in ();
        ignore ((Obj.magic !node)#appendChild ((!storeFrontAdvertisementsStatisticsDomNodeInterface#toXmlNode ((Obj.magic document)))));
        let storeFrontInventoryStatisticsInterface : StoreFrontInventoryStatisticsInterface.storeFrontInventoryStatisticsInterface ref = ref (((storeFrontStatisticsInterface#getInventory ()) :> StoreFrontInventoryStatisticsInterface.storeFrontInventoryStatisticsInterface)) in ();
        let storeFrontInventoryStatisticsDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((new StoreFrontInventoryStatisticsView.storeFrontInventoryStatisticsView (!storeFrontInventoryStatisticsInterface)) :> DomNodeInterface.domNodeInterface)) in ();
        ignore ((Obj.magic !node)#appendChild ((!storeFrontInventoryStatisticsDomNodeInterface#toXmlNode ((Obj.magic document)))));
        let storeFrontOrdersHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface ref = ref (((storeFrontStatisticsInterface#getOrders ()) :> StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface)) in ();
        let storeFrontOrdersHistoryStatisticsDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((new StoreFrontOrdersHistoryStatisticsView.storeFrontOrdersHistoryStatisticsView (!storeFrontOrdersHistoryStatisticsInterface)) :> DomNodeInterface.domNodeInterface)) in ();
        ignore ((Obj.magic !node)#appendChild ((!storeFrontOrdersHistoryStatisticsDomNodeInterface#toXmlNode ((Obj.magic document)))));
        if ((Obj.repr userRole) == (Obj.repr (UserRoleFactory.getInstance ())#aDMINISTRATOR)) then begin
            let storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface ref = ref (((storeFrontStatisticsInterface#getUsers ()) :> StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface)) in ();
            let storeFrontUsersStatisticsDomNodeInterface : DomNodeInterface.domNodeInterface ref = ref (((new StoreFrontUsersStatisticsView.storeFrontUsersStatisticsView (!storeFrontUsersStatisticsInterface)) :> DomNodeInterface.domNodeInterface)) in ();
            ignore ((Obj.magic !node)#appendChild ((!storeFrontUsersStatisticsDomNodeInterface#toXmlNode ((Obj.magic document)))))
        end;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        storeFrontStatisticsInterface <- storeFrontStatisticsInterface_arg;
        userRole <- userRole_arg
      end
  end
let () = java_register_constructor "RealTimeStoreFrontStatisticsView" (fun arguments -> Obj.repr (new realTimeStoreFrontStatisticsView (Obj.obj arguments)))


