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
(* package tags *)

open Allbinary_java [@@warning "-33"]
[@@@warning "-20"]
(* import java.lang.reflect.Method *)
(* import javax.servlet.jsp.JspTagException *)
(* import org.allbinary.logic.communication.http.request.AbResponseHandler *)
(* import org.allbinary.logic.communication.log.LogUtil *)
(* import org.allbinary.logic.system.security.licensing.LicensingException *)
(* import org.allbinary.logic.visual.transform.info.TransformInfoData *)
(* import taghelpers.StoreTagWorkFlowHelperFactory *)

class storeWorkFlowTag () =
  object (self)
    inherit HelperTag.helperTag ((new StoreTagWorkFlowHelperFactory.storeTagWorkFlowHelperFactory ()))
    val mutable logUtil : Obj.t = Obj.repr 0
    method logUtil : 'r. 'r = Obj.magic logUtil
    method set_logUtil : 'v. 'v -> unit = fun value' -> logUtil <- Obj.repr value'
    val mutable viewName : string = ""
    method viewName = viewName
    method set_viewName value' = viewName <- value'
    val mutable viewFile : string = ""
    method viewFile = viewFile
    method set_viewFile value' = viewFile <- value'
    
    

    method setName ((value : string)) : unit =
        begin
        viewName <- value;
        ignore ((self#getPropertiesHashMap ())#put ((TransformInfoData.getInstance ())#nAME, viewName))
        end [@@warning "-7"]
    

    method process () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#pROCESS))
            end;
            let helperClass : string ref = ref ((java_get_class (Obj.repr (self#getHelper ())))) in ();
            let method_ : Obj.t ref = ref ((Obj.repr (!helperClass#getMethod (commonStrings#pROCESS, (Obj.magic 0))))) in ();
            let result : int ref = ref ((Obj.magic ((Obj.magic !method_)#invoke ((self#getHelper ()), (Obj.magic 0))))) in ();
            !result
        with e -> begin
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#sQLTAGSERROR)) then begin
                ignore ((Obj.magic logUtil)#put (commonStrings#eXCEPTION, self, commonStrings#pROCESS, e))
            end;
            raise e
        end)
        end [@@warning "-7"]
    

    method doStartTag () : int =
        begin
        (try
            if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
                ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, tagStrings#dO_START_TAG))
            end;
            ignore (self#setHelper ());
            (self#process ())
        with e -> begin
            ignore (AbResponseHandler.sendJspTagLicensingRedirect (pageContext, e));
            sKIP_BODY
        end)
        end [@@warning "-7"]

    initializer
      begin
        logUtil <- (Obj.repr (Obj.magic (java_call_static "LogUtil.getInstance" (Obj.repr ()))));
        viewName <- "";
        viewFile <- "";
        ();
        (* super(...) is the inherit clause *) ();
        if ((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypes#lOGGING#contains (((org.get_allbinary ())#logic#communication#log#config#type_#logConfigTypeFactory#getInstance ())#jSPTAG)) then begin
            ignore ((Obj.magic logUtil)#putF (commonStrings#sTART, self, commonStrings#cONSTRUCTOR))
        end
      end
  end [@@warning "-20"]
let () = java_register_constructor "StoreWorkFlowTag" (fun arguments -> Obj.repr (new storeWorkFlowTag (Obj.obj arguments)))


