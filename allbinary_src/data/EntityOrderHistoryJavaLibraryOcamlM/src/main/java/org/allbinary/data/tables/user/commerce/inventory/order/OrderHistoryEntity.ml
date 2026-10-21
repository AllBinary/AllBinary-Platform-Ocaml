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
(* package org.allbinary.data.tables.user.commerce.inventory.order *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Calendar *)
(* import java.util.HashMap *)
(* import java.util.Random *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.HistoryDbInitInfo *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.address.BillingAddressData *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.inventory.basket.Basket *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.Order *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentInterface *)
(* import org.allbinary.business.user.commerce.money.tax.TaxFactory *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethods *)
(* import org.allbinary.business.user.commerce.shipping.modules.ShippingInterface *)
(* import org.allbinary.data.generator.OrderHistoryIdGenerator *)
(* import org.allbinary.data.tables.TableDataFactory *)
(* import org.allbinary.data.tables.user.address.billing.BillingAddressesEntity *)
(* import org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity *)
(* import org.allbinary.data.tables.user.commerce.money.payment.PaymentEntity *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.control.crypt.SuperCrypt *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.system.security.licensing.AbeClientInformationInterface *)
(* import org.allbinary.logic.system.security.licensing.ServiceClientInformationInterfaceFactory *)

class orderHistoryEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new HistoryDbInitInfo.historyDbInitInfo ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method insert : 'any2. string * 'any2 -> unit = fun ((userName : string), order) ->
        let order = Obj.repr order in
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        (try
            let paymentInterface : PaymentInterface.paymentInterface ref = ref ((((new PaymentEntity.paymentEntity ())#getDefault (userName)) :> PaymentInterface.paymentInterface)) in ();
            let billingAddress : StreetAddress.streetAddress ref = ref ((((new BillingAddressesEntity.billingAddressesEntity (userName))#getDefault ()) :> StreetAddress.streetAddress)) in ();
            let shippingAddress : StreetAddress.streetAddress ref = ref ((((new ShippingAddressesEntity.shippingAddressesEntity (userName))#getDefault ()) :> StreetAddress.streetAddress)) in ();
            let abeClientInformation : AbeClientInformationInterface.abeClientInformationInterface ref = ref (((Obj.magic (java_call_static "ServiceClientInformationInterfaceFactory.getInstance" (Obj.repr ()))) :> AbeClientInformationInterface.abeClientInformationInterface)) in ();
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((Obj.magic order)#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let shippingInterface : ShippingInterface.shippingInterface ref = ref ((((new ShippingMethods.shippingMethods (!abeClientInformation, !storeFrontInterface))#getShippingInterface (((Obj.magic order)#getShippingMethod ()))) :> ShippingInterface.shippingInterface)) in ();
            let shippingCost : Money.money ref = ref (((!shippingInterface#getCost ((Obj.magic order))) :> Money.money)) in ();
            let basketInterface : BasketInterface.basketInterface ref = ref ((((Obj.magic order)#getBasket ()) :> BasketInterface.basketInterface)) in ();
            let subTotal : Money.money ref = ref (((!basketInterface#getSubTotal ()) :> Money.money)) in ();
            let taxRate : float ref = ref ((((TaxFactory.getInstance ())#getInstance (!abeClientInformation, !storeFrontInterface))#getTaxRate (!shippingAddress, !storeFrontInterface))) in ();
            let tax : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
            let total : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
            ignore (!total#add ((java_string_of (Obj.repr !shippingCost))));
            ignore (!total#add ((java_string_of (Obj.repr !subTotal))));
            ignore (!tax#add ((java_string_of (Obj.repr !total))));
            ignore (!tax#multiply (!taxRate));
            ignore (!total#add ((java_string_of (Obj.repr !tax))));
            let empty : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            ignore (!vector#add (((new OrderHistoryIdGenerator.orderHistoryIdGenerator ())#getNext ())));
            let zERO : string ref = ref ((TableDataFactory.getInstance ())#zERO_STRING) in ();
            ignore (!vector#add (((Obj.magic order)#getId ())));
            ignore (!vector#add (userName));
            ignore (!vector#add (((Obj.magic order)#getStoreName ())));
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            ignore (!vector#add (!zERO));
            ignore (!vector#add (!time));
            ignore (!vector#add (!zERO));
            ignore (!vector#add (!zERO));
            ignore (!vector#add ((OrderHistoryData.get_pREPROCESSING ())));
            ignore (!vector#add (((Obj.magic order)#getPaymentMethod ())));
            if (!paymentInterface != (Obj.magic 0)) then begin
                ignore (!vector#add ((!paymentInterface#getName ())));
                ignore (!vector#add ((!paymentInterface#getType ())));
                ignore (!vector#add ((!paymentInterface#getExpiration ())));
                let random : int ref = ref (((Obj.obj (java_new "Random" (Obj.repr ())))#nextInt ((Obj.magic (java_call_static "SuperCrypt.get_kEYMAX" (Obj.repr ())))))) in ();
                ignore (!vector#add (((Obj.obj (java_new "SuperCrypt" (Obj.repr (!random))))#encrypt ((!paymentInterface#getNumber ())))));
                ignore (!vector#add ((java_string_of (Obj.repr (Obj.obj (java_new "Integer" (Obj.repr (!random))))))))
            end else begin
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!zERO))
            end;
            if (!billingAddress != (Obj.magic 0)) then begin
                ignore (!vector#add ((!billingAddress#getName ())));
                ignore (!vector#add ((!billingAddress#getStreet ())));
                ignore (!vector#add ((!billingAddress#getCity ())));
                ignore (!vector#add ((!billingAddress#getState ())));
                ignore (!vector#add ((!billingAddress#getCode ())));
                ignore (!vector#add ((!billingAddress#getCountry ())))
            end else begin
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty))
            end;
            if (!shippingAddress != (Obj.magic 0)) then begin
                ignore (!vector#add ((!shippingAddress#getName ())));
                ignore (!vector#add ((!shippingAddress#getStreet ())));
                ignore (!vector#add ((!shippingAddress#getCity ())));
                ignore (!vector#add ((!shippingAddress#getState ())));
                ignore (!vector#add ((!shippingAddress#getCode ())));
                ignore (!vector#add ((!shippingAddress#getCountry ())))
            end else begin
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty));
                ignore (!vector#add (!empty))
            end;
            ignore (!vector#add (((Obj.magic order)#getShippingMethod ())));
            ignore (!vector#add ((java_string_of (Obj.repr !subTotal))));
            ignore (!vector#add ((java_string_of (Obj.repr !shippingCost))));
            ignore (!vector#add ((java_string_of (Obj.repr !tax))));
            ignore (!vector#add ((java_string_of (Obj.repr !total))));
            ignore (!vector#add (((Obj.magic order)#getSpecial ())));
            ignore (!vector#add (((Obj.magic order)#getUserComments ())));
            ignore (!vector#add (((Obj.magic order)#getUserCancelComments ())));
            ignore (!vector#add (((Obj.magic order)#getStoreComments ())));
            ignore (!vector#add (((Obj.magic order)#getStoreCancelComments ())));
            (self#insert (!vector));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sUCCESS, self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (("Command Failed: " ^ java_string_of (Obj.repr (!vector))), self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    (* Java overload insert(BasicArrayList) is not converted: OCaml has one method per name *)
    

    method setStatus ((orderId : string), (status : string)) : unit =
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            let updateHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!updateHashMap#put ((OrderHistoryData.get_sTATUS ()), status));
            if ((String.compare status ((OrderHistoryData.get_cANCELLED ()))) == 0) then begin
                ignore (!updateHashMap#put ((OrderHistoryData.get_cANCELDATE ()), !time))
            end else if ((String.compare status ((OrderHistoryData.get_sHIPPED ()))) == 0) then begin
                ignore (!updateHashMap#put ((OrderHistoryData.get_sHIPPEDDATE ()), !time))
            end;
            ignore (super#updateWhere ((OrderData.get_iD ()), orderId, !updateHashMap))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "setStatus", e))
            end
        end)
        end [@@warning "-7"]
    

    method setPaymentMethod ((orderId : string), (paymentMethod : string)) : unit =
        begin
        (try
            let calendar : java_calendar ref = ref (((java_calendar_get_instance ()) :> java_calendar)) in ();
            let time : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((java_string_of (Obj.repr (Obj.obj (java_new "Long" (Obj.repr ((!calendar#getTimeInMillis ())))))))))))) in ();
            let updateHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!updateHashMap#put ((PaymentData.get_mETHOD ()), paymentMethod));
            ignore (!updateHashMap#put ((OrderHistoryData.get_tRANSDATE ()), !time));
            ignore (super#updateWhere ((OrderData.get_iD ()), orderId, !updateHashMap))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "setPaymentMethod", e))
            end
        end)
        end [@@warning "-7"]
    

    method getStoreOrders : 'any1. 'any1 -> BasicArrayList.basicArrayList = fun (storeFrontInterface) ->
        let storeFrontInterface = Obj.repr storeFrontInterface in
        begin
        let orderReviewVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!whereHashMap#put ((StoreFrontData.getInstance ())#nAME, ((Obj.magic storeFrontInterface)#getName ())));
        let orderHashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!whereHashMap)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!orderHashMapVector#size ())) in ();
        for i = 0 to !size - 1 do
            let orderReviewHashMap : java_hash_map ref = ref (((Obj.magic (!orderHashMapVector#get (i))) :> java_hash_map)) in ();
            let orderReview : OrderHistory.orderHistory ref = ref (((new OrderHistory.orderHistory ((new Basket.basket ()), !orderReviewHashMap)) :> OrderHistory.orderHistory)) in ();
            ignore (!orderReviewVector#add (!orderReview))
        done;
        (!orderReviewVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7-20"]
    

    method getOrders ((userName : string)) : BasicArrayList.basicArrayList =
        begin
        let orderReviewVector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!whereHashMap#put ((UserData.get_uSERNAME ()), userName));
        let orderHashMapVector : BasicArrayList.basicArrayList ref = ref (((super#getRows (!whereHashMap)) :> BasicArrayList.basicArrayList)) in ();
        let size : int ref = ref ((!orderHashMapVector#size ())) in ();
        for index = 0 to !size - 1 do
            let orderReviewHashMap : java_hash_map ref = ref (((Obj.magic (!orderHashMapVector#get (index))) :> java_hash_map)) in ();
            let orderReview : OrderHistory.orderHistory ref = ref (((new OrderHistory.orderHistory ((new Basket.basket ()), !orderReviewHashMap)) :> OrderHistory.orderHistory)) in ();
            ignore (!orderReviewVector#add (!orderReview))
        done;
        (!orderReviewVector :> BasicArrayList.basicArrayList)
        end [@@warning "-7"]
    

    (* Java overload getOrders(String, String, String) is not converted: OCaml has one method per name *)
    

    (* Java overload getOrders(String, String) is not converted: OCaml has one method per name *)
    

    method getOrder ((id : string)) : OrderHistory.orderHistory =
        try
        begin
        let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!whereHashMap#put ((OrderData.get_iD ()), id));
        let orderReviewHashMap : java_hash_map ref = ref (((super#getRow (!whereHashMap)) :> java_hash_map)) in ();
        if (!orderReviewHashMap != (Obj.magic 0)) then begin
            let orderHistory : OrderHistory.orderHistory ref = ref (((new OrderHistory.orderHistory ((new Basket.basket ()), !orderReviewHashMap)) :> OrderHistory.orderHistory)) in ();
            raise (Java_return (Obj.repr (!orderHistory)))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method createTableStatement () : string =
        begin
        let entryData : EntryData.entryData ref = ref (((EntryData.getInstance ()) :> EntryData.entryData)) in ();
        let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
        ignore (!stringBuffer#append ("CREATE TABLE "));
        ignore (!stringBuffer#append (tableName));
        ignore (!stringBuffer#append (" ("));
        ignore (!stringBuffer#append (!entryData#iD));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((OrderData.get_iD ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((UserData.get_uSERNAME ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((StoreFrontData.getInstance ())#nAME));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_sHIPPEDDATE ())));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
        ignore (!stringBuffer#append ((OrderHistoryData.get_oRDERDATE ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_tRANSDATE ())));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
        ignore (!stringBuffer#append ((OrderHistoryData.get_cANCELDATE ())));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
        ignore (!stringBuffer#append ((OrderHistoryData.get_sTATUS ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((PaymentData.get_mETHOD ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((PaymentData.get_nAME ())));
        ignore (!stringBuffer#append (" VARCHAR(255) ,"));
        ignore (!stringBuffer#append ((PaymentData.get_tYPE ())));
        ignore (!stringBuffer#append (" VARCHAR(255) ,"));
        ignore (!stringBuffer#append ((PaymentData.get_eXPIRATION ())));
        ignore (!stringBuffer#append (" VARCHAR(255) ,"));
        ignore (!stringBuffer#append ((PaymentData.get_nUMBER ())));
        ignore (!stringBuffer#append (" VARCHAR(255) ,"));
        ignore (!stringBuffer#append (!entryData#eNCRYPTION));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
        ignore (!stringBuffer#append ((BillingAddressData.get_nAME ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((BillingAddressData.get_sTREET ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((BillingAddressData.get_cITY ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((BillingAddressData.get_sTATE ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((BillingAddressData.get_cODE ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((BillingAddressData.get_cOUNTRY ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_nAME ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_sTREET ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_cITY ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_sTATE ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_cODE ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_cOUNTRY ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingMethodData.get_nAME ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_sUBTOTAL ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_sHIPPINGCOST ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_tAX ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_tOTAL ())));
        ignore (!stringBuffer#append (sqlTypeStrings#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!entryData#sPECIAL));
        ignore (!stringBuffer#append (" VARCHAR(255) ,"));
        ignore (!stringBuffer#append ((OrderData.get_cUSTOMERCOMMENT ())));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append ((OrderData.get_cUSTOMERCANCELCOMMENT ())));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append ((OrderData.get_sTORECOMMENT ())));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append ((OrderData.get_sTORECANCELCOMMENT ())));
        ignore (!stringBuffer#append (sqlTypeStrings#bLOB_NOT_NULL));
        ignore (!stringBuffer#append ("PRIMARY KEY("));
        ignore (!stringBuffer#append (!entryData#iD));
        ignore (!stringBuffer#append (") )"));
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
    

    method update ((whereHashMap : java_hash_map), (orderHashMap : java_hash_map)) : unit =
        begin
        (try
            ignore (self#updateWhere (whereHashMap, orderHashMap))
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        tableName <- "orderhistory";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderHistoryEntity" (fun arguments -> Obj.repr (new orderHistoryEntity (Obj.obj arguments)))


