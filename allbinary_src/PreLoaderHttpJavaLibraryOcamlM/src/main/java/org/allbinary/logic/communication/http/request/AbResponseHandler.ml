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
(* package org.allbinary.logic.communication.http.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.RequestDispatcher *)
(* import javax.servlet.ServletException *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.http.HttpServletResponse *)
(* import javax.servlet.jsp.JspTagException *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.globals.FREEBLISKET_PATH_GLOBALS *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypeFactory *)
(* import org.allbinary.logic.communication.log.config.type.LogConfigTypes *)


let sendRedirect : 'any1. 'any1 * string -> unit = fun (pageContext, (page : string)) ->
        let pageContext = Obj.repr pageContext in
        begin
        let request : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic pageContext)#getRequest ())))) in ();
        let response : Obj.t ref = ref ((Obj.repr (Obj.magic ((Obj.magic pageContext)#getResponse ())))) in ();
        let requestDispatcher : Obj.t ref = ref ((Obj.repr ((Obj.magic !request)#getRequestDispatcher (page)))) in ();
        if ((Obj.magic !response)#isCommitted ()) then begin
            ignore ((Obj.magic !response)#sendRedirect (page))
        end else begin
            (try
                ignore ((Obj.magic !requestDispatcher)#forward ((Obj.magic !request), (Obj.magic !response)))
            with e -> begin
                ignore (((Obj.magic pageContext)#getOut ())#print (("Error: " ^ page)))
            end)
        end
        end [@@warning "-20"]

let () = java_register_static "AbResponseHandler.sendRedirect" (fun arguments -> Obj.repr (sendRedirect (Obj.obj arguments)))
class abResponseHandler () =
  object
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        ()
      end
  end [@@warning "-20"]
let () = java_register_constructor "AbResponseHandler" (fun arguments -> Obj.repr (new abResponseHandler (Obj.obj arguments)))

let sendJspTagRedirect : 'any1. 'any1 * exn -> unit = fun (pageContext, (e : exn)) ->
        let pageContext = Obj.repr pageContext in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#jSPTAGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Jsp Tag Exception", "AbResponseHandler", "sendJspRedirect()", e))
            end;
            ignore (sendRedirect ((Obj.magic pageContext), (FREEBLISKET_PATH_GLOBALS.getInstance ())#eRRORPAGE))
        with e2 -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#lICENSINGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Exception in Redirect Handling", "AbResponseHandler", "sendJspRedirect", e))
            end;
            raise (Failure ("JspTagException"))
        end)
        end [@@warning "-20"]

and sendServletRedirect : 'any1. 'any1 * exn -> unit = fun (pageContext, (e : exn)) ->
        let pageContext = Obj.repr pageContext in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#jSPTAGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Jsp Tag Exception", "AbResponseHandler", "sendJspRedirect()", e))
            end;
            ignore (sendRedirect ((Obj.magic pageContext), (FREEBLISKET_PATH_GLOBALS.getInstance ())#eRRORPAGE))
        with e2 -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#lICENSINGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Exception in Redirect Handling", "AbResponseHandler", "sendJspRedirect", e))
            end;
            raise (Failure ("ServletException"))
        end)
        end [@@warning "-20"]

and sendJspTagLicensingRedirect : 'any1. 'any1 * exn -> unit = fun (pageContext, (e : exn)) ->
        let pageContext = Obj.repr pageContext in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#jSPTAGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Licensing Exception", "AbResponseHandler", "sendJspTagLicensingRedirect()", e))
            end;
            ignore (sendRedirect ((Obj.magic pageContext), (FREEBLISKET_PATH_GLOBALS.getInstance ())#lICENSEERRORPAGE))
        with e2 -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#lICENSINGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Exception in Redirect Handling", "AbResponseHandler", "sendJspTagLicensingRedirect", e))
            end;
            raise (Failure ("JspTagException"))
        end)
        end [@@warning "-20"]

and sendServletLicensingRedirect : 'any1. 'any1 * exn -> unit = fun (pageContext, (e : exn)) ->
        let pageContext = Obj.repr pageContext in
        begin
        let logUtil_arg : Obj.t ref = ref ((Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))))) in ();
        (try
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#jSPTAGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Licensing Exception", "AbResponseHandler", "sendServletLicensingRedirect()", e))
            end;
            ignore (sendRedirect ((Obj.magic pageContext), (FREEBLISKET_PATH_GLOBALS.getInstance ())#lICENSEERRORPAGE))
        with e2 -> begin
            if ((Obj.magic (java_call_static "LogConfigTypes.get_lOGGING" (Obj.repr ())))#contains ((Obj.magic (java_call_static "LogConfigTypeFactory.getInstance" (Obj.repr ())))#lICENSINGERROR)) then begin
                ignore ((Obj.magic !logUtil_arg)#put ("Exception in Redirect Handling", "AbResponseHandler", "sendServletLicensingRedirect", e))
            end;
            raise (Failure ("ServletException"))
        end)
        end [@@warning "-20"]
let () = java_register_static "AbResponseHandler.sendJspTagRedirect" (fun arguments -> Obj.repr (sendJspTagRedirect (Obj.obj arguments)))
let () = java_register_static "AbResponseHandler.sendServletRedirect" (fun arguments -> Obj.repr (sendServletRedirect (Obj.obj arguments)))
let () = java_register_static "AbResponseHandler.sendJspTagLicensingRedirect" (fun arguments -> Obj.repr (sendJspTagLicensingRedirect (Obj.obj arguments)))
let () = java_register_static "AbResponseHandler.sendServletLicensingRedirect" (fun arguments -> Obj.repr (sendServletLicensingRedirect (Obj.obj arguments)))


