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
(* package org.allbinary.business.context.modules.storefronts *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.init.InitSql *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class basicStoreFrontsEntity () =
  object (self)
    inherit InitSql.initSql ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method getStoreFrontInterface ((name : string)) : BasicStoreFrontInterface.basicStoreFrontInterface =
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, name));
        let storeHashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
        if (!storeHashMap == (Obj.magic 0)) then begin
            raise (Failure (("No Such Store: " ^ name)))
        end;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#fACTORYERROR)) then begin
            ignore ((Obj.magic logUtil)#putF (("StoreFront: " ^ (java_string_of (Obj.repr !storeHashMap))), self, "getStore()"))
        end;
        ((Obj.magic (new BasicStoreFront.basicStoreFront (!storeHashMap))) :> BasicStoreFrontInterface.basicStoreFrontInterface)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "storefronts";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTable (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicStoreFrontsEntity" (fun arguments -> Obj.repr (new basicStoreFrontsEntity (Obj.obj arguments)))


