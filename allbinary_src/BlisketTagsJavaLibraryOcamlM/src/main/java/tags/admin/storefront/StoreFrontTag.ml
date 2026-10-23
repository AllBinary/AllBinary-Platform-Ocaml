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
(* package tags.admin.storefront *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.StoreValidationTransformTag *)

class storeFrontTag () =
  object (self)
    inherit StoreValidationTransformTag.storeValidationTransformTag () as super
    
    

    method doStartTag () : int =
        try
        begin
        (try
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                if (((self#getCommand ())#compareTo ((self#commonStrings)#iNSERT)) == 0) then begin
                    ignore (self#setName ("Add Validation StoreFront View"));
                    ignore (self#setObjectFile ("views.admin.storefront.AddValidationStoreFrontView"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#vIEW)) == 0) then begin
                    raise (Failure ("View not implemented"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#eDIT)) == 0) then begin
                    ignore (self#setName ("Edit Validation StoreFront View"));
                    ignore (self#setObjectFile ("views.admin.storefront.EditValidationStoreFrontView"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#uPDATE)) == 0) then begin
                    ignore (self#setName ("Update Validation StoreFront View"));
                    ignore (self#setObjectFile ("views.admin.storefront.UpdateValidationStoreFrontView"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#dELETE)) == 0) then begin
                    ignore (self#setName ("Delete Validation StoreFront View"));
                    ignore (self#setObjectFile ("views.admin.storefront.DeleteValidationStoreFrontView"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#bACKUP)) == 0) then begin
                    raise (Failure ("View not implemented"))
                end else if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#rESTORE)) == 0) then begin
                    raise (Failure ("View not implemented"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#dROP)) == 0) then begin
                    raise (Failure ("View not implemented"))
                end else if (((self#getCommand ())#compareTo ((self#commonStrings)#cREATE)) == 0) then begin
                    raise (Failure ("View not implemented"))
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
let () = java_register_constructor "StoreFrontTag" (fun arguments -> Obj.repr (new storeFrontTag (Obj.obj arguments)))


