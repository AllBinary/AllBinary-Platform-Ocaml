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
(* package tags.workflow.processing.basic *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.business.DynamicObjectData *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import tags.StoreWorkFlowTag *)

class basicWorkFlowTag () =
  object (self)
    inherit StoreWorkFlowTag.storeWorkFlowTag () as super
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    
    

    method doStartTag () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, tagStrings#dO_START_TAG))
            end;
            ignore ((self#getPropertiesHashMap ())#put ((DynamicObjectData.get_nAME ()), "workflows.template.data.BasicStoreWorkFlow"));
            (super#doStartTag ())
        with e -> begin
            ignore (AbResponseHandler.sendJspTagRedirect (pageContext, e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "BasicWorkFlowTag" (fun arguments -> Obj.repr (new basicWorkFlowTag (Obj.obj arguments)))


