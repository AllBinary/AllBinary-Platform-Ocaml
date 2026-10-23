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
(* package tags.generic.address.shipping *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.StoreValidationTransformTag *)

class taxAddressTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEW)) == 0) then begin
                    ignore (self#setName ("Basic Shipping Address View"));
                    ignore (self#setObjectFile ("views.generic.address.shipping.TaxValidationView"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#nEW)) == 0) then begin
                    ignore (self#setName ("Basic Shipping Address View"));
                    ignore (self#setObjectFile ("views.generic.address.shipping.NewValidationView"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#iNSERT)) == 0) then begin
                    ignore (self#setName ("Basic Shipping Address View"));
                    ignore (self#setObjectFile ("views.generic.address.shipping.AddTaxValidationView"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#uPDATE)) == 0) then begin
                    ignore (self#setName ("Basic Shipping Address View"));
                    ignore (self#setObjectFile ("views.generic.address.shipping.UpdateTaxValidationView"))
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
let () = java_register_constructor "TaxAddressTag" (fun arguments -> Obj.repr (new taxAddressTag (Obj.obj arguments)))


