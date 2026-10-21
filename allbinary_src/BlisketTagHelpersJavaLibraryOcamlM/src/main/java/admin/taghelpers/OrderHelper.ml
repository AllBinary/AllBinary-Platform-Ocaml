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
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.Order *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderProcessorUtil *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayInterface *)
(* import org.allbinary.business.user.commerce.money.payment.types.BasicPaymentType *)
(* import org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntity *)
(* import org.allbinary.data.tables.user.commerce.money.payment.gateway.PaymentGatewayEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class orderHelper ((propertiesHashMap_arg : java_hash_map), pageContext_arg) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value' = weblisketSession <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    
    

    method setPaymentGateway () : bool =
        begin
        (try
            let paymentGatewayBoolean : bool ref = ref (false) in ();
            let orderInterface : OrderInterface.orderInterface ref = ref (((weblisketSession#getOrder ()) :> OrderInterface.orderInterface)) in ();
            let requestPaymentGateway : string ref = ref ((Obj.magic ((Obj.magic request)#getParameter ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))))))) in ();
            if (not ((StringValidationUtil.getInstance ())#isEmpty (!requestPaymentGateway))) then begin
                ignore (weblisketSession#setPaymentMethod (!requestPaymentGateway));
                ignore (!orderInterface#setPaymentMethod (!requestPaymentGateway));
                paymentGatewayBoolean := true
            end;
            let paymentGatewayEntityInterface : PaymentGatewayEntity.paymentGatewayEntity ref = ref (((Obj.magic (PaymentGatewayEntityFactory.getInstance ())) :> PaymentGatewayEntity.paymentGatewayEntity)) in ();
            let paymentTypeVector : BasicArrayList.basicArrayList ref = ref (((!paymentGatewayEntityInterface#findPaymentTypeVectorByStore ((weblisketSession#getStoreName ()))) :> BasicArrayList.basicArrayList)) in ();
            if ((!paymentTypeVector#size ()) = 1) then begin
                let paymentType : BasicPaymentType.basicPaymentType ref = ref (((Obj.magic (!paymentTypeVector#get (0))) :> BasicPaymentType.basicPaymentType)) in ();
                let paymentGatewayInterface : PaymentGatewayInterface.paymentGatewayInterface ref = ref (((Obj.magic (!paymentGatewayEntityInterface#getPaymentGatewayInterface ((weblisketSession#getStoreName ()), !paymentType))) :> PaymentGatewayInterface.paymentGatewayInterface)) in ();
                let paymentGateway : string ref = ref ((!paymentGatewayInterface#getName ())) in ();
                ignore (weblisketSession#setPaymentMethod (!paymentGateway));
                ignore (!orderInterface#setPaymentMethod (!paymentGateway));
                paymentGatewayBoolean := true
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Successfully set PaymentGateway Order: "));
                ignore (!stringBuffer#append ((!orderInterface#getId ())));
                ignore (!stringBuffer#append (" to: "));
                ignore (!stringBuffer#append ((!orderInterface#getPaymentMethod ())));
                ignore ((Obj.magic logUtil)#putF ((java_string_of (Obj.repr !stringBuffer)), self, "setPaymentGateway()"))
            end;
            !paymentGatewayBoolean
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
                ignore (!stringBuffer#append ("Failed to set PaymentGateway for Order: "));
                (try
                    let orderInterface : OrderInterface.orderInterface ref = ref (((weblisketSession#getOrder ()) :> OrderInterface.orderInterface)) in ();
                    if (!orderInterface != (Obj.magic 0)) then begin
                        ignore (!stringBuffer#append ((!orderInterface#getId ())));
                        ignore (!stringBuffer#append (" to: "));
                        ignore (!stringBuffer#append ((!orderInterface#getPaymentMethod ())))
                    end
                with ex -> begin
                    ignore (!stringBuffer#append (" Exception Getting"))
                end);
                ignore ((Obj.magic logUtil)#put ((java_string_of (Obj.repr !stringBuffer)), self, "setPaymentGateway()", e))
            end;
            false
        end)
        end [@@warning "-7"]
    

    method process () : string =
        begin
        (try
            let order : OrderInterface.orderInterface ref = ref (((weblisketSession#getOrder ()) :> OrderInterface.orderInterface)) in ();
            ignore (!order#setStoreName ((storeFrontInterface#getName ())));
            let result : string ref = ref (((OrderProcessorUtil.getInstance ())#process ((weblisketSession#getUserName ()), (Obj.magic !order)))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (("Successfully Processed Order: " ^ !result), self, "processOrder()"))
            end;
            !result
        with e -> begin
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            ignore (!stringBuffer#append ("Failed to Process Order: "));
            (try
                ignore (!stringBuffer#append (((weblisketSession#getOrder ())#getId ())))
            with ex -> begin
                ignore (!stringBuffer#append (" Exception Getting Id"))
            end);
            let error : string ref = ref ((java_string_of (Obj.repr !stringBuffer))) in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        ();
        ();
        ();
        ();
        propertiesHashMap <- propertiesHashMap_arg;
        pageContext <- Obj.repr (pageContext_arg);
        request <- Obj.repr ((Obj.magic (pageContext_arg#getRequest ())));
        let storeName : string ref = ref ((Obj.magic (propertiesHashMap_arg#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!storeName))) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName))
        end;
        weblisketSession <- (new WeblisketSession.weblisketSession (propertiesHashMap, (Obj.magic pageContext)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderHelper" (fun arguments -> Obj.repr (new orderHelper (Obj.obj arguments)))


