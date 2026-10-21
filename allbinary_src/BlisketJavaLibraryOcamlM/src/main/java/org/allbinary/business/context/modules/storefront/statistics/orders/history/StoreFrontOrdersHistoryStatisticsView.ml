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
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class storeFrontOrdersHistoryStatisticsView ((storeFrontOrdersHistoryStatisticsInterface_arg : StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface)) =
  object
    val mutable storeFrontOrdersHistoryStatisticsInterface : StoreFrontOrdersHistoryStatisticsInterface.storeFrontOrdersHistoryStatisticsInterface = (Obj.magic 0)
    method storeFrontOrdersHistoryStatisticsInterface = storeFrontOrdersHistoryStatisticsInterface
    method set_storeFrontOrdersHistoryStatisticsInterface value' = storeFrontOrdersHistoryStatisticsInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((storeFrontOrdersHistoryStatisticsInterface#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (StoreFrontOrdersHistoryStatisticsData.getInstance ())#nAME, !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        storeFrontOrdersHistoryStatisticsInterface <- storeFrontOrdersHistoryStatisticsInterface_arg
      end
  end
let () = java_register_constructor "StoreFrontOrdersHistoryStatisticsView" (fun arguments -> Obj.repr (new storeFrontOrdersHistoryStatisticsView (Obj.obj arguments)))


