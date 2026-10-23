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
(* package org.allbinary.data.tables.user.commerce.money.payment.transaction *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResult *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.TransactionResultInterface *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class transactionResultEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method remove ((userName : string), (orderNumber : string)) : unit =
        begin
        (try
            let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereHashMap#put ((OrderData.get_iD ()), (Obj.magic orderNumber)));
            ignore (!whereHashMap#put ((UserData.get_uSERNAME ()), userName));
            ignore (super#deleteWhere (!whereHashMap));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "remove"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "remove", e))
            end
        end)
        end [@@warning "-7"]
    

    method add : 'any3. string * string * 'any3 -> unit = fun ((userName : string), (orderNumber : string), transactionResultInterface) ->
        let transactionResultInterface = Obj.repr transactionResultInterface in
        begin
        (try
            let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!values#add (orderNumber));
            ignore (!values#add (userName));
            ignore (!values#addAllList (((Obj.magic transactionResultInterface)#getValues ())));
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))) in ();
            ignore (!values#add (!time));
            ignore (!values#add (!time));
            ignore (super#insert (!values));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "add"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "add", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method getTransactionResultInterface ((orderNumber : string)) : TransactionResultInterface.transactionResultInterface =
        try
        begin
        (try
            let resultHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let updateKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!updateKeyAndValue#put ((OrderData.get_iD ()), orderNumber));
            resultHashMap := (super#getRow (!updateKeyAndValue));
            if (!resultHashMap != (Obj.magic 0)) then begin
                let transactionResult : TransactionResult.transactionResult ref = ref (((new TransactionResult.transactionResult (!resultHashMap)) :> TransactionResult.transactionResult)) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF ((self#commonStrings)#sUCCESS, self, "getTransactionResultInterface"))
                end;
                raise (Java_return (Obj.repr ((Obj.magic !transactionResult))))
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "getTransactionResultInterface", e))
            end;
            ((Obj.magic 0) :> TransactionResultInterface.transactionResultInterface)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let paymentTransactionKeysFactory : PaymentTransactionKeysFactory.paymentTransactionKeysFactory ref = ref (((PaymentTransactionKeysFactory.getInstance ()) :> PaymentTransactionKeysFactory.paymentTransactionKeysFactory)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (((((((!stringBuffer#append ((self#sqlStrings)#cREATE_TABLE))#append (tableName))#append ((self#sqlStrings)#sTART))#append ((OrderData.get_iD ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((UserData.get_uSERNAME ())))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore ((((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rESULT))))#append ((self#sqlTypeStrings)#mAX_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#pNREF))))#append ((self#sqlTypeStrings)#tWELVE_CHAR_COLUMN_NOT_NULL));
        ignore ((((((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rESPMSG))))#append ((self#sqlTypeStrings)#bLOB_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aUTHCODE))))#append ((self#sqlTypeStrings)#sIX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aVSADDR))))#append ((self#sqlTypeStrings)#oNE_CHAR_COLUMN_NOT_NULL));
        ignore ((((((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aVSZIP))))#append ((self#sqlTypeStrings)#oNE_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#oRIGRESULT))))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sTATUS))))#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore ((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#fRAUDCODE))))#append ((self#sqlTypeStrings)#tWO_INT_NOT_NULL));
        ignore ((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#fRAUDMSG))))#append ((self#sqlTypeStrings)#mAX_INT_NOT_NULL));
        ignore ((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eRRCODE))))#append ((self#sqlTypeStrings)#mAX_INT_NOT_NULL));
        ignore ((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sCORE))))#append ((self#sqlTypeStrings)#tHREE_INT_NOT_NULL));
        ignore (((((!stringBuffer#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rEASON1))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rEASON2))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#rEASON3))));
        ignore ((((((((((((((((((((((!stringBuffer#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION1))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION2))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION3))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION4))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION5))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION6))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXCEPTION7))))#append ((self#sqlTypeStrings)#fOUR_INT_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((self#sqlStrings)#pRIMARY_KEY))#append ((OrderData.get_iD ())))#append ((self#sqlStrings)#eND));
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
        tableName <- "vresults";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransactionResultEntity" (fun arguments -> Obj.repr (new transactionResultEntity (Obj.obj arguments)))


