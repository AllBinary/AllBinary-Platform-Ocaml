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
(* package org.allbinary.business.installer *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.business.init.InitInfoEntity *)
(* import org.allbinary.business.init.db.DatabaseConnectionInfoInterface *)
(* import org.allbinary.business.init.db.DbConnectionInfo *)
(* import org.allbinary.business.init.db.HistoryDbInitInfo *)
(* import org.allbinary.business.init.db.InventoryDbInitInfo *)
(* import org.allbinary.business.init.db.LogDbInitInfo *)
(* import org.allbinary.business.init.db.StaticPagesDbInitInfo *)
(* import org.allbinary.business.init.db.UserDbInitInfo *)
(* import org.allbinary.data.tables.context.module.storefronts.StoreFrontsEntityFactory *)
(* import org.allbinary.data.tables.log.LogTableEntityFactory *)
(* import org.allbinary.data.tables.staticpages.StaticPagesEntityFactory *)
(* import org.allbinary.data.tables.transform.info.TransformInfoEntityBuilder *)
(* import org.allbinary.data.tables.user.UserEntityFactory *)
(* import org.allbinary.data.tables.user.address.billing.BillingAddressesEntityFactory *)
(* import org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderItemsEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.money.payment.PaymentEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.money.payment.transaction.TransactionResultEntityFactory *)
(* import org.allbinary.data.tables.user.quoterequest.QuoteRequestEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbDatabaseManagement *)
(* import org.allbinary.logic.io.AbDataOutputStream *)
(* import org.allbinary.logic.io.DataOutputStreamFactory *)
(* import org.allbinary.logic.io.file.AbFile *)
(* import org.allbinary.logic.io.file.FileFactory *)
(* import org.allbinary.logic.string.StringMaker *)

class initDbCrypted ((databaseConnectionInfoInterface : DatabaseConnectionInfoInterface.databaseConnectionInfoInterface)) =
  object (self)
    inherit AbDatabaseManagement.abDatabaseManagement ((Obj.magic databaseConnectionInfoInterface))
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable userDbInitInfo : Obj.t = Obj.repr 0
    method userDbInitInfo : 'r. 'r = Obj.magic userDbInitInfo
    method set_userDbInitInfo : 'v. 'v -> unit = fun value' -> userDbInitInfo <- Obj.repr value'
    val mutable inventoryDbInitInfo : InventoryDbInitInfo.inventoryDbInitInfo = (Obj.magic 0)
    method inventoryDbInitInfo = inventoryDbInitInfo
    method set_inventoryDbInitInfo value' = inventoryDbInitInfo <- value'
    val mutable historyDbInitInfo : HistoryDbInitInfo.historyDbInitInfo = (Obj.magic 0)
    method historyDbInitInfo = historyDbInitInfo
    method set_historyDbInitInfo value' = historyDbInitInfo <- value'
    val mutable staticpagesDbInitInfo : StaticPagesDbInitInfo.staticPagesDbInitInfo = (Obj.magic 0)
    method staticpagesDbInitInfo = staticpagesDbInitInfo
    method set_staticpagesDbInitInfo value' = staticpagesDbInitInfo <- value'
    val mutable logDbInitInfo : LogDbInitInfo.logDbInitInfo = (Obj.magic 0)
    method logDbInitInfo = logDbInitInfo
    method set_logDbInitInfo value' = logDbInitInfo <- value'
    val mutable sQL_FILE : string = ""
    method sQL_FILE = sQL_FILE
    method set_sQL_FILE value' = sQL_FILE <- value'
    
    

    method addUsers () : bool =
        try
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, mETHOD_ADD_USERS));
            userDbInitInfo <- Obj.repr ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ()))));
            inventoryDbInitInfo <- (new InventoryDbInitInfo.inventoryDbInitInfo ());
            historyDbInitInfo <- (new HistoryDbInitInfo.historyDbInitInfo ());
            staticpagesDbInitInfo <- (new StaticPagesDbInitInfo.staticPagesDbInitInfo ());
            logDbInitInfo <- (new LogDbInitInfo.logDbInitInfo ());
            let cUSTOMERDB : string ref = ref (((Obj.magic userDbInitInfo)#getName ())) in ();
            let cUSTOMERDBUSER : string ref = ref (((Obj.magic userDbInitInfo)#getUserName ())) in ();
            let cUSTOMERDBPASSWORD : string ref = ref (((Obj.magic userDbInitInfo)#getPassword ())) in ();
            if (not (self#addDbUser (!cUSTOMERDB, !cUSTOMERDBUSER, !cUSTOMERDBPASSWORD))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_USER)) ^ !cUSTOMERDBUSER), self, mETHOD_ADD_USERS));
                raise (Java_return (Obj.repr (false)))
            end;
            let iNVENTORYDB : string ref = ref ((inventoryDbInitInfo#getName ())) in ();
            let iNVENTORYDBUSER : string ref = ref ((inventoryDbInitInfo#getUserName ())) in ();
            let iNVENTORYDBPASSWORD : string ref = ref ((inventoryDbInitInfo#getPassword ())) in ();
            if (not (self#addDbUser (!iNVENTORYDB, !iNVENTORYDBUSER, !iNVENTORYDBPASSWORD))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_USER)) ^ !iNVENTORYDBUSER), self, mETHOD_ADD_USERS));
                raise (Java_return (Obj.repr (false)))
            end;
            let hISTORYDB : string ref = ref ((historyDbInitInfo#getName ())) in ();
            let hISTORYDBUSER : string ref = ref ((historyDbInitInfo#getUserName ())) in ();
            let hISTORYDBPASSWORD : string ref = ref ((historyDbInitInfo#getPassword ())) in ();
            if (not (self#addDbUser (!hISTORYDB, !hISTORYDBUSER, !hISTORYDBPASSWORD))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_USER)) ^ !hISTORYDBUSER), self, mETHOD_ADD_USERS));
                raise (Java_return (Obj.repr (false)))
            end;
            let sTATICPAGESDB : string ref = ref ((staticpagesDbInitInfo#getName ())) in ();
            let sTATICPAGESDBUSER : string ref = ref ((staticpagesDbInitInfo#getUserName ())) in ();
            let sTATICPAGESDBPASSWORD : string ref = ref ((staticpagesDbInitInfo#getPassword ())) in ();
            if (not (self#addDbUser (!sTATICPAGESDB, !sTATICPAGESDBUSER, !sTATICPAGESDBPASSWORD))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_USER)) ^ !sTATICPAGESDBUSER), self, mETHOD_ADD_USERS));
                raise (Java_return (Obj.repr (false)))
            end;
            let lOGDB : string ref = ref ((logDbInitInfo#getName ())) in ();
            let lOGDBUSER : string ref = ref ((logDbInitInfo#getUserName ())) in ();
            let lOGDBPASSWORD : string ref = ref ((logDbInitInfo#getPassword ())) in ();
            if (not (self#addDbUser (!lOGDB, !lOGDBUSER, !lOGDBPASSWORD))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_USER)) ^ !lOGDBUSER), self, mETHOD_ADD_USERS));
                raise (Java_return (Obj.repr (false)))
            end;
            ignore ((Obj.magic logUtil)#putF (commonStrings#eND, self, mETHOD_ADD_USERS));
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, mETHOD_ADD_USERS, e));
            true
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method addDatabases () : bool =
        try
        begin
        (try
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, mETHOD_ADD_DATABASES));
            userDbInitInfo <- Obj.repr ((Obj.obj (java_new "UserDbInitInfo" (Obj.repr ()))));
            inventoryDbInitInfo <- (new InventoryDbInitInfo.inventoryDbInitInfo ());
            historyDbInitInfo <- (new HistoryDbInitInfo.historyDbInitInfo ());
            staticpagesDbInitInfo <- (new StaticPagesDbInitInfo.staticPagesDbInitInfo ());
            logDbInitInfo <- (new LogDbInitInfo.logDbInitInfo ());
            let cUSTOMERDB : string ref = ref (((Obj.magic userDbInitInfo)#getName ())) in ();
            if (not (self#addDb (!cUSTOMERDB))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_DATABASE)) ^ !cUSTOMERDB), self, mETHOD_ADD_DATABASES));
                raise (Java_return (Obj.repr (false)))
            end;
            let iNVENTORYDB : string ref = ref ((inventoryDbInitInfo#getName ())) in ();
            if (not (self#addDb (!iNVENTORYDB))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_DATABASE)) ^ !iNVENTORYDB), self, mETHOD_ADD_DATABASES));
                raise (Java_return (Obj.repr (false)))
            end;
            let hISTORYDB : string ref = ref ((historyDbInitInfo#getName ())) in ();
            if (not (self#addDb (!hISTORYDB))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_DATABASE)) ^ !hISTORYDB), self, mETHOD_ADD_DATABASES));
                raise (Java_return (Obj.repr (false)))
            end;
            let sTATICPAGESDB : string ref = ref ((staticpagesDbInitInfo#getName ())) in ();
            if (not (self#addDb (!sTATICPAGESDB))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_DATABASE)) ^ !sTATICPAGESDB), self, mETHOD_ADD_DATABASES));
                raise (Java_return (Obj.repr (false)))
            end;
            let lOGDB : string ref = ref ((logDbInitInfo#getName ())) in ();
            if (not (self#addDb (!lOGDB))) then begin
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (uNABLE_TO_CREATE_DATABASE)) ^ !lOGDB), self, mETHOD_ADD_DATABASES));
                raise (Java_return (Obj.repr (false)))
            end;
            let file : Obj.t ref = ref ((Obj.repr ((Obj.magic (java_call_static "FileFactory.getInstance" (Obj.repr ())))#getInstance (sQL_FILE)))) in ();
            ignore ((Obj.magic !file)#createNewFile ());
            let idOutData : AbDataOutputStream.abDataOutputStream ref = ref ((((Obj.magic (java_call_static "DataOutputStreamFactory.getInstance" (Obj.repr ())))#getInstanceForAbFile ((Obj.magic !file))) :> AbDataOutputStream.abDataOutputStream)) in ();
            ignore (!idOutData#writeBytes ((java_string_of (Obj.repr sqlCommandLog))));
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, mETHOD_ADD_DATABASES, e));
            true
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method addTables () : bool =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, mETHOD_ADD_TABLES));
            ignore (!stringBuffer#append (((UserEntityFactory.getInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((StoreFrontsEntityFactory.getInstance ())#getStoreFrontsEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((BillingAddressesEntityFactory.getInstance ())#getInstance (stringUtil#eMPTY_STRING))#createTable ())));
            ignore (!stringBuffer#append ((((ShippingAddressesEntityFactory.getInstance ())#getInstance (stringUtil#eMPTY_STRING))#createTable ())));
            ignore (!stringBuffer#append ((((PaymentEntityFactory.getInstance ())#getPaymentEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((QuoteRequestEntityFactory.getInstance ())#getQuoteRequestEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append (((OrderHistoryEntityFactory.getInstance ())#createTable ())));
            ignore (!stringBuffer#append (((OrderItemsEntityFactory.getInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((TransactionEntityFactory.getInstance ())#getTransactionEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((TransactionResultEntityFactory.getInstance ())#getTransactionResultEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append (((PaymentGatewayEntityFactory.getInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append (((new InitInfoEntity.initInfoEntity ())#createTable ())));
            ignore (!stringBuffer#append ((((LogTableEntityFactory.getInstance ())#getLogTableEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append ((((StaticPagesEntityFactory.getInstance ())#getStaticPagesEntityInstance ())#createTable ())));
            ignore (!stringBuffer#append (((TransformInfoEntityBuilder.getInstance ())#createTable ())));
            ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr (aDD_TABLES_RESULTS_LABEL)) ^ (java_string_of (Obj.repr !stringBuffer))), self, mETHOD_ADD_TABLES));
            true
        with e -> begin
            ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, mETHOD_ADD_TABLES, e));
            false
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        userDbInitInfo <- (Obj.repr (Obj.magic 0));
        inventoryDbInitInfo <- ((Obj.magic 0) :> InventoryDbInitInfo.inventoryDbInitInfo);
        historyDbInitInfo <- ((Obj.magic 0) :> HistoryDbInitInfo.historyDbInitInfo);
        staticpagesDbInitInfo <- ((Obj.magic 0) :> StaticPagesDbInitInfo.staticPagesDbInitInfo);
        logDbInitInfo <- ((Obj.magic 0) :> LogDbInitInfo.logDbInitInfo);
        sQL_FILE <- "initWeblisket.sql";
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "InitDbCrypted" (fun arguments -> Obj.repr (new initDbCrypted (Obj.obj arguments)))


