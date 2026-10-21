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
(* package org.allbinary.data.tables.advertisement *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.DynamicObjectData *)
(* import org.allbinary.business.advertisement.AdvertisementData *)
(* import org.allbinary.business.advertisement.AdvertisementInterface *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class advertisementsEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    val mutable _INDEX : string = ""
    method _INDEX = _INDEX
    method set__INDEX value' = _INDEX <- value'
    
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere ((EntryData.getInstance ())#iD, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, commonStrings#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method get ((storeName : string)) : BasicArrayList.basicArrayList =
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, storeName));
        let hashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!hashMapVector#size ())) in ();
        for index = 0 to !size - 1 do
            let hashMap : java_hash_map ref = ref (((Obj.magic (!hashMapVector#get (index))) :> java_hash_map)) in ()
        done;
        (!vector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    (* Java overload get(String, String) is not converted: OCaml has one method per name *)
    

    method createTableStatement () : string =
        begin
        let advertisementData : AdvertisementData.advertisementData ref = ref (((AdvertisementData.getInstance ()) :> AdvertisementData.advertisementData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (((((((((((!stringBuffer#append ((self#getTableName ())))#append (sqlStrings#sTART))#append (!advertisementData#nAME))#append (_INDEX))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (!advertisementData#nAME))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((StoreFrontData.getInstance ())#nAME))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (!advertisementData#dESCRIPTION))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (((((((((!stringBuffer#append ((DynamicObjectData.get_nAME ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append (!advertisementData#nAME))#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        let returnStr : string ref = ref ((super#createTable ((self#createTableStatement ())))) in ();
        !returnStr
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((EntryData.getInstance ())#iD, (Obj.magic (updatedValues#get ((EntryData.getInstance ())#iD))), updatedValues))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "advertisements";
        _INDEX <- "_index";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AdvertisementsEntity" (fun arguments -> Obj.repr (new advertisementsEntity (Obj.obj arguments)))


