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
(* package org.allbinary.logic.communication.http.request.session *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.http.HttpSession *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontFactory *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontInterface *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.commerce.inventory.basket.Basket *)
(* import org.allbinary.business.user.commerce.inventory.order.Order *)
(* import org.allbinary.business.user.commerce.inventory.order.OrderInterface *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.role.UserRole *)
(* import org.allbinary.business.user.role.UserRoleB *)
(* import org.allbinary.business.user.role.UserRoleData *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)
(* import org.allbinary.logic.string.StringValidationUtil *)

class weblisketSession ((hashMap : java_hash_map), httpServletRequest) =
  object (self)
    val mutable session : Obj.t = Obj.repr 0
    method session : 'r. 'r = Obj.magic session
    method set_session : 'v. 'v -> unit = fun value' -> session <- Obj.repr value'
    
    
    

    method getId () : string =
        begin
        ((Obj.magic session)#getId ())
        end
    

    method setPassword ((password : string)) : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((UserData.get_pASSWORD ()), password))
        end
    

    method setUserName ((userName : string)) : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((UserData.get_uSERNAME ()), userName))
        end
    

    method setPaymentMethod ((value : string)) : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))), value))
        end
    

    method setAuthenticated () : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((WeblisketSessionData.get_aUTHENTICATED ()), (BooleanFactory.getInstance ())#tRUE_STRING))
        end
    

    method setRole : 'any1. 'any1 -> unit = fun (aRole) ->
        let aRole = Obj.repr aRole in
        begin
        ignore ((Obj.magic session)#setAttribute ((java_string_of (Obj.repr (UserRoleData.get_nAME ()))), (Obj.magic aRole)))
        end [@@warning "-20"]
    

    method setAttempts ((value : int)) : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((WeblisketSessionData.get_aTTEMPTS ()), value))
        end
    

    method setTimeout ((value : string)) : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((WeblisketSessionData.get_tIMEOUT ()), value))
        end
    

    method setStoreName ((value : string)) : unit =
        begin
        ignore ((Obj.magic session)#setAttribute ((StoreFrontData.getInstance ())#nAME, value))
        end
    

    method getWebAppPath () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((org.get_allbinary ())#globals#gLOBALS2#wEBAPPPATH)))
        end
    

    method getUserName () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((UserData.get_uSERNAME ()))))
        end
    

    method getPassword () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((UserData.get_pASSWORD ()))))
        end
    

    method getPaymentMethod () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((java_string_of (Obj.repr (PaymentGatewayData.get_nAME ()))))))
        end
    

    method getAuthentication () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((WeblisketSessionData.get_aUTHENTICATED ()))))
        end
    

    method getAttempts () : int =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((WeblisketSessionData.get_aTTEMPTS ()))))
        end
    

    method getTimeout () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((WeblisketSessionData.get_tIMEOUT ()))))
        end
    

    method getStoreName () : string =
        begin
        (Obj.magic ((Obj.magic session)#getAttribute ((StoreFrontData.getInstance ())#nAME)))
        end
    

    method getRole () : UserRole.userRole =
        try
        begin
        let userRole : UserRole.userRole ref = ref (((Obj.magic ((Obj.magic session)#getAttribute ((java_string_of (Obj.repr (UserRoleData.get_nAME ())))))) :> UserRole.userRole)) in ();
        if (!userRole != (Obj.magic 0)) then begin
            raise (Java_return (Obj.repr ((UserRoleB.getRole (((!userRole#getBasicUserRole ())#getRole ()))))))
        end else begin
            raise (Java_return (Obj.repr ((Obj.magic 0))))
        end
        end
        with Java_return value -> Obj.obj value
    

    method getOrder () : OrderInterface.orderInterface =
        try
        begin
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance ((self#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let basketName : string ref = ref ((!storeFrontInterface#getBasketName ())) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!basketName))) then begin
            let orderInterface : OrderInterface.orderInterface ref = ref (((Obj.magic ((Obj.magic session)#getAttribute (!basketName))) :> OrderInterface.orderInterface)) in ();
            if (!orderInterface == (Obj.magic 0)) then begin
                orderInterface := (Obj.magic (new Order.order ((new Basket.basket ()))))
            end;
            ignore ((Obj.magic session)#setAttribute (!basketName, !orderInterface));
            raise (Java_return (Obj.repr (!orderInterface)))
        end else begin
            raise (Failure ("Basket Name Not Found"))
        end
        end
        with Java_return value -> Obj.obj value
    

    (* Java overload setAuthenticated(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method clear () : unit =
        begin
        ignore ((Obj.magic session)#removeAttribute ((WeblisketSessionData.get_aUTHENTICATED ())));
        ignore ((Obj.magic session)#removeAttribute ((WeblisketSessionData.get_tIMEOUT ())));
        ignore ((Obj.magic session)#removeAttribute ((java_string_of (Obj.repr (UserRoleData.get_nAME ())))));
        ignore ((Obj.magic session)#removeAttribute ((UserData.get_uSERNAME ())))
        end
    

    method getCreationTime () : int =
        begin
        ((Obj.magic session)#getCreationTime ())
        end
    

    method getLastAccessedTime () : int =
        begin
        ((Obj.magic session)#getLastAccessedTime ())
        end
    

    method removeBasket () : unit =
        begin
        let storeFrontInterface : StoreFrontInterface.storeFrontInterface ref = ref (((StoreFrontFactory.getInstance ((self#getStoreName ()))) :> StoreFrontInterface.storeFrontInterface)) in ();
        let basketName : string ref = ref ((!storeFrontInterface#getBasketName ())) in ();
        if (not ((StringValidationUtil.getInstance ())#isEmpty (!basketName))) then begin
            ignore ((Obj.magic session)#removeAttribute (!basketName))
        end
        end

    initializer
      begin
        ();
        ();
        let propertiesHashMap : java_hash_map ref = ref ((hashMap :> java_hash_map)) in ();
        let request : Obj.t ref = ref ((Obj.repr httpServletRequest)) in ();
        session <- Obj.repr (((Obj.magic !request)#getSession (true)));
        if ((self#getStoreName ()) == (Obj.magic 0)) then begin
            (self#setStoreName ((Obj.magic (!propertiesHashMap#get ((StoreFrontData.getInstance ())#nAME)))))
        end
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "WeblisketSession" (fun arguments -> Obj.repr (new weblisketSession (Obj.obj arguments)))


