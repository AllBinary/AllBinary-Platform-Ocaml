(*
 
  AllBinary Open License Version 1 
  Copyright (c) 2011 AllBinary 
   
  By agreeing to this license you and any business entity you represent are 
  legally bound to the AllBinary Open License Version 1 legal agreement. 
  ` 
  You may obtain the AllBinary Open License Version 1 legal agreement from 
  AllBinary or the root directory of AllBinary's AllBinary Platform repository. 
   
  Created By: Travis Berthelot 
    
*)
(* Generated Code Do Not Modify *)
(* package org.allbinary.data.tables.user.commerce.inventory.item.options *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.option.XmlOptionItemData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class xmlOptionItemsEntity () =
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
            ignore (super#deleteWhere (basicItemData#iD, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, commonStrings#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (((((!stringBuffer#append (sqlStrings#cREATE_TABLE))#append (tableName))#append (sqlStrings#sTART))#append (basicItemData#iD))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (((((((((((!stringBuffer#append ((XmlOptionItemData.get_xML_FILE_STATUS ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((XmlOptionItemData.get_oPTION_XML_FILE ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append (basicItemData#iD))#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method update ((updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere (basicItemData#iD, (Obj.magic (updatedValues#get (basicItemData#iD))), updatedValues))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        tableName <- "xmloptionitems";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "XmlOptionItemsEntity" (fun arguments -> Obj.repr (new xmlOptionItemsEntity (Obj.obj arguments)))


