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
(* package admin.tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.BillingAddressHelperFactory *)
(* import org.allbinary.business.user.address.BillingAddressData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class billingAddressTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable value : string = ""
    method value = value
    method set_value value' = value <- value'
    
    

    method setValue ((value_arg : string)) : unit =
        begin
        value <- value_arg
        end [@@warning "-7"]
    

    method set () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new BillingAddressHelperFactory.billingAddressHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), (self#pageContext))))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("set", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method setToShippingAddress () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new BillingAddressHelperFactory.billingAddressHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), (self#pageContext))))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("setToShippingAddress", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    if (((self#getCommand ())#compareTo ((BillingAddressData.get_sELECT ()))) == 0) then begin
                        ignore (self#set ());
                        raise (Java_return (Obj.repr ((self#eVAL_BODY_INCLUDE))))
                    end else if (((self#getCommand ())#compareTo ((BillingAddressData.get_sETTOSHIPPINGADDRESS ()))) == 0) then begin
                        ignore (self#setToShippingAddress ())
                    end else begin
                        raise (Java_return (Obj.repr ((super#doStartTag ()))))
                    end
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        value <- "";
        ();
        ignore (self#setTagHelperFactory ((new BillingAddressHelperFactory.billingAddressHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new BillingAddressHelperFactory.billingAddressHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BillingAddressTag" (fun arguments -> Obj.repr (new billingAddressTag (Obj.obj arguments)))


