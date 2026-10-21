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
(* import org.allbinary.business.user.commerce.money.tax.modules.TaxModuleInterface *)
(* import org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntity *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.string.StringMaker *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class addTaxValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit ShippingAddressView.shippingAddressView (transformInfoInterface)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method isValid () : bool =
        try
        begin
        (try
            streetAddress <- (new StreetAddress.streetAddress ((self#getRequest ())));
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getTransformInfoInterface ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let taxInterface : TaxModuleInterface.taxModuleInterface ref = ref ((((TaxFactory.getInstance ())#getInstance (abeClientInformation, !storeFrontInterface)) :> TaxModuleInterface.taxModuleInterface)) in ();
            if (!taxInterface == (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            if ((Obj.repr (!taxInterface#isValid (streetAddress, !storeFrontInterface))) == (Obj.repr false)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            let billingAddressesEntity : ShippingAddressesEntity.shippingAddressesEntity ref = ref (((new ShippingAddressesEntity.shippingAddressesEntity (((self#getWeblisketSession ())#getUserName ()))) :> ShippingAddressesEntity.shippingAddressesEntity)) in ();
            let streetAddressList : BasicArrayList.basicArrayList ref = ref (((!billingAddressesEntity#get ()) :> BasicArrayList.basicArrayList)) in ();
            if (!streetAddressList == (Obj.magic 0)) then begin
                raise (Java_return (Obj.repr (false)))
            end;
            let size : int ref = ref ((!streetAddressList#size ())) in ();
            for index = 0 to !size - 1 do
                let aStreetAddress : StreetAddress.streetAddress ref = ref (((Obj.magic (!streetAddressList#get (index))) :> StreetAddress.streetAddress)) in ();
                if (((!aStreetAddress#getName ())#compareTo ((ShippingAddressData.get_tAX ()))) == 0) then begin
                    raise (Java_return (Obj.repr (false)))
                end
            done;
            true
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to validate", self, commonStrings#iS_VALID, e))
            end;
            false
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        (try
            let stringBuffer : StringMaker.stringMaker ref = ref (((new StringMaker.stringMaker ()) :> StringMaker.stringMaker)) in ();
            let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance (((self#getTransformInfoInterface ())#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
            let taxInterface : TaxModuleInterface.taxModuleInterface ref = ref ((((TaxFactory.getInstance ())#getInstance (abeClientInformation, !storeFrontInterface)) :> TaxModuleInterface.taxModuleInterface)) in ();
            if (!taxInterface == (Obj.magic 0)) then begin
                ignore (!stringBuffer#append ("Unable to Load Tax Component<br/>"))
            end else begin
                if ((Obj.repr (!taxInterface#isValid (streetAddress, !storeFrontInterface))) == (Obj.repr false)) then begin
                    ignore (!stringBuffer#append ("Unable to validate address with Tax Component<br/>"))
                end
            end;
            let billingAddressesEntity : ShippingAddressesEntity.shippingAddressesEntity ref = ref (((new ShippingAddressesEntity.shippingAddressesEntity (((self#getWeblisketSession ())#getUserName ()))) :> ShippingAddressesEntity.shippingAddressesEntity)) in ();
            let streetAddressList : BasicArrayList.basicArrayList ref = ref (((!billingAddressesEntity#get ()) :> BasicArrayList.basicArrayList)) in ();
            let size : int ref = ref ((!streetAddressList#size ())) in ();
            for index = 0 to !size - 1 do
                let aStreetAddress : StreetAddress.streetAddress ref = ref (((Obj.magic (!streetAddressList#get (index))) :> StreetAddress.streetAddress)) in ();
                if (((!aStreetAddress#getName ())#compareTo ((ShippingAddressData.get_tAX ()))) == 0) then begin
                    ignore (!stringBuffer#append ("Not a valid tax location<br/>"))
                end
            done;
            (java_string_of (Obj.repr !stringBuffer))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put ("Failed to create validateInfo", self, "validationInfo()", e))
            end;
            "Error Creating ValidationInfo"
        end)
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
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AddTaxValidationView" (fun arguments -> Obj.repr (new addTaxValidationView (Obj.obj arguments)))


