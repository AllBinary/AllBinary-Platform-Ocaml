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
(* import java.util.HashMap *)
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.PaymentHelperFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.user.commerce.money.payment.PaymentData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class paymentTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value
        end [@@warning "-7"]
    

    method select () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new PaymentHelperFactory.paymentHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("select", (Obj.magic 0))))) in ();
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
                propertiesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
                ignore (propertiesHashMap#put ((StoreFrontData.getInstance ())#nAME, storeName));
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    if (((self#getCommand ())#compareTo ((PaymentData.get_sELECT ()))) == 0) then begin
                        let output : string ref = ref ((self#select ())) in ();
                        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAGEXTRAOUTPUT)) then begin
                            ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                        end;
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
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
        storeName <- "";
        propertiesHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        ignore (self#setTagHelperFactory ((new PaymentHelperFactory.paymentHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new PaymentHelperFactory.paymentHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentTag" (fun arguments -> Obj.repr (new paymentTag (Obj.obj arguments)))


