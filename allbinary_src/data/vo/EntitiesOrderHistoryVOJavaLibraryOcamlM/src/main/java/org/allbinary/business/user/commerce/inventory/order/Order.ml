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
(* import java.io.Serializable *)
(* import java.util.HashMap *)
(* import java.util.Set *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.entry.EntryData *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketInterface *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.data.tree.dom.ModDomHelper *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.string.StringUtil *)
(* import org.allbinary.logic.string.StringValidationUtil *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class order ((basket_arg : BasketInterface.basketInterface)) =
  object (self)
    val mutable basket : BasketInterface.basketInterface = (Obj.magic 0)
    method basket = basket
    method set_basket value' = basket <- value'
    val mutable paymentMethod : string = ""
    method paymentMethod = paymentMethod
    method set_paymentMethod value' = paymentMethod <- value'
    val mutable shippingType : string = ""
    method shippingType = shippingType
    method set_shippingType value' = shippingType <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable special : string = ""
    method special = special
    method set_special value' = special <- value'
    val mutable id : string = ""
    method id = id
    method set_id value' = id <- value'
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
    
    
    

    method isIdValid () : bool =
        try
        begin
        if (((((self#getId ()) == (Obj.magic 0)) || (((self#getId ())#compareTo ((StringUtil.getInstance ())#eMPTY_STRING)) == 0)) || (((self#getId ())#length ()) > (OrderHistoryData.get_mAXIDLEN ()))) || (not ((StringValidationUtil.getInstance ())#isNumber ((self#getId ()))))) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method isValid () : bool =
        begin
        true
        end
    

    method getIdValidationInfo () : string =
        try
        begin
        let eMPTY_STRING : string ref = ref ((StringUtil.getInstance ())#eMPTY_STRING) in ();
        if (((((self#getId ()) == (Obj.magic 0)) || (((self#getId ())#compareTo (!eMPTY_STRING)) == 0)) || (((self#getId ())#length ()) > (OrderHistoryData.get_mAXIDLEN ()))) || (not ((StringValidationUtil.getInstance ())#isNumber ((self#getId ()))))) then begin
            raise (Java_return (Obj.repr ((("Please enter a valid order Id < " ^ java_string_of (Obj.repr ((OrderHistoryData.get_mAXIDLEN ())))) ^ " digits in length.<br>"))))
        end;
        !eMPTY_STRING
        end
        with Java_return value -> Obj.obj value
    

    method setShippingMethod ((shippingType_arg : string)) : unit =
        begin
        shippingType <- shippingType_arg
        end
    

    method setPaymentMethod ((value : string)) : unit =
        begin
        paymentMethod <- value
        end
    

    method setSpecial ((special_arg : string)) : unit =
        begin
        special <- special_arg
        end
    

    method setId ((value : string)) : unit =
        begin
        id <- value
        end
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value
        end
    

    method setUserComments ((value : string)) : unit =
        begin
        userComment <- value
        end
    

    method setUserCancelComments ((value : string)) : unit =
        begin
        userCancelComment <- value
        end
    

    method setStoreComments ((value : string)) : unit =
        begin
        storeComment <- value
        end
    

    method setStoreCancelComments ((value : string)) : unit =
        begin
        storeCancelComment <- value
        end
    

    method getBasket () : BasketInterface.basketInterface =
        begin
        (basket :> BasketInterface.basketInterface)
        end
    

    method getShippingMethod () : string =
        begin
        shippingType
        end
    

    method getPaymentMethod () : string =
        begin
        paymentMethod
        end
    

    method getSpecial () : string =
        begin
        special
        end
    

    method getId () : string =
        begin
        id
        end
    

    method getStoreName () : string =
        begin
        storeName
        end
    

    method getUserComments () : string =
        begin
        userComment
        end
    

    method getUserCancelComments () : string =
        begin
        userCancelComment
        end
    

    method getStoreComments () : string =
        begin
        storeComment
        end
    

    method getStoreCancelComments () : string =
        begin
        storeCancelComment
        end
    

    method reviewOrder ((_paymentMethod_arg : string)) : string =
        begin
        "Create your own Order.reviewOrder"
        end
    

    method viewOrder ((_paymentMethod_arg : string)) : string =
        begin
        "Create your own Order.viewOrder"
        end
    

    method emailOrder : 'any3. string * string * 'any3 -> string = fun ((_userName : string), (_paymentMethod_arg : string), _storeFrontInterface) ->
        begin
        "Create your own Order.emailOrder"
        end [@@warning "-20"]
    

    method toHashMapOrder () : java_hash_map =
        begin
        let hashMap : java_hash_map ref = ref ((((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ()) :> java_hash_map)) in ();
        ignore (!hashMap#put ((PaymentData.get_mETHOD ()), paymentMethod));
        ignore (!hashMap#put ((ShippingMethodData.get_nAME ()), shippingType));
        ignore (!hashMap#put ((StoreFrontData.getInstance ())#nAME, storeName));
        ignore (!hashMap#put ((EntryData.getInstance ())#sPECIAL, special));
        ignore (!hashMap#put ((OrderData.get_iD ()), id));
        ignore (!hashMap#put ((OrderData.get_cUSTOMERCOMMENT ()), userComment));
        ignore (!hashMap#put ((OrderData.get_cUSTOMERCANCELCOMMENT ()), userCancelComment));
        ignore (!hashMap#put ((OrderData.get_sTORECOMMENT ()), storeComment));
        ignore (!hashMap#put ((OrderData.get_sTORECANCELCOMMENT ()), storeCancelComment));
        (!hashMap :> java_hash_map)
        end
    

    method toXmlNode : 'any1 'return. 'any1 -> 'return = fun (document) ->
        let document = Obj.repr document in
        begin
        let hashMap : java_hash_map ref = ref (((self#toHashMapOrder ()) :> java_hash_map)) in ();
        let keySet : Obj.t ref = ref ((Obj.repr (!hashMap#keySet ()))) in ();
        let keyArray : Obj.t array ref = ref (((Obj.magic !keySet)#toArray ())) in ();
        let size : int ref = ref ((Array.length !keyArray)) in ();
        let node : Obj.t ref = ref ((Obj.repr ((Obj.magic document)#createElement ((OrderData.get_oRDER ()))))) in ();
        for i = 0 to !size - 1 do
            let name : string ref = ref ((Obj.magic !keyArray.(i))) in ();
            let value : string ref = ref ((Obj.magic (!hashMap#get (!name)))) in ();
            value := ((StringUtil.getInstance ())#getNonNull (!value));
            ignore ((Obj.magic !node)#appendChild ((ModDomHelper.createNameValueNodes ((Obj.magic document), !name, !value))))
        done;
        (Obj.magic ((Obj.magic !node)))
        end [@@warning "-20"]

    initializer
      begin
        ();
        ();
        ();
        ();
        ();
        ();
        userComment <- "";
        userCancelComment <- "";
        storeComment <- "";
        storeCancelComment <- "";
        ();
        basket <- basket_arg;
        id <- (Obj.magic 0);
        shippingType <- (StringUtil.getInstance ())#eMPTY_STRING
      end
  end
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "Order" (fun arguments -> Obj.repr (new order (Obj.obj arguments)))


