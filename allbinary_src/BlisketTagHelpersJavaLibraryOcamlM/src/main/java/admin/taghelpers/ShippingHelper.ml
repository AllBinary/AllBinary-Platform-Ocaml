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
(* package admin.taghelpers *)

open Allbinary_java [@@warning "-33"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.shipping.ShippingMethodData *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)

class shippingHelper ((hashMap : java_hash_map), pageContext_arg) =
  object (self)
    inherit TagHelper.tagHelper ()
    val mutable logUtil : LogUtil.logUtil = (Obj.magic 0)
    method logUtil = logUtil
    method set_logUtil value = logUtil <- value
    val mutable weblisketSession : WeblisketSession.weblisketSession = (Obj.magic 0)
    method weblisketSession = weblisketSession
    method set_weblisketSession value = weblisketSession <- value
    val mutable storeFrontInterface : StoreFrontInterface.storeFrontInterface = (Obj.magic 0)
    method storeFrontInterface = storeFrontInterface
    method set_storeFrontInterface value = storeFrontInterface <- value
    val mutable propertiesHashMap : java_hash_map = (Obj.magic 0)
    method propertiesHashMap = propertiesHashMap
    method set_propertiesHashMap value = propertiesHashMap <- value
    val mutable pageContext = (Obj.magic 0)
    method pageContext = pageContext
    method set_pageContext value = pageContext <- value
    val mutable request = (Obj.magic 0)
    method request = request
    method set_request value = request <- value
    val mutable shippingType : string = ""
    method shippingType = shippingType
    method set_shippingType value = shippingType <- value
    
    

    method getFormData () =
        begin
        shippingType <- (request#getParameter (ShippingMethodData.nAME))
        end
    

    method setShippingType () : string =
        begin
        (try
            let success : string ref = ref ("Successfully Set Shipping Type") in ();
            let order : OrderInterface.orderInterface ref = ref (((weblisketSession#getOrder ()) :> OrderInterface.orderInterface)) in ();
            ignore (!order#setShippingMethod (shippingType));
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGS)) then begin
                ignore (logUtil#putF (!success, self, "setShippingType()"))
            end;
            !success
        with e -> begin
            let error : string ref = ref ("Failed to view Shipping Type") in ();
            if (org.allbinary#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains ((org.allbinary#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore (logUtil#put (commonStrings#eXCEPTION, self, "setShippingType()", e))
            end;
            !error
        end)
        end

    initializer
      begin
        logUtil <- ((LogUtil.getInstance ()) :> LogUtil.logUtil);
        ();
        storeFrontInterface <- ((Obj.magic 0) :> StoreFrontInterface.storeFrontInterface);
        propertiesHashMap <- ((Obj.magic 0) :> java_hash_map);
        ();
        ();
        shippingType <- "";
        ();
        pageContext <- pageContext_arg;
        request <- (Obj.magic (pageContext_arg#getRequest ()));
        let storeName : string ref = ref ((Obj.magic (hashMap#get ((StoreFrontData.getInstance ())#nAME)))) in ();
        if (!storeName <> (Obj.magic 0)) then begin
            storeFrontInterface <- (StoreFrontFactory.getInstance (!storeName))
        end;
        weblisketSession <- (new WeblisketSession.weblisketSession (hashMap, pageContext_arg));
        (self#getFormData ())
      end
  end


