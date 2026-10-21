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
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.JspTagException *)
(* import admin.taghelpers.OrderHistoryHelperFactory *)
(* import admin.taghelpers.OrderHistoryRequestHelperFactory *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderHistoryData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)

class orderHistoryTag () =
  object (self)
    inherit TableTag.tableTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable status : string = ""
    method status = status
    method set_status value' = status <- value'
    
    

    method setStatus ((value : string)) : unit =
        begin
        status <- value
        end [@@warning "-7"]
    

    method setOrderStatus () : string =
        try
        begin
        (try
            let request : Obj.t ref = ref ((Obj.repr (Obj.magic (pageContext#getRequest ())))) in ();
            let anyType : Obj.t ref = ref ((Obj.repr ((new OrderHistoryRequestHelperFactory.orderHistoryRequestHelperFactory ())#getInstance ((self#getPropertiesHashMap ()), pageContext)))) in ();
            if (status = (Obj.magic 0)) then begin
                let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
                let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("setOrderStatus", (Obj.magic 0))))) in ();
                let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
                raise (Java_return (Obj.repr (!result)))
            end else begin
                let helperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
                let methodParams : string array ref = ref ([| (java_get_class (Obj.repr status)) |]) in ();
                let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod ("setOrderStatus", !methodParams)))) in ();
                let methodArgs : Obj.t array ref = ref ([| status |]) in ();
                let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, !methodArgs)))) in ();
                raise (Java_return (Obj.repr (!result)))
            end
        with e -> begin
            raise e
        end)
        end
        with Java_return value -> Obj.obj value [@@warning "-7"]
    

    method doStartTag () : int =
        try
        begin
        (try
            if (self#isEnabled ()) then begin
                if ((self#getCommand ()) != (Obj.magic 0)) then begin
                    ignore ((self#getPropertiesHashMap ())#put ((OrderHistoryData.get_sTATUS ()), status));
                    if (((self#getCommand ())#compareTo ((OrderHistoryData.get_sETSTATUS ()))) == 0) then begin
                        ignore (self#setOrderStatus ())
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
        status <- "";
        ();
        ignore (self#setTagHelperFactory ((new OrderHistoryHelperFactory.orderHistoryHelperFactory ())));
        ignore (self#setTagRequestHelperFactory ((new OrderHistoryRequestHelperFactory.orderHistoryRequestHelperFactory ())))
      end
  end [@@warning "-20"]
let () = java_register_constructor "OrderHistoryTag" (fun arguments -> Obj.repr (new orderHistoryTag (Obj.obj arguments)))


