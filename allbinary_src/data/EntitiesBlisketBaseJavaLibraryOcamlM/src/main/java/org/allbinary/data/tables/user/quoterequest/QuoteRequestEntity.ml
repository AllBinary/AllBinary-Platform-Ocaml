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
(* package org.allbinary.data.tables.user.quoterequest *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.quoterequest.QuoteRequestData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.quoterequest.QuoteRequest *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class quoteRequestEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
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
    

    method get ((userName : string), (id : int)) : QuoteRequest.quoteRequest =
        try
        begin
        let row : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!row#put ((UserData.get_uSERNAME ()), userName));
        ignore (!row#put ((QuoteRequestData.getInstance ())#iD, (string_of_int (id))));
        let quoteRequestHashMap : java_hash_map ref = ref (((super#getRow (!row)) :> java_hash_map)) in ();
        if (!quoteRequestHashMap != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((new QuoteRequest.quoteRequest (!quoteRequestHashMap)))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getIds ((userName : string)) : BasicArrayList.basicArrayList =
        begin
        ((super#getColumnWhere ((QuoteRequestData.getInstance ())#iD, (UserData.get_uSERNAME ()), userName)) :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    method deleteWhere ((key : string), (value : string)) : unit =
        begin
        (try
            ignore (super#deleteWhere (key, value));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "deleteWhere"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "deleteWhere", e))
            end
        end)
        end [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let quoteRequestData : QuoteRequestData.quoteRequestData ref = ref (((QuoteRequestData.getInstance ()) :> QuoteRequestData.quoteRequestData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append (tableName))#append ((self#sqlStrings)#sTART));
        ignore ((!stringBuffer#append (!quoteRequestData#iD))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((UserData.get_uSERNAME ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!quoteRequestData#pROJECT_INFO));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!quoteRequestData#cUSTOMER_COMMENTS));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!quoteRequestData#bUDGET));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!quoteRequestData#tIMEFRAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (!quoteRequestData#cOMMENTS));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#tIMECREATED));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#lASTMODIFIED));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((self#sqlStrings)#pRIMARY_KEY));
        ignore (!stringBuffer#append (!quoteRequestData#iD));
        ignore (!stringBuffer#append ((self#sqlStrings)#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method dropTable () : string =
        begin
        let result : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((super#dropTable ())))))) in ();
        !result
        end [@@warning "-7"]
    

    method update ((userName : string), (updatedValues : java_hash_map)) : unit =
        begin
        ignore (super#updateWhere ((UserData.get_uSERNAME ()), userName, updatedValues))
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "quoterequest";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "QuoteRequestEntity" (fun arguments -> Obj.repr (new quoteRequestEntity (Obj.obj arguments)))


