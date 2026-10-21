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
(* import admin.taghelpers.ShippingHelperFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.CustomTagSupport *)

class shippingTag () =
  object (self)
    inherit CustomTagSupport.customTagSupport ()
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable command : string = ""
    method command = command
    method set_command value' = command <- value'
    val mutable storeName : string = ""
    method storeName = storeName
    method set_storeName value' = storeName <- value'
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value' = propertiesHashMap <- value'
    
    

    method setCommand ((command_arg : string)) : unit =
        begin
        command <- command_arg
        end [@@warning "-7"]
    

    method setStoreName ((value : string)) : unit =
        begin
        storeName <- value
        end [@@warning "-7"]
    

    method setShippingType () : string =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new ShippingHelperFactory.shippingHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let addressHelperClass : string ref = ref ((java_get_class (Obj.repr !anyType))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!addressHelperClass#getMethod ("setShippingType", (Obj.magic 0))))) in ();
            let result : string ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !result
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            if (command <> (Obj.magic 0)) then begin
                propertiesHashMap <- ((Obj.magic (java_call_static "StdUtil.getInstance" (Obj.repr ())))#createHashMap ());
                ignore (propertiesHashMap#put ((StoreFrontData.getInstance ())#nAME, storeName));
                if ((String.compare command ((org.get_allbinary ())#globals#gLOBALS2#sETSHIPPINGTYPE)) == 0) then begin
                    ignore (self#setShippingType ())
                end
            end;
            sKIP_BODY
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        command <- "";
        storeName <- "";
        propertiesHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "ShippingTag" (fun arguments -> Obj.repr (new shippingTag (Obj.obj arguments)))


