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
(* import admin.taghelpers.ShippingAddressHelperFactory *)
(* import org.allbinary.business.user.address.ShippingAddressData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class shippingAddressTag () =
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
            let anyType : Obj.t ref = ref ((Obj.repr ((new ShippingAddressHelperFactory.shippingAddressHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("set", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method setToBillingAddress () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new ShippingAddressHelperFactory.shippingAddressHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("setToBillingAddress", (Obj.magic 0))))) in ();
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
                    if (((self#getCommand ())#compareTo ((ShippingAddressData.get_sELECT ()))) == 0) then begin
                        ignore (self#set ());
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                    end else if (((self#getCommand ())#compareTo ((ShippingAddressData.get_sETTOBILLINGADDRESS ()))) == 0) then begin
                        ignore (self#setToBillingAddress ())
                    end else begin
                        raise (Java_return (Obj.repr ((super#doStartTag ()))))
                    end
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        value <- "";
        ();
        ignore (self#setTagHelperFactory ((new ShippingAddressHelperFactory.shippingAddressHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new ShippingAddressHelperFactory.shippingAddressHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShippingAddressTag" (fun arguments -> Obj.repr (new shippingAddressTag (Obj.obj arguments)))


