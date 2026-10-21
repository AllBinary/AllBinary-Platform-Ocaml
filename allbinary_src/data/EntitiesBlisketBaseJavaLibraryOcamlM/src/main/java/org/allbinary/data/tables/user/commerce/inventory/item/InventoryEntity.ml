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
(* package org.allbinary.data.tables.user.commerce.inventory.item *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItem *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class inventoryEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new InventoryDbInitInfo.inventoryDbInitInfo ())) as super
    val mutable logUtil : LogUtil.logUtil = (Obj.magic 0)
    method logUtil = logUtil
    method set_logUtil value = logUtil <- value
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value = basicItemData <- value
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value = tableName <- value
    
    

    method insert ((values : BasicArrayList.basicArrayList)) =
        begin
        (try
            ignore (super#insert (values));
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (logUtil#putF (commonStrings#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (logUtil#put (commonStrings#fAILURE, self, iNSERT, e))
            end
        end)
        end
    

    method delete ((value : string)) =
        begin
        (try
            ignore (super#deleteWhere (basicItemData#iD, value));
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (logUtil#putF (commonStrings#sUCCESS, self, commonStrings#delete))
            end
        with e -> begin
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore (logUtil#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end
    

    method getItems ((storeFrontInterface : StoreFrontInterface.storeFrontInterface)) =
        begin
        if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
            ignore (logUtil#putF (("Getting Items For: " ^ (storeFrontInterface#getName ())), self, "getItems"))
        end;
        let itemVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let keysAndValues : java_hash_map ref = ref ((((StdUtil.getInstance ())#createHashMap ()) :> java_hash_map)) in ();
        let itemHashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keysAndValues)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!itemHashMapVector#size ())) in ();
        for i = 0 to !size - 1 do
            let itemHashMap : java_hash_map ref = ref (((Obj.magic (!itemHashMapVector#get (i))) :> java_hash_map)) in ();
            if (!itemHashMap != (Obj.magic 0)) then begin
                let category : string ref = ref ((Obj.magic (!itemHashMap#get (basicItemData#cATEGORY)))) in ();
                if ((not ((StringValidationUtil.getInstance ())#isEmpty (!category))) && (String.starts_with ~prefix:((storeFrontInterface#getCategoryPath ())) !category)) then begin
                    ignore (!itemVector#add ((new BasicItem.basicItem (!itemHashMap))))
                end
            end
        done;
        !itemVector
        end
    

    method getItem ((id : string)) =
        try
        begin
        let keysAndValues : java_hash_map ref = ref ((((StdUtil.getInstance ())#createHashMap ()) :> java_hash_map)) in ();
        ignore (!keysAndValues#put (basicItemData#iD, id));
        let itemHashMap : java_hash_map ref = ref (((super#getRow (!keysAndValues)) :> java_hash_map)) in ();
        if (!itemHashMap != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((new BasicItem.basicItem (!itemHashMap)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getWeight ((id : string)) : string =
        begin
        (super#getField (basicItemData#iD, id, basicItemData#wEIGHT))
        end
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#sTART));
        ignore (!stringBuffer#append (basicItemData#iD));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#nUMBER));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#iNBASKETS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#wEIGHT));
        ignore (!stringBuffer#append (" VARCHAR(20) NOT NULL,"));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#eNABLE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#nEWORUSED));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sUMMARY));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#dISTRIBUTOR));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#iDUSEDBYDISTRIBUTOR));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pRODUCEDBY));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pRODUCTIONDATE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sTARTPRODUCTIONDATE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#dESCRIPTION));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#kEYWORDS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#cATEGORY));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#tYPE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sMALLIMAGE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#mEDIUMIMAGE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#lARGEIMAGE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#lASTMODIFIED));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#tIMECREATED));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pRICE));
        ignore (!stringBuffer#append (" VARCHAR(20) NOT NULL,"));
        ignore (!stringBuffer#append (basicItemData#cOMMENT));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#cUSTOMS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#dOWNLOADS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#gROUPS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#oPTIONS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pERMISSIONS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sPECIALS));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (sqlStrings#pRIMARY_KEY));
        ignore (!stringBuffer#append (basicItemData#iD));
        ignore (!stringBuffer#append (sqlStrings#eND));
        (!stringBuffer#toString ())
        end
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end
    

    method update ((updatedValues : java_hash_map)) =
        begin
        ignore (super#updateWhere (basicItemData#iD, (Obj.magic (updatedValues#get (basicItemData#iD))), updatedValues))
        end
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end

    initializer
      begin
        logUtil <- ((LogUtil.getInstance ()) :> LogUtil.logUtil);
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        tableName <- "basicinventory";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end


