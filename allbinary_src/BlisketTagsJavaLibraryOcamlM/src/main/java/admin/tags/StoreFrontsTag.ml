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
(* import javax.servlet.jsp.tagext.TagSupport *)
(* import admin.taghelpers.StoreFrontsHelperFactory *)
(* import admin.taghelpers.StoreFrontsRequestHelperFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class storeFrontsTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method generateSelect () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("generateSelect", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method install () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagRequestHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("install", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method sendStoreCreatedEmails () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((self#getTagRequestHelperFactoryInterface ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("sendStoreCreatedEmails", (Obj.magic 0))))) in ();
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
                    let storeFrontData : StoreFrontData.storeFrontData ref = ref (((StoreFrontData.getInstance ()) :> StoreFrontData.storeFrontData)) in ();
                    if (((self#getCommand ())#compareTo (!storeFrontData#sELECT)) == 0) then begin
                        ignore (((self#pageContext)#getOut ())#print ((self#generateSelect ())))
                    end else if (((self#getCommand ())#compareTo (!storeFrontData#iNSTALL)) == 0) then begin
                        ignore ((self#getPropertiesHashMap ())#put ("current", (self#getCurrent ())));
                        ignore ((self#getPropertiesHashMap ())#put ("total", (self#getTotal ())));
                        if ((Obj.repr ((self#getCurrent ())#intValue ())) == (Obj.repr ((self#getTotal ())#intValue ()))) then begin
                            raise (Java_return (Obj.repr ((TagSupport.get_eVAL_BODY_INCLUDE ()))))
                        end;
                        ignore (self#install ())
                    end else if (((self#getCommand ())#compareTo (!storeFrontData#iNSTALL_COMPLETE)) == 0) then begin
                        ignore (self#sendStoreCreatedEmails ())
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
        ();
        ignore (self#setTagHelperFactory ((new StoreFrontsHelperFactory.storeFrontsHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new StoreFrontsRequestHelperFactory.storeFrontsRequestHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreFrontsTag" (fun arguments -> Obj.repr (new storeFrontsTag (Obj.obj arguments)))


