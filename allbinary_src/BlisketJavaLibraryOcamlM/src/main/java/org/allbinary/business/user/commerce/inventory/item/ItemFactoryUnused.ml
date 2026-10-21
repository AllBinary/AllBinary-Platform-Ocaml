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
(* package org.allbinary.business.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.data.tables.TableMappingInterface *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)

class itemFactoryUnused () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "ItemFactoryUnused" (fun arguments -> Obj.repr (new itemFactoryUnused (Obj.obj arguments)))

let getInstance ((hashMap : java_hash_map)) : TableMappingInterface.tableMappingInterface =
        begin
        ((Obj.magic (Obj.obj (java_new "Item" (Obj.repr (hashMap))))) :> TableMappingInterface.tableMappingInterface)
        end

(* Java overload getInstance(HttpServletRequest) is not converted: OCaml has one method per name *)
let () = java_register_static "ItemFactoryUnused.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


