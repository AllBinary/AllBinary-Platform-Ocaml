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
(* package taghelpers *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import admin.taghelpers.TagHelper *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryFactory *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryInterface *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityFactory *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntityInterface *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class orderHistoryHelper ((propertiesHashMap_arg : java_hash_map), pageContext_arg) =
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
    val mutable streetAddress : StreetAddress.streetAddress = (Obj.magic 0)
    method streetAddress = streetAddress
    method set_streetAddress value' = streetAddress <- value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
    val mutable groupId : string = ""
    method groupId = groupId
    method set_groupId value' = groupId <- value'
    val mutable status : string = ""
    method status = status
    method set_status value' = status <- value'
    val mutable newStatus : string = ""
    method newStatus = newStatus
    method set_newStatus value' = newStatus <- value'
    
    

    method getFormData () : unit =
        begin
        id <- ((Obj.magic request)#getParameter ((OrderData.get_iD ())));
        groupId <- ((Obj.magic request)#getParameter ((ShippingMethodData.get_gROUP ())));
        if (newStatus = (Obj.magic 0)) then begin
            newStatus <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sTATUS ())))
        end
        end [@@warning "-7"]
    

    method setOrderStatus () : string =
        try
        begin
        (try
            let success : string ref = ref (("Status successfully set to: " ^ status)) in ();
            let orderReviewInterface : OrderHistoryInterface.orderHistoryInterface ref = ref (((OrderHistoryFactory.getInstance (id)) :> OrderHistoryInterface.orderHistoryInterface)) in ();
            let status_arg : string ref = ref ((!orderReviewInterface#getStatus ())) in ();
            if ((String.compare !status_arg ((OrderHistoryData.get_cANCELLED ()))) == 0) then begin
                raise (Java_return (Obj.repr ((("Order " ^ id) ^ " Already Cancelled<br/>"))))
            end else if ((String.compare !status_arg ((OrderHistoryData.get_sHIPPED ()))) == 0) then begin
                raise (Java_return (Obj.repr ((("Order " ^ id) ^ " Already Shipped. You can't cancel a shipped order.<br/>"))))
            end else if ((String.compare !status_arg ((OrderHistoryData.get_pREPROCESSING ()))) == 0) then begin
                raise (Java_return (Obj.repr ((("Order " ^ id) ^ " has been cancelled.<br/>"))))
            end else if ((String.compare !status_arg ((OrderHistoryData.get_pARTIALLYSHIPPED ()))) == 0) then begin
                raise (Java_return (Obj.repr ((("Order " ^ id) ^ " Partially Shipped. You can cancel unshipped items, but not the whole order.<br/>"))))
            end else if ((String.compare !status_arg ((OrderHistoryData.get_pROCESSING ()))) == 0) then begin
                let orderHistoryEntityInterface : OrderHistoryEntityInterface.orderHistoryEntityInterface ref = ref (((OrderHistoryEntityFactory.getInstance ()) :> OrderHistoryEntityInterface.orderHistoryEntityInterface)) in ();
                ignore (!orderHistoryEntityInterface#setStatus (id, newStatus));
                raise (Java_return (Obj.repr ((("Order " ^ id) ^ " has been cancelled.<br/>"))))
            end;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore ((Obj.magic logUtil)#putF (!success, self, "setOrderStatus()"))
            end;
            "Error Setting Order Status"
        with e -> begin
            let error : string ref = ref ("Failed to set order status") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "setOrderStatus()", e))
            end;
            ((((!error ^ "<br/>") ^ "Exception: ") ^ java_string_of (Obj.repr (e))) ^ "<br/>")
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        weblisketSession <- ((Obj.magic 0) :> WeblisketSession.weblisketSession);
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        ();
        ();
        ();
        streetAddress <- ((Obj.magic 0) :> StreetAddress.streetAddress);
        id <- "";
        groupId <- "";
        status <- "";
        ();
        ();
        propertiesHashMap <- propertiesHashMap_arg;
        pageContext <- Obj.repr (pageContext_arg);
        request <- Obj.repr ((Obj.magic (pageContext_arg#getRequest ())));
        let storeName : string ref = ref ((Obj.magic (propertiesHashMap_arg#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        newStatus <- (Obj.magic (propertiesHashMap_arg#get ((OrderHistoryData.get_sTATUS ()))));
        if (!storeName <> (Obj.magic 0)) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName))
        end;
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderHistoryHelper" (fun arguments -> Obj.repr (new orderHistoryHelper (Obj.obj arguments)))


