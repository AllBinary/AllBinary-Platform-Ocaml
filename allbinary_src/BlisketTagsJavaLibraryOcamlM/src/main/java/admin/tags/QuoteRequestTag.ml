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
(* import admin.taghelpers.QuoteHelperFactory *)
(* import admin.taghelpers.QuoteRequestHelperFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class quoteRequestTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    
    

    method setStoreName ((storeName_arg : string)) : unit =
        begin
        storeName <- storeName_arg
        end [@@warning "-7"]
    

    method email () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new QuoteHelperFactory.quoteHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("email", (Obj.magic 0))))) in ();
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
            if ((self#getCommand ()) != (Obj.magic 0)) then begin
                ignore ((self#getPropertiesHashMap ())#put ((StoreFrontData.getInstance ())#nAME, storeName));
                if (((self#getCommand ())#compareTo ("EMAIL")) == 0) then begin
                    ignore (self#email ());
                    raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                end else begin
                    raise (Java_return (Obj.repr ((super#doStartTag ()))))
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
        storeName <- "";
        ();
        ignore (self#setTagHelperFactory ((new QuoteHelperFactory.quoteHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new QuoteRequestHelperFactory.quoteRequestHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "QuoteRequestTag" (fun arguments -> Obj.repr (new quoteRequestTag (Obj.obj arguments)))


