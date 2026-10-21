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
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.transaction.PaymentTransactionKeysFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)

class transactionEntity () =
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
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "remove"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "remove", e))
            end
        end)
        end [@@warning "-7"]
    

    method add : 'any3. string * string * 'any3 -> unit = fun ((userName : string), (orderNumber : string), paymentTransactionInterface) ->
        let paymentTransactionInterface = Obj.repr paymentTransactionInterface in
        begin
        (try
            let values : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!values#add (orderNumber));
            ignore (!values#add (userName));
            ignore (!values#addAllList (((Obj.magic paymentTransactionInterface)#toVector ())));
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            ignore (!values#add (!time));
            ignore (!values#add (!time));
            ignore (super#insert (!values));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "add"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "add", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method createTableStatement () : string =
        begin
        let paymentTransactionKeysFactory : PaymentTransactionKeysFactory.paymentTransactionKeysFactory ref = ref (((PaymentTransactionKeysFactory.getInstance ()) :> PaymentTransactionKeysFactory.paymentTransactionKeysFactory)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#sTART));
        ignore (((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((((!stringBuffer#append ((OrderData.get_iD ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((UserData.get_uSERNAME ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#tRXTYPE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#tENDER))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aCCT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eXPDATE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aMT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aUTHCODE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#mICR))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cHECKNUM))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#nAME))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sTREET))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cITY))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sTATE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#zIP))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#dL))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#eMAIL))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cOMMENT1))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cOMMENT2))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#oRIGID))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#pONUM))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#dESC))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#dESC1TO4))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#iNVNUM))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPTOZIP))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sWIPE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#tAXAMT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cOMMCARD))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#dUTYAMT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#fREIGHTAMT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#oRDERDATE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#tAXEXEMPT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cOUNTRYCODE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cUSTCODE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cVV2))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aBA))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#aCCTTYPE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#dISCOUNT))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#fIRSTNAME))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#lASTNAME))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPFROMZIP))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#pRENOTE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cHKTYPE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#dOB))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#pHONENUM))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sS))))#append (" VARCHAR(30) NOT NULL,"))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cOMPANYNAME))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#cOUNTRY))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPTOCITY))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPTOFIRSTNAME))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPTOLASTNAME))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPTOSTATE))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sHIPTOSTREET))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sPECIAL1))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sPECIAL2))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((java_string_of (Obj.repr !paymentTransactionKeysFactory#sPECIAL3))))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((EntryData.getInstance ())#lASTMODIFIED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append ((EntryData.getInstance ())#tIMECREATED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append ((OrderData.get_iD ())))#append (sqlStrings#eND));
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
        tableName <- "vtrans";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "TransactionEntity" (fun arguments -> Obj.repr (new transactionEntity (Obj.obj arguments)))


