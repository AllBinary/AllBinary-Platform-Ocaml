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
(* package tags.generic.payment *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.StoreValidationTransformTag *)

class paymentTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    
    

    method doStartTag () : int =
        try
        begin
        (try
            ignore (self#setName ("Basic Payment View"));
            ignore (self#setObjectFile ("views.generic.payment.ValidationView"));
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                if (((((self#getCommand ())#compareTo ((PaymentData.get_vIEW ()))) == 0) || (((self#getCommand ())#compareTo ((PaymentData.get_cHANGE ()))) == 0)) || (((self#getCommand ())#compareTo ((PaymentData.get_aDDNEW ()))) == 0)) then begin
                    ()
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#iNSERT)) == 0) then begin
                    ()
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#dELETE)) == 0) then begin
                    raise (Java_return (Obj.repr ((self#eVAL_BODY_INCLUDE))))
                end else if (((self#getCommand ())#compareTo ((PaymentData.get_sELECT ()))) == 0) then begin
                    raise (Java_return (Obj.repr ((self#eVAL_BODY_INCLUDE))))
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
let () = java_register_constructor "PaymentTag" (fun arguments -> Obj.repr (new paymentTag (Obj.obj arguments)))


