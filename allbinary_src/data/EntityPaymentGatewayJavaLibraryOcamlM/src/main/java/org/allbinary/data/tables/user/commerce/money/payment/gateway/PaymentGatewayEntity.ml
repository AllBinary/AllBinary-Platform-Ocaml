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
(* package org.allbinary.data.tables.user.commerce.money.payment.gateway *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayEncryptedMapping *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterfaceFactory *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentTypeUtil *)
(* import org.allbinary.data.generator.PaymentGatewayIdGenerator *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringMaker *)

class paymentGatewayEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ())))) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method add : 'any1. 'any1 -> unit = fun (paymentGatewayInterface) ->
        let paymentGatewayInterface = Obj.repr paymentGatewayInterface in
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, "add"))
            end;
            let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            ignore (!vector#add (((new PaymentGatewayIdGenerator.paymentGatewayIdGenerator ())#getNext ())));
            ignore (!vector#addAllList (((new PaymentGatewayEncryptedMapping.paymentGatewayEncryptedMapping ((Obj.magic paymentGatewayInterface)))#toVector ())));
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            ignore (!vector#add (!time));
            ignore (!vector#add (!time));
            ignore (super#insert (!vector));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, "add"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "add", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method update : 'any1. 'any1 -> unit = fun (paymentGatewayInterface) ->
        let paymentGatewayInterface = Obj.repr paymentGatewayInterface in
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            ignore ((Obj.magic paymentGatewayInterface)#setLastModified (!time));
            let whereKeyValuePairs : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereKeyValuePairs#put ((java_string_of (Obj.repr (StoreFrontData.getInstance ())#nAME)), ((Obj.magic paymentGatewayInterface)#getStoreName ())));
            ignore (!whereKeyValuePairs#put ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), ((Obj.magic paymentGatewayInterface)#getName ())));
            if ((!whereKeyValuePairs#get ((EntryData.getInstance ())#tIMECREATED)) != (Obj.magic 0)) then begin
                raise (Failure ("Don't update TimeCreated for update"))
            end;
            let updateHashMap : java_hash_map ref = ref ((((new PaymentGatewayEncryptedMapping.paymentGatewayEncryptedMapping ((Obj.magic paymentGatewayInterface)))#toHashMap ()) :> java_hash_map)) in ();
            ignore (super#updateWhere (!whereKeyValuePairs, !updateHashMap));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "update"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "update", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method getPaymentGatewayInterface : 'any2. string * 'any2 -> PaymentGatewayInterface.paymentGatewayInterface = fun ((storeName : string), paymentType) ->
        let paymentType = Obj.repr paymentType in
        try
        begin
        (try
            let paymentGatewayHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let whereKeyAndValue : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereKeyAndValue#put ((java_string_of (Obj.repr (StoreFrontData.getInstance ())#nAME)), storeName));
            ignore (!whereKeyAndValue#put ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), ((Obj.magic paymentType)#getName ())));
            paymentGatewayHashMap := (super#getRow (!whereKeyAndValue));
            if (!paymentGatewayHashMap != (Obj.magic 0)) then begin
                let userName : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (UserData.get_uSERNAME ()))))))) in ();
                let password : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (UserData.get_pASSWORD ()))))))) in ();
                let special1 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL1 ()))))))) in ();
                let special2 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL2 ()))))))) in ();
                let special3 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL3 ()))))))) in ();
                let special4 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL4 ()))))))) in ();
                let special5 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL5 ()))))))) in ();
                let special6 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL6 ()))))))) in ();
                let special7 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL7 ()))))))) in ();
                let special8 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL8 ()))))))) in ();
                let special9 : string ref = ref ((Obj.magic (!paymentGatewayHashMap#get ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL9 ()))))))) in ();
                let superCrypt : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "SuperCrypt" (Obj.repr ((PaymentGatewayData.get_cRYPTNUM ()))))))) in ();
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (UserData.get_uSERNAME ()))), ((Obj.magic !superCrypt)#decrypt (!userName))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (UserData.get_pASSWORD ()))), ((Obj.magic !superCrypt)#decrypt (!password))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL1 ()))), ((Obj.magic !superCrypt)#decrypt (!special1))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL2 ()))), ((Obj.magic !superCrypt)#decrypt (!special2))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL3 ()))), ((Obj.magic !superCrypt)#decrypt (!special3))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL4 ()))), ((Obj.magic !superCrypt)#decrypt (!special4))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL5 ()))), ((Obj.magic !superCrypt)#decrypt (!special5))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL6 ()))), ((Obj.magic !superCrypt)#decrypt (!special6))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL7 ()))), ((Obj.magic !superCrypt)#decrypt (!special7))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL8 ()))), ((Obj.magic !superCrypt)#decrypt (!special8))));
                ignore (!paymentGatewayHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL9 ()))), ((Obj.magic !superCrypt)#decrypt (!special9))));
                let paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface ref = ref ((((new PaymentGatewayInterfaceFactory.paymentGatewayInterfaceFactory ())#getInstance (!paymentGatewayHashMap)) :> PaymentGatewayInterface.paymentGatewayInterface)) in ();
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "getPaymentGatewayInterface()"))
                end;
                raise (Java_return (Obj.repr (!paymentGatewayInterface)))
            end else begin
                raise (Java_return (Obj.repr (((new PaymentGatewayInterfaceFactory.paymentGatewayInterfaceFactory ())#getInstance ((Obj.magic paymentType))))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (("Command Failed for paymentType: " ^ ((Obj.magic paymentType)#getName ())), self, "getPaymentGatewayInterface", e))
            end;
            ((Obj.magic 0) :> PaymentGatewayInterface.paymentGatewayInterface)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7-20"]
    

    method findPaymentTypeVectorByStore ((storeName : string)) : BasicArrayList.basicArrayList =
        try
        begin
        (try
            let paymentGatewayNameVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
            paymentGatewayNameVector := (super#getColumnWhere ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), (java_string_of (Obj.repr (StoreFrontData.getInstance ())#nAME)), storeName));
            if (!paymentGatewayNameVector != (Obj.magic 0)) then begin
                let paymentGatewayVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
                let size : int ref = ref ((!paymentGatewayNameVector#size ())) in ();
                for i = 0 to !size - 1 do
                    let paymentTypeString : string ref = ref ((Obj.magic (!paymentGatewayNameVector#get (i)))) in ();
                    let paymentType : BasicPaymentType.basicPaymentType ref = ref ((((BasicPaymentTypeUtil.getInstance ())#get (!paymentTypeString)) :> BasicPaymentType.basicPaymentType)) in ();
                    ignore (!paymentGatewayVector#add (!paymentType))
                done;
                if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                    ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "findPaymentTypeVectorByStore()"))
                end;
                raise (Java_return (Obj.repr (!paymentGatewayVector)))
            end else begin
                raise (Java_return (Obj.repr ((new BasicArrayListD.basicArrayListD ()))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "findPaymentTypeVectorByStore", e))
            end;
            ((Obj.magic 0) :> BasicArrayList.basicArrayList)
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method remove : 'any2. string * 'any2 -> unit = fun ((storeName : string), paymentType) ->
        let paymentType = Obj.repr paymentType in
        begin
        (try
            let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereHashMap#put ((java_string_of (Obj.repr (StoreFrontData.getInstance ())#nAME)), storeName));
            ignore (!whereHashMap#put ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), ((Obj.magic paymentType)#getName ())));
            ignore (super#deleteWhere (!whereHashMap));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, "remove"))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "remove", e))
            end
        end)
        end [@@warning "-7-20"]
    

    method createTableStatement () : string =
        begin
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append (sqlStrings#cREATE_TABLE));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (sqlStrings#sTART));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_iD ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_AUTO_INCREMENT_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#eNABLE));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((StoreFrontData.getInstance ())#nAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((PaymentData.get_mETHOD ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_mODE ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTPROTOCOL ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTSERVER ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTPORT ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_tESTPATH ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVERPROTOCOL ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVER ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVERPORT ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sERVERPATH ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((UserData.get_uSERNAME ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((UserData.get_pASSWORD ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_tIMEOUT ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPROTOCOL ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYSERVER ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPORT ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPATH ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYUSERNAME ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYPASSWORD ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_pROXYTIMEOUT ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL1 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL2 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL3 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL4 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL5 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL6 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL7 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL8 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_sPECIAL9 ())))));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#lASTMODIFIED));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((EntryData.getInstance ())#tIMECREATED));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (sqlStrings#pRIMARY_KEY));
        ignore (!stringBuffer#append ((java_string_of (Obj.repr (PaymentGatewayData.get_iD ())))));
        ignore (!stringBuffer#append (sqlStrings#eND));
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
        tableName <- "paymentgateways";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName));
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#cONSTRUCTOR, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewayEntity" (fun arguments -> Obj.repr (new paymentGatewayEntity (Obj.obj arguments)))


