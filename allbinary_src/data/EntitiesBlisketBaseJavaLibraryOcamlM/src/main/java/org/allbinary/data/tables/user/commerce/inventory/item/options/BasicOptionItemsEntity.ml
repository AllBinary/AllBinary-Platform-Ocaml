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
(* package org.allbinary.data.tables.user.commerce.inventory.item.options *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.option.BasicOptionItemData *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class basicOptionItemsEntity () =
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
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method delete ((value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere (basicItemData#iD, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, (self#commonStrings)#delete))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, (self#commonStrings)#delete, e))
            end
        end)
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (((((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append (tableName))#append ((self#sqlStrings)#sTART))#append (basicItemData#iD))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore ((((((!stringBuffer#append ((BasicOptionItemData.get_oPTION_ONE_TITLE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_dEFAULT_OPTION_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_dEFAULT_OPTION_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (((((((((((((((((((((((((((((((((((((((((((!stringBuffer#append ((BasicOptionItemData.get_oPTION_ONE_ONE_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_ONE_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_TWO_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_TWO_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_THREE_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_THREE_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_FOUR_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_FOUR_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_FIVE_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_FIVE_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_SIX_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_SIX_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_SEVEN_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_SEVEN_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_EIGHT_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_EIGHT_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_NINE_ITEM ())))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((BasicOptionItemData.get_oPTION_ONE_NINE_VALUE ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append (basicItemData#iD))#append ((self#sqlStrings)#eND));
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
        tableName <- "basicoptionitems";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicOptionItemsEntity" (fun arguments -> Obj.repr (new basicOptionItemsEntity (Obj.obj arguments)))


