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
(* package org.allbinary.business.user.commerce.money.payment.gateway.transaction *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.inventory.basket.Basket *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.payment.Payment *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.commerce.money.payment.types.TenderTypeFactory *)
(* import org.allbinary.business.user.commerce.money.payment.types.TransactionTypeFactory *)
(* import org.allbinary.data.generator.OrderIdGenerator *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoHttpInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.allbinary.string.CommonStrings *)

class paymentTransactionInterfaceRequestFactory () =
  object (self)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable commonStrings : CommonStrings.commonStrings = (Obj.magic 0)
    method commonStrings = commonStrings
    method set_commonStrings value' = commonStrings <- value'
    
    

    (* Java overload getInstance(TransformInfoInterface) is not converted: OCaml has one method per name *)
    

    method generateFromTestData : 'any1. 'any1 -> PaymentTransactionInterface.paymentTransactionInterface = fun (transformInfoInterface) ->
        let transformInfoInterface = Obj.repr transformInfoInterface in
        begin
        (try
            let httpTransformInfoInterface : TransformInfoHttpInterface.transformInfoHttpInterface ref = ref (((Obj.magic (Obj.magic transformInfoInterface)) :> TransformInfoHttpInterface.transformInfoHttpInterface)) in ();
            let propertiesHashMap : java_hash_map ref = ref (((!httpTransformInfoInterface#getPropertiesHashMap ()) :> java_hash_map)) in ();
            let pageContext : Obj.t ref = ref ((Obj.repr (!httpTransformInfoInterface#getPageContext ()))) in ();
            let weblisketSession : WeblisketSession.weblisketSession ref = ref (((new WeblisketSession.weblisketSession (!propertiesHashMap, (Obj.magic !pageContext))) :> WeblisketSession.weblisketSession)) in ();
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance ((!weblisketSession#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let httpServletRequest : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic !pageContext)#getRequest ())))) in ();
            let gatewayName : string ref = ref ((Obj.magic (!weblisketSession#getPaymentMethod ()))) in ();
            if ((StringValidationUtil.getInstance ())#isEmpty (!gatewayName)) then begin
                gatewayName := ((Obj.magic !httpServletRequest)#getParameter ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ())))))
            end;
            let transactionType : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ((PaymentData.get_tRANSACTIONTYPE ())))) in ();
            let tenderType : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ((PaymentData.get_tENDERTYPE ())))) in ();
            let payment : Payment.payment ref = ref (((new Payment.payment ()) :> Payment.payment)) in ();
            ignore (!payment#setTransactionType (!transactionType));
            ignore (!payment#setTenderType (!tenderType));
            let orderReview : OrderHistory.orderHistory ref = ref (((new OrderHistory.orderHistory ((new Basket.basket ()))) :> OrderHistory.orderHistory)) in ();
            ignore (!orderReview#setStoreName ((!storeFrontInterface#getName ())));
            ignore (!orderReview#setPaymentMethod (!gatewayName));
            ignore (!orderReview#setUserName ("testing"));
            let orderId : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("orderNumber"))) in ();
            if ((!orderId = (Obj.magic 0)) || ((String.compare !orderId ((StringUtil.getInstance ())#eMPTY_STRING)) == 0)) then begin
                orderId := ((new OrderIdGenerator.orderIdGenerator ())#getNext ());
                ignore (!orderReview#setId (!orderId));
                let account : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("account"))) in ();
                let expirationDate : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("expirationDate"))) in ();
                let checkNumber : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("checkNumber"))) in ();
                let driversLicense : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("driversLicense"))) in ();
                let magneticInkCheckReader : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("magneticInkCheckReader"))) in ();
                let aba : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("aba"))) in ();
                let accountType : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("accountType"))) in ();
                let name : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("name"))) in ();
                ignore (!payment#setName (!name));
                ignore (!payment#setNumber (!account));
                ignore (!payment#setExpiration (!expirationDate));
                ignore (!payment#setCheckNumber (!checkNumber));
                ignore (!payment#setDriversLicense (!driversLicense));
                ignore (!payment#setMagneticInkCheckReader (!magneticInkCheckReader));
                ignore (!payment#setAba (!aba));
                ignore (!payment#setAccountType (!accountType));
                let street : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("street"))) in ();
                let city : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("city"))) in ();
                let state : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("state"))) in ();
                let zip : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("zip"))) in ();
                let streetAddress : StreetAddress.streetAddress ref = ref (((new StreetAddress.streetAddress ()) :> StreetAddress.streetAddress)) in ();
                ignore (!streetAddress#setName (!name));
                ignore (!streetAddress#setStreet (!street));
                ignore (!streetAddress#setCity (!city));
                ignore (!streetAddress#setState (!state));
                ignore (!streetAddress#setCode (!zip));
                let email : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("email"))) in ();
                let amount : string ref = ref (((Obj.magic !httpServletRequest)#getParameter ("amount"))) in ();
                ignore (!orderReview#setTotal ((new Money.money (!amount))));
                ignore (!orderReview#setBillingAddress (!streetAddress))
            end else begin
                ignore (!orderReview#setId (!orderId))
            end;
            ignore (!orderReview#setPaymentInfo (!payment));
            let paymentTransactionInterface : PaymentTransactionInterface.paymentTransactionInterface ref = ref ((((PaymentTransactionInterfaceFactory.getInstance ())#getInstance (!orderReview)) :> PaymentTransactionInterface.paymentTransactionInterface)) in ();
            (!paymentTransactionInterface :> PaymentTransactionInterface.paymentTransactionInterface)
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#pAYMENTERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "generatePaymentTransactionInterfaceFromTestData()", e))
            end;
            raise e
        end)
        end [@@warning "-20"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        commonStrings <- ((CommonStrings.getInstance ()) :> CommonStrings.commonStrings);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentTransactionInterfaceRequestFactory" (fun arguments -> Obj.repr (new paymentTransactionInterfaceRequestFactory (Obj.obj arguments)))

let instance = (new paymentTransactionInterfaceRequestFactory ())
let get_instance () = instance
let () = java_register_static "PaymentTransactionInterfaceRequestFactory.get_instance" (fun _ -> Obj.repr (get_instance ()))

let getInstance () =
        begin
        instance
        end
let () = java_register_static "PaymentTransactionInterfaceRequestFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))


