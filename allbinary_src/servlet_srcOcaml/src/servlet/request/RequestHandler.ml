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
(* package servlet.request *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.io *)
(* import java.net *)
(* import javax.servlet *)
(* import javax.servlet.http *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.workflow.WorkFlowInterface *)
(* import org.allbinary.logic.control.workflow.RequestWorkFlowFactory *)

class requestHandler () =
  object (self)
    inherit HttpServlet.httpServlet () as super
    val mutable logUtil : LogUtil.logUtil = (Obj.magic 0)
    method logUtil = logUtil
    method set_logUtil value' = logUtil <- value'
    

    method init : 'any1. 'any1 -> unit = fun (config) ->
        let config = Obj.repr config in
        begin
        ignore (super#init ((Obj.magic config)))
        end [@@warning "-7-20"]
    

    method destroy () : unit =
        begin
        ()
        end [@@warning "-7"]
    

    method processRequest : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        begin
        (try
            ignore ((Obj.magic response)#setContentType ("text/html"));
            let out : Obj.t ref = ref ((Obj.repr ((Obj.magic response)#getWriter ()))) in ();
            let workflowInterface : WorkFlowInterface.workFlowInterface ref = ref (((RequestWorkFlowFactory.getInstance ((Obj.magic (Obj.magic request)), (Obj.magic (Obj.magic response)), (self#getServletConfig ()), (self#getServletContext ()))) :> WorkFlowInterface.workFlowInterface)) in ();
            if (!workflowInterface != (Obj.magic 0)) then begin
                ignore ((Obj.magic !out)#print ((!workflowInterface#process ())))
            end;
            ignore ((Obj.magic !out)#flush ());
            ignore ((Obj.magic !out)#close ())
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sERVLETERROR)) then begin
                ignore (logUtil#put ("Servlet LicensingException", self, "processRequest()", e))
            end;
            ignore ((Obj.magic response)#sendRedirect (abcs#globals#uRLGLOBALS#lICENSEERRORPAGE))
        end)
        end [@@warning "-7-20"]
    

    method doGet : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        begin
        (self#processRequest ((Obj.magic request), (Obj.magic response)))
        end [@@warning "-7-20"]
    

    method doPost : 'any1 'any2. 'any1 * 'any2 -> unit = fun (request, response) ->
        let request = Obj.repr request in
        let response = Obj.repr response in
        begin
        (self#processRequest ((Obj.magic request), (Obj.magic response)))
        end [@@warning "-7-20"]
    

    method getServletInfo () : string =
        begin
        "WorkFlow Request Handler"
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- ((LogUtil.getInstance ()) :> LogUtil.logUtil);
        ()
      end
  end
let () = java_register_constructor "RequestHandler" (fun arguments -> Obj.repr (new requestHandler (Obj.obj arguments)))


