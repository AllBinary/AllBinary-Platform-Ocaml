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
(* import java.util.HashMap *)
(* import java.util.ListIterator *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.init.db.HistoryDbInitInfo *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketReview *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemData *)
(* import org.allbinary.business.user.commerce.inventory.item.Item *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.data.generator.OrderItemIdGenerator *)
(* import org.allbinary.data.tables.TableDataFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.sql.AbSqlBean *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringUtil *)

class orderItemsEntity () =
  object (self)
    inherit AbSqlBean.abSqlBean ((new HistoryDbInitInfo.historyDbInitInfo ())) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable basicItemData : BasicItemData.basicItemData = (Obj.magic 0)
    method basicItemData = basicItemData
    method set_basicItemData value' = basicItemData <- value'
    val mutable tableName : string = ""
    method tableName = tableName
    method set_tableName value' = tableName <- value'
    
    

    method insert : 'any2. string * 'any2 -> unit = fun ((userName : string), order) ->
        let order = Obj.repr order in
        begin
        let vector : BasicArrayList.basicArrayList ref = ref (((new BasicArrayListD.basicArrayListD ()) :> BasicArrayList.basicArrayList)) in ();
        (try
            let basket : BasketInterface.basketInterface ref = ref ((((Obj.magic order)#getBasket ()) :> BasketInterface.basketInterface)) in ();
            let items : Obj.t ref = ref ((Obj.repr (!basket#getIds ()))) in ();
            let zERO_STRING : string ref = ref ((TableDataFactory.getInstance ())#zERO_STRING) in ();
            let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
            let inventoryEntity : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
            let itemsArray : Obj.t array ref = ref (((Obj.magic !items)#toArray ())) in ();
            let itemsSize : int ref = ref ((Array.length !itemsArray)) in ();
            for i = 0 to !itemsSize - 1 do
                let item : string ref = ref ((Obj.magic !itemsArray.(i))) in ();
                let itemInterface : ItemInterface.itemInterface ref = ref (((!inventoryEntity#getItem (!item)) :> ItemInterface.itemInterface)) in ();
                vector := (new BasicArrayListD.basicArrayListD ());
                ignore (!vector#add (((new OrderItemIdGenerator.orderItemIdGenerator ())#getNext ())));
                ignore (!vector#add (((Obj.magic order)#getId ())));
                ignore (!vector#add ((TableDataFactory.getInstance ())#iNTEGER_MAX_VALUE_STRING));
                ignore (!vector#add (userName));
                ignore (!vector#add (((Obj.magic order)#getStoreName ())));
                ignore (!vector#add ((!itemInterface#getId ())));
                ignore (!vector#add ((java_string_of (Obj.repr (!basket#getNumberOf (!item))))));
                ignore (!vector#add ((!itemInterface#getNewOrUsed ())));
                ignore (!vector#add ((!itemInterface#getSummary ())));
                ignore (!vector#add ((!itemInterface#getDistributor ())));
                ignore (!vector#add ((!itemInterface#getIdUsedByDistributor ())));
                ignore (!vector#add ((!itemInterface#getProducedBy ())));
                ignore (!vector#add ((!itemInterface#getProductionDate ())));
                ignore (!vector#add ((!itemInterface#getStartProductionDate ())));
                ignore (!vector#add ((!itemInterface#getDescription ())));
                ignore (!vector#add ((!itemInterface#getKeywords ())));
                ignore (!vector#add ((!itemInterface#getCategory ())));
                ignore (!vector#add ((!itemInterface#getType ())));
                ignore (!vector#add ((!itemInterface#getSmallImage ())));
                ignore (!vector#add ((!itemInterface#getMediumImage ())));
                ignore (!vector#add ((!itemInterface#getLargeImage ())));
                ignore (!vector#add ((!itemInterface#getWeight ())));
                ignore (!vector#add ((java_string_of (Obj.repr (!itemInterface#getPrice ())))));
                ignore (!vector#add ((!itemInterface#getComment ())));
                ignore (!vector#add ((!itemInterface#getCustoms ())));
                ignore (!vector#add ((!itemInterface#getDownloads ())));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!eMPTY_STRING));
                ignore (!vector#add (!zERO_STRING));
                ignore (!vector#add (!zERO_STRING));
                ignore (!vector#add (!zERO_STRING));
                ignore (!vector#add (!zERO_STRING));
                (self#insert (!vector))
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#putF (("Command Success Added: " ^ java_string_of (Obj.repr (((Obj.magic !items)#size ())))), self, iNSERT))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put (("Command Failed: " ^ (java_string_of (Obj.repr !vector))), self, iNSERT, e))
            end
        end)
        end [@@warning "-7-20"]
    

    method setStatus ((orderId : string), (groupId : string), (status : string)) : unit =
        begin
        (try
            let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let updateHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!whereHashMap#put ((OrderData.get_iD ()), orderId));
            ignore (!whereHashMap#put ((ShippingMethodData.get_gROUP ()), groupId));
            ignore (!updateHashMap#put ((OrderHistoryData.get_sTATUS ()), status));
            ignore (super#updateWhere (!whereHashMap, !updateHashMap))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "setStatus", e))
            end
        end)
        end [@@warning "-7"]
    

    method isEverythingShipped ((orderId : string)) : bool =
        try
        begin
        (try
            let itemStatusVector : BasicArrayList.basicArrayList ref = ref (((super#getColumnWhere ((OrderHistoryData.get_sTATUS ()), (OrderData.get_iD ()), orderId)) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!itemStatusVector#size ())) in ();
            for index = 0 to !size - 1 do
                let status : string ref = ref ((Obj.magic (!itemStatusVector#get (index)))) in ();
                if ((String.compare !status ((OrderHistoryData.get_sHIPPED ()))) != 0) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            done;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "isEverythingShipped", e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method getBasketReview ((orderId : string)) : BasketReview.basketReview =
        try
        begin
        (try
            let basketReview : BasketReview.basketReview ref = ref (((new BasketReview.basketReview ()) :> BasketReview.basketReview)) in ();
            let keyValues : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!keyValues#put ((OrderData.get_iD ()), orderId));
            let items : BasicArrayList.basicArrayList ref = ref (((super#getRows (!keyValues)) :> BasicArrayList.basicArrayList)) in ();
            let entryData : EntryData.entryData ref = ref (((EntryData.getInstance ()) :> EntryData.entryData)) in ();
            if ((!items != (Obj.magic 0)) && ((!items#size ()) > 0)) then begin
                let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
                let itemsArray : Obj.t array ref = ref ((!items#toArray ())) in ();
                let itemsSize : int ref = ref ((Array.length !itemsArray)) in ();
                for i = 0 to !itemsSize - 1 do
                    let itemHashMap : java_hash_map ref = ref (((Obj.magic !itemsArray.(i)) :> java_hash_map)) in ();
                    ignore (!itemHashMap#put (basicItemData#iNBASKETS, !eMPTY_STRING));
                    ignore (!itemHashMap#put (!entryData#eNABLE, !eMPTY_STRING));
                    ignore (!itemHashMap#put (!entryData#tIMECREATED, !eMPTY_STRING));
                    ignore (!itemHashMap#put (!entryData#lASTMODIFIED, !eMPTY_STRING));
                    ignore (!itemHashMap#put (basicItemData#gROUPS, !eMPTY_STRING));
                    ignore (!itemHashMap#put (basicItemData#oPTIONS, !eMPTY_STRING));
                    ignore (!itemHashMap#put (basicItemData#pERMISSIONS, !eMPTY_STRING));
                    ignore (!itemHashMap#put (basicItemData#sPECIALS, !eMPTY_STRING));
                    let item : Obj.t ref = ref ((Obj.repr (Obj.obj (java_new "Item" (Obj.repr (!itemHashMap)))))) in ();
                    ignore (!basketReview#addItem ((Obj.magic !item)))
                done;
                raise (Java_return (Obj.repr (!basketReview)))
            end else begin
                raise (Java_return (Obj.repr ((Obj.magic 0))))
            end
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLLOGGING)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "getBasketReview", e))
            end;
            ((Obj.magic 0) :> BasketReview.basketReview)
        end)
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
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((OrderData.get_iD ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingMethodData.get_gROUP ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((UserData.get_uSERNAME ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((StoreFrontData.getInstance ())#nAME));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#iD));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#nUMBER));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#nEWORUSED));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sUMMARY));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#dISTRIBUTOR));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#iDUSEDBYDISTRIBUTOR));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pRODUCEDBY));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pRODUCTIONDATE));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sTARTPRODUCTIONDATE));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#dESCRIPTION));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#kEYWORDS));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#cATEGORY));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#tYPE));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#sMALLIMAGE));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#mEDIUMIMAGE));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#lARGEIMAGE));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#wEIGHT));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#pRICE));
        ignore (!stringBuffer#append (" VARCHAR(20) NOT NULL,"));
        ignore (!stringBuffer#append (basicItemData#cOMMENT));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#bLOB_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#cUSTOMS));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append (basicItemData#dOWNLOADS));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingMethodData.get_cOST ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_tAX ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_nAME ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_sTREET ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_cITY ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_sTATE ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_cODE ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingAddressData.get_cOUNTRY ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((ShippingMethodData.get_nAME ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append (!entryData#sPECIAL));
        ignore (!stringBuffer#append (" VARCHAR(255) ,"));
        ignore (!stringBuffer#append ((OrderHistoryData.get_sTATUS ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_cANCELINFO ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_cANCELTYPE ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_CHAR_COLUMN_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_sHIPPEDDATE ())));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
        ignore (!stringBuffer#append ((OrderHistoryData.get_oRDERDATE ())));
        ignore (!stringBuffer#append ((self#sqlTypeStrings)#mAX_BIG_INT_UNSIGNED_NOT_NULL));
        ignore (!stringBuffer#append ((OrderHistoryData.get_tRANSDATE ())));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
        ignore (!stringBuffer#append ((OrderHistoryData.get_cANCELDATE ())));
        ignore (!stringBuffer#append (" BIGINT(19) UNSIGNED ,"));
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

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        basicItemData <- ((BasicItemData.getInstance ()) :> BasicItemData.basicItemData);
        tableName <- "orderitems";
        ();
        (* super(...) is the inherit clause *) ();
        ignore (self#setTableName (tableName))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderItemsEntity" (fun arguments -> Obj.repr (new orderItemsEntity (Obj.obj arguments)))


