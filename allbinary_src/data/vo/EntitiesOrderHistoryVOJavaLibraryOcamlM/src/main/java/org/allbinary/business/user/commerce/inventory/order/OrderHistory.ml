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
(* package org.allbinary.business.user.commerce.inventory.order *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.Date *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.address.BillingAddressData *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.MoneyException *)
(* import org.allbinary.business.user.commerce.money.payment.Payment *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class orderHistory ((basketInterface : BasketInterface.basketInterface)) =
  object (self)
    inherit Order.order (basketInterface) as super
    val mutable userName : string = ""
    method userName = userName
    method set_userName value' = userName <- value'
    val mutable shippingAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method shippingAddress = shippingAddress
    method set_shippingAddress value' = shippingAddress <- value'
    val mutable billingAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method billingAddress = billingAddress
    method set_billingAddress value' = billingAddress <- value'
    val mutable payment : Payment.payment = (Obj.magic 0)
    method payment = payment
    method set_payment value' = payment <- value'
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
    val mutable subTotal : Money.money = (Obj.magic 0)
    method subTotal = subTotal
    method set_subTotal value' = subTotal <- value'
    val mutable shippingCost : Money.money = (Obj.magic 0)
    method shippingCost = shippingCost
    method set_shippingCost value' = shippingCost <- value'
    val mutable taxes : Money.money = (Obj.magic 0)
    method taxes = taxes
    method set_taxes value' = taxes <- value'
    val mutable total : Money.money = (Obj.magic 0)
    method total = total
    method set_total value' = total <- value'
    
    
    
    

    method setUserName ((value : string)) : unit =
        begin
        userName <- value
        end [@@warning "-7"]
    

    method setDefaultShippingAddress : 'any1. 'any1 -> unit = fun (shippingAddress_arg) ->
        let shippingAddress_arg = Obj.repr shippingAddress_arg in
        begin
        shippingAddress <- (Obj.magic shippingAddress_arg)
        end [@@warning "-7-20"]
    

    method setBillingAddress : 'any1. 'any1 -> unit = fun (billingAddress_arg) ->
        let billingAddress_arg = Obj.repr billingAddress_arg in
        begin
        billingAddress <- (Obj.magic billingAddress_arg)
        end [@@warning "-7-20"]
    

    method setPaymentInfo : 'any1. 'any1 -> unit = fun (payment_arg) ->
        let payment_arg = Obj.repr payment_arg in
        begin
        payment <- (Obj.magic payment_arg)
        end [@@warning "-7-20"]
    

    method setShipDate ((value : string)) : unit =
        begin
        shipDate <- value
        end [@@warning "-7"]
    

    method setOrderDate ((value : string)) : unit =
        begin
        orderDate <- value
        end [@@warning "-7"]
    

    method setTransDate ((value : string)) : unit =
        begin
        transDate <- value
        end [@@warning "-7"]
    

    method setCancelDate ((value : string)) : unit =
        begin
        cancelDate <- value
        end [@@warning "-7"]
    

    method setStatus ((value : string)) : unit =
        begin
        status <- value
        end [@@warning "-7"]
    

    method setSubTotal : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        subTotal <- (Obj.magic value)
        end [@@warning "-7-20"]
    

    method setShippingCost : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        shippingCost <- (Obj.magic value)
        end [@@warning "-7-20"]
    

    method setTaxes : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        taxes <- (Obj.magic value)
        end [@@warning "-7-20"]
    

    method setTotal : 'any1. 'any1 -> unit = fun (value) ->
        let value = Obj.repr value in
        begin
        total <- (Obj.magic value)
        end [@@warning "-7-20"]
    

    method getUserName () : string =
        begin
        userName
        end [@@warning "-7"]
    

    method getShippingAddress () : StreetAddress.streetAddress =
        begin
        (shippingAddress :> StreetAddress.streetAddress)
        end [@@warning "-7"]
    

    method getBillingAddress () : StreetAddress.streetAddress =
        begin
        (billingAddress :> StreetAddress.streetAddress)
        end [@@warning "-7"]
    

    method getPaymentInfo () : Payment.payment =
        begin
        (payment :> Payment.payment)
        end [@@warning "-7"]
    

    method getShipDate () : string =
        begin
        shipDate
        end [@@warning "-7"]
    

    method getOrderDate () : string =
        begin
        orderDate
        end [@@warning "-7"]
    

    method getTransDate () : string =
        begin
        transDate
        end [@@warning "-7"]
    

    method getCancelDate () : string =
        begin
        cancelDate
        end [@@warning "-7"]
    

    method getStatus () : string =
        begin
        status
        end [@@warning "-7"]
    

    method getSubTotal () : Money.money =
        begin
        (subTotal :> Money.money)
        end [@@warning "-7"]
    

    method getShippingCost () : Money.money =
        begin
        (shippingCost :> Money.money)
        end [@@warning "-7"]
    

    method getTaxes () : Money.money =
        begin
        (taxes :> Money.money)
        end [@@warning "-7"]
    

    method getTotal () : Money.money =
        begin
        (total :> Money.money)
        end [@@warning "-7"]
    

    method toHashMap () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((UserData.get_uSERNAME ()), userName));
        ignore (!hashMap#put ((OrderHistoryData.get_oRDERDATE ()), orderDate));
        ignore (!hashMap#put ((OrderHistoryData.get_sHIPPEDDATE ()), shipDate));
        ignore (!hashMap#put ((OrderHistoryData.get_tRANSDATE ()), transDate));
        ignore (!hashMap#put ((OrderHistoryData.get_cANCELDATE ()), cancelDate));
        ignore (!hashMap#put ((OrderHistoryData.get_oRDERDATEFORMATTED ()), (java_string_of (Obj.repr (Obj.obj (java_new "Date" (Obj.repr (((Obj.obj (java_new "Long" (Obj.repr (orderDate))))#longValue ())))))))));
        ignore (!hashMap#put ((OrderHistoryData.get_sHIPPEDDATEFORMATTED ()), (java_string_of (Obj.repr (Obj.obj (java_new "Date" (Obj.repr (((Obj.obj (java_new "Long" (Obj.repr (shipDate))))#longValue ())))))))));
        ignore (!hashMap#put ((OrderHistoryData.get_tRANSDATEFORMATTED ()), (java_string_of (Obj.repr (Obj.obj (java_new "Date" (Obj.repr (((Obj.obj (java_new "Long" (Obj.repr (transDate))))#longValue ())))))))));
        ignore (!hashMap#put ((OrderHistoryData.get_cANCELDATEFORMATTED ()), (java_string_of (Obj.repr (Obj.obj (java_new "Date" (Obj.repr (((Obj.obj (java_new "Long" (Obj.repr (cancelDate))))#longValue ())))))))));
        ignore (!hashMap#put ((OrderHistoryData.get_sTATUS ()), status));
        ignore (!hashMap#put ((OrderHistoryData.get_sUBTOTAL ()), (java_string_of (Obj.repr subTotal))));
        ignore (!hashMap#put ((OrderHistoryData.get_tOTAL ()), (java_string_of (Obj.repr total))));
        ignore (!hashMap#put ((OrderHistoryData.get_sHIPPINGCOST ()), (java_string_of (Obj.repr shippingCost))));
        ignore (!hashMap#put ((OrderHistoryData.get_tAX ()), (java_string_of (Obj.repr taxes))));
        (!hashMap :> java_hash_map)
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((self#toHashMap ()) :> java_hash_map)) in ();
        let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let keyArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((OrderHistoryData.get_oRDERHISTORY ()))))) in ();
        ignore ((Obj.magic !node)#appendChild ((super#toXmlNode ((Obj.magic document)))));
        let billingAddressNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((BillingAddressData.get_bILLINGADDRESS ()))))) in ();
        ignore ((Obj.magic !billingAddressNode)#appendChild ((billingAddress#toXmlNode ((Obj.magic document)))));
        let shippingAddressNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ShippingAddressData.get_sHIPPINGADDRESS ()))))) in ();
        ignore ((Obj.magic !shippingAddressNode)#appendChild ((shippingAddress#toXmlNode ((Obj.magic document)))));
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !billingAddressNode)));
        ignore ((Obj.magic !node)#appendChild ((Obj.magic !shippingAddressNode)));
        ignore ((Obj.magic !node)#appendChild ((payment#toXmlNode ((Obj.magic document)))));
        for i = 0 to !size - 1 do
            let name : string ref = ref ((Obj.magic !keyArray.(i))) in ();
            let value : string ref = ref ((Obj.magic (!hashMap#get (!name)))) in ();
            value := ((StringUtil.getInstance ())#getNonNull (!value));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name, !value))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "OrderHistory" (fun arguments -> Obj.repr (new orderHistory (Obj.obj arguments)))


