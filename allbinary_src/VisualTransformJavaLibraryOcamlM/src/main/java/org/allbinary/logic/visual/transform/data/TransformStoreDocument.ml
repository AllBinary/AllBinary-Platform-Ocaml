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
(* package org.allbinary.logic.visual.transform.data *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.http.HttpServletRequest *)
(* import javax.servlet.jsp.PageContext *)
(* import org.allbinary.business.context.modules.storefront.StoreFrontViewFactory *)
(* import org.allbinary.logic.communication.http.request.RequestParams *)
(* import org.allbinary.logic.communication.http.request.session.WeblisketSession *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.control.search.SearchRequest *)

class transformStoreDocument ((searchRequest : SearchRequest.searchRequest)) =
  object (self)
    inherit TransformHttpRequestDocument.transformHttpRequestDocument (searchRequest)
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        (* super(...) is the inherit clause *) ();
        (try
            ignore ((self#getBaseNode ())#appendChild (((StoreFrontViewFactory.getInstance (((searchRequest#getStoreFront ())#getName ())))#toXmlNode ((self#getDoc ())))));
            ignore ((self#getBaseNode ())#appendChild (((searchRequest#getParams ())#getParamsNode ((self#getDoc ())))))
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#vIEWERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#cONSTRUCTOR, e))
            end;
            raise e
        end)
      end
  end [@@warning "-20"]
(* Java overloaded constructors: an OCaml class has one constructor *)
let () = java_register_constructor "TransformStoreDocument" (fun arguments -> Obj.repr (new transformStoreDocument (Obj.obj arguments)))


