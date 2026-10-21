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
(* package org.allbinary.data.tables.user.commerce.money.payment *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import java.util.Random *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.commerce.money.payment.Payment *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentInterface *)
(* import org.allbinary.data.generator.PaymentIdGenerator *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class paymentEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method getLastId ((userName : string)) : string =
        begin
        (super#getLargestIntegerInColumnWhere ((PaymentData.get_iD ()), (UserData.get_uSERNAME ()), userName))
        end [@@warning "-7"]
    

    method setDefault ((userName : string), (index : int)) : unit =
        begin
        (try
            let updateKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let whereKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereKeyAndValue#put ((UserData.get_uSERNAME ()), userName));
            let paymentInterface : PaymentInterface.paymentInterface ref = ref (((self#getDefault (userName)) :> PaymentInterface.paymentInterface)) in ();
            if (!paymentInterface != (Obj.magic 0)) then begin
                ignore (!updateKeyAndValue#put ((EntryData.getInstance ())#dEFAULT, (StringUtil.getInstance ())#eMPTY_STRING));
                ignore (!whereKeyAndValue#put ((PaymentData.get_iD ()), (!paymentInterface#getId ())));
                ignore (super#updateWhere (!whereKeyAndValue, !updateKeyAndValue))
            end;
            ignore (!updateKeyAndValue#put ((EntryData.getInstance ())#dEFAULT, (EntryData.getInstance ())#dEFAULT));
            ignore (!whereKeyAndValue#put ((PaymentData.get_iD ()), (string_of_int index)));
            ignore (super#updateWhere (!whereKeyAndValue, !updateKeyAndValue));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "setDefault"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "setDefault", e))
            end
        end)
        end [@@warning "-7"]
    

    method get ((userName : string)) : BasicArrayList.basicArrayList =
        begin
        (try
            let paymentVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            let keyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keyAndValue#put ((UserData.get_uSERNAME ()), userName));
            let paymentList : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keyAndValue)) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!paymentList#size ())) in ();
            for index = 0 to !size - 1 do
                let paymentHashMap : java_hash_map ref = ref (((Obj.magic (!paymentList#get (index))) :> java_hash_map)) in ();
                let payment : Payment.payment ref = ref (((new Payment.payment (!paymentHashMap)) :> Payment.payment)) in ();
                if (!payment != (Obj.magic 0)) then begin
                    ignore (!paymentVector#add (!payment))
                end
            done;
            (!paymentVector :> BasicArrayList.basicArrayList)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, commonStrings#gET, e))
            end;
            ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end)
        end [@@warning "-7"]
    

    method getDefault ((userName : string)) : PaymentInterface.paymentInterface =
        try
        begin
        (try
            let paymentHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let updateKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!updateKeyAndValue#put ((EntryData.getInstance ())#dEFAULT, (EntryData.getInstance ())#dEFAULT));
            ignore (!updateKeyAndValue#put ((UserData.get_uSERNAME ()), userName));
            paymentHashMap := (super#getRow (!updateKeyAndValue));
            if (!paymentHashMap != (Obj.magic 0)) then begin
                let payment : Payment.payment ref = ref (((new Payment.payment (!paymentHashMap)) :> Payment.payment)) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "getDefault"))
                end;
                raise (Java_return (Obj.repr ((Obj.magic !payment))))
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "getDefault", e))
            end;
            ((Obj.magic 0) :> PaymentInterface.paymentInterface)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method remove ((userName : string), (index : int)) : unit =
        begin
        (try
            let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereHashMap#put ((UserData.get_uSERNAME ()), userName));
            ignore (!whereHashMap#put ((PaymentData.get_iD ()), (Obj.magic (string_of_int index))));
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
    

    method add : 'any2. string * 'any2 -> unit = fun ((userName : string), paymentInterface) ->
        let paymentInterface = Obj.repr paymentInterface in
        begin
        (try
            let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!vector#add (((new PaymentIdGenerator.paymentIdGenerator ())#getNext ())));
            ignore (!vector#add (userName));
            ignore (!vector#add ((StringUtil.getInstance ())#eMPTY_STRING));
            ignore (!vector#add (((Obj.magic paymentInterface)#getName ())));
            ignore (!vector#add (((Obj.magic paymentInterface)#getType ())));
            ignore (!vector#add (((Obj.magic paymentInterface)#getExpiration ())));
            let random : int ref = ref (((Obj.obj (java_new "Random" (Obj.repr ())))#nextInt ((Obj.magic (java_call_static "SuperCrypt.get_kEYMAX" (Obj.repr ())))))) in ();
            ignore (!vector#add (((Obj.obj (java_new "SuperCrypt" (Obj.repr (!random))))#encrypt (((Obj.magic paymentInterface)#getNumber ())))));
            ignore (!vector#add ((java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!random))))))));
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            ignore (!vector#add (!time));
            ignore (super#insert (!vector));
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
        let entryData : EntryData.entryData ref = ref (((EntryData.getInstance ()) :> EntryData.entryData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore ((((((((((((((((((((((((!stringBuffer#append (sqlStrings#cREATE_TABLE))#append (tableName))#append (sqlStrings#sTART))#append ((PaymentData.get_iD ())))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL))#append ((UserData.get_uSERNAME ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (!entryData#dEFAULT))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((PaymentData.get_nAME ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((PaymentData.get_tYPE ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((PaymentData.get_eXPIRATION ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append ((PaymentData.get_nUMBER ())))#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL))#append (!entryData#eNCRYPTION))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (!entryData#tIMECREATED))#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL))#append (sqlStrings#pRIMARY_KEY))#append ((PaymentData.get_iD ())))#append (sqlStrings#eND));
        (java_string_of (Obj.repr !stringBuffer))
        end [@@warning "-7"]
    

    method createTable () : string =
        begin
        (super#createTable ((self#createTableStatement ())))
        end [@@warning "-7"]
    

    method drop () : string =
        begin
        (super#dropTable ())
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "payment";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentEntity" (fun arguments -> Obj.repr (new paymentEntity (Obj.obj arguments)))


