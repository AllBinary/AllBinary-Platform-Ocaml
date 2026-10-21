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
(* package views.generic.order.history *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.data.tables.user.commerce.inventory.order.OrderHistoryEntity *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.globals.GLOBALS2 *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class orderHistoryView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable shipped : string = ""
    method shipped = shipped
    method set_shipped value' = shipped <- value'
    val mutable partiallyShipped : string = ""
    method partiallyShipped = partiallyShipped
    method set_partiallyShipped value' = partiallyShipped <- value'
    val mutable processing : string = ""
    method processing = processing
    method set_processing value' = processing <- value'
    val mutable preprocessing : string = ""
    method preprocessing = preprocessing
    method set_preprocessing value' = preprocessing <- value'
    val mutable cancelled : string = ""
    method cancelled = cancelled
    method set_cancelled value' = cancelled <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((OrderData.get_oRDERS ()))))) in ();
            let orderHistoryEntity : OrderHistoryEntity.orderHistoryEntity ref = ref (((new OrderHistoryEntity.orderHistoryEntity ()) :> OrderHistoryEntity.orderHistoryEntity)) in ();
            let orderReviewVector : BasicArrayList.basicArrayList ref = ref (((!orderHistoryEntity#getOrders (((self#getWeblisketSession ())#getUserName ()))) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!orderReviewVector#size ())) in ();
            for index = 0 to !size - 1 do
                let orderHistory : OrderHistory.orderHistory ref = ref (((Obj.magic (!orderReviewVector#get (index))) :> OrderHistory.orderHistory)) in ();
                let orderHistoryNode : Obj.t ref = ref ((Obj.repr (!orderHistory#toXmlNode ((Obj.magic document))))) in ();
                let orderNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((!orderHistory#getPaymentMethod ()))))) in ();
                ignore ((Obj.magic !node)#appendChild ((!orderHistory#toXmlNode ((Obj.magic document)))))
            done;
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEW)) then begin
                ignore ((Obj.magic logUtil)#putF ("Attempt to View a users order history", self, "view"))
            end;
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_pREPROCESSINGNAME ()), (OrderHistoryData.get_pREPROCESSING ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_pROCESSINGNAME ()), (OrderHistoryData.get_pROCESSING ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_cANCELLEDNAME ()), (OrderHistoryData.get_cANCELLED ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_pARTIALLYSHIPPEDNAME ()), (OrderHistoryData.get_pARTIALLYSHIPPED ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (OrderHistoryData.get_sHIPPEDNAME ()), (OrderHistoryData.get_sHIPPED ())))));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (GLOBALS2.get_vIEWNAME ()), (GLOBALS2.get_vIEW ())))));
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#fAILURE, self, "toXmlNode", e))
            end;
            raise e
        end)
        end [@@warning "-7-20"]
    

    method addDomNodeInterfaces () : unit =
        begin
        ignore (self#addDomNodeInterface ((Obj.magic self)))
        end [@@warning "-7"]
    

    method view () : string =
        begin
        (try
            (self#addDomNodeInterfaces ());
            (super#view ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        ();
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic ((self#getPageContext ())#getRequest ())));
        preprocessing <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_pREPROCESSINGNAME ())));
        shipped <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_sHIPPEDNAME ())));
        partiallyShipped <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_pARTIALLYSHIPPEDNAME ())));
        processing <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_pROCESSINGNAME ())));
        cancelled <- ((Obj.magic request)#getParameter ((OrderHistoryData.get_cANCELLEDNAME ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderHistoryView" (fun arguments -> Obj.repr (new orderHistoryView (Obj.obj arguments)))


