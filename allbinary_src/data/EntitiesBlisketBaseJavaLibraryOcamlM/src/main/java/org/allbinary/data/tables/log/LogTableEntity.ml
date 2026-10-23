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
(* package org.allbinary.data.tables.log *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.LogDbInitInfo *)
(* import org.allbinary.logic.communication.http.request.AbeHttpRequestInfoData *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class logTableEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new LogDbInitInfo.logDbInitInfo ())) as super
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method createTableStatement () : string =
        begin
        let abeHttpRequestInfoData : AbeHttpRequestInfoData.abeHttpRequestInfoData ref = ref (((AbeHttpRequestInfoData.getInstance ()) :> AbeHttpRequestInfoData.abeHttpRequestInfoData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((((((((((((((((((((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append (tableName))#append ((self#sqlStrings)#sTART))#append ((self#sqlStrings)#iD))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!abeHttpRequestInfoData#hTTP_USER_AGENT))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!abeHttpRequestInfoData#rEMOTE_HOST))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN))#append (!abeHttpRequestInfoData#rEMOTE_ADDRESS))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!abeHttpRequestInfoData#rEQUEST_FILE_PATH))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append (!abeHttpRequestInfoData#rEMOTE_PORT))#append ((self#sqlTypeStrings)#mAX_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append ((self#sqlStrings)#iD))#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]

    initializer
      begin
        tableName <- "log";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end
let () = java_register_constructor "LogTableEntity" (fun arguments -> Obj.repr (new logTableEntity (Obj.obj arguments)))


