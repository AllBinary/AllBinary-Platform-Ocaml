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
(* package org.allbinary.business.context.modules.storefront.statistics.users *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class storeFrontUsersStatisticsView ((storeFrontUsersStatisticsInterface_arg : StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface)) =
  object
    val mutable storeFrontUsersStatisticsInterface : StoreFrontUsersStatisticsInterface.storeFrontUsersStatisticsInterface = (Obj.magic 0)
    method storeFrontUsersStatisticsInterface = storeFrontUsersStatisticsInterface
    method set_storeFrontUsersStatisticsInterface value' = storeFrontUsersStatisticsInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((storeFrontUsersStatisticsInterface#toHashMap ()) :> java_hash_map)) in ();
        let node : Obj.t ref = ref ((Obj.repr (ModDomHelper.createNameValueNodes ((Obj.magic document), (StoreFrontUsersStatisticsData.getInstance ())#nAME, !hashMap)))) in ();
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        storeFrontUsersStatisticsInterface <- storeFrontUsersStatisticsInterface_arg
      end
  end
let () = java_register_constructor "StoreFrontUsersStatisticsView" (fun arguments -> Obj.repr (new storeFrontUsersStatisticsView (Obj.obj arguments)))


