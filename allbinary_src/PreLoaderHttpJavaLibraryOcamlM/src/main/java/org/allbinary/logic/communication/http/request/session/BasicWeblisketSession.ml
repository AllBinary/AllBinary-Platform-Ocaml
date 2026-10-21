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
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.http.HttpSession *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontData *)
(* import org.allbinary.business.user.UserData *)
(* import org.allbinary.business.user.commerce.money.payment.gateway.PaymentGatewayData *)
(* import org.allbinary.business.user.role.BasicUserRole *)
(* import org.allbinary.business.user.role.BasicUserRoleData *)
(* import org.allbinary.logic.java.bool.BooleanFactory *)

class basicWeblisketSession (pageContext_arg) =
  object
    val mutable session : Obj.t = Obj.repr 0
    method session : 'r. 'r = Obj.magic session
    method set_session : 'v. 'v -> unit = fun value' -> session <- Obj.repr value'
    val mutable pageContext : Obj.t = Obj.repr 0
    method pageContext : 'r. 'r = Obj.magic pageContext
    method set_pageContext : 'v. 'v -> unit = fun value' -> pageContext <- Obj.repr value'
    
    

    method setRole : 'any1. 'any1 -> unit = fun (aRole) ->
        let aRole = Obj.repr aRole in
        begin
        ignore ((Obj.magic session)#setAttribute ((java_string_of (Obj.repr (BasicUserRoleData.get_nAME ()))), (Obj.magic aRole)))
        end [@@warning "-20"]
    

    method getRole () : BasicUserRole.basicUserRole =
        begin
        ((Obj.magic ((Obj.magic session)#getAttribute ((java_string_of (Obj.repr (BasicUserRoleData.get_nAME ())))))) :> BasicUserRole.basicUserRole)
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
    

    (* Java overload setAuthenticated(BOOLEAN) is not converted: OCaml has one method per name *)
    

    method clear () : unit =
        begin
        ignore ((Obj.magic session)#removeAttribute ((WeblisketSessionData.get_aUTHENTICATED ())));
        ignore ((Obj.magic session)#removeAttribute ((WeblisketSessionData.get_tIMEOUT ())));
        ignore ((Obj.magic session)#removeAttribute ((java_string_of (Obj.repr (BasicUserRoleData.get_nAME ())))));
        ignore ((Obj.magic session)#removeAttribute ((UserData.get_uSERNAME ())))
        end
    

    method getCreationTime () : int =
        begin
        ((Obj.magic session)#getCreationTime ())
        end
    

    method getLastAccessedTime () : int =
        begin
        let lastAccessedTime : int ref = ref (((Obj.magic session)#getLastAccessedTime ())) in ();
        !lastAccessedTime
        end

    initializer
      begin
        ();
        ();
        ();
        pageContext <- Obj.repr (pageContext_arg);
        let request : Obj.t ref = ref ((Obj.repr (Obj.magic (pageContext_arg#getRequest ())))) in ();
        session <- Obj.repr (((Obj.magic !request)#getSession (true)))
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicWeblisketSession" (fun arguments -> Obj.repr (new basicWeblisketSession (Obj.obj arguments)))


