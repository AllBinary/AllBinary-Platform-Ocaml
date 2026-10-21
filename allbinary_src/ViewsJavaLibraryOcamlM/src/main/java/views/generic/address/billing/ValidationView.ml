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
(* package views.generic.address.billing *)

open Allbinary_java [@@warning "-33"]
(* import org.allbinary.data.tables.user.address.billing.BillingAddressesEntity *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class validationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit BillingAddressesView.billingAddressesView (transformInfoInterface)
    
    

    method isValid () : bool =
        try
        begin
        let billingAddressesEntity : BillingAddressesEntity.billingAddressesEntity ref = ref (((new BillingAddressesEntity.billingAddressesEntity (((self#getWeblisketSession ())#getUserName ()))) :> BillingAddressesEntity.billingAddressesEntity)) in ();
        streetAddresses <- (!billingAddressesEntity#get ());
        if (streetAddresses == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        if ((streetAddresses#size ()) < 1) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        true
        end
        with Java_return value -> Obj.obj value
    

    method validationInfo () : string =
        begin
        "No Billing Addresses to display.<br />"
        end
    

    method toValidationInfoDoc () =
        begin
        (Obj.magic 0)
        end
    

    method toValidationInfoNode (_document) =
        begin
        (Obj.magic 0)
        end

    initializer
      begin
        ();
        (* super(...) is the inherit clause *) ()
      end
  end


