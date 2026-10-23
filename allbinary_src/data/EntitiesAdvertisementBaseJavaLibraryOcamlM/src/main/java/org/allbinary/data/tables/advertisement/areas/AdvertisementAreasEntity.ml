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
(* package org.allbinary.data.tables.advertisement.areas *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.advertisement.area.AdvertisementArea *)
(* import org.allbinary.business.advertisement.area.AdvertisementAreaData *)
(* import org.allbinary.business.advertisement.area.AdvertisementAreaInterface *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaignData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class advertisementAreasEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere ((EntryData.getInstance ())#iD, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, (self#commonStrings)#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#delete, e))
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
            let hashMap : java_hash_map ref = ref (((Obj.magic (!hashMapVector#get (index))) :> java_hash_map)) in ();
            if (!hashMap != (Obj.magic 0)) then begin
                ignore (!vector#add ((Obj.magic (new AdvertisementArea.advertisementArea (!hashMap)))))
            end
        done;
        (!vector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    (* Java overload get(String, String) is not converted: OCaml has one method per name *)
    

    method createTableStatement () : string =
        begin
        let advertisementAreaData : AdvertisementAreaData.advertisementAreaData ref = ref (((AdvertisementAreaData.getInstance ()) :> AdvertisementAreaData.advertisementAreaData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append ((self#sqlStrings)#sTART));
        ignore (((((((((((((((((!stringBuffer#append (!advertisementAreaData#nAME))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((StoreFrontData.getInstance ())#nAME))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!advertisementAreaData#dESCRIPTION))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!advertisementAreaData#cONSTRAINTS))#append ((self#sqlTypeStrings)#bLOB_NOT_NULL))#append ((AdvertisementCampaignData.getInstance ())#nAME))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append (!advertisementAreaData#nAME))#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        let returnStr : string ref = ref ((super#createTable ((self#createTableStatement ())))) in ();
        !returnStr
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((AdvertisementAreaData.getInstance ())#nAME, (Obj.magic (updatedValues#get ((AdvertisementAreaData.getInstance ())#nAME))), updatedValues))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "advertisements";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AdvertisementAreasEntity" (fun arguments -> Obj.repr (new advertisementAreasEntity (Obj.obj arguments)))


