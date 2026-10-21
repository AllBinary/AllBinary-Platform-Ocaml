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
(* import admin.taghelpers.BasketHelperFactory *)
(* import admin.taghelpers.BasketRequestHelperFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.user.commerce.inventory.basket.BasketData *)
(* import org.allbinary.logic.StdUtil *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import tags.CustomTagSupport *)

class basketTag () =
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
    

    method isBasketEmpty () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new BasketHelperFactory.basketHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("isBasketEmpty", (Obj.magic 0))))) in ();
            let emptyBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !emptyBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method addItemToBasket () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new BasketRequestHelperFactory.basketRequestHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("addItemToBasket", (Obj.magic 0))))) in ();
            let emptyBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !emptyBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method removeItemFromBasket () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new BasketRequestHelperFactory.basketRequestHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("removeItemFromBasket", (Obj.magic 0))))) in ();
            let emptyBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !emptyBoolean
        with e -> begin
            raise e
        end)
        end [@@warning "-7"]
    

    method adjustBasket () : bool =
        begin
        (try
            let anyType : Obj.t ref = ref ((Obj.repr ((new BasketRequestHelperFactory.basketRequestHelperFactory ())#getInstance (propertiesHashMap, pageContext)))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr ((java_get_class (Obj.repr !anyType))#getMethod ("adjustBasket", (Obj.magic 0))))) in ();
            let emptyBoolean : bool ref = ref ((Obj.magic ((Obj.magic !method_)#invoke (!anyType, (Obj.magic 0))))) in ();
            !emptyBoolean
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
                if ((String.compare command ((BasketData.get_iNSERT ()))) == 0) then begin
                    if (not (self#addItemToBasket ())) then begin
                        ignore ((pageContext#getOut ())#println ("Item is not currently being sold.<p/>"))
                    end
                end else if ((String.compare command ((BasketData.get_dELETE ()))) == 0) then begin
                    ignore (self#removeItemFromBasket ())
                end else if ((String.compare command ((BasketData.get_aDJUST ()))) == 0) then begin
                    ignore (self#adjustBasket ())
                end else if ((String.compare command ((BasketData.get_iSEMPTY ()))) == 0) then begin
                    if (self#isBasketEmpty ()) then begin
                        raise (Java_return (Obj.repr (eVAL_BODY_INCLUDE)))
                    end else begin
                        raise (Java_return (Obj.repr (sKIP_BODY)))
                    end
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
let () = java_register_constructor "BasketTag" (fun arguments -> Obj.repr (new basketTag (Obj.obj arguments)))


