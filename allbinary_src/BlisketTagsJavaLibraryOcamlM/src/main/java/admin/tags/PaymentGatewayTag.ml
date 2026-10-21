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
(* import admin.taghelpers.PaymentGatewayHelperFactory *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class paymentGatewayTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method process () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new PaymentGatewayHelperFactory.paymentGatewayHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod (commonStrings#pROCESS, (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            ignore ((Obj.magic logUtil)#put ("LicensingException", self, commonStrings#pROCESS, e));
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                if (((((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#aUTHORIZEORDEREVALBODYONERROR)) == 0) || (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#aUTHORIZEORDERANDEVALBODY)) == 0)) || (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#aUTHORIZEFORMEVALBODYONERROR)) == 0)) then begin
                    let output : string ref = ref ((self#process ())) in ();
                    begin
                        ignore ((pageContext#getOut ())#print ((!output ^ "<br />")))
                    end;
                    if (((self#getCommand ())#compareTo ((org.get_allbinary ())#globals#gLOBALS2#aUTHORIZEORDEREVALBODYONERROR)) == 0) then begin
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end else begin
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                    end
                end else begin
                    raise (Java_return (Obj.repr ((super#doStartTag ()))))
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect (pageContext, e));
            sKIP_BODY
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ignore (self#setTagHelperFactory ((new PaymentGatewayHelperFactory.paymentGatewayHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new PaymentGatewayHelperFactory.paymentGatewayHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "PaymentGatewayTag" (fun arguments -> Obj.repr (new paymentGatewayTag (Obj.obj arguments)))


