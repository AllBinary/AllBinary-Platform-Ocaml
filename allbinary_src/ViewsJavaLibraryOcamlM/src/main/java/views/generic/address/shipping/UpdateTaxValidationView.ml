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
(* package views.generic.address.shipping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import org.allbinary.util.BasicArrayList *)
(* import org.allbinary.util.BasicArrayListD *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.business.user.address.StreetAddress *)
(* import org.allbinary.business.user.commerce.money.tax.TaxFactory *)
(* import org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class updateTaxValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit ShippingAddressView.shippingAddressView (transformInfoInterface)
    
    

    method isValid () : bool =
        try
        begin
        streetAddress <- (new StreetAddress.streetAddress ((self#getRequest ())));
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getTransformInfoInterface ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        if ((Obj.repr (((TaxFactory.getInstance ())#getInstance (abeClientInformation, !storeFrontInterface))#isValid (streetAddress, !storeFrontInterface))) == (Obj.repr false)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let billingAddressesEntity : ShippingAddressesEntity.shippingAddressesEntity ref = ref (((new ShippingAddressesEntity.shippingAddressesEntity (((self#getWeblisketSession ())#getUserName ()))) :> ShippingAddressesEntity.shippingAddressesEntity)) in ();
        let streetAddressList : BasicArrayList.basicArrayList ref = ref (((!billingAddressesEntity#get ()) :> BasicArrayList.basicArrayList)) in ();
        if (!streetAddressList == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let count : int ref = ref (0) in ();
        let size : int ref = ref ((!streetAddressList#size ())) in ();
        for index = 0 to !size - 1 do
            let aStreetAddress : StreetAddress.streetAddress ref = ref (((Obj.magic (!streetAddressList#get (index))) :> StreetAddress.streetAddress)) in ();
            if (((!aStreetAddress#getName ())#compareTo ((ShippingAddressData.get_tAX ()))) == 0) then begin
                count := !count + 1
            end
        done;
        if (!count <> 1) then begin
            false
        end;
        true
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        "Unable to update tax location."
        end [@@warning "-7"]
    

    method toValidationInfoDoc : 'return. unit -> 'return = fun () ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7"]
    

    method toValidationInfoNode : 'any1 'return. 'any1 -> 'return = fun (_document) ->
        begin
        (Obj.magic ((Obj.magic 0)))
        end [@@warning "-7-20"]

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end
let () = java_register_constructor "UpdateTaxValidationView" (fun arguments -> Obj.repr (new updateTaxValidationView (Obj.obj arguments)))


