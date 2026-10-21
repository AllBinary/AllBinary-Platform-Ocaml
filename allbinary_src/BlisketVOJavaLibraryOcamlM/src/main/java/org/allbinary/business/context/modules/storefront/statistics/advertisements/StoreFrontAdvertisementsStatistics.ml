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
(* package org.allbinary.business.context.modules.storefront.statistics.advertisements *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.logic.StdUtil *)

class storeFrontAdvertisementsStatistics ((_storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
  object
    
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
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
        ()
      end
  end
let () = java_register_constructor "StoreFrontAdvertisementsStatistics" (fun arguments -> Obj.repr (new storeFrontAdvertisementsStatistics (Obj.obj arguments)))


