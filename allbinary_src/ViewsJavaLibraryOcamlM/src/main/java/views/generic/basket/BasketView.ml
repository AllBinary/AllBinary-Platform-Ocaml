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
(* package views.generic.basket *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import javax.servlet.http.HttpServletRequest *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketData *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.inventory.item.BasicItemView *)
(* import org.allbinary.business.user.commerce.inventory.item.ItemInterface *)
(* import org.allbinary.business.user.commerce.money.Money *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntity *)
(* import org.allbinary.data.tables.user.commerce.inventory.item.InventoryEntityFactory *)
(* import org.allbinary.data.tree.dom.DomNodeInterface *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchData *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)
(* import views.business.context.modules.storefront.HttpStoreComponentView *)

class basketView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit HttpStoreComponentView.httpStoreComponentView (transformInfoInterface) as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable request : Obj.t = Obj.repr 0
    method request : 'r. 'r = Obj.magic request
    method set_request : 'v. 'v -> unit = fun value' -> request <- Obj.repr value'
    
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        (try
            let inventoryEntity : InventoryEntity.inventoryEntity ref = ref ((((InventoryEntityFactory.getInstance ())#getInventoryEntityInstance ()) :> InventoryEntity.inventoryEntity)) in ();
            let basketInterface : BasketInterface.basketInterface ref = ref (((((self#getWeblisketSession ())#getOrder ())#getBasket ()) :> BasketInterface.basketInterface)) in ();
            let basketNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((BasketData.get_bASKET ()))))) in ();
            let itemsAndNumberInBasket : java_hash_map ref = ref (((!basketInterface#getItems ()) :> java_hash_map)) in ();
            let numberOfResults : int ref = ref (1) in ();
            let items : Obj.t ref = ref ((Obj.repr (!itemsAndNumberInBasket#keySet ()))) in ();
            let productArray : Obj.t array ref = ref (((Obj.magic !items)#toArray ())) in ();
            let size : int ref = ref ((Array.length !productArray)) in ();
            for index = 0 to !size - 1 do
                let product : string ref = ref ((Obj.obj (java_new "String" (Obj.repr ((Obj.magic !productArray.(index))))))) in ();
                let itemInterface : ItemInterface.itemInterface ref = ref (((!inventoryEntity#getItem (!product)) :> ItemInterface.itemInterface)) in ();
                if (!itemInterface != (Obj.magic 0)) then begin
                    let basicItemView : BasicItemView.basicItemView ref = ref (((new BasicItemView.basicItemView (!itemInterface, (new BasicArrayListD.basicArrayListD ()))) :> BasicItemView.basicItemView)) in ();
                    let node : Obj.t ref = ref ((Obj.repr (!basicItemView#toXmlNode ((Obj.magic document))))) in ();
                    let numberInBasket : string ref = ref ((java_string_of (Obj.repr (!basketInterface#getNumberOf (!product))))) in ();
                    ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (BasketData.get_iTEMTOTALINBASKET ()), !numberInBasket))));
                    let itemPrice : Money.money ref = ref (((!itemInterface#getPrice ()) :> Money.money)) in ();
                    let itemTotal : Money.money ref = ref (((new Money.money (!itemPrice)) :> Money.money)) in ();
                    ignore (!itemTotal#multiply (((!basketInterface#getNumberOf (!product))#intValue ())));
                    ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), (BasketData.get_iTEMTOTAL ()), (java_string_of (Obj.repr !itemTotal))))));
                    ignore ((Obj.magic !basketNode)#appendChild ((Obj.magic !node)))
                end else begin
                    ignore ((Obj.magic logUtil)#putF (("Product Failed: " ^ !product), self, "toXmlNode"))
                end;
                numberOfResults := !numberOfResults + 1
            done;
            let totalNumberNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((SearchData.get_tOTAL_NUMBER_ITEMS ()))))) in ();
            let totalNumberTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createTextNode ((java_string_of (Obj.repr (!basketInterface#getNumberOfItems ()))))))) in ();
            ignore ((Obj.magic !totalNumberNode)#appendChild ((Obj.magic !totalNumberTextNode)));
            let totalWeightNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((BasketData.get_tOTALWEIGHT ()))))) in ();
            let totalWeightTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createTextNode ((java_string_of (Obj.repr (!basketInterface#getTotalWeight ()))))))) in ();
            ignore ((Obj.magic !totalWeightNode)#appendChild ((Obj.magic !totalWeightTextNode)));
            let subTotalNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((BasketData.get_sUBTOTAL ()))))) in ();
            let subTotalTextNode : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createTextNode ((java_string_of (Obj.repr (!basketInterface#getSubTotal ()))))))) in ();
            ignore ((Obj.magic !subTotalNode)#appendChild ((Obj.magic !subTotalTextNode)));
            ignore ((Obj.magic !basketNode)#appendChild ((Obj.magic !totalNumberNode)));
            ignore ((Obj.magic !basketNode)#appendChild ((Obj.magic !totalWeightNode)));
            ignore ((Obj.magic !basketNode)#appendChild ((Obj.magic !subTotalNode)));
            (Obj.magic ((Obj.magic !basketNode)))
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
        (* super(...) is the inherit clause *) ();
        request <- Obj.repr ((Obj.magic ((self#getPageContext ())#getRequest ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasketView" (fun arguments -> Obj.repr (new basketView (Obj.obj arguments)))


