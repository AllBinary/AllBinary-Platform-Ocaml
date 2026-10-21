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
(* package org.allbinary.data.tables.user.commerce.inventory.item.downloads *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class downloadItemsEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new InventoryDbInitInfo.inventoryDbInitInfo ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method insert : 'any1. 'any1 -> unit = fun (values) ->
        let values = Obj.repr values in
        begin
        (try
            ignore (super#insert ((Obj.magic values)));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere ((DownloadItemData.get_iD ()), value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, commonStrings#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((DownloadItemData.get_iD ()), (Obj.magic (updatedValues#get ((DownloadItemData.get_iD ())))), updatedValues))
        end [@@warning "-7"]
    

    method getForItem ((id : string)) : BasicArrayList.basicArrayList =
        begin
        let returnVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let keysAndValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put (basicItemData#iD, id));
        let vector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!vector#size ())) in ();
        for index = 0 to !size - 1 do
            let hashMap : java_hash_map ref = ref (((Obj.magic (!vector#get (index))) :> java_hash_map)) in ();
            ignore (!returnVector#add ((new DownloadableItem.downloadableItem (!hashMap))))
        done;
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (("Found: " ^ java_string_of (Obj.repr (!size))), self, "getForItem"))
        end;
        (!returnVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    (* Java overload getForItem(String, String) is not converted: OCaml has one method per name *)
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (((((((((((((((((((((!stringBuffer#append (sqlStrings#cREATE_TABLE))#append (tableName))#append (sqlStrings#sTART))#append ((DownloadItemData.get_iD ())))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (basicItemData#iD))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#eNABLE))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((DownloadItemData.get_sPECIAL_NAME ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((DownloadItemData.get_vERSION ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((DownloadItemData.get_cHANGES ())))#append (sqlTypeStrings#bLOB_NOT_NULL))#append ((DownloadItemData.get_sYSTEM ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((DownloadItemData.get_pLATFORM ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((DownloadItemData.get_lICENSE_FILE ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (((((((((((((((!stringBuffer#append ((DownloadItemData.get_fILE ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((DownloadItemData.get_sIZE ())))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((DownloadItemData.get_vALID_TIME ())))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((DownloadItemData.get_rETRIES ())))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append ((DownloadItemData.get_iD ())))#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        tableName <- "downloaditems";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "DownloadItemsEntity" (fun arguments -> Obj.repr (new downloadItemsEntity (Obj.obj arguments)))


