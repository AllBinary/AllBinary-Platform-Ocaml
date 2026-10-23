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
[@@@warning "-20"]
(* import org.allbinary.business.user.address.StreetAddressData *)
(* import org.allbinary.data.tables.user.address.billing.BillingAddressesEntity *)
(* import org.allbinary.logic.control.validate.ValidationComponentInterface *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoInterface *)
(* import org.w3c.dom.Document *)
(* import org.w3c.dom.Node *)

class editValidationView ((transformInfoInterface : TransformInfoInterface.transformInfoInterface)) =
  object (self)
    inherit BillingAddressView.billingAddressView (transformInfoInterface)
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    
    

    method isValid () : bool =
        try
        begin
        if (((self#getWeblisketSession ())#getUserName ()) != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        let billingAddressesEntity : BillingAddressesEntity.billingAddressesEntity ref = ref (((new BillingAddressesEntity.billingAddressesEntity (((self#getWeblisketSession ())#getUserName ()))) :> BillingAddressesEntity.billingAddressesEntity)) in ();
        (self#set_streetAddress) ((!billingAddressesEntity#get ((Obj.obj (java_new "Integer" (Obj.repr (value)))))));
        if ((self#streetAddress) == (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr (false)))
        end;
        ((self#streetAddress)#isValid ())
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method validationInfo () : string =
        begin
        ((self#streetAddress)#validationInfo ())
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
        ();
        (* super(...) is the inherit clause *) ();
        value <- (((self#getPageContext ())#getRequest ())#getParameter ((StreetAddressData.get_iD ())))
      end
  end
let () = java_register_constructor "EditValidationView" (fun arguments -> Obj.repr (new editValidationView (Obj.obj arguments)))


