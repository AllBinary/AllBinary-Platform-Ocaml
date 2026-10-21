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
(* package org.allbinary.logic.control.workflow *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.util.HashMap *)
(* import javax.servlet.ServletConfig *)
(* import javax.servlet.ServletContext *)
(* import javax.servlet.ServletRequest *)
(* import javax.servlet.ServletResponse *)
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.data.tables.workflow.WorkFlowEntityFactory *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.io.path.AbPathData *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)


let getInstance : 'any1 'any2 'any3 'any4. 'any1 * 'any2 * 'any3 * 'any4 -> WorkFlowInterface.workFlowInterface = fun (request, _response, _servletConfig, _servletContext) ->
        let request = Obj.repr request in
        begin
        let httpRequest : Obj.t ref = ref ((Obj.repr (Obj.magic (Obj.magic request)))) in ();
        let requestCommand : string ref = ref (((Obj.magic !httpRequest)#getPathInfo ())) in ();
        let index : int ref = ref ((java_string_index_of !requestCommand (Obj.repr ((Obj.magic (java_call_static "AbPathData.getInstance" (Obj.repr ())))#sEPARATOR)))) in ();
        let storeName : string ref = ref ((String.sub !requestCommand (0) ((!index) - (0)))) in ();
        let requestName : string ref = ref ((String.sub !requestCommand (!index) (((String.length !requestCommand)) - (!index)))) in ();
        ((((WorkFlowEntityFactory.getInstance ())#create2 ())#get (!requestName, !storeName)) :> WorkFlowInterface.workFlowInterface)
        end [@@warning "-20"]

(* Java overload getInstance(HashMap, PageContext) is not converted: OCaml has one method per name *)

let () = java_register_static "RequestWorkFlowFactory.getInstance" (fun arguments -> Obj.repr (getInstance (Obj.obj arguments)))
class requestWorkFlowFactory () =
  object
    

    initializer
      begin
        ();
        ()
      end
  end
let () = java_register_constructor "RequestWorkFlowFactory" (fun arguments -> Obj.repr (new requestWorkFlowFactory (Obj.obj arguments)))


