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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.address.BillingAddressData *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class updateOrderHelper ((_hashMap : java_hash_map), pageContext) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable entryId : string = ""
    method entryId = entryId
    method set_entryId value' = entryId <- value'
    val mutable orderId : string = ""
    method orderId = orderId
    method set_orderId value' = orderId <- value'
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable shipDate : string = ""
    method shipDate = shipDate
    method set_shipDate value' = shipDate <- value'
    val mutable orderDate : string = ""
    method orderDate = orderDate
    method set_orderDate value' = orderDate <- value'
    val mutable transDate : string = ""
    method transDate = transDate
    method set_transDate value' = transDate <- value'
    val mutable cancelDate : string = ""
    method cancelDate = cancelDate
    method set_cancelDate value' = cancelDate <- value'
    val mutable status : string = ""
    method status = status
    method set_status value' = status <- value'
    val mutable paymentMethod : string = ""
    method paymentMethod = paymentMethod
    method set_paymentMethod value' = paymentMethod <- value'
    val mutable name : string = ""
    method name = name
    method set_name value' = name <- value'
    val mutable type_ : string = ""
    method type_ = type_
    method set_type_ value' = type_ <- value'
    val mutable expiration : string = ""
    method expiration = expiration
    method set_expiration value' = expiration <- value'
    val mutable number : string = ""
    method number = number
    method set_number value' = number <- value'
    val mutable encryption : string = ""
    method encryption = encryption
    method set_encryption value' = encryption <- value'
    val mutable billingName : string = ""
    method billingName = billingName
    method set_billingName value' = billingName <- value'
    val mutable billingStreet : string = ""
    method billingStreet = billingStreet
    method set_billingStreet value' = billingStreet <- value'
    val mutable billingCity : string = ""
    method billingCity = billingCity
    method set_billingCity value' = billingCity <- value'
    val mutable billingState : string = ""
    method billingState = billingState
    method set_billingState value' = billingState <- value'
    val mutable billingCode : string = ""
    method billingCode = billingCode
    method set_billingCode value' = billingCode <- value'
    val mutable billingCountry : string = ""
    method billingCountry = billingCountry
    method set_billingCountry value' = billingCountry <- value'
    val mutable shippingName : string = ""
    method shippingName = shippingName
    method set_shippingName value' = shippingName <- value'
    val mutable shippingStreet : string = ""
    method shippingStreet = shippingStreet
    method set_shippingStreet value' = shippingStreet <- value'
    val mutable shippingCity : string = ""
    method shippingCity = shippingCity
    method set_shippingCity value' = shippingCity <- value'
    val mutable shippingState : string = ""
    method shippingState = shippingState
    method set_shippingState value' = shippingState <- value'
    val mutable shippingCode : string = ""
    method shippingCode = shippingCode
    method set_shippingCode value' = shippingCode <- value'
    val mutable shippingCountry : string = ""
    method shippingCountry = shippingCountry
    method set_shippingCountry value' = shippingCountry <- value'
    val mutable shippingMethodName : string = ""
    method shippingMethodName = shippingMethodName
    method set_shippingMethodName value' = shippingMethodName <- value'
    val mutable subTotal : string = ""
    method subTotal = subTotal
    method set_subTotal value' = subTotal <- value'
    val mutable shippingCost : string = ""
    method shippingCost = shippingCost
    method set_shippingCost value' = shippingCost <- value'
    val mutable tax : string = ""
    method tax = tax
    method set_tax value' = tax <- value'
    val mutable total : string = ""
    method total = total
    method set_total value' = total <- value'
    val mutable special : string = ""
    method special = special
    method set_special value' = special <- value'
    val mutable userComment : string = ""
    method userComment = userComment
    method set_userComment value' = userComment <- value'
    val mutable userCancelComment : string = ""
    method userCancelComment = userCancelComment
    method set_userCancelComment value' = userCancelComment <- value'
    val mutable storeComment : string = ""
    method storeComment = storeComment
    method set_storeComment value' = storeComment <- value'
    val mutable storeCancelComment : string = ""
    method storeCancelComment = storeCancelComment
    method set_storeCancelComment value' = storeCancelComment <- value'
    
    

    method getFormData () : unit =
        begin
        entryId <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#iD));
        orderId <- ((Obj.magic request)#getParameter ((OrderData.get_iD ())));
        userName <- ((Obj.magic request)#getParameter ((UserData.get_uSERNAME ())));
        storeName <- ((Obj.magic request)#getParameter ((StoreFrontData.getInstance ())#nAME));
        shipDate <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sHIPPEDDATE ())));
        orderDate <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_oRDERDATE ())));
        transDate <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tRANSDATE ())));
        cancelDate <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_cANCELDATE ())));
        status <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sTATUS ())));
        paymentMethod <- ((Obj.magic request)#getParameter ((PaymentData.get_mETHOD ())));
        name <- ((Obj.magic request)#getParameter ((PaymentData.get_nAME ())));
        type_ <- ((Obj.magic request)#getParameter ((PaymentData.get_tYPE ())));
        expiration <- ((Obj.magic request)#getParameter ((PaymentData.get_eXPIRATION ())));
        number <- ((Obj.magic request)#getParameter ((PaymentData.get_nUMBER ())));
        encryption <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#eNCRYPTION));
        billingName <- ((Obj.magic request)#getParameter ((BillingAddressData.get_nAME ())));
        billingStreet <- ((Obj.magic request)#getParameter ((BillingAddressData.get_sTREET ())));
        billingCity <- ((Obj.magic request)#getParameter ((BillingAddressData.get_cITY ())));
        billingState <- ((Obj.magic request)#getParameter ((BillingAddressData.get_sTATE ())));
        billingCode <- ((Obj.magic request)#getParameter ((BillingAddressData.get_cODE ())));
        billingCountry <- ((Obj.magic request)#getParameter ((BillingAddressData.get_cOUNTRY ())));
        shippingName <- ((Obj.magic request)#getParameter ((ShippingAddressData.get_nAME ())));
        shippingStreet <- ((Obj.magic request)#getParameter ((ShippingAddressData.get_sTREET ())));
        shippingCity <- ((Obj.magic request)#getParameter ((ShippingAddressData.get_cITY ())));
        shippingState <- ((Obj.magic request)#getParameter ((ShippingAddressData.get_sTATE ())));
        shippingCode <- ((Obj.magic request)#getParameter ((ShippingAddressData.get_cODE ())));
        shippingCountry <- ((Obj.magic request)#getParameter ((ShippingAddressData.get_cOUNTRY ())));
        shippingMethodName <- ((Obj.magic request)#getParameter ((ShippingMethodData.get_nAME ())));
        subTotal <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sUBTOTAL ())));
        shippingCost <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sHIPPINGCOST ())));
        tax <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tAX ())));
        total <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_tOTAL ())));
        special <- ((Obj.magic request)#getParameter ((EntryData.getInstance ())#sPECIAL));
        userComment <- ((Obj.magic request)#getParameter ((OrderData.get_cUSTOMERCOMMENT ())));
        userCancelComment <- ((Obj.magic request)#getParameter ((OrderData.get_cUSTOMERCANCELCOMMENT ())));
        storeComment <- ((Obj.magic request)#getParameter ((OrderData.get_sTORECOMMENT ())));
        storeCancelComment <- ((Obj.magic request)#getParameter ((OrderData.get_sTORECANCELCOMMENT ())))
        end [@@warning "-7"]
    

    method update () : string =
        begin
        (try
            let success : string ref = ref ("Successful update") in ();
            let orderHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            let whereHashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
            ignore (!orderHashMap#put ((EntryData.getInstance ())#iD, entryId));
            ignore (!orderHashMap#put ((OrderData.get_iD ()), orderId));
            ignore (!orderHashMap#put ((UserData.get_uSERNAME ()), userName));
            ignore (!orderHashMap#put ((StoreFrontData.getInstance ())#nAME, storeName));
            ignore (!orderHashMap#put ((OrderHistoryData.get_sHIPPEDDATE ()), shipDate));
            ignore (!orderHashMap#put ((OrderHistoryData.get_oRDERDATE ()), orderDate));
            ignore (!orderHashMap#put ((OrderHistoryData.get_tRANSDATE ()), transDate));
            ignore (!orderHashMap#put ((OrderHistoryData.get_cANCELDATE ()), cancelDate));
            ignore (!orderHashMap#put ((OrderHistoryData.get_sTATUS ()), status));
            ignore (!orderHashMap#put ((PaymentData.get_mETHOD ()), paymentMethod));
            ignore (!orderHashMap#put ((PaymentData.get_nAME ()), name));
            ignore (!orderHashMap#put ((PaymentData.get_tYPE ()), type_));
            ignore (!orderHashMap#put ((PaymentData.get_eXPIRATION ()), expiration));
            ignore (!orderHashMap#put ((BillingAddressData.get_nAME ()), billingName));
            ignore (!orderHashMap#put ((BillingAddressData.get_sTREET ()), billingStreet));
            ignore (!orderHashMap#put ((BillingAddressData.get_cITY ()), billingCity));
            ignore (!orderHashMap#put ((BillingAddressData.get_sTATE ()), billingState));
            ignore (!orderHashMap#put ((BillingAddressData.get_cODE ()), billingCode));
            ignore (!orderHashMap#put ((BillingAddressData.get_cOUNTRY ()), billingCountry));
            ignore (!orderHashMap#put ((ShippingAddressData.get_nAME ()), shippingName));
            ignore (!orderHashMap#put ((ShippingAddressData.get_sTREET ()), shippingStreet));
            ignore (!orderHashMap#put ((ShippingAddressData.get_cITY ()), shippingCity));
            ignore (!orderHashMap#put ((ShippingAddressData.get_sTATE ()), shippingState));
            ignore (!orderHashMap#put ((ShippingAddressData.get_cODE ()), shippingCode));
            ignore (!orderHashMap#put ((ShippingAddressData.get_cOUNTRY ()), shippingCountry));
            ignore (!orderHashMap#put ((ShippingMethodData.get_nAME ()), shippingMethodName));
            ignore (!orderHashMap#put ((OrderHistoryData.get_sUBTOTAL ()), subTotal));
            ignore (!orderHashMap#put ((OrderHistoryData.get_sHIPPINGCOST ()), shippingCost));
            ignore (!orderHashMap#put ((OrderHistoryData.get_tAX ()), tax));
            ignore (!orderHashMap#put ((OrderHistoryData.get_tOTAL ()), total));
            ignore (!orderHashMap#put ((EntryData.getInstance ())#sPECIAL, special));
            ignore (!orderHashMap#put ((OrderData.get_cUSTOMERCOMMENT ()), userComment));
            ignore (!orderHashMap#put ((OrderData.get_cUSTOMERCANCELCOMMENT ()), userCancelComment));
            ignore (!orderHashMap#put ((OrderData.get_sTORECOMMENT ()), storeComment));
            ignore (!orderHashMap#put ((OrderData.get_sTORECANCELCOMMENT ()), storeCancelComment));
            ignore (!whereHashMap#put ((OrderData.get_iD ()), orderId));
            ignore ((OrderHistoryEntityFactory.getInstance ())#update (!whereHashMap, !orderHashMap));
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "update()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to update order table") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "update()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        entryId <- "";
        orderId <- "";
        userName <- "";
        storeName <- "";
        shipDate <- "";
        orderDate <- "";
        transDate <- "";
        cancelDate <- "";
        status <- "";
        paymentMethod <- "";
        name <- "";
        type_ <- "";
        expiration <- "";
        number <- "";
        encryption <- "";
        billingName <- "";
        billingStreet <- "";
        billingCity <- "";
        billingState <- "";
        billingCode <- "";
        billingCountry <- "";
        shippingName <- "";
        shippingStreet <- "";
        shippingCity <- "";
        shippingState <- "";
        shippingCode <- "";
        shippingCountry <- "";
        shippingMethodName <- "";
        subTotal <- "";
        shippingCost <- "";
        tax <- "";
        total <- "";
        special <- "";
        userComment <- "";
        userCancelComment <- "";
        storeComment <- "";
        storeCancelComment <- "";
        ();
        request <- Obj.repr ((Obj.magic (pageContext#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "UpdateOrderHelper" (fun arguments -> Obj.repr (new updateOrderHelper (Obj.obj arguments)))


