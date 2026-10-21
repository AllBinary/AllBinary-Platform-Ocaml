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
(* package org.allbinary.data.tables.advertisement.campaign.internal *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaign *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaignData *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaignInterface *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaigns *)
(* import org.allbinary.business.advertisement.campaign.AdvertisementCampaignsInterface *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.time.TimeData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class advertisementCampaignInternalEntity () =
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
            ignore (super#deleteWhere ((StoreFrontData.getInstance ())#nAME, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, commonStrings#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method getCampaignsInStore ((storeName : string)) : AdvertisementCampaignsInterface.advertisementCampaignsInterface =
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, storeName));
        let hashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!hashMapVector#size ())) in ();
        for index = 0 to !size - 1 do
            let hashMap : java_hash_map ref = ref (((Obj.magic (!hashMapVector#get (index))) :> java_hash_map)) in ();
            if (!hashMap != (Obj.magic 0)) then begin
                ignore (!vector#add ((Obj.magic (new AdvertisementCampaign.advertisementCampaign (!hashMap)))))
            end
        done;
        ((Obj.magic (new AdvertisementCampaigns.advertisementCampaigns (!vector))) :> AdvertisementCampaignsInterface.advertisementCampaignsInterface)
        end [@@warning "-7"]
    

    method get ((storeName : string), (name : string)) : AdvertisementCampaignInterface.advertisementCampaignInterface =
        try
        begin
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put ((StoreFrontData.getInstance ())#nAME, storeName));
        ignore (!keysAndValues#put ((AdvertisementCampaignData.getInstance ())#nAME, name));
        let hashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
        if (!hashMap != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((Obj.magic (new AdvertisementCampaign.advertisementCampaign (!hashMap))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere (((EntryData.getInstance ())#getInstance ())#iD, (Obj.magic (updatedValues#get (((EntryData.getInstance ())#getInstance ())#iD))), updatedValues))
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let entryData : EntryData.entryData ref = ref ((((EntryData.getInstance ())#getInstance ()) :> EntryData.entryData)) in ();
        let advertisementCampaignData : AdvertisementCampaignData.advertisementCampaignData ref = ref (((AdvertisementCampaignData.getInstance ()) :> AdvertisementCampaignData.advertisementCampaignData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (!stringBuffer#append ((self#getTableName ())));
        ignore (!stringBuffer#append (sqlStrings#sTART));
        ignore (((((((((((((((((((((!stringBuffer#append (!entryData#iD))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((StoreFrontData.getInstance ())#nAME))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (!advertisementCampaignData#nAME))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (!advertisementCampaignData#dESCRIPTION))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (!advertisementCampaignData#cONFIG))#append (sqlTypeStrings#bLOB_NOT_NULL))#append ((TimeData.getInstance ())#sTART))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((TimeData.getInstance ())#eND))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (!entryData#tIMECREATED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (!entryData#lASTMODIFIED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append (!entryData#iD))#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        let returnStr : string ref = ref ((super#createTable ((self#createTableStatement ())))) in ();
        !returnStr
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "adCampaignInternal";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "AdvertisementCampaignInternalEntity" (fun arguments -> Obj.repr (new advertisementCampaignInternalEntity (Obj.obj arguments)))


