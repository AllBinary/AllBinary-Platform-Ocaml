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
(* package views.generic.order *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.inventory.basket.Basket *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketReview *)
(* import org.allbinary.business.user.commerce.inventory.order.Order *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderData *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class orderView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    val mutable order : Order.order = (Obj.magic 0)
    method order = order
    method set_order value' = order <- value'
    val mutable orderHistory : OrderHistory.orderHistory = (Obj.magic 0)
    method orderHistory = orderHistory
    method set_orderHistory value' = orderHistory <- value'
    val mutable basketReview : BasketReview.basketReview = (Obj.magic 0)
    method basketReview = basketReview
    method set_basketReview value' = basketReview <- value'
    
    

    method getFormData () : unit =
        begin
        let id : string ref = ref (((Obj.magic request)#getParameter ((OrderData.get_iD ())))) in ();
        if (!id = (Obj.magic 0)) then begin
            id := (((self#getWeblisketSession ())#getOrder ())#getId ())
        end;
        order <- (new Order.order ((new Basket.basket ())));
        ignore (order#setId (!id))
        end [@@warning "-7"]
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let orderHistoryNode : Obj.t ref = ref ((Obj.repr (orderHistory#toXmlNode ((Obj.magic document))))) in ();
            let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((orderHistory#getPaymentMethod ()))))) in ();
            ignore ((Obj.magic !orderHistoryNode)#appendChild ((basketReview#toXmlNode ((Obj.magic document)))));
            ignore ((Obj.magic !node)#appendChild ((Obj.magic !orderHistoryNode)));
            (Obj.magic ((Obj.magic !node)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "toXmlNode", e))
            end;
            (Obj.magic ((Obj.magic 0)))
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
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            raise e
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        order <- ((Obj.magic 0) :> Order.order);
        orderHistory <- ((Obj.magic 0) :> OrderHistory.orderHistory);
        basketReview <- ((Obj.magic 0) :> BasketReview.basketReview);
        ();
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic ((self#getPageContext ())#getRequest ())));
        (self#getFormData ())
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderView" (fun arguments -> Obj.repr (new orderView (Obj.obj arguments)))


