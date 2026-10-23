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
(* package views.generic.shipping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.business.user.commerce.money.tax.TaxFactory *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethods *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodsData *)
(* import org.allbinary.business.user.commerce.shipping.modules.ShippingInterface *)
(* import org.allbinary.data.tables.user.address.StreetAddressesEntityInterface *)
(* import org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class shippingMethodsView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable shippingMethods : ShippingMethods.shippingMethods = (Obj.magic 0)
    method shippingMethods = shippingMethods
    method set_shippingMethods value' = shippingMethods <- value'
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value' = storeFrontInterface <- value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let shippingMethodsNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ShippingMethodsData.get_sHIPPINGMETHODSORDERSUMMARIES ()))))) in ();
            let order : OrderInterface.orderInterface ref = ref ((((self#getWeblisketSession ())#getOrder ()) :> OrderInterface.orderInterface)) in ();
            let basket : BasketInterface.basketInterface ref = ref (((((self#getWeblisketSession ())#getOrder ())#getBasket ()) :> BasketInterface.basketInterface)) in ();
            let shippingAddressesEntityInterface : StreetAddressesEntityInterface.streetAddressesEntityInterface ref = ref ((((ShippingAddressesEntityFactory.getInstance ())#getInstance (((self#getWeblisketSession ())#getUserName ()))) :> StreetAddressesEntityInterface.streetAddressesEntityInterface)) in ();
            let streetAddress : StreetAddress.streetAddress ref = ref (((!shippingAddressesEntityInterface#getDefault ()) :> StreetAddress.streetAddress)) in ();
            let shippingVector : BasicArrayList.basicArrayList ref = ref (((shippingMethods#get ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!shippingVector#size ())) in ();
            for index = 0 to !size - 1 do
                let shippingMethodNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((ShippingMethodsData.get_sHIPPINGMETHODORDERSUMMARY ()))))) in ();
                let shipping : ShippingInterface.shippingInterface ref = ref (((Obj.magic (!shippingVector#get (index))) :> ShippingInterface.shippingInterface)) in ();
                let shippingView : DomNodeInterface.domNodeInterface ref = ref (((Obj.magic !shipping) :> DomNodeInterface.domNodeInterface)) in ();
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((!shippingView#toXmlNode ((Obj.magic document)))));
                let shippingCost : Money.money ref = ref (((!shipping#getCost (!order)) :> Money.money)) in ();
                let subTotal : Money.money ref = ref (((!basket#getSubTotal ()) :> Money.money)) in ();
                let taxRate : float ref = ref ((((TaxFactory.getInstance ())#getInstance ((self#abeClientInformation), storeFrontInterface))#getTaxRate (!streetAddress, storeFrontInterface))) in ();
                let tax : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
                let total : Money.money ref = ref (((new Money.money ()) :> Money.money)) in ();
                ignore (!total#add ((java_string_of (Obj.repr !shippingCost))));
                ignore (!total#add ((java_string_of (Obj.repr !subTotal))));
                ignore (!tax#add ((java_string_of (Obj.repr !total))));
                ignore (!tax#multiply (!taxRate));
                ignore (!total#add ((java_string_of (Obj.repr !tax))));
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (ShippingMethodsData.get_sHIPPINGCOST ()), (java_string_of (Obj.repr !shippingCost))))));
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (ShippingMethodsData.get_tAXRATE ()), (java_float_string !taxRate)))));
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (ShippingMethodsData.get_sUBTOTAL ()), (java_string_of (Obj.repr !subTotal))))));
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (ShippingMethodsData.get_tAX ()), (java_string_of (Obj.repr !tax))))));
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (ShippingMethodsData.get_tOTAL ()), (java_string_of (Obj.repr !total))))));
                ignore ((Obj.magic !shippingMethodNode)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (EntryData.getInstance ())#dEFAULT, ((shippingMethods#getDefault ())#getName ())))));
                ignore ((Obj.magic !shippingMethodsNode)#appendChild ((Obj.magic !shippingMethodNode)))
            done;
            (Obj.magic ((Obj.magic !shippingMethodsNode)))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#xSLLOGGINGERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#fAILURE, self, "toXmlNode", e))
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
            let error : string ref = ref ("Failed to view ShippingMethods") in ();
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#tAGHELPERERROR)) then begin
                ignore ((Obj.magic logUtil)#put ((self#commonStrings)#eXCEPTION, self, "view()", e))
            end;
            !error
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ();
        ();
        (* super(...) is the inherit clause *) ();
        storeFrontInterface <- (StoreFrontFactory.getInstance (((self#getTransformInfoInterface ())#getStoreName ())));
        shippingMethods <- (new ShippingMethods.shippingMethods ((self#abeClientInformation), storeFrontInterface))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShippingMethodsView" (fun arguments -> Obj.repr (new shippingMethodsView (Obj.obj arguments)))


