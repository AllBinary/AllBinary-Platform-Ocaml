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
(* package tags.generic.address.billing *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.business.user.address.BillingAddressData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.StoreValidationTransformTag *)

class billingAddressTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEW)) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.ValidationView"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#eDIT)) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.EditValidationView"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#nEW)) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.NewValidationView"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#iNSERT)) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.AddValidationView"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#dELETE)) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.DeleteValidationView"))
                end else if (((self#getCommand ())#compareTo ((BillingAddressData.get_sELECT ()))) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.SelectValidationView"))
                end else if (((self#getCommand ())#compareTo ((BillingAddressData.get_sETTOSHIPPINGADDRESS ()))) == 0) then begin
                    ignore (self#setName ("Basic Billing Address View"));
                    ignore (self#setObjectFile ("views.generic.address.billing.SetValidationView"))
                end else begin
                    raise (Failure (("No Such View Command: " ^ java_string_of (Obj.repr ((self#getCommand ()))))))
                end;
                raise (Java_return (Obj.repr ((super#doStartTag ()))))
            end;
            raise (Failure ("Command Null"))
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect ((self#pageContext), e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "BillingAddressTag" (fun arguments -> Obj.repr (new billingAddressTag (Obj.obj arguments)))


